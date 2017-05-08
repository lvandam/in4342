/** ============================================================================
 *  @file   DSPMult.c
 *
 *  @path
 *
 *  @desc   This is an application which sends messages to the DSP
 *          processor and receives them back using DSP/BIOS LINK.
 *          The message contents received are verified against the data
 *          sent to DSP.
 *
*/
/*  ----------------------------------- DSP/BIOS Link                   */
#include <dsplink.h>

/*  ----------------------------------- DSP/BIOS LINK API               */
#include <proc.h>
#include <msgq.h>
#include <pool.h>

/*  ----------------------------------- Application Header              */
#include <DSPMult.h>
#include <system_os.h>

#include <stdio.h>
#include <string.h>
#include "matrix_config.h"
#include "Timer.h"

#if defined (__cplusplus)
extern "C"
{
#endif /* defined (__cplusplus) */

/* Number of arguments specified to the DSP application. */
#define NUM_ARGS 1
/* Data size of the control message queue */
#define DATA_SIZE 16384
/* Text size of the control message queue */
#define TEXT_SIZE 20
   
/* ID of the POOL used. */
#define SAMPLE_POOL_ID  0

    /*  Number of BUF pools in the entire memory pool */
#define NUMMSGPOOLS     4

    /* Number of messages in each BUF pool. */
#define NUMMSGINPOOL0   1
#define NUMMSGINPOOL1   2
#define NUMMSGINPOOL2   2
#define NUMMSGINPOOL3   4

//#define DEBUG


/* Control message data structure. */
/* Must contain a reserved space for the header */
typedef struct ControlMsg
{
    MSGQ_MsgHeader header;
    Uint16 command;
    Int16 mat[DATA_SIZE];
    Char8 text[TEXT_SIZE];
} ControlMsg;

    /* Messaging buffer used by the application.
     * Note: This buffer must be aligned according to the alignment expected
     * by the device/platform. */
#define APP_BUFFER_SIZE DSPLINK_ALIGN (sizeof (ControlMsg), DSPLINK_BUF_ALIGN)

    /* Definitions required for the sample Message queue.
     * Using a Zero-copy based transport on the shared memory physical link. */
#if defined ZCPY_LINK
#define SAMPLEMQT_CTRLMSG_SIZE  ZCPYMQT_CTRLMSG_SIZE
    STATIC ZCPYMQT_Attrs mqtAttrs;
#endif

    /* Message sizes managed by the pool */
    STATIC Uint32 SampleBufSizes[NUMMSGPOOLS] =
    {
        APP_BUFFER_SIZE,
        SAMPLEMQT_CTRLMSG_SIZE,
        DSPLINK_ALIGN (sizeof(MSGQ_AsyncLocateMsg), DSPLINK_BUF_ALIGN),
        DSPLINK_ALIGN (sizeof(MSGQ_AsyncErrorMsg), DSPLINK_BUF_ALIGN)
    };

    /* Number of messages in each pool */
    STATIC Uint32 SampleNumBuffers[NUMMSGPOOLS] =
    {
        NUMMSGINPOOL0,
        NUMMSGINPOOL1,
        NUMMSGINPOOL2,
        NUMMSGINPOOL3
    };

    /* Definition of attributes for the pool based on physical link used by the transport */
#if defined ZCPY_LINK
    STATIC SMAPOOL_Attrs SamplePoolAttrs =
    {
        NUMMSGPOOLS,
        SampleBufSizes,
        SampleNumBuffers,
        TRUE   /* If allocating a buffer smaller than the POOL size, set this to FALSE */
    };
#endif

    /* Name of the first MSGQ on the GPP and on the DSP. */
    STATIC Char8 SampleGppMsgqName[DSP_MAX_STRLEN] = "GPPMSGQ1";
    STATIC Char8 SampleDspMsgqName[DSP_MAX_STRLEN] = "DSPMSGQ";

    /* Local GPP's and DSP's MSGQ Objects. */
    STATIC MSGQ_Queue SampleGppMsgq = (Uint32) MSGQ_INVALIDMSGQ;
    STATIC MSGQ_Queue SampleDspMsgq = (Uint32) MSGQ_INVALIDMSGQ;

    /* Place holder for the MSGQ name created on DSP */
    Char8 dspMsgqName[DSP_MAX_STRLEN];

    /* Extern declaration to the default DSP/BIOS LINK configuration structure. */
    extern LINKCFG_Object LINKCFG_config;
    
    Int16 mat1 [MAX_MATSIZE][MAX_MATSIZE];
    Int16 mat2 [MAX_MATSIZE][MAX_MATSIZE];
    Int32 gppres [MAX_MATSIZE][MAX_MATSIZE];
    Int32 dspres [MAX_MATSIZE][MAX_MATSIZE];
    Int16 tmp [DATA_SIZE];
    ControlMsg *msg;
    
    
    STATIC NORMAL_API DSP_STATUS sendMessage(ControlMsg* message, Uint16 id, Uint16 command, Char8* text, Uint8 textLength, Int16* data, Uint16 dataLength);

#if defined (VERIFY_DATA)
    /** ============================================================================
     *  @func   helloDSP_VerifyData
     *
     *  @desc   This function verifies the data-integrity of given message.
     *  ============================================================================
     */
    STATIC NORMAL_API DSP_STATUS helloDSP_VerifyData(IN MSGQ_Msg msg, IN Uint16 sequenceNumber);
#endif


    /** ============================================================================
     *  @func   Communication_Initialize
     *
     *  @desc   This function allocates and initializes the resources used by
     *          the GPP to communicate with the DSP.
     *  ============================================================================
     */
    NORMAL_API DSP_STATUS Communication_Initialize(IN Char8* dspExecutable, IN Char8* strMatSize, IN Uint8 processorId)
    {
        DSP_STATUS status = DSP_SOK;
        Uint32 numArgs = NUM_ARGS;
        MSGQ_LocateAttrs syncLocateAttrs;
        Char8* args[NUM_ARGS];

        #ifdef DEBUG
        SYSTEM_0Print("Entered Communication_Initialize\n");
        #endif
        
        /* Create and initialize the proc object. */
        status = PROC_setup(NULL);

        /* Attach the Dsp with which the transfers have to be done. */
        if (DSP_SUCCEEDED(status))
        {
            status = PROC_attach(processorId, NULL);
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("PROC_attach () failed. Status = [0x%x]\n", status);
            }
        }

        /* Open the pool. */
        if (DSP_SUCCEEDED(status))
        {
            status = POOL_open(POOL_makePoolId(processorId, SAMPLE_POOL_ID), &SamplePoolAttrs);
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("POOL_open () failed. Status = [0x%x]\n", status);
            }
        }
        else
        {
            SYSTEM_1Print("PROC_setup () failed. Status = [0x%x]\n", status);
        }

        /* Open the GPP's message queue */
        if (DSP_SUCCEEDED(status))
        {
            status = MSGQ_open(SampleGppMsgqName, &SampleGppMsgq, NULL);
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("MSGQ_open () failed. Status = [0x%x]\n", status);
            }
        }

        /* Set the message queue that will receive any async. errors */
        if (DSP_SUCCEEDED(status))
        {
            status = MSGQ_setErrorHandler(SampleGppMsgq, POOL_makePoolId(processorId, SAMPLE_POOL_ID));
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("MSGQ_setErrorHandler () failed. Status = [0x%x]\n", status);
            }
        }

        /* Load the executable on the DSP. */
        if (DSP_SUCCEEDED(status))
        {
            args [0] = strMatSize;
            {
                status = PROC_load(processorId, dspExecutable, numArgs, args);
            }
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("PROC_load () failed. Status = [0x%x]\n", status);
            }
        }

        /* Start execution on DSP. */
        if (DSP_SUCCEEDED(status))
        {
            status = PROC_start(processorId);
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("PROC_start () failed. Status = [0x%x]\n", status);
            }
        }

        /* Open the remote transport. */
        if (DSP_SUCCEEDED(status))
        {
            mqtAttrs.poolId = POOL_makePoolId(processorId, SAMPLE_POOL_ID);
            status = MSGQ_transportOpen(processorId, &mqtAttrs);
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("MSGQ_transportOpen () failed. Status = [0x%x]\n", status);
            }
        }

        /* Locate the DSP's message queue */
        /* At this point the DSP must open a message queue named "DSPMSGQ" */
        if (DSP_SUCCEEDED(status))
        {
            syncLocateAttrs.timeout = WAIT_FOREVER;
            status = DSP_ENOTFOUND;
            SYSTEM_2Sprint(dspMsgqName, "%s%d", (Uint32) SampleDspMsgqName, processorId);
            while ((status == DSP_ENOTFOUND) || (status == DSP_ENOTREADY))
            {
                status = MSGQ_locate(dspMsgqName, &SampleDspMsgq, &syncLocateAttrs);
                if ((status == DSP_ENOTFOUND) || (status == DSP_ENOTREADY))
                {
                    SYSTEM_Sleep(10000);
                }
                else if (DSP_FAILED(status))
                {
                    SYSTEM_1Print("MSGQ_locate () failed. Status = [0x%x]\n", status);
                }
            }
        }
        
        #ifdef DEBUG
        SYSTEM_0Print("Leaving Communication_Initialize\n");
        #endif
        
        return status;
    }


    /** ============================================================================
     *  @func   DSPMult_Execute
     *
     *  @desc   This function implements the execute phase of the multiplication data handling for the DSP.
     *  ============================================================================
     */
    NORMAL_API DSP_STATUS DSPMult_Execute(IN Uint32 matSize, Uint8 processorId)
    {
        DSP_STATUS  status = DSP_SOK;
        Uint16 msgId = 0;
        Uint16 i,j,packIndex, rcIndex, curRow, curCol, recRow, recCol, recIndex;
        Uint16 inRCindex=0;
        Int32 rctmp;
        #ifdef DEBUG
        SYSTEM_0Print("Entered DSPMult_Execute\n");
        #endif

#if defined (PROFILE)
        SYSTEM_GetStartTime();
#endif

            /* Receive the message. */
            status = MSGQ_get(SampleGppMsgq, WAIT_FOREVER, (MsgqMsg *) &msg);
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("MSGQ_get () failed. Status = [0x%x]\n", status);
            }

            #ifdef DEBUG
            if (msg->command == 0x01)
                SYSTEM_1Print("Message received: %s\n", (Uint32) msg->text);
            else if (msg->command == 0x02)
                SYSTEM_1Print("Message received: %s\n", (Uint32) msg->text);
            #endif
        
            //If both matrices fit in one message, they are placed in it.      
            if(matSize*matSize<=DATA_SIZE/2)
            {
               if (DSP_SUCCEEDED(status))
                {
                    msgId = MSGQ_getMsgId(msg);

                    for(i=0;i<matSize;i++)
                    {
                        for(j=0;j<matSize;j++)
                        {
                            //first mat1
                            tmp[i*matSize + j] = mat1[i][j];
                            //then mat2
                            tmp[matSize * matSize + i*matSize + j] = mat2[j][i];
                        }
                    }
                    
                   //the message is sent to the DSP and the result matrix can be computed immediately.
                    sendMessage(msg, msgId, 0x02, "",0,tmp, 2 * matSize*matSize);
                   
                }

                //the result matrix is received.
                status = MSGQ_get(SampleGppMsgq, WAIT_FOREVER, (MsgqMsg *) &msg);
                if (DSP_FAILED(status))
                {
                    SYSTEM_1Print("MSGQ_get () failed. Status = [0x%x]\n", status);
                }
            
                //and it is copied from the message buffer
                for(i=0;i<matSize;i++)
                {
                    for(j=0;j<matSize;j++)
                    {
                        memcpy(&rctmp, msg->mat + 2*(i*matSize + j), sizeof(Int32));
                        dspres[i][j] = rctmp;
                    }
                }
            }
        
            else
            {
                //else mat1 and mat2 are sent as rows and columns respectively filling the messages in a format in which first one row from mat1 start to fill the message until it is full or the row is copied completely into the message. Then a column from matrix2 follows. The rows and columns are passed alternately, filling completely the message structure until both matrices are copied on the DSP.
                curRow=0;
                curCol=0;
                recRow=0;
                recCol=0;
                rcIndex=0;
                
                //while there are still results to be obtained the process continues.
                while((recRow < matSize) || (recCol < matSize))
                {
                    //messages are filled with the mat1 rows and mat2 columns until all the elements are sent to the DSP.
                    if(curRow < matSize || curCol < matSize)
                    {
                        //The filling of the packet must stop, if the packet is full or if all the elements are already sent.
                        for(packIndex=0;packIndex<DATA_SIZE && (curRow < matSize || curCol < matSize); packIndex++)
                        {
                            if(curRow <= curCol)
                            {
                                tmp[packIndex] = mat1[curRow][rcIndex++];
                                if(rcIndex%matSize == 0)
                                {
                                    rcIndex=0;
                                    curRow++;
                                }
                            }
                            else
                            {
                                tmp[packIndex] = mat2[rcIndex++][curCol];
                                if(rcIndex%matSize == 0)
                                {
                                    rcIndex=0;
                                    curCol++;
                                }
                            }
                        }

                        #ifdef DEBUG
                        SYSTEM_0Print("Sent message:\n");
                        for(i=0;i<DATA_SIZE;i++)
                        {
                            SYSTEM_1Print("%d\t", tmp[i]);
                        }
                        SYSTEM_0Print("\n\n");
                        #endif
                    
                    }
                    //the message is sent to the DSP.
                    sendMessage(msg, ++msgId, 0x02, "",0,tmp, DATA_SIZE);
                    
                    //Subsequently, a message containing the result which was possible to be computed by the parts of the matrices already sent, are received.
                    status = MSGQ_get(SampleGppMsgq, WAIT_FOREVER, (MsgqMsg *) &msg);
                    if (DSP_FAILED(status))
                    {
                        SYSTEM_1Print("MSGQ_get () failed. Status = [0x%x]\n", status);
                    }
                    
                    #ifdef DEBUG
                    SYSTEM_0Print("Received message:\n");
                    for(i=0;i<DATA_SIZE;i++)
                    {
                        SYSTEM_1Print("%d\t", msg->mat[i]);
                    }
                    SYSTEM_0Print("\n\n");
                    #endif
                    
                    recIndex=0;
                    //While there are results which require only the sent elements to be computed, they are received until the message is emptied.
                    while(((recRow < curRow) || (recCol < curCol)) && (recIndex<DATA_SIZE))
                    {
                        //The result are received in the order they were produced, as when the arrival of a new row of mat1 is completed on the DSP, it can be multiplied with all the already received columns of mat2.
                        if(recRow<=recCol)
                        {
                            if(inRCindex < recCol) 
                            {
                                //since the results of a 16-bit operands multiplication are 32 bits, two positions of the message data buffer are needed for a result to be returned.
                                memcpy(&rctmp, msg->mat + recIndex, sizeof(Int32));
                                dspres[recRow][inRCindex++]=rctmp;
                                recIndex+=2;
                            }
                            if(inRCindex == recCol)
                            {
                                inRCindex=0;
                                recRow++;
                            }
                        }
                        else
                        {
                            //Similarly, when a new column of mat2 arrives completely on the DSP, it can be multiplied with all the already received rows of mat1.
                            if(inRCindex < recRow) 
                            {
                                memcpy(&rctmp, msg->mat + recIndex, sizeof(Int32));
                                dspres[inRCindex++][recCol]= rctmp;
                                recIndex+=2;
                            }
                            if(inRCindex == recRow)
                            {
                                inRCindex=0;
                                recCol++;
                            }    
                        }
                    }
                }
            }
        
            MSGQ_free((MsgqMsg) msg);

#if defined (PROFILE)
        if (DSP_SUCCEEDED(status))
        {
            SYSTEM_GetEndTime();
            SYSTEM_GetProfileInfo(matSize);
        }
#endif
        
        #ifdef DEBUG
        SYSTEM_0Print("Leaving DSPMult_Execute\n");
        #endif

        return status;
    }


    /** ============================================================================
     *  @func   Communication_Delete
     *
     *  @desc   This function releases resources allocated earlier by call to
     *          Communication_Create ().
     *          During cleanup, the allocated resources are being freed
     *          unconditionally.
     *  ============================================================================
     */
    NORMAL_API Void Communication_Delete(Uint8 processorId)
    {
        DSP_STATUS status = DSP_SOK;
        DSP_STATUS tmpStatus = DSP_SOK;

        #ifdef DEBUG
        SYSTEM_0Print("Entered Communication_Delete ()\n");
        #endif

        /* Release the remote message queue */
        status = MSGQ_release(SampleDspMsgq);
        if (DSP_FAILED(status))
        {
            SYSTEM_1Print("MSGQ_release () failed. Status = [0x%x]\n", status);
        }

        /* Close the remote transport */
        tmpStatus = MSGQ_transportClose(processorId);
        if (DSP_SUCCEEDED(status) && DSP_FAILED(tmpStatus))
        {
            status = tmpStatus;
            SYSTEM_1Print("MSGQ_transportClose () failed. Status = [0x%x]\n", status);
        }

        /* Stop execution on DSP. */
        tmpStatus = PROC_stop(processorId);
        if (DSP_SUCCEEDED(status) && DSP_FAILED(tmpStatus))
        {
            status = tmpStatus;
            SYSTEM_1Print("PROC_stop () failed. Status = [0x%x]\n", status);
        }

        /* Reset the error handler before deleting the MSGQ that receives */
        /* the error messages.                                            */
        tmpStatus = MSGQ_setErrorHandler(MSGQ_INVALIDMSGQ, MSGQ_INVALIDMSGQ);

        if (DSP_SUCCEEDED(status) && DSP_FAILED(tmpStatus))
        {
            status = tmpStatus;
            SYSTEM_1Print("MSGQ_setErrorHandler () failed. Status = [0x%x]\n", status);
        }

        /* Close the GPP's message queue */
        tmpStatus = MSGQ_close(SampleGppMsgq);
        if (DSP_SUCCEEDED(status) && DSP_FAILED(tmpStatus))
        {
            status = tmpStatus;
            SYSTEM_1Print("MSGQ_close () failed. Status = [0x%x]\n", status);
        }

        /* Close the pool */
        tmpStatus = POOL_close(POOL_makePoolId(processorId, SAMPLE_POOL_ID));
        if (DSP_SUCCEEDED(status) && DSP_FAILED(tmpStatus))
        {
            status = tmpStatus;
            SYSTEM_1Print("POOL_close () failed. Status = [0x%x]\n", status);
        }

        /* Detach from the processor */
        tmpStatus = PROC_detach(processorId);
        if (DSP_SUCCEEDED(status) && DSP_FAILED(tmpStatus))
        {
            status = tmpStatus;
            SYSTEM_1Print("PROC_detach () failed. Status = [0x%x]\n", status);
        }

        /* Destroy the PROC object. */
        tmpStatus = PROC_destroy();
        if (DSP_SUCCEEDED(status) && DSP_FAILED(tmpStatus))
        {
            status = tmpStatus;
            SYSTEM_1Print("PROC_destroy () failed. Status = [0x%x]\n", status);
        }
        
        #ifdef DEBUG
        SYSTEM_0Print("Leaving Communication_Delete ()\n");
        #endif
    }


    /** ============================================================================
     *  @func   DSPMult_Main
     *
     *  @desc   Entry point for the application
     *  ============================================================================
     */
    NORMAL_API Void DSPMult_Main(IN Char8* dspExecutable, IN Char8* strMatSize, IN Char8* strProcessorId)
    {
        DSP_STATUS status = DSP_SOK;
        Uint32 matSize = 0;
        Uint8 processorId = 0;
        Timer tgpp, tdsp, tfill, tinit;
        #ifdef DEBUG
        Uint16 i,j;
        #endif

        SYSTEM_0Print ("========== DSP Multiplication ==========\n");

        if ((dspExecutable != NULL) && (strMatSize != NULL))
        {
            matSize = SYSTEM_Atoi(strMatSize);

            if (matSize > MAX_MATSIZE)
            {
                status = DSP_EINVALIDARG;
                SYSTEM_1Print("ERROR! Invalid arguments specified.\nMaximum matrix size = %d\n", 128);
            }
            else
            {
                processorId = SYSTEM_Atoi(strProcessorId);

                if (processorId >= MAX_DSPS)
                {
                    SYSTEM_1Print("== Error: Invalid processor id %d specified ==\n", processorId);
                    status = DSP_EFAIL;
                }
                /* Specify the dsp executable file name for message creation phase. */
                if (DSP_SUCCEEDED(status))
                {
                    initTimer(&tfill,"Time required to fill the matrices");
                    initTimer(&tgpp,"Time required to perform the multiplication on the GPP");
                    initTimer(&tdsp,"Time required to perform the multiplication on the DSP");
                    initTimer(&tinit,"Time required to initialize the communication path between the GPP and the DSP");
                    
                    startTimer(&tfill);
                    status = matrix_fill(1, matSize ,mat1);
                    if (DSP_FAILED(status))
                    {
                        SYSTEM_1Print("Matrix1 filling failed. Status = [0x%x]\n", status);
                    }
                    
                    #ifdef DEBUG
                    SYSTEM_0Print("Matrix1:\n");
                    for(i=0;i<matSize;i++)
                    {
                        for(j=0;j<matSize;j++)
                        {
                            SYSTEM_1Print("%d\t", mat1[i][j]);
                        }
                        SYSTEM_0Print("\n");
                    }
                    SYSTEM_0Print("\n");
                    #endif
                    
                    if (DSP_SUCCEEDED(status))
                    {
                        status = matrix_fill(2, matSize, mat2);
                        if (DSP_FAILED(status))
                        {
                            SYSTEM_1Print("Matrix2 filling failed. Status = [0x%x]\n", status);
                        }
                    }
                    stopTimer(&tfill);
                    
                    #ifdef DEBUG
                    SYSTEM_0Print("Matrix2:\n");
                    for(i=0;i<matSize;i++)
                    {
                        for(j=0;j<matSize;j++)
                        {
                            SYSTEM_1Print("%d\t", mat2[i][j]);
                        }
                        SYSTEM_0Print("\n");
                    }
                    SYSTEM_0Print("\n");
                    #endif
                    printTimer(&tfill);
                    
                    startTimer(&tgpp);
                    matrix_mult(matSize, mat1, mat2, gppres);
                    stopTimer(&tgpp);
                    
                    #ifdef DEBUG
                    SYSTEM_0Print("Resulting matrix:\n");
                    for(i=0;i<matSize;i++)
                    {
                        for(j=0;j<matSize;j++)
                        {
                            SYSTEM_1Print("%d\t", gppres[i][j]);
                        }
                        SYSTEM_0Print("\n");
                    }
                    SYSTEM_0Print("\n");
                    #endif
                    printTimer(&tgpp);
                    
                    startTimer(&tinit);
                    status = Communication_Initialize(dspExecutable, strMatSize, processorId);
                    stopTimer(&tinit);
                    printTimer(&tinit);

                    /* Execute the message execute phase. */
                    if (DSP_SUCCEEDED(status))
                    {
                        startTimer(&tdsp);
                        status = DSPMult_Execute(matSize, processorId);
                        stopTimer(&tdsp);
                    }
                    
                    #ifdef DEBUG
                    SYSTEM_0Print("DSP result:\n");
                    for(i=0;i<matSize;i++)
                    {
                        for(j=0;j<matSize;j++)
                        {
                            SYSTEM_1Print("%d\t", dspres[i][j]);
                        }
                        SYSTEM_0Print("\n");
                    }
                    SYSTEM_0Print("\n");
                    #endif
                    
                    printTimer(&tdsp);
                    
                    status = matrix_compare(matSize, gppres, dspres);
                    if (DSP_SUCCEEDED(status))
                    {
                        SYSTEM_0Print("\nMultiplication successful on both processors!!\n\n");   
                    }
                    else
                        SYSTEM_0Print("\nMultiplication incorrect!!\n\n");
                    
                    /* Perform cleanup operation. */
                    Communication_Delete(processorId);
                }
            }
        }
        else
        {
            status = DSP_EINVALIDARG;
            SYSTEM_0Print("ERROR! Invalid arguments specified for helloDSP application\n");
        }
        SYSTEM_0Print ("====================================================\n");
    }
    
    STATIC NORMAL_API DSP_STATUS sendMessage(ControlMsg* message, Uint16 id, Uint16 command, Char8* text, Uint8 textLength, Int16* data, Uint16 dataLength)
    {
        DSP_STATUS status = DSP_EINVALIDARG;
        Uint16 i;
        
        if (message != NULL)
        {
            status = DSP_SOK;
            MSGQ_setMsgId(message, id);
            message->command = command;
            if (text != NULL && textLength <= TEXT_SIZE)
            {
                memcpy(message->text,text, textLength * sizeof(Char8));
            }
            else status = DSP_EINVALIDARG;
            if (data != NULL && dataLength<= DATA_SIZE)
            {
                for (i=0; i<dataLength; i++) message->mat[i] = data[i];
                    //memcpy(message->mat, data, dataLength * sizeof(Int32));
            }
            else status = DSP_EINVALIDARG;
            
            status = MSGQ_put(SampleDspMsgq, (MsgqMsg) message);
            if (DSP_FAILED(status))
            {
                MSGQ_free((MsgqMsg) message);
                SYSTEM_1Print("MSGQ_put () failed. Status = [0x%x]\n", status);
            }
        }
        
        return status;
    }

#if defined (VERIFY_DATA)
    /** ============================================================================
     *  @func   helloDSP_VerifyData
     *
     *  @desc   This function verifies the data-integrity of given buffer.
     *
     *  @modif  None
     *  ============================================================================
     */
    STATIC NORMAL_API DSP_STATUS helloDSP_VerifyData(IN MSGQ_Msg msg, IN Uint16 sequenceNumber)
    {
        DSP_STATUS status = DSP_SOK;
        Uint16 msgId;

        /* Verify the message */
        msgId = MSGQ_getMsgId(msg.header);
        if (msgId != sequenceNumber)
        {
            status = DSP_EFAIL;
            SYSTEM_0Print("ERROR! Data integrity check failed\n");
        }

        return status;
    }
#endif /* if defined (VERIFY_DATA) */


#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
