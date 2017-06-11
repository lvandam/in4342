/*  ----------------------------------- DSP/BIOS Headers            */
#include <std.h>
#include <gbl.h>
#include <log.h>
#include <swi.h>
#include <sys.h>
#include <tsk.h>
#include <pool.h>

/*  ----------------------------------- DSP/BIOS LINK Headers       */
#include <failure.h>
#include <dsplink.h>
#include <platform.h>
#include <notify.h>
#include <bcache.h>
/*  ----------------------------------- Sample Headers              */
#include <pool_notify_config.h>
#include <task.h>
#include <c6x.h>
#include <IQmath_inline.h>
#include <dspMeanshift.h>

// size of the buffers used for the communication with the GPP.

extern Uint32 MPCSXFER_BufferSize ;


//pointer to the layer starting position on the pool translated to the DSP address space.

Uint8* dspColor;


//pointer to the result starting position on the pool translated to the DSP address space.

Uint8* dspResFrame;


//pointer to the rectangle starting position on the pool translated to the DSP address space.

Uint16* dspRectangle;


//DSP starting function for the main loop of Task_execute.

volatile Uint8 function = IDLE;


//Callback function for the notification received during the initialization phase.

static Void Init_notify (Uint32 eventNo, Ptr arg, Ptr info) ;


//Callback function to update the 'function' variable of the DSP with the new received GPP command and post the semaphore for the execution to continue.

static Void Command_notify (Uint32 eventNo, Ptr arg, Ptr info);


//Invalidate the corresponding to the layer received cache addresses.

static Void Get_Color( Void );


//Invalidate the rectangle cache addresses.

static Void Get_Rectangle(Void);


//Writeback the result from the cache to the pool.

static Void Return_Result( Void );


//Notify GPP about the new state of the DSP.

static Void Update_State( Uint32 state);


//Initialize the callback functions for the initilization and the commands and receive the pool buffer addresses.

Int Task_create (Task_TransferInfo ** infoPtr)
{
    Int status    = SYS_OK ;
    Task_TransferInfo * info = NULL ;

    /* Allocate Task_TransferInfo structure that will be initialized
     * and passed to other phases of the application */
    if (status == SYS_OK)
	{
        *infoPtr = MEM_calloc (DSPLINK_SEGID, sizeof (Task_TransferInfo), 0) ; /* No alignment restriction */
        if (*infoPtr == NULL)
		{
            status = SYS_EALLOC ;
        }
        else
		{
            info = *infoPtr ;
        }
    }

    /* Fill up the transfer info structure */
    if (status == SYS_OK)
	{
        info->dataBuf       = NULL ; /* Set through notification callback. */
        //info->bufferSize    = MPCSXFER_BufferSize ;
        info->bufferSize    = 0 ;
        SEM_new (&(info->notifySemObj), 0) ;
    }

    /*
     *  Register notification for the event callback to get data
     *  buffers pointers from the GPP.
     */
    if (status == SYS_OK)
	{
        status = NOTIFY_register (ID_GPP,
                                  MPCSXFER_IPS_ID,
                                  MPCSXFER_IPS_EVENTNO,
                                  (FnNotifyCbck) Init_notify,
                                  info) ;
        if (status != SYS_OK)
		{
            return status;
        }
        
        /*
        *  Register notification for the event callback to get commands
        *  from the GPP.
        */

        status = NOTIFY_register (ID_GPP,
                                  MPCSXFER_IPS_ID,
                                  6,
                                  (FnNotifyCbck) Command_notify,
                                  info) ;
        if (status != SYS_OK)
		{
            return status;
        }
    }

    /*
     *  Send notification to the GPP-side that the application has completed its
     *  setup and is ready for further execution.
     */
    if (status == SYS_OK)
	{
        status = NOTIFY_notify (ID_GPP,
                                MPCSXFER_IPS_ID,
                                MPCSXFER_IPS_EVENTNO,
                                (Uint32) DSP_DONE) ;
        if (status != SYS_OK)
		{
            return status;
        }
    }

    /*
     *  Wait for the event callback from the GPP-side to post the semaphore
     *  indicating receipt of the data buffer pointers.
     */
    SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;
    SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;

    return status ;
}

Int Task_execute (Task_TransferInfo * info)
{
    Uint32 start, stop, tkernel, tinit; // cycle counters
    float *flres;
    flres = (float *) dspResFrame;
    tinit = 0;
    tkernel = 0;
    TSCL = 0;

    start = TSCL;
    //execute the independent of the layer functions.
	HC_Epanechnikov_kernel();
    initTarget(MODEL);
    stop = TSCL;
    tinit += stop - start;
    //notify that the DSP is ready.
    Update_State(DSP_READY);

    while(function != STOP_DSP)
    {
        start = TSCL;
        //initialization of the weigth and the target_candidate arrays should be performed in every loop when the weights of only one layer are calculated on the DSP.
        initWeight(flres);
        initTarget(CANDIDATE);
        stop = TSCL;
        tkernel += stop - start;
        //wait until a new command is received.
        SEM_pend (&(info->notifySemObj), SYS_FOREVER);
        //execute the path determined by the command.
        switch (function)
        {
            case STOP_DSP:
                break;

            case IDLE:
                break;

            case LOAD_COLOR:
                Get_Color();
                function = IDLE;
                break;

            case INIT_BLUE:
                Get_Rectangle();
                Get_Color();
                start = TSCL;
                HC_pdf_representation_target(BLUE, dspColor);
                stop = TSCL;
                tinit += stop - start;
                function = IDLE;
                break;

            case INIT_GREEN:
                Get_Rectangle();
                Get_Color();
                start = TSCL;
                HC_pdf_representation_target(GREEN, dspColor);
                stop = TSCL;
                tinit += stop - start;
                function = IDLE;
                break;

            case INIT_RED:
                Get_Rectangle();
                Get_Color();
                start = TSCL;
                HC_pdf_representation_target(RED, dspColor);
                stop = TSCL;
                tinit += stop - start;
                function = IDLE;
                break;

            case COMBINE_BLUE:
                Get_Rectangle();
                Get_Color();
                start = TSCL;
                pdf_representation(dspColor, dspRectangle);
                CalcWeight(BLUE, dspColor, dspRectangle, flres);
                stop = TSCL;
                Return_Result();
                tkernel += stop - start;
                function = IDLE;
                break;
                
            case WEIGHT_BLUE:
                initWeight(flres);
                Get_Rectangle();
                Get_Color();
                start = TSCL;
                pdf_representation(dspColor, dspRectangle);
                CalcWeight(BLUE, dspColor, dspRectangle, flres);
                stop = TSCL;
                tkernel += stop - start;
                function = IDLE;
                break;
                
            case WEIGHT_GREEN:
                Get_Rectangle();
                Get_Color();
                start = TSCL;
                pdf_representation(dspColor, dspRectangle);
                CalcWeight(GREEN, dspColor, dspRectangle, flres);
                stop = TSCL;
                tkernel += stop - start;
                function = IDLE;
                break;
                
            case WEIGHT_RED:
                Get_Rectangle();
                Get_Color();
                start = TSCL;
                pdf_representation(dspColor, dspRectangle);
                CalcWeight(RED, dspColor, dspRectangle, flres);
                stop = TSCL;
                Return_Result();
                tkernel += stop - start;
                function = IDLE;
                break;
        }
        //notify GPP about the completion of the issued command.
        Update_State(DSP_DONE);
    }

    Update_State(tinit);
    Update_State(tkernel);

    return SYS_OK;
}

//Deregister the callback functions and free the allocated memory.

Int Task_delete (Task_TransferInfo * info)
{
    Int    status     = SYS_OK ;
    /*
     *  Unregister notification for the event callback used to get control and
     *  data buffer pointers from the GPP-side.
     */
    status = NOTIFY_unregister (ID_GPP,
                                MPCSXFER_IPS_ID,
                                MPCSXFER_IPS_EVENTNO,
                                (FnNotifyCbck) Init_notify,
                                info) ;

    status = NOTIFY_unregister (ID_GPP,
                                MPCSXFER_IPS_ID,
                                6,
                                (FnNotifyCbck) Command_notify,
                                info) ;

    /* Free the info structure */
    MEM_free (DSPLINK_SEGID,
              info,
              sizeof (Task_TransferInfo)) ;
    info = NULL ;

    return status ;
}

//Invalidate the corresponding to the layer received cache addresses.

static Void Get_Color(Void)
{
    Uint16 rectX=dspRectangle[0];
    Uint16 rectY=dspRectangle[1];
    Uint16 rectWidth=dspRectangle[2];
    Uint16 rectHeight=dspRectangle[3];
    BCACHE_inv ((Ptr)(dspColor+rectY*640+rectX), rectWidth*rectHeight, TRUE) ;
}

//Invalidate the rectangle cache addresses.

static Void Get_Rectangle(Void)
{
    BCACHE_inv ((Ptr)dspRectangle, 8, TRUE) ;
}

//Writeback the result from the cache to the pool.

static Void Return_Result(Void)
{
    BCACHE_wb ((Ptr)dspResFrame, 4*58*86, TRUE) ;
}

//Notify GPP about the new state of the DSP.

static Void Update_State(Uint32 state)
{
    NOTIFY_notify(ID_GPP,MPCSXFER_IPS_ID,MPCSXFER_IPS_EVENTNO,(Uint32)state);
}


//Callback function for the notification received during the initialization phase.

static Void Init_notify (Uint32 eventNo, Ptr arg, Ptr info)
{
    static int count = 0;
    Task_TransferInfo * mpcsInfo = (Task_TransferInfo *) arg ;

    (Void) eventNo ; /* To avoid compiler warning. */

        count++;
        if (count==1) {
            dspColor =(Uint8 *)info ;
        }
        if (count==2) {
            dspRectangle = (Uint16 *) info;
            dspResFrame = (Uint8 *) ((Uint32)info + 8) ;
        }

    SEM_post(&(mpcsInfo->notifySemObj));
}


//Callback function to update the 'function' variable of the DSP with the new received GPP command and post the semaphore for the execution to continue.

static Void Command_notify (Uint32 eventNo, Ptr arg, Ptr info)
{
    Task_TransferInfo * mpcsInfo = (Task_TransferInfo *) arg ;
    (Void) eventNo ; /* To avoid compiler warning. */
    function = (Uint8) info;

    SEM_post(&(mpcsInfo->notifySemObj));

}
