#if !defined (pool_notify_H)
#define pool_notify_H

/*  ----------------------------------- DSP/BIOS Link                 */
#include <dsplink.h>


/** ============================================================================
 *  @const  ID_PROCESSOR
 *
 *  @desc   The processor id of the processor being used.
 *  ============================================================================
 */

#define BLUE               0
#define GREEN              1
#define RED                2

// DSP status

#define DSP_BUSY           0
#define DSP_READY          1
#define DSP_DONE           2

#define STOP_DSP           0
#define IDLE               1
#define LOAD_COLOR         2
#define RETURN_RESULT      3
#define EPAN               4
#define INIT_BLUE          5
#define INIT_GREEN         6
#define INIT_RED           7
#define REPRESENT          8
#define WEIGHT_BLUE        9
#define WEIGHT_GREEN      10
#define WEIGHT_RED        11
#define WEIGHT_ALL        12


Uint8 isDspReady ( Void );

Void isDspDone ( Void );

Void dspCommand( Uint8 command);

Void copyToBuffer (Uint8 *ptr, Uint8 *buffer, Uint8 color, Uint8 length);

Void poolColor(Uint8 ColorIndex, Uint8 *newColor );

Void poolRectangle(Uint16 rectX, Uint16 rectY, Uint16 rectHeight, Uint16 rectWidth);

Void kernelWB(float* krn, int size);

Uint8* pointToResult(Void);

Void setDspState (Uint8 state);
/** ============================================================================
 *  @func   dspComInit
 *
 *  @desc   This function allocates and initializes resources used by
 *          this application.
 *
 *  @arg    dspExecutable
 *              DSP executable name.
 *  @arg    strBufferSize
 *              String representation of buffer size to be used
 *              for data transfer.
 *  @arg    strNumIterations
 *              Number of iterations a data buffer is transferred between
 *              GPP and DSP in string format.
 *  @arg    processorId
 *             Id of the DSP Processor.
 *
 *  @ret    DSP_SOK
 *              Operation successfully completed.
 *          DSP_EFAIL
 *              Resource allocation failed.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    dspComTerminate
 *  ============================================================================
 */
NORMAL_API
DSP_STATUS
dspComInit (IN Char8 * dspExecutable, IN Uint8   processorId) ;


/** ============================================================================
 *  @func   dspComExec
 *
 *  @desc   This function implements the execute phase for this application.
 *
 *  @arg    numIterations
 *              Number of times to send the message to the DSP.
 *  @arg    processorId
 *             Id of the DSP Processor.
 *
 *  @ret    DSP_SOK
 *              Operation successfully completed.
 *          DSP_EFAIL
 *              MESSAGE execution failed.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    dspComTerminate , dspComInit
 *  ============================================================================
 */
NORMAL_API
DSP_STATUS
dspComExec (Void) ;


/** ============================================================================
 *  @func   dspComTerminate
 *
 *  @desc   This function releases resources allocated earlier by call to
 *          dspComInit ().
 *          During cleanup, the allocated resources are being freed
 *          unconditionally. Actual applications may require stricter check
 *          against return values for robustness.
 *
 *  @arg    processorId
 *             Id of the DSP Processor.
 *
 *  @ret    DSP_SOK
 *              Operation successfully completed.
 *          DSP_EFAIL
 *              Resource deallocation failed.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    dspComInit
 *  ============================================================================
 */
NORMAL_API
Void
dspComTerminate (Void) ;


/** ============================================================================
 *  @func   pool_notify_Main
 *
 *  @desc   The OS independent driver function for the MESSAGE sample
 *          application.
 *
 *  @arg    dspExecutable
 *              Name of the DSP executable file.
 *  @arg    strBufferSize
 *              Buffer size to be used for data-transfer in string format.
 *  @arg    strNumIterations
 *              Number of iterations a data buffer is transferred between
 *              GPP and DSP in string format.
 *  @arg    strProcessorId
 *             ID of the DSP Processor in string format.
 *
 *  @ret    None
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    dspComInit, dspComExec, dspComTerminate
 *  ============================================================================
 */
NORMAL_API
Void
dspInter_Main (IN Char8 * dspExecutable) ;


#endif /* !defined (pool_notify_H) */
