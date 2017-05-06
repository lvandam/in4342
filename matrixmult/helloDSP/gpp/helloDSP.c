/** ============================================================================
 *  @file   helloDSP.c
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
#include <helloDSP.h>
#include <system_os.h>
#include <string.h>

#include <stdio.h>
#include "Timer.h"

#if defined (__cplusplus)
extern "C"
{
#endif /* defined (__cplusplus) */

    /* Number of arguments specified to the DSP application. */
#define NUM_ARGS 1

    /* Argument size passed to the control message queue */
#define ARG_SIZE 256

    /* ID of the POOL used by helloDSP. */
#define SAMPLE_POOL_ID  0

    /*  Number of BUF pools in the entire memory pool */
#define NUMMSGPOOLS     4

    /* Number of messages in each BUF pool. */
#define NUMMSGINPOOL0   1
#define NUMMSGINPOOL1   2
#define NUMMSGINPOOL2   2
#define NUMMSGINPOOL3   4

// Comment THIS FOR BENCHMARKING!!!
#define DEBUG 1

#define MAX_MATSIZE 128
#define MSG_MATSIZE 64

// Timers
Timer dspMult;
Timer baselineMult;
Timer speedupMult;

// Matrix size which is specified by the user
Uint8 matSize;

int mat1 [MAX_MATSIZE * MAX_MATSIZE];
int mat2 [MAX_MATSIZE * MAX_MATSIZE];
int product [MAX_MATSIZE * MAX_MATSIZE];
int prod_gpp [MAX_MATSIZE * MAX_MATSIZE];
int prod_gpp_speedup[MAX_MATSIZE * MAX_MATSIZE];

#ifdef DEBUG
    void matrix_mult(void)
    {
      Uint16 i, j, k;
      for (i = 0; i < matSize; i++)
      {
        for (j = 0; j < matSize; j++)
        {
          prod_gpp[i * matSize + j] = 0;
          for(k = 0; k < matSize; k++)
            prod_gpp[i * matSize + j] += mat1[i * matSize + k] * mat2[k * matSize + j];
        }
      }
    }

	/* Modified matrix_mult. No need to set matrix elements to zero, the matrices are already created that way. */
	void matrix_mult_speedup(void)
    {
      Uint16 i, j, k;
      for (i = 0; i < matSize; i++)
      {
        for (k = 0; k < matSize; k++)
        {
          for(j = 0; j < matSize; j++)
            prod_gpp_speedup[i * matSize + j] += mat1[i * matSize + k] * mat2[k * matSize + j];
        }
      }
    }

    int matrix_compare(void)
    {
      Uint16 i, j;
      for (i = 0; i < matSize; i++)
      {
        for (j = 0; j < matSize; j++)
        {
          if(prod_gpp[i * matSize + j] != product[i * matSize + j]) return 0;
        }
      }
      return 1;
    }
    
    int matrix_compare_speedup(void)
    {
      Uint16 i, j;
      for (i = 0; i < matSize; i++)
      {
        for (j = 0; j < matSize; j++)
        {
          if(prod_gpp[i * matSize + j] != prod_gpp_speedup[i * matSize + j]) return 0;
        }
      }
      return 1;
    }
#endif


    void matrix_fill(Uint8 matNum, int matrix[MAX_MATSIZE * MAX_MATSIZE])
    {
        Uint8 i, j;

        if(matNum == 1)
        {
            for (i = 0;i < matSize; i++)
            {
                for (j = 0; j < matSize; j++)
                {
                    matrix[i * matSize + j] = i+j*2;
                }
            }
        }
    	else if(matNum == 2)
        {
            for(i = 0; i < matSize; i++)
            {
                for (j = 0; j < matSize; j++)
                {
                    matrix[i * matSize + j] = i+j*3;
                }
            }
        }
      return;
    }

    void memcpyMatrix(int* src, int* dst, int width){
      int i;
      int *ptr = dst;

      i = 0;
      while(i < width)
      {
        *ptr = *src;
        i++;
        ptr++;
        src++;
      }
    }

    /* Control message data structure. */
    /* Must contain a reserved space for the header */
    typedef struct ControlMsg
    {
        MSGQ_MsgHeader header;
        Uint8 command; // This will contain the current chunk of the matrix to be sent
        Char8 text[ARG_SIZE];
    	int mat[MSG_MATSIZE * MSG_MATSIZE];
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
     *  @func   helloDSP_Create
     *
     *  @desc   This function allocates and initializes resources used by
     *          this application.
     *
     *  @modif  helloDSP_InpBufs , helloDSP_OutBufs
     *  ============================================================================
     */
    NORMAL_API DSP_STATUS helloDSP_Create(IN Char8* dspExecutable, IN Char8* strMatrixSize, IN Uint8 processorId)
    {
        DSP_STATUS status = DSP_SOK;
        Uint32 numArgs = NUM_ARGS;
        MSGQ_LocateAttrs syncLocateAttrs;
        Char8* args[NUM_ARGS];

        SYSTEM_0Print("Entered helloDSP_Create ()\n");

        matrix_fill(1, mat1);
        matrix_fill(2, mat2);
        #ifdef DEBUG
		startTimer(&baselineMult);
        matrix_mult();
        stopTimer(&baselineMult);
        
		startTimer(&speedupMult);
        matrix_mult_speedup();
        stopTimer(&speedupMult);
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
            args [0] = strMatrixSize;
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
                    SYSTEM_Sleep(100000);
                }
                else if (DSP_FAILED(status))
                {
                    SYSTEM_1Print("MSGQ_locate () failed. Status = [0x%x]\n", status);
                }
            }
        }

        SYSTEM_0Print("Leaving helloDSP_Create ()\n");
        return status;
    }

    /** ============================================================================
     *  @func   helloDSP_Execute
     *
     *  @desc   This function implements the execute phase for this application.
     *
     *  @modif  None
     *  ============================================================================
     */
    NORMAL_API DSP_STATUS helloDSP_Execute(IN Uint32 numIterations, Uint8 processorId)
    {
        DSP_STATUS  status = DSP_SOK;
        Uint16 sequenceNumber = 0;
        Uint16 msgId = 0;
        Uint32 i, offset, remainingEls, totalMessages;
        ControlMsg *msg;

        SYSTEM_0Print("Entered helloDSP_Execute ()\n");

#if defined (PROFILE)
        SYSTEM_GetStartTime();
#endif

        /* Receive the message. */
        status = MSGQ_get(SampleGppMsgq, WAIT_FOREVER, (MsgqMsg *) &msg);
        if (DSP_FAILED(status))
        {
            SYSTEM_1Print("MSGQ_get () failed. Status = [0x%x]\n", status);
        }

        totalMessages = ((matSize * matSize) + (MSG_MATSIZE * MSG_MATSIZE) - 1) / (MSG_MATSIZE * MSG_MATSIZE); // Total amount of messages needed to send a matrix

        // Start the overall timer
        startTimer(&dspMult);

        for(i = 0; (i < totalMessages*3 && DSP_SUCCEEDED(status)); i++)
        {
          // Send matrices
          if(DSP_SUCCEEDED(status))
          {
            msgId = MSGQ_getMsgId(msg);
            MSGQ_setMsgId(msg, msgId);

            offset = MSG_MATSIZE * MSG_MATSIZE * (i % totalMessages);
            remainingEls = (matSize * matSize) % (MSG_MATSIZE * MSG_MATSIZE);
            msg->command = i;

            if(i < totalMessages) // Send messages for matrix 1
            {
              if(i == totalMessages - 1 && remainingEls > 0) // Send the remaining elements
                memcpyMatrix(mat1 + offset, msg->mat, remainingEls);
              else
                memcpyMatrix(mat1 + offset, msg->mat, MSG_MATSIZE * MSG_MATSIZE);
            }
            else if(i < totalMessages * 2) // Send messages for matrix 2
            {
              if(i == totalMessages*2 - 1 && remainingEls > 0) // Send the remaining elements
                memcpyMatrix(mat2 + offset, msg->mat, remainingEls);
              else
                memcpyMatrix(mat2 + offset, msg->mat, MSG_MATSIZE * MSG_MATSIZE);
            }
            else // Receive prod
            {
              if(i == totalMessages*3 - 1 && remainingEls > 0) // Receive the remaining elements
                memcpyMatrix(msg->mat, product + offset, remainingEls);
              else
                memcpyMatrix(msg->mat, product + offset, MSG_MATSIZE * MSG_MATSIZE);
            }

            if(i < totalMessages*3-1)
            {
              status = MSGQ_put(SampleDspMsgq, (MsgqMsg) msg);
              if (DSP_FAILED(status))
              {
                  MSGQ_free((MsgqMsg) msg);
                  SYSTEM_1Print("MSGQ_put () failed. Status = [0x%x]\n", status);
              }

              /* Receive the message. */
              status = MSGQ_get(SampleGppMsgq, WAIT_FOREVER, (MsgqMsg *) &msg);
              if (DSP_FAILED(status))
              {
                  SYSTEM_1Print("MSGQ_get () failed. Status = [0x%x]\n", status);
              }

              #ifdef DEBUG
              if (msg->command == 0xFF)
                SYSTEM_1Print("Message received: %s\n", (Uint32) msg->text);
              #endif
            }
            else
            {
              // Verify received product matrix
              #ifdef DEBUG
              if(matrix_compare())
                SYSTEM_0Print("\n\n//////////// MATRIX VERIFICATION: Matrices are OK!!\n\n");
              else
                SYSTEM_0Print("\n\n//////////// ERROR: GPP and DSP multiplications are unequal!\n\n");
                
              if(matrix_compare_speedup())
                SYSTEM_0Print("\n\n//////////// MATRIX VERIFICATION: Matrices are OK!!\n\n");
              else
                SYSTEM_0Print("\n\n//////////// ERROR: GPP baseline and speedup multiplications are unequal!\n\n");
              #endif

              // for(k = 0; k < matSize; k++)
              // {
              //  for(l = 0; l < matSize; l++)
              //  {
              //      SYSTEM_1Print("%d\t", product[k * matSize + l]);
              //  }
              //  SYSTEM_0Print("\n");
              // }
              // SYSTEM_0Print("\n\n\n\n\n");
            }

          }
          sequenceNumber++;
          /* Make sure that the sequenceNumber stays within the permitted
           * range for applications. */
          if (sequenceNumber == MSGQ_INTERNALIDSSTART)
          {
              sequenceNumber = 0;
          }
        }

#if defined (PROFILE)
        if (DSP_SUCCEEDED(status))
        {
            SYSTEM_GetEndTime();
            SYSTEM_GetProfileInfo(numIterations);
        }
#endif

        SYSTEM_0Print("Leaving helloDSP_Execute ()\n");

        return status;
    }


    /** ============================================================================
     *  @func   helloDSP_Delete
     *
     *  @desc   This function releases resources allocated earlier by call to
     *          helloDSP_Create ().
     *          During cleanup, the allocated resources are being freed
     *          unconditionally. Actual applications may require stricter check
     *          against return values for robustness.
     *
     *  @modif  None
     *  ============================================================================
     */
    NORMAL_API Void helloDSP_Delete(Uint8 processorId)
    {
        DSP_STATUS status = DSP_SOK;
        DSP_STATUS tmpStatus = DSP_SOK;

        SYSTEM_0Print("Entered helloDSP_Delete ()\n");

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

        SYSTEM_0Print("Leaving helloDSP_Delete ()\n");
    }


    /** ============================================================================
     *  @func   helloDSP_Main
     *
     *  @desc   Entry point for the application
     *
     *  @modif  None
     *  ============================================================================
     */
    NORMAL_API Void helloDSP_Main(IN Char8* dspExecutable, IN Char8* strMatrixSize, IN Char8* strProcessorId)
    {
        DSP_STATUS status = DSP_SOK;
        Uint32 numIterations = 0;
        Uint8 processorId = 0;
        
        /* Timer initialization */
        initTimer(&dspMult, "Total mult time with dsp");	
        initTimer(&baselineMult, "Baseline mult time on gpp"); 
		initTimer(&speedupMult, "Speedup mult time on gpp"); 
					

        SYSTEM_0Print ("========== Sample Application : matrix multiplication ==========\n");

        if ((dspExecutable != NULL) && (strMatrixSize != NULL))
        {
            numIterations = 1;//SYSTEM_Atoi(strNumIterations);
            matSize = SYSTEM_Atoi(strMatrixSize);

            if(matSize > 128)
            {
                status = DSP_EINVALIDARG;
                SYSTEM_0Print("ERROR! Invalid arguments specified for helloDSP application.\n Maximum matrix size = 128");
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
                    status = helloDSP_Create(dspExecutable, strMatrixSize, processorId);
                    /* Execute the message execute phase. */
                    if (DSP_SUCCEEDED(status))
                    {
                        startTimer(&dspMult);
                        status = helloDSP_Execute(numIterations, processorId);
                        stopTimer(&dspMult);
                    }

					/* Print timing results */
					#ifdef DEBUG
					printTimer(&baselineMult);
					printTimer(&speedupMult);
					#endif
					printTimer(&dspMult);
					
                    /* Perform cleanup operation. */
                    helloDSP_Delete(processorId);
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
