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
#include <pool_notify.h>
//#include <pool_notify_os.h>
#include "Timer.h"


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
 *  @name   pool_notify_BufferSize
 *
 *  @desc   Size of buffer to be used for data transfer.
 *  ============================================================================
 */
STATIC Uint32  pool_notify_BufferSize ;

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
Uint8 * pool_notify_DataBuf1 = NULL ;
    
Uint32 * pool_notify_ValBuf1 = NULL ;
    
Uint8 * pool_notify_DataBuf2 = NULL ;
    
Uint32 * pool_notify_ValBuf2 = NULL ;
    
Uint16 * DSPpool_notify_ResBuf = NULL ;
    
Uint32 dspCycles = 0;


/** ============================================================================
 *  @func   pool_notify_Notify
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
STATIC Void pool_notify_Notify (Uint32 eventNo, Pvoid arg, Pvoid info) ;

sem_t sem;

/** ============================================================================
 *  @func   pool_notify_Create
 *
 *  @desc   This function allocates and initializes resources used by
 *          this application.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API DSP_STATUS pool_notify_Create (	IN Char8 * dspExecutable,
											IN Uint8   processorId)
{
    DSP_STATUS      status     = DSP_SOK  ;
    Uint32          numArgs    = NUM_ARGS ;
    Void *          dspDataBuf1 = NULL ;
    Void *          dspDataBuf2 = NULL ;
    Uint32          numBufs [NUM_BUF_SIZES] = {NUM_BUF_POOL0, } ;
    Uint32          size    [NUM_BUF_SIZES] ;
    SMAPOOL_Attrs   poolAttrs ;
    Char8 *         args [NUM_ARGS] ;
    char            strSize [6];

	#ifdef DEBUG
    printf ("Entered pool_notify_Create ()\n");
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
        size [0] = pool_notify_BufferSize ;
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
                             (Void **) &pool_notify_DataBuf1,
                             pool_notify_BufferSize) ;

        /* Get the translated DSP address to be sent to the DSP. */
        if (DSP_SUCCEEDED (status)) 
		{
            status = POOL_translateAddr (
                                   POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                                         &dspDataBuf1,
                                         AddrType_Dsp,
                                         (Void *) pool_notify_DataBuf1,
                                         AddrType_Usr) ;

            if (DSP_FAILED (status)) 
			{
                printf ("POOL_translateAddr () DataBuf1 failed."
                                 " Status = [0x%x]\n",
                                 (int)status) ;
            }
        }
        else 
		{
            printf ("POOL_alloc() DataBuf1 failed. Status = [0x%x]\n",(int)status);
        }
    }
    
    if (DSP_SUCCEEDED (status)) 
	{
        status = POOL_alloc (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                             (Void **) &pool_notify_DataBuf2,
                             pool_notify_BufferSize) ;

        /* Get the translated DSP address to be sent to the DSP. */
        if (DSP_SUCCEEDED (status)) 
		{
            status = POOL_translateAddr (
                                   POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                                         &dspDataBuf2,
                                         AddrType_Dsp,
                                         (Void *) pool_notify_DataBuf2,
                                         AddrType_Usr) ;

            if (DSP_FAILED (status)) 
			{
                printf ("POOL_translateAddr () DataBuf2 failed."
                                 " Status = [0x%x]\n",
                                 (int)status) ;
            }
        }
        else 
		{
            printf ("POOL_alloc() DataBuf2 failed. Status = [0x%x]\n",(int)status);
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
                                  (FnNotifyCbck) pool_notify_Notify,
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
        sprintf(strSize,"%d",BUF_SIZE);
        args [0] = strSize ;
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
        sem_wait(&sem);
    }

    /*
     *  Send notifications to the DSP with information about the address of the
     *  control structure and data buffer to be used by the application.
     *
     */
    status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) dspDataBuf1);
    if (DSP_FAILED (status)) 
	{
        printf ("NOTIFY_notify () DataBuf failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }

    status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) pool_notify_BufferSize);
    if (DSP_FAILED (status)) 
	{
        printf ("NOTIFY_notify () DataBuf failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }
    
    status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) dspDataBuf2);
    if (DSP_FAILED (status)) 
	{
        printf ("NOTIFY_notify () DataBuf failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }

    status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) pool_notify_BufferSize);
    if (DSP_FAILED (status)) 
	{
        printf ("NOTIFY_notify () DataBuf failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }

	#ifdef DEBUG
    printf ("Leaving pool_notify_Create ()\n") ;
	#endif

    return status ;
}
   
#define FRACBITS 16
#define ITERATIONS (15 + (FRACBITS >> 1))
    
Uint32 FFracSqrt(Uint32 x)
{
    register unsigned long root, remHi, remLo, testDiv, count;
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
    
void fixedRootMatrix(void) 
{
    Uint16 i;
    for(i=0;i<pool_notify_BufferSize/4;i++) pool_notify_ValBuf1[i] = FFracSqrt((pool_notify_ValBuf1[i]<<16));
}
    
void floatRootMatrix(void)
{
    Uint16 i;
    double temp;
    for(i=0;i<pool_notify_BufferSize/4;i++)
    {
        temp = sqrt(pool_notify_ValBuf1[i]);
        pool_notify_ValBuf1[i]=(Uint32) temp;
    }
}

void unit_init(void) 
{
    Uint16 i;
    pool_notify_ValBuf1[0] = 1;
    pool_notify_ValBuf2[0] = pool_notify_BufferSize/4 + 1;
    for(i=1;i<pool_notify_BufferSize/4;i++)
    {
        pool_notify_ValBuf1[i] = pool_notify_ValBuf1[i-1] + 1;
        pool_notify_ValBuf2[i] = pool_notify_ValBuf2[i-1] - 1;
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
 *  @func   pool_notify_Execute
 *
 *  @desc   This function implements the execute phase for this application.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API DSP_STATUS pool_notify_Execute (IN Uint32 numIterations, Uint8 processorId)
{
    DSP_STATUS  status    = DSP_SOK ;
    
    Uint32 i;
    Timer initialTimer, dspFixRootTimer;   

	#if defined(DSP)
    unsigned char *buf_dsp1, *buf_dsp2;
	#endif

	#ifdef DEBUG
    printf ("Entered pool_notify_Execute ()\n") ;
	#endif
    
    initTimer(&initialTimer, "Time elapsed during initialisation of the matrix");
    initTimer(&dspFixRootTimer, "Time elapsed during data transfering and computation of fixed point roots on DSP");

    pool_notify_ValBuf1 = (Uint32 *) pool_notify_DataBuf1;
    pool_notify_ValBuf2 = (Uint32 *) pool_notify_DataBuf2;
    
    startTimer(&initialTimer);
    unit_init();
    stopTimer(&initialTimer);

    for(i=0; i<pool_notify_BufferSize/4; i++) printf("%u\t", pool_notify_ValBuf1[i]);
    printf("\n\n");
    for(i=0; i<pool_notify_BufferSize/4; i++) printf("%u\t", pool_notify_ValBuf2[i]);
    printf("\n\n");
    
	#if !defined(DSP)
    printf(" Result is %d \n", sum_dsp(pool_notify_DataBuf1,pool_notify_BufferSize));
	#endif

	#if defined(DSP)
    startTimer(&dspFixRootTimer);
    POOL_writeback ( POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                    pool_notify_DataBuf1,
                    pool_notify_BufferSize);

    /*POOL_translateAddr ( POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                         (void*)&buf_dsp1,
                         AddrType_Dsp,
                         (Void *) pool_notify_DataBuf1,
                         AddrType_Usr) ;*/
    
    POOL_writeback ( POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                    pool_notify_DataBuf2,
                    pool_notify_BufferSize);

    /*POOL_translateAddr ( POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                         (void*)&buf_dsp2,
                         AddrType_Dsp,
                         (Void *) pool_notify_DataBuf2,
                         AddrType_Usr) ;*/
    
    NOTIFY_notify (processorId,pool_notify_IPS_ID,pool_notify_IPS_EVENTNO,1);

    sem_wait(&sem);
    stopTimer(&dspFixRootTimer);
    for(i=0; i<pool_notify_BufferSize/4; i++) printf("%d\t", pool_notify_ValBuf1[i]);
    printf("\n\n");
    
    printTimer(&dspFixRootTimer);
    printf("Computation time for fixed-point roots on DSP is %f msec\n", dspCycles * (double) 0.000001923);
    #endif
    
    printTimer(&initialTimer);

    return status ;
}


/** ============================================================================
 *  @func   pool_notify_Delete
 *
 *  @desc   This function releases resources allocated earlier by call to
 *          pool_notify_Create ().
 *          During cleanup, the allocated resources are being freed
 *          unconditionally. Actual applications may require stricter check
 *          against return values for robustness.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API Void pool_notify_Delete (Uint8 processorId)
{
    DSP_STATUS status    = DSP_SOK ;
    DSP_STATUS tmpStatus = DSP_SOK ;

	#ifdef DEBUG
    printf ("Entered pool_notify_Delete ()\n") ;
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
                                   (FnNotifyCbck) pool_notify_Notify,
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
                           (Void *) pool_notify_DataBuf1,
                           pool_notify_BufferSize) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("POOL_free () DataBuf failed. Status = [0x%x]\n",
                         (int)status) ;
    }
    
    tmpStatus = POOL_free (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                           (Void *) pool_notify_DataBuf2,
                           pool_notify_BufferSize) ;
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
    printf ("Leaving pool_notify_Delete ()\n") ;
	#endif
}


/** ============================================================================
 *  @func   pool_notify_Main
 *
 *  @desc   Entry point for the application
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API Void pool_notify_Main (IN Char8 * dspExecutable)
{
    DSP_STATUS status       = DSP_SOK ;
    Uint8      processorId  = 0 ;

	#ifdef DEBUG
    printf ("========== Sample Application : pool_notify ==========\n") ;
	#endif

    if (   (dspExecutable != NULL)  ) 
	{
        /*
         *  Validate the buffer size and number of iterations specified.
         */
        pool_notify_BufferSize = DSPLINK_ALIGN ( BUF_SIZE,
                                             DSPLINK_BUF_ALIGN) ;
		#ifdef DEBUG
        printf(" Allocated a buffer of %d bytes\n",(int)pool_notify_BufferSize );
		#endif
		
        processorId = 0 ;
        if (pool_notify_BufferSize == 0) 
		{
            status = DSP_EINVALIDARG ;
            printf ("ERROR! Invalid arguments specified for  ");
            printf ("     Buffer size    = %d\n", (int)pool_notify_BufferSize) ;
        }

        /*
         *  Specify the dsp executable file name and the buffer size for
         *  pool_notify creation phase.
         */
        status = pool_notify_Create (dspExecutable,
                                     0) ;

        if (DSP_SUCCEEDED (status)) 
		{
            status = pool_notify_Execute (pool_notify_NumIterations, 0) ;
        }

         pool_notify_Delete (processorId) ;
        
    }
    else 
	{
        status = DSP_EINVALIDARG ;
        printf ("ERROR! Invalid arguments specified for  "
                         "pool_notify application\n") ;
    }

    printf ("====================================================\n") ;
}

/** ----------------------------------------------------------------------------
 *  @func   pool_notify_Notify
 *
 *  @desc   This function implements the event callback registered with the
 *          NOTIFY component to receive notification indicating that the DSP-
 *          side application has completed its setup phase.
 *
 *  @modif  None
 *  ----------------------------------------------------------------------------
 */
STATIC Void pool_notify_Notify (Uint32 eventNo, Pvoid arg, Pvoid info)
{
	#ifdef DEBUG
    printf("Notification %8d \n", (int)info);
	#endif
    /* Post the semaphore. */
    if((int)info==0) 
	{
        sem_post(&sem);
    } 
    else 
	{
        dspCycles = (Uint32) info;
    }
}


#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
