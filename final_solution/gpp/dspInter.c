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


#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */


// Number of arguments specified to the DSP application.
#define NUM_ARGS                       1

// ID of the POOL used.

#define SAMPLE_POOL_ID                 0

// Number of buffer pools to be configured for the allocator.

#define NUM_BUF_SIZES                  1

// Number of buffers in first buffer pool.

#define NUM_BUF_POOL0                  2
    
// Frame size of the video.

#define FRAME_SIZE                     640 * 480

// Indicates invalid processor ID within the pool_notify_Ctrl structure.
    
#define pool_notify_INVALID_ID            (Uint32) -1

// The IPS ID to be used for sending notification events to the DSP.

#define pool_notify_IPS_ID                0

// The IPS event number to be used for sending notification events to the DSP.

#define pool_notify_IPS_EVENTNO           5


// Size of buffer to be used for data transfer.

STATIC Uint32  poolBufferSize ;

//Pointers to the shared data buffers used for the communication with the DSP

Uint8 * colorBuf = NULL ;

Uint8 * resultBuf = NULL ;

float * flres = NULL; //float pointer to resultBuffer
    
//DSP state
    
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
 *  @desc   This function allocates and initializes the data structures needed for
 *          the communication with the DSP and iniates its operation.
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
     *  Allocate the data buffer to be used to pass the layers to the DSP.
     */
    if (DSP_SUCCEEDED (status))
    {
        status = POOL_alloc (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                             (Void **) &colorBuf,
                             poolBufferSize) ;

        /* Get the translated DSP address to be sent to the DSP. */
        if (DSP_SUCCEEDED (status))
        {
            status = POOL_translateAddr (
                                   POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                                         &dspColor,
                                         AddrType_Dsp,
                                         (Void *) colorBuf,
                                         AddrType_Usr) ;

            if (DSP_FAILED (status))
            {
                printf ("POOL_translateAddr () for colorBuf failed."
                                 " Status = [0x%x]\n",
                                 (int)status) ;
            }
        }
        else
        {
            printf ("POOL_alloc() for colorBuf failed. Status = [0x%x]\n",(int)status);
        }
    }
    
    /*
     *  Allocate the data buffer to be used to pass the rectangle coordinates
     *  and to the DSP and the resulting weights from the DSP to the GPP.
     */

    if (DSP_SUCCEEDED (status))
    {
        status = POOL_alloc (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                             (Void **) &resultBuf,
                             poolBufferSize) ;

        /* Get the translated DSP address to be sent to the DSP. */
        if (DSP_SUCCEEDED (status))
        {
            status = POOL_translateAddr (
                                   POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                                         &dspResFrame,
                                         AddrType_Dsp,
                                         (Void *) resultBuf,
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

        sprintf(strFrameSize,"%d",(int) poolBufferSize);
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
     *  data buffers to be used by the application.
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
     *  Free the memory allocated for the data buffers.
     */
    tmpStatus = POOL_free (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                           (Void *) colorBuf,
                           poolBufferSize) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("POOL_free () DataBuf failed. Status = [0x%x]\n",
                         (int)status) ;
    }

    tmpStatus = POOL_free (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                           (Void *) resultBuf,
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
}

/* Inform the functions outside this file whether the DSP is ready. */

Uint8 isDspReady ( Void )
{
    return dspReady;
}

/* Wait until the DSP is done. */    
    
Void isDspDone ( Void )
{
    sem_wait(&sem);
}
    
/* Set the state information of the DSP as seen by the GPP. */

Void setDspState (Uint8 state)
{
    dspReady = state;
}
    
/* Send a command to the DSP. */

Void dspCommand( Uint8 command )
{
    NOTIFY_notify (processorId, pool_notify_IPS_ID, 6, (Uint32) command);
}

/* Copy the contents of the defined layer(arg1), from the defined frame(arg2), for the region specified(args 3,4,5,6) to the pool. */
    
Void poolColor(Uint8 colorIndex, Uint8 *newColor, Uint16 rectX, Uint16 rectY, Uint16 rectWidth, Uint16 rectHeight )
{
    Uint32 k,j,i=0;
    Uint32 startingPixel=0;
    long long* octColor = (long long*) colorBuf;
    register long long longTemp;
    
    //Starting from the position (rectX,rectY).
    for(k=rectY;k<rectY + rectHeight;k++)
    {
        startingPixel = rectX + k*640;
        j=startingPixel- startingPixel%8;
        for(i=(startingPixel- startingPixel%8)/8;i<=(startingPixel + rectWidth)/8;i++)
        {
            //stop at the end of the rectangle if bytes out of the frame buffer are going to be read.
            if((k==rectY + rectHeight-1) && (i==(startingPixel + rectWidth)/8 && rectX+rectWidth+8 >=640 )) break;
            //read the contents of the specified layer 8 bytes at a time into double-word.
            longTemp = ((long long) newColor[3*(j+7) + colorIndex])<<(7*8) | ((long long) newColor[3*(j+6) + colorIndex])<<(6*8) | ((long long) newColor[3*(j+5) + colorIndex])<<(5*8) | ((long long) newColor[3*(j+4) + colorIndex]) | ((long long) newColor[3*(j+3) + colorIndex])<<(3*8) | ((long long) newColor[3*(j+2) + colorIndex])<<(2*8) | ((long long) newColor[3*(j+1) + colorIndex])<<(1*8) | ((long long) newColor[3*j + colorIndex]);
            //store the double-word into the pool.
            octColor[i]=longTemp;
            j+=8;
        }
    }
    
    //if the above loop stopped because bytes out of the frame buffer were going to be read, write the remaining unwritten pixels per byte.
    if(k==rectY + rectHeight && i==(startingPixel + rectWidth)/8 && rectX+rectWidth+8 >=640 )
    {
        for(i=(rectY+rectHeight-1)*640 +rectX + rectWidth - (rectX+rectWidth)%8;i<(rectY+rectHeight-1)*640 +rectX+rectWidth;i++)
            colorBuf[i]=newColor[i];
    }
    
    //write back to the pool all the bytes between the starting and the ending address of the rectangle.
    POOL_writeback ( POOL_makePoolId(processorId, SAMPLE_POOL_ID), colorBuf+rectY*640+rectX, rectHeight*640-rectX);
}

/* Copy the new rectangle to the pool using a double-word. */    
    
Void poolRectangle(Uint16 rectX, Uint16 rectY, Uint16 rectWidth, Uint16 rectHeight)
{
    long long *rectangle = (long long*) resultBuf;
    rectangle[0] = ((long long) rectHeight)<<48 | ((long long) rectWidth)<<32 | ((long long) rectY)<<16 | ((long long) rectX);

    POOL_writeback (POOL_makePoolId(processorId, SAMPLE_POOL_ID), resultBuf, 8);
}

/* Return a pointer to the produced by the DSP result. */    
    
Uint8* pointToResult(Void)
{
    return resultBuf+8;
}

/** ----------------------------------------------------------------------------
 *  @func   gppSideCB
 *
 *  @desc   This function implements the event callback registered with the
 *          NOTIFY component to receive notification indicating the state of
 *          the DSP side and the cycles it executed certain functions.
 *
 *  @modif  None
 *  ----------------------------------------------------------------------------
 */
STATIC Void gppSideCB (Uint32 eventNo, Pvoid arg, Pvoid info)
{
    #ifdef DET_TIMING
    Uint32 dspCycles = 0;
    static Uint8 count = 0;
    
    if ((Uint32) info > 4)
    {
        count++;
        dspCycles = (Uint32) info;
        //Execution time on DSP is calculated by multiplying the execution cycles with the inverse of its clock frequency(520MHz).
        if(count==1) printf("Initialization time on DSP is %f msec\n", dspCycles * (double) 0.000001923);
        if(count==2) printf("Kernel time on DSP is %f msec\n", dspCycles * (double) 0.000001923);
    }
    else
    {
        #endif
        if( ((Uint32) info) == DSP_DONE )
        {
            sem_post(&sem);
            dspReady = DSP_READY;
        }
        else dspReady = (Uint32) info;
    #ifdef DET_TIMING
    }
    #endif
}

#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
