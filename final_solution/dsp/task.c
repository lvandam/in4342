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

#define DSP_BUSY                        0
#define DSP_READY                       1
#define DSP_DONE                        2

extern Uint32 MPCSXFER_BufferSize ;

Uint8* dspColor;
Uint8* dspResFrame;
Uint16* dspRectangle;

volatile Uint8 function = IDLE;

static Void Init_notify (Uint32 eventNo, Ptr arg, Ptr info) ;

static Void Command_notify (Uint32 eventNo, Ptr arg, Ptr info);

static Void Get_Color( Void );

static Void Get_Rectangle(Void);

static Void Return_Result( Void );

static Void Update_State( Uint32 state);

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
     *  Register notification for the event callback to get control and data
     *  buffer pointers from the GPP-side.
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
                                (Uint32) DSP_DONE) ; /* No payload to be sent. */
        if (status != SYS_OK)
		{
            return status;
        }
    }

    /*
     *  Wait for the event callback from the GPP-side to post the semaphore
     *  indicating receipt of the data buffer pointer and image width and height.
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
    initTarget(MODEL);
    HC_Epanechnikov_kernel();
    stop = TSCL;
    tinit += stop - start;
    Update_State(DSP_READY);

    while(function != STOP_DSP)
    {
        start = TSCL;
        initTarget(CANDIDATE);
        initWeight(flres);
        stop = TSCL;
        tkernel += stop - start;
        SEM_pend (&(info->notifySemObj), SYS_FOREVER);
        
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
                Get_Color();
                start = TSCL;
                HC_pdf_representation_target(BLUE, dspColor);
                stop = TSCL;
                tinit += stop - start;
                function = IDLE;
                break;

            case INIT_GREEN:
                Get_Color();
                start = TSCL;
                HC_pdf_representation_target(GREEN, dspColor);
                stop = TSCL;
                tinit += stop - start;
                function = IDLE;
                break;

            case INIT_RED:
                Get_Color();
                start = TSCL;
                HC_pdf_representation_target(RED, dspColor);
                stop = TSCL;
                tinit += stop - start;
                function = IDLE;
                break;

            case COMBINE_BLUE:
                Get_Color();
                Get_Rectangle();
                start = TSCL;
                pdf_representation(dspColor, dspRectangle);
                CalcWeight(BLUE, dspColor, dspRectangle, flres);
                stop = TSCL;
                Return_Result();
                tkernel += stop - start;
                function = IDLE;
                break;
        }
        Update_State(DSP_DONE);
    }

    Update_State(tinit);
    Update_State(tkernel);

    return SYS_OK;
}

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


static Void Get_Color(Void)
{
    BCACHE_inv ((Ptr)dspColor, MPCSXFER_BufferSize, TRUE) ;
}

static Void Get_Rectangle(Void)
{
    BCACHE_inv ((Ptr)dspRectangle, 8, TRUE) ;
}

static Void Return_Result(Void)
{
    BCACHE_wb ((Ptr)dspResFrame, 4*58*86, TRUE) ;
}

static Void Update_State(Uint32 state)
{
    NOTIFY_notify(ID_GPP,MPCSXFER_IPS_ID,MPCSXFER_IPS_EVENTNO,(Uint32)state);
}

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

static Void Command_notify (Uint32 eventNo, Ptr arg, Ptr info)
{
    Task_TransferInfo * mpcsInfo = (Task_TransferInfo *) arg ;
    (Void) eventNo ; /* To avoid compiler warning. */
    function = (Uint8) info;

    SEM_post(&(mpcsInfo->notifySemObj));

}
