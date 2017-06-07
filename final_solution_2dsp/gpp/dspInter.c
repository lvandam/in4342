#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <semaphore.h>
/*  ----------------------------------- DSP/BIOS Link                   */
#include <dsplink.h>

/*  ----------------------------------- DSP/BIOS LINK API               */
#include <proc.h>
#include <pool.h>
#include <mpcs.h>
#include <notify.h>
#if defined (DA8XXGEM)
#include <loaderdefs.h>
#endif

/*  ----------------------------------- Application Header              */
#include "dspInter.h"
//#include <pool_notify_os.h>


#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */


/*  ============================================================================
 *  @const   NUM_ARGS
 *
 *  @desc   Number of arguments specified to the DSP application.
 *  ============================================================================
 */
#define NUM_ARGS                       1

/** ============================================================================
 *  @name   SAMPLE_POOL_ID
 *
 *  @desc   ID of the POOL used for the sample.
 *  ============================================================================
 */
#define SAMPLE_POOL_ID                 0

/** ============================================================================
 *  @name   NUM_BUF_SIZES
 *
 *  @desc   Number of buffer pools to be configured for the allocator.
 *  ============================================================================
 */
#define NUM_BUF_SIZES                  1

/** ============================================================================
 *  @const  NUM_BUF_POOL0
 *
 *  @desc   Number of buffers in first buffer pool.
 *  ============================================================================
 */
#define NUM_BUF_POOL0                  2

#define FRAME_SIZE                     640 * 480

#define BUF_SIZE                       1280

/*  ============================================================================
 *  @const   pool_notify_INVALID_ID
 *
 *  @desc   Indicates invalid processor ID within the pool_notify_Ctrl structure.
 *  ============================================================================
 */
#define pool_notify_INVALID_ID            (Uint32) -1

/** ============================================================================
 *  @const  pool_notify_IPS_ID
 *
 *  @desc   The IPS ID to be used for sending notification events to the DSP.
 *  ============================================================================
 */
#define pool_notify_IPS_ID                0

/** ============================================================================
 *  @const  pool_notify_IPS_EVENTNO
 *
 *  @desc   The IPS event number to be used for sending notification events to
 *          the DSP.
 *  ============================================================================
 */
#define pool_notify_IPS_EVENTNO           5


/*  ============================================================================
 *  @name   poolBufferSize
 *
 *  @desc   Size of buffer to be used for data transfer.
 *  ============================================================================
 */
STATIC Uint32  poolBufferSize ;

/*  ============================================================================
 *  @name   pool_notify_NumIterations
 *
 *  @desc   Number of iterations of data transfer.
 *  ============================================================================
 */
STATIC Uint32  pool_notify_NumIterations ;

/** ============================================================================
 *  @name   pool_notify_DataBuf
 *
 *  @desc   Pointer to the shared data buffer used by the pool_notify sample
 *          application.
 *  ============================================================================
 */
Uint8 * color = NULL ;

Uint8 * resFrame = NULL ;

float * flres = NULL;

Uint32 dspCycles = 0;

Uint8 dspReady = 0;

Uint8 processorId = 0;


/** ============================================================================
 *  @func   gppSideCB
 *
 *  @desc   This function implements the event callback registered with the
 *          NOTIFY component to receive notification indicating that the DSP-
 *          side application has completed its setup phase.
 *
 *  @arg    eventNo
 *              Event number associated with the callback being invoked.
 *  @arg    arg
 *              Fixed argument registered with the IPS component along with
 *              the callback function.
 *  @arg    info
 *              Run-time information provided to the upper layer by the NOTIFY
 *              component. This information is specific to the IPS being
 *              implemented.
 *
 *  @ret    None.
 *
 *  @enter  None.
 *
 *  @leave  None.
 *
 *  @see    None.
 *  ============================================================================
 */
STATIC Void gppSideCB (Uint32 eventNo, Pvoid arg, Pvoid info) ;

sem_t sem;

/** ============================================================================
 *  @func   dspComInit
 *
 *  @desc   This function allocates and initializes resources used by
 *          this application.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API DSP_STATUS dspComInit (	IN Char8 * dspExecutable, IN Uint8   procId)
{
    DSP_STATUS      status     = DSP_SOK  ;

    Uint32          numArgs    = NUM_ARGS ;
    Void *          dspColor = NULL ;
    Void *          dspResFrame = NULL ;
    Uint32          numBufs [NUM_BUF_SIZES] = {NUM_BUF_POOL0, } ;
    Uint32          size    [NUM_BUF_SIZES] ;
    SMAPOOL_Attrs   poolAttrs ;
    Char8 *         args [NUM_ARGS] ;
    char            strFrameSize [7];

    poolBufferSize = DSPLINK_ALIGN (FRAME_SIZE, DSPLINK_BUF_ALIGN) ;

    processorId = procId;

    printf("Pool buffer size = %d\n", poolBufferSize);

    #ifdef DEBUG
    printf ("Entered dspComInit ()\n");
    #endif

    sem_init(&sem,0,0);

    /*
     *  Create and initialize the proc object.
     */
    status = PROC_setup (NULL) ;

    /*
     *  Attach the Dsp with which the transfers have to be done.
     */
    if (DSP_SUCCEEDED (status))
    {
        status = PROC_attach (processorId, NULL) ;
        if (DSP_FAILED (status))
        {
            printf ("PROC_attach () failed. Status = [0x%x]\n", (int)status );
        }
    }
    else
    {
        printf ("PROC_setup () failed. Status = [0x%x]\n", (int)status) ;
    }

    /*
     *  Open the pool.
     */
    if (DSP_SUCCEEDED (status))
    {
        size [0] = poolBufferSize ;
        poolAttrs.bufSizes      = (Uint32 *) &size ;
        poolAttrs.numBuffers    = (Uint32 *) &numBufs ;
        poolAttrs.numBufPools   = NUM_BUF_SIZES ;
        poolAttrs.exactMatchReq = TRUE ;
        status = POOL_open (POOL_makePoolId(processorId, SAMPLE_POOL_ID), &poolAttrs) ;
        if (DSP_FAILED (status))
        {
            printf ("POOL_open () failed. Status = [0x%x]\n", (int)status );
        }
    }

    /*
     *  Allocate the data buffer to be used for the application.
     */
    if (DSP_SUCCEEDED (status))
    {
        status = POOL_alloc (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                             (Void **) &color,
                             poolBufferSize) ;

        /* Get the translated DSP address to be sent to the DSP. */
        if (DSP_SUCCEEDED (status))
        {
            status = POOL_translateAddr (
                                   POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                                         &dspColor,
                                         AddrType_Dsp,
                                         (Void *) color,
                                         AddrType_Usr) ;

            if (DSP_FAILED (status))
            {
                printf ("POOL_translateAddr () for color failed."
                                 " Status = [0x%x]\n",
                                 (int)status) ;
            }
        }
        else
        {
            printf ("POOL_alloc() for color failed. Status = [0x%x]\n",(int)status);
        }
    }

    if (DSP_SUCCEEDED (status))
    {
        status = POOL_alloc (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                             (Void **) &resFrame,
                             poolBufferSize) ;

        /* Get the translated DSP address to be sent to the DSP. */
        if (DSP_SUCCEEDED (status))
        {
            status = POOL_translateAddr (
                                   POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                                         &dspResFrame,
                                         AddrType_Dsp,
                                         (Void *) resFrame,
                                         AddrType_Usr) ;

            if (DSP_FAILED (status))
            {
                printf ("POOL_translateAddr () for result frame failed."
                                 " Status = [0x%x]\n",
                                 (int)status) ;
            }
        }
        else
        {
            printf ("POOL_alloc() for result frame failed. Status = [0x%x]\n",(int)status);
        }
    }

    /*
     *  Register for notification that the DSP-side application setup is
     *  complete.
     */
    if (DSP_SUCCEEDED (status))
    {
        status = NOTIFY_register (processorId,
                                  pool_notify_IPS_ID,
                                  pool_notify_IPS_EVENTNO,
                                  (FnNotifyCbck) gppSideCB,
                                  0/* vladms XFER_SemPtr*/) ;
        if (DSP_FAILED (status))
        {
            printf ("NOTIFY_register () failed Status = [0x%x]\n",
                             (int)status) ;
        }
    }

    /*
     *  Load the executable on the DSP.
     */
    if (DSP_SUCCEEDED (status)) {

        sprintf(strFrameSize,"%d",poolBufferSize);
        args [0] = strFrameSize ;

        {
            status = PROC_load (processorId, dspExecutable, numArgs, args) ;
        }

        if (DSP_FAILED (status)) {
            printf ("PROC_load () failed. Status = [0x%x]\n", (int)status) ;
        }
    }

    /*
     *  Start execution on DSP.
     */
    if (DSP_SUCCEEDED (status)) {
        status = PROC_start (processorId) ;
        if (DSP_FAILED (status)) {
            printf ("PROC_start () failed. Status = [0x%x]\n",
                             (int)status) ;
        }
    }

    /*
     *  Wait for the DSP-side application to indicate that it has completed its
     *  setup. The DSP-side application sends notification of the IPS event
     *  when it is ready to proceed with further execution of the application.
     */
    if (DSP_SUCCEEDED (status)) {
        // wait for initialization
        isDspDone();
    }

    /*
     *  Send notifications to the DSP with information about the address of the
     *  control structure and data buffer to be used by the application.
     *
     */
    status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) dspColor);
    if (DSP_FAILED (status))
    {
        printf ("NOTIFY_notify () DataBuf failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }


    status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) dspResFrame);
    if (DSP_FAILED (status))
    {
        printf ("NOTIFY_notify () DataBuf failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }

    setDspState(DSP_BUSY);

	#ifdef DEBUG
    printf ("Leaving dspComInit ()\n") ;
	#endif

    return status ;
}

void unit_init(void)
{
    Uint32 i;

    for(i=0;i<poolBufferSize;i++)
    {
        color[i] = i%256;
        resFrame[i] = 0;
    }

}

#include <sys/time.h>

long long get_usec(void);

long long get_usec(void)
{
  long long r;
  struct timeval t;
  gettimeofday(&t,NULL);
  r=t.tv_sec*1000000+t.tv_usec;
  return r;
}

int mult_gpp(unsigned char* buf, int length)
{
    int a=0,i;
    for(i=0;i<length;i++)
	{
       a=a+buf[i];
    }
    return a;
}

/** ============================================================================
 *  @func   dspComExec
 *
 *  @desc   This function implements the execute phase for this application.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API DSP_STATUS dspComExec (Void)
{
    DSP_STATUS  status    = DSP_SOK ;

    Uint32 i;
    Uint16 temp;
    flres = (float *) resFrame;

	#ifdef DEBUG
    printf ("Entered dspComExec ()\n") ;
	#endif

	#if !defined(DSP)
    printf(" Result is %d \n", sum_dsp(color,poolBufferSize));
	#endif

	#if defined(DSP)
    /*POOL_writeback ( POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                    color,
                    poolBufferSize);*/

    /*POOL_writeback ( POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                    resFrame,
                    poolBufferSize);*/


    /*if(isDspReady())
    {
        dspCommand(INIT_BLUE);
        isDspDone();
    }

    if(isDspReady())
    {
        dspCommand(RETURN_FRAME);
        isDspDone();
    }*/

    /*if(isDspReady())
    {
        dspCommand(STOP_DSP);
    }*/

    /*for(i=640 * 480 - 8; i<640*480; i+=2)
    {
        temp = ((Uint16)resFrame[i+1])<< 8 | ((Uint16)resFrame[i]);
        printf("%d\t", temp);
    }
    printf("\n\n");*/

    //for(i=0; i<640*2+8; i++) printf("%d\t", resFrame[i]);
    /*for(i=0; i<58*86; i++)
    {
        if(i%86==0) printf("\n");
        printf("%f\t", flres[i+2]);
    }*/
    //printf("Data back OK");
    //printf("\n\n");

    printf("Computation time for fixed-point roots on DSP is %f msec\n", dspCycles * (double) 0.000001923);
    #endif

    return status ;
}


/** ============================================================================
 *  @func   dspComTerminate
 *
 *  @desc   This function releases resources allocated earlier by call to
 *          dspComInit ().
 *          During cleanup, the allocated resources are being freed
 *          unconditionally. Actual applications may require stricter check
 *          against return values for robustness.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API Void dspComTerminate ( Void )
{
    DSP_STATUS status    = DSP_SOK ;
    DSP_STATUS tmpStatus = DSP_SOK ;

	#ifdef DEBUG
    printf ("Entered dspComTerminate ()\n") ;
	#endif

    /*
     *  Stop execution on DSP.
     */
    status = PROC_stop (processorId) ;
    if (DSP_FAILED (status)) {
        printf ("PROC_stop () failed. Status = [0x%x]\n", (int)status) ;
    }

    /*
     *  Unregister for notification of event registered earlier.
     */
    tmpStatus = NOTIFY_unregister (processorId,
                                   pool_notify_IPS_ID,
                                   pool_notify_IPS_EVENTNO,
                                   (FnNotifyCbck) gppSideCB,
                                   0/* vladms pool_notify_SemPtr*/) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("NOTIFY_unregister () failed Status = [0x%x]\n",
                         (int)status) ;
    }

    /*
     *  Free the memory allocated for the data buffer.
     */
    tmpStatus = POOL_free (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                           (Void *) color,
                           poolBufferSize) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("POOL_free () DataBuf failed. Status = [0x%x]\n",
                         (int)status) ;
    }

    tmpStatus = POOL_free (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                           (Void *) resFrame,
                           poolBufferSize) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("POOL_free () DataBuf failed. Status = [0x%x]\n",
                         (int)status) ;
    }

    /*
     *  Close the pool
     */
    tmpStatus = POOL_close (POOL_makePoolId(processorId, SAMPLE_POOL_ID)) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("POOL_close () failed. Status = [0x%x]\n", (int)status) ;
    }

    /*
     *  Detach from the processor
     */
    tmpStatus = PROC_detach  (processorId) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("PROC_detach () failed. Status = [0x%x]\n", (int)status) ;
    }

    /*
     *  Destroy the PROC object.
     */
    tmpStatus = PROC_destroy () ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("PROC_destroy () failed. Status = [0x%x]\n", (int)status) ;
    }

	#ifdef DEBUG
    printf ("Leaving dspComTerminate ()\n") ;
	#endif
}


/** ============================================================================
 *  @func   dspInter_Main
 *
 *  @desc   Entry point for the application
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API Void dspInter_Main (IN Char8 * dspExecutable)
{
    DSP_STATUS status       = DSP_SOK ;

	#ifdef DEBUG
    printf ("========== Sample Application : pool_notify ==========\n") ;
	#endif

        /*
         *  Validate the buffer size and number of iterations specified.
         */
		#ifdef DEBUG
        printf(" Allocated a buffer of %d bytes\n",(int)poolBufferSize );
		#endif

        if (poolBufferSize == 0)
		{
            status = DSP_EINVALIDARG ;
            printf ("ERROR! Invalid arguments specified for  ");
            printf ("     Buffer size    = %d\n", (int)poolBufferSize) ;
        }

        /*
         *  Specify the dsp executable file name and the buffer size for
         *  pool_notify creation phase.
         */
        status = dspComInit (dspExecutable, 0) ;

        if (DSP_SUCCEEDED (status))
		{
            status = dspComExec () ;
        }

         dspComTerminate () ;

    printf ("====================================================\n") ;
}

Uint8 isDspReady ( Void )
{
    return dspReady;
}

Void isDspDone ( Void )
{
    sem_wait(&sem);
}

Void setDspState (Uint8 state)
{
    dspReady = state;
}

Void dspCommand( Uint8 command )
{
    NOTIFY_notify (processorId, pool_notify_IPS_ID, 6, (Uint32) command);
}

Void poolColor(Uint8 ColorIndex, Uint8 *newColor )
{
    Uint32 i,j=0;
    for(i=0; i<FRAME_SIZE; i++)
    {
        color[i]= newColor[3*i+j];
    }
    POOL_writeback ( POOL_makePoolId(processorId, SAMPLE_POOL_ID), color, poolBufferSize);
}

Void poolRectangle(Uint16 rectX, Uint16 rectY, Uint16 rectWidth, Uint16 rectHeight)
{
    Uint16 *rectangle = (Uint16*) resFrame;
    rectangle[0] = rectX;
    rectangle[1] = rectY;
    rectangle[2] = rectWidth;
    rectangle[3] = rectHeight;

    POOL_writeback (POOL_makePoolId(processorId, SAMPLE_POOL_ID), resFrame, 8);
}

Void kernelWB(float* krn, int size)
{
    memcpy(krn, flres, size * sizeof(float));
}

Uint8* pointToResult(Void)
{
    return resFrame+8;
}

/** ----------------------------------------------------------------------------
 *  @func   gppSideCB
 *
 *  @desc   This function implements the event callback registered with the
 *          NOTIFY component to receive notification indicating that the DSP-
 *          side application has completed its setup phase.
 *
 *  @modif  None
 *  ----------------------------------------------------------------------------
 */
STATIC Void gppSideCB (Uint32 eventNo, Pvoid arg, Pvoid info)
{
	#ifdef DEBUG
    //printf("Notification %8d \n", (int)info);
	#endif
    /* Post the semaphore. */
    if ((Uint32) info > 4)  dspCycles = (Uint32) info;
    else
    {
        if( ((Uint8) info) == DSP_DONE )
        {
            sem_post(&sem);
            dspReady = DSP_READY;
        }
        else dspReady = (Uint8) info;
    }
}


#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
