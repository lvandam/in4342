/** ============================================================================
 *  @file   DSPMult.h
 *
 *  @path
 *
 *  @desc   Defines the configurable parameters for the message test which
 *          sends a message across the DSP processor and receives it back
 *          using DSP/BIOS LINK.
 *          It also does the data verification on the received message.
 *
 *  @ver    1.10
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2009
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */


#if !defined (HELLODSP_H)
#define HELLODSP_H

#if defined (__cplusplus)
extern "C"
{
#endif /* defined (__cplusplus) */


    /** ============================================================================
     *  @func   Communication_Initialize
     *
     *  @desc   This function allocates and initializes the resources used by
     *          the GPP to communicate with the DSP.
     *
     *  @arg    dspExecutable
     *              DSP executable name.
     *  @arg    strMatSize
     *              The size of the matrices to be multiplied with the use of
     *              the DSP in string format.
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
     *  @see    Communication_Delete
     *  ============================================================================
     */
    NORMAL_API DSP_STATUS Communication_Initialize(IN Char8* dspExecutable, IN Char8* strMatSize, IN Uint8 processorId);


    /** ============================================================================
     *  @func   DSPMult_Execute
     *
     *  @desc   This function implements the execute phase of the multiplication data handling for the DSP.
     *
     *  @arg    matSize
     *              The size of the matrices to be multiplied.
     *
     *  @arg    processorId
     *             Id of the DSP Processor.
     *
     *  @ret    DSP_SOK
     *              Operation successfully completed.
     *          DSP_EFAIL
     *              helloDSP execution failed.
     *
     *  @enter  None
     *
     *  @leave  None
     *
     *  @see    Communication_Delete , Communication_Create
     *  ============================================================================
     */
    NORMAL_API DSP_STATUS DSPMult_Execute(IN Uint32 numIterations, IN Uint8 processorId);


    /** ============================================================================
     *  @func   Communication_Delete
     *
     *  @desc   This function releases resources allocated earlier by call to
     *          Communication_Create ().
     *          During cleanup, the allocated resources are being freed
     *          unconditionally.
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
     *  @see    helloDSP_Create
     *  ============================================================================
     */
    NORMAL_API Void Communication_Delete(IN Uint8 processorId);


    /** ============================================================================
     *  @func   DSPMult_Main
     *
     *  @desc   The OS independent driver function for the helloDSP sample
     *          application.
     *
     *  @arg    dspExecutable
     *              Name of the DSP executable file.
     *  @arg    strMatSize
     *              The size of the matrices to be multiplied with the use of
     *              the DSP in string format.
     *  @arg    strProcessorId
     *             Id of the DSP Processor in string format.
     *
     *
     *  @ret    None
     *
     *  @enter  None
     *
     *  @leave  None
     *
     *  @see    helloDSP_Create, helloDSP_Execute, helloDSP_Delete
     *  ============================================================================
     */
    NORMAL_API Void DSPMult_Main(IN Char8* dspExecutable, IN Char8* strMatSize, IN Char8* strProcessorId);


#if defined (DA8XXGEM)
    /** ============================================================================
     *  @func   helloDSP_Main_DA8XX
     *
     *  @desc   The OS independent driver function for the helloDSP sample
     *          application.
     *
     *  @arg    dspExecutable
     *              Name of the DSP executable file.
     *  @arg    strNumIterations
     *              Number of iterations a message is transferred between
     *              GPP and DSP in string format.
     *  @arg    strProcessorId
     *             Id of the DSP Processor in string format.
     *  @arg    strDspAddr
     *              c_int00 address
     *  @arg    strShmAddr
     *              DSPLINK_shmBaseAddress address
     *  @arg    strArgsAddr
     *              .args section address
     *
     *  @ret    None
     *
     *  @enter  None
     *
     *  @leave  None
     *
     *  @see    helloDSP_Create, helloDSP_Execute, helloDSP_Delete
     *  ============================================================================
     */
    NORMAL_API Void helloDSP_Main_DA8XX(IN Char8* dspExecutable, IN Char8* strNumIterations, IN Char8* strProcessorId, IN Char8* strDspAddr, IN Char8* strShmAddr, IN Char8* strArgsAddr);
#endif

#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */


#endif /* !defined (HELLODSP_H) */
