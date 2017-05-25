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

extern Uint16 MPCSXFER_BufferSize ;

Uint32* buf1;
Uint32* buf2;
Uint16 length1;
Uint16 length2;

static Void Task_notify (Uint32 eventNo, Ptr arg, Ptr info) ;

Uint32 FFracSqrt(Uint32 x);

Int Task_create (Task_TransferInfo ** infoPtr)
{
    Int status    = SYS_OK ;
    Task_TransferInfo * info = NULL ;

    /* Allocate Task_TransferInfo structure that will be initialized
     * and passed to other phases of the application */
    if (status == SYS_OK) 
	{
        *infoPtr = MEM_calloc (DSPLINK_SEGID,
                               sizeof (Task_TransferInfo),
                               0) ; /* No alignment restriction */
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
                                  (FnNotifyCbck) Task_notify,
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
                                (Uint32) 0) ; /* No payload to be sent. */
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
    SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;
    SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;

    return status ;
}

void root_dsp() 
{
    int i;
    
    #pragma UNROLL(128)
    for(i=0;i<length1/4;i++) 
	{
        //res[i]=buf[i]*buf[i+1];
        //buf[i] = FFracSqrt(buf[i]<<16);
        buf1[i] = _IQ15int(_IQ15sqrt(_IQ15(buf1[i])));
    }
}

void mult_dsp()
{
    Uint32 i;
    
    #pragma UNROLL(32)
    for(i=0;i<length1/4;i++) 
	{
       buf1[i]=buf1[i]*buf2[i];
    }
    
}

Int Task_execute (Task_TransferInfo * info)
{
    Uint32 start, stop, total; // cycle counters
    TSCL=0;
    //wait for semaphore
	SEM_pend (&(info->notifySemObj), SYS_FOREVER);

	//invalidate cache
    BCACHE_inv ((Ptr)buf1, length1, TRUE) ;
    
    //invalidate cache
    BCACHE_inv ((Ptr)buf2, length2, TRUE) ;

	//call the functionality to be performed by dsp
    start = TSCL;
    mult_dsp();
    stop = TSCL;
    
    BCACHE_wb((Ptr)buf1, length1, TRUE);
    
	//notify that we are done
    NOTIFY_notify(ID_GPP,MPCSXFER_IPS_ID,MPCSXFER_IPS_EVENTNO,(Uint32)0);
    
    total = stop - start;
    
	//notify the result
    NOTIFY_notify(ID_GPP,MPCSXFER_IPS_ID,MPCSXFER_IPS_EVENTNO,(Uint32) total);

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
                                (FnNotifyCbck) Task_notify,
                                info) ;

    /* Free the info structure */
    MEM_free (DSPLINK_SEGID,
              info,
              sizeof (Task_TransferInfo)) ;
    info = NULL ;

    return status ;
}


static Void Task_notify (Uint32 eventNo, Ptr arg, Ptr info)
{
    static int count = 0;
    Task_TransferInfo * mpcsInfo = (Task_TransferInfo *) arg ;

    (Void) eventNo ; /* To avoid compiler warning. */

    count++;
    if (count==1) {
        buf1 =(Uint32 *)info ;
    }
    if (count==2) {
        length1 = (int)info;
    }
    if (count==3) {
        buf2 =(Uint32 *)info ;
    }
    if (count==4) {
        length2 = (int)info;
    }

    SEM_post(&(mpcsInfo->notifySemObj));
}

#define FRACBITS 16
#define ITERATIONS (15 + (FRACBITS >> 1))
    
Uint32 FFracSqrt(Uint32 x)
{
    register Uint32 root, remHi, remLo, testDiv, count;
    root = 0; /* Clear root */
    remHi = 0; /* Clear high part of partial remainder */
    remLo = x; /* Get argument into low part of partial remainder */
    count = ITERATIONS; /* Load loop counter */
    
    do 
    {
        remHi = (remHi<<2) | (remLo>>30); remLo <<= 2; /* get 2 bits of arg */
        root <<= 1; /* Get ready for the next bit in the root */
        testDiv = (root << 1) + 1; /* Test radical */
        if (remHi >= testDiv)
        {
            remHi -= testDiv;
            root++;
        }
    } while (count-- != 0);
    
    return(root);
}
