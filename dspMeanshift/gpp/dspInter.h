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
#define COMBINE_BLUE       4
#define INIT_BLUE          5
#define INIT_GREEN         6
#define INIT_RED           7
#define WEIGHT_BLUE        8
#define WEIGHT_GREEN       9
#define WEIGHT_RED         10

Uint8 isDspReady ( Void );

Void isDspDone ( Void );

Void dspCommand( Uint8 command);

Void copyToBuffer (Uint8 *ptr, Uint8 *buffer, Uint8 color, Uint8 length);

Void poolColor(Uint8 colorIndex, Uint8 *newColor, Uint16 rectX, Uint16 rectY, Uint16 rectWidth, Uint16 rectHeight );

Void poolRectangle(Uint16 rectX, Uint16 rectY, Uint16 rectHeight, Uint16 rectWidth);

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

#endif /* !defined (pool_notify_H) */
