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
#include "matrix_config.h"
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

	/* Timers used to profile the application */
Timer execTime;
Timer createTime;
Timer deleteTime;
Timer receivehelloTime;
Timer receivematrixTime;
Timer sendTime;
Timer gppTime;


    /* Control message data structure. */
    /* Must contain a reserved space for the header */
    typedef struct ControlMsg
    {
        MSGQ_MsgHeader header;
        Uint16 command;
        Char8 text[ARG_SIZE];
        Uint16 mat[MAX_MATSIZE][MAX_MATSIZE];
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

	/* Matrices used for multiplication on dsp */
    Uint16 mat1 [MAX_MATSIZE][MAX_MATSIZE];
    Uint16 mat2 [MAX_MATSIZE][MAX_MATSIZE];
    Uint16 prod [MAX_MATSIZE][MAX_MATSIZE];
    
    /* Matrices used for multiplication on gpp */
    Uint16 test1 [128][128];
    Uint16 test2 [128][128];
    Uint16 result [128][128];    

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
    NORMAL_API DSP_STATUS helloDSP_Create(IN Char8* dspExecutable, IN Char8* strNumIterations, IN Uint8 processorId)
    {
        DSP_STATUS status = DSP_SOK;
        Uint32 numArgs = NUM_ARGS;
        MSGQ_LocateAttrs syncLocateAttrs;
        Char8* args[NUM_ARGS];
        //Uint8 i,j;

        SYSTEM_0Print("Entered helloDSP_Create ()\n");

		/* Start timing the create application */
		startTimer(&createTime);

        status = matrix_fill(1,mat1);
        if (DSP_FAILED(status))
        {
            SYSTEM_1Print("Matrix1 filling failed. Status = [0x%x]\n", status);
        }

        if (DSP_SUCCEEDED(status))
        {
            status = matrix_fill(2,mat2);
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("Matrix2 filling failed. Status = [0x%x]\n", status);
            }
        }

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
            args [0] = strNumIterations;
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

		/* Stop timing the create application */
		stopTimer(&createTime);
		printTimer(&createTime);
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
        Uint32 i;
        ControlMsg *msg;

        SYSTEM_0Print("Entered helloDSP_Execute ()\n");

#if defined (PROFILE)
        SYSTEM_GetStartTime();
#endif

        /* Receive the message. */
        startTimer(&receivehelloTime); // Time how long receiving first msg takes
        status = MSGQ_get(SampleGppMsgq, WAIT_FOREVER, (MsgqMsg *) &msg);
        if (DSP_FAILED(status))
        {
            SYSTEM_1Print("MSGQ_get () failed. Status = [0x%x]\n", status);
        }
		stopTimer(&receivehelloTime);
		
        for(i = 0; (i < 2 && DSP_SUCCEEDED(status)); i++)
        {
          if(i == 0)
          {
            // Start the overall timer
            startTimer(&execTime);
          }
          
          // Start timing how long sending the matrices takes
          startTimer(&sendTime);
          
          // Send matrices
          if(DSP_SUCCEEDED(status))
          {
            msgId = MSGQ_getMsgId(msg);
            MSGQ_setMsgId(msg, msgId);

            if(i == 0)
            {
              // Matrix 1
              //SYSTEM_0Print("Sending matrix 1...\n");
              memcpy(msg->mat, mat1, MAX_MATSIZE * MAX_MATSIZE * sizeof(Uint16));
            }
            else if(i == 1)
            {
              // Matrix 2
              //SYSTEM_0Print("Sending matrix 2...\n");
              memcpy(msg->mat, mat2, MAX_MATSIZE * MAX_MATSIZE * sizeof(Uint16));
            }

            status = MSGQ_put(SampleDspMsgq, (MsgqMsg) msg);
            stopTimer(&sendTime);
            
            if (DSP_FAILED(status))
            {
                MSGQ_free((MsgqMsg) msg);
                SYSTEM_1Print("MSGQ_put () failed. Status = [0x%x]\n", status);
            }

            /* Receive the message. */
            startTimer(&receivematrixTime); // Time how long receiving the result takes
            status = MSGQ_get(SampleGppMsgq, WAIT_FOREVER, (MsgqMsg *) &msg);
            if (DSP_FAILED(status))
            {
                SYSTEM_1Print("MSGQ_get () failed. Status = [0x%x]\n", status);
            }

            if (msg->command == 0x01)
                //SYSTEM_1Print("Message received: %s\n", (Uint32) msg->text);
			
			// Stop timers
			stopTimer(&receivematrixTime);
			stopTimer(&execTime);
			
            if(i == 1)
            {
              // Print the received matrix
              /*Uint8 k, l;
              for(k = 0; k < MAX_MATSIZE; k++)
              {
                  for(l = 0; l < MAX_MATSIZE; l++)
                  {
                      SYSTEM_1Print("%d\t", msg->mat[k][l]);
                  }
                  SYSTEM_0Print("\n");
              }
              SYSTEM_0Print("\n");
				*/
              // Print timers
              printTimer(&execTime);
              printTimer(&receivehelloTime);
              printTimer(&receivematrixTime);
              printTimer(&sendTime);
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
        // Time how long the delete function takes
		startTimer(&deleteTime);
		
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

		stopTimer(&deleteTime);
		printTimer(&deleteTime);
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
    NORMAL_API Void helloDSP_Main(IN Char8* dspExecutable, IN Char8* strNumIterations, IN Char8* strProcessorId)
    {
        DSP_STATUS status = DSP_SOK;
        Uint32 numIterations = 0;
        Uint8 processorId = 0;
        int k, l, m;

        SYSTEM_0Print ("========== Sample Application : matrix multiplication ==========\n");

        if ((dspExecutable != NULL) && (strNumIterations != NULL))
        {
            numIterations = SYSTEM_Atoi(strNumIterations);

            if (numIterations > 0xFFFF)
            {
                status = DSP_EINVALIDARG;
                SYSTEM_1Print("ERROR! Invalid arguments specified for helloDSP application.\n Max iterations = %d\n", 0xFFFF);
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
                    status = helloDSP_Create(dspExecutable, strNumIterations, processorId);
                    
                    /* Timer initialization */
                    initTimer(&execTime, "Total exec Time (gpp+dsp)"); // Total exec time for gpp+dsp combo 
                    initTimer(&createTime, "Create Time");
                    initTimer(&deleteTime, "Delete Time");
                    initTimer(&receivehelloTime, "Receive hello message Time");
                    initTimer(&receivematrixTime, "Receive matrix Time");
                    initTimer(&sendTime, "Send matrix Time");
                    initTimer(&gppTime, "Gpp multiplication Time"); // Total exec time for multiplication on only gpp
                    
                    /* Time matrix multiplication on only gpp, 
                    include filling of matrices */
                    startTimer(&gppTime);
                    
                    status = matrix_fill_test(1,test1);
					if (DSP_FAILED(status))
					{
						SYSTEM_1Print("Test1 filling failed. Status = [0x%x]\n", status);
					}

					if (DSP_SUCCEEDED(status))
					{
						status = matrix_fill_test(2,test2);
						if (DSP_FAILED(status))
						{
						    SYSTEM_1Print("Test2 filling failed. Status = [0x%x]\n", status);
						}
					}
						        
		            for (k = 0; k < 128; k++)
		            {
		              for (l = 0; l < 128; l++)
		              {
		                result[k][l]=0;
		                for(m = 0; m < 128; m++)
		                  result[k][l] = result[k][l] + test1[k][m] * test2[m][l];
		              }
		            }
		            stopTimer(&gppTime);
		            printTimer(&gppTime);
                    
					
                    /* Execute the message execute phase. */
                    if (DSP_SUCCEEDED(status))
                    {
                        status = helloDSP_Execute(numIterations, processorId);
                    }

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
