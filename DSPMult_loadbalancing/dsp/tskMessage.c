/** ============================================================================
 *  @file   tskMessage.c
 *
 *  @path
 *
 *  @desc   This is simple TSK based application that uses MSGQ. It receives
 *          and transmits messages from/to the GPP and runs the DSP
 *          application code (located in an external source file)
 *
 *  @ver    1.10
 */


/*  ----------------------------------- DSP/BIOS Headers            */
#include "helloDSPcfg.h"
#include <gbl.h>
#include <sys.h>
#include <sem.h>
#include <msgq.h>
#include <pool.h>

/*  ----------------------------------- DSP/BIOS LINK Headers       */
#include <dsplink.h>
#include <platform.h>
#include <failure.h>

/*  ----------------------------------- Sample Headers              */
#include <helloDSP_config.h>
#include <tskMessage.h>

#ifdef __cplusplus
extern "C" {
#endif


/* FILEID is used by SET_FAILURE_REASON macro. */
#define FILEID  FID_APP_C

/* Place holder for the MSGQ name created on DSP */
Uint8 dspMsgQName[DSP_MAX_STRLEN];

/* Number of iterations message transfers to be done by the application. */
extern Uint16 numTransfers;
// Comment THIS FOR BENCHMARKING!!!
//#define DEBUG 1
extern Uint8 matSize;

int16_t mat1[MAX_MATSIZE * MAX_MATSIZE];
int16_t mat2[MAX_MATSIZE * MAX_MATSIZE];
int32_t prod[MAX_MATSIZE * MAX_MATSIZE];

/** ============================================================================
 *  @func   TSKMESSAGE_create
 *
 *  @desc   Create phase function for the TSKMESSAGE application. Initializes
 *          the TSKMESSAGE_TransferInfo structure with the information that will
 *          be used by the other phases of the application.
 *
 *  @modif  None.
 *  ============================================================================
 */
Int TSKMESSAGE_create(TSKMESSAGE_TransferInfo** infoPtr)
{
    Int status = SYS_OK;
    MSGQ_Attrs msgqAttrs = MSGQ_ATTRS;
    TSKMESSAGE_TransferInfo* info = NULL;
    MSGQ_LocateAttrs syncLocateAttrs;

    /* Allocate TSKMESSAGE_TransferInfo structure that will be initialized
     * and passed to other phases of the application */
    *infoPtr = MEM_calloc(DSPLINK_SEGID, sizeof(TSKMESSAGE_TransferInfo), DSPLINK_BUF_ALIGN);
    if (*infoPtr == NULL)
    {
        status = SYS_EALLOC;
        SET_FAILURE_REASON(status);
    }
    else
    {
        info = *infoPtr;
        info->numTransfers = numTransfers;
        info->localMsgq = MSGQ_INVALIDMSGQ;
        info->locatedMsgq = MSGQ_INVALIDMSGQ;
    }

    if (status == SYS_OK)
    {
        /* Set the semaphore to a known state. */
        SEM_new(&(info->notifySemObj), 0);

        /* Fill in the attributes for this message queue. */
        msgqAttrs.notifyHandle = &(info->notifySemObj);
        msgqAttrs.pend = (MSGQ_Pend) SEM_pendBinary;
        msgqAttrs.post = (MSGQ_Post) SEM_postBinary;

        SYS_sprintf((Char *)dspMsgQName, "%s%d", DSP_MSGQNAME, GBL_getProcId());

        /* Creating message queue */
        status = MSGQ_open((String)dspMsgQName, &info->localMsgq, &msgqAttrs);
        if (status != SYS_OK)
        {
            SET_FAILURE_REASON(status);
        }
        else
        {
            /* Set the message queue that will receive any async. errors. */
            MSGQ_setErrorHandler(info->localMsgq, SAMPLE_POOL_ID);

            /* Synchronous locate.                           */
            /* Wait for the initial startup message from GPP */
            status = SYS_ENOTFOUND;
            while ((status == SYS_ENOTFOUND) || (status == SYS_ENODEV))
            {
                syncLocateAttrs.timeout = SYS_FOREVER;
                status = MSGQ_locate(GPP_MSGQNAME, &info->locatedMsgq, &syncLocateAttrs);
                if ((status == SYS_ENOTFOUND) || (status == SYS_ENODEV))
                {
                    TSK_sleep(1000);
                }
                else if(status != SYS_OK)
                {
#if !defined (LOG_COMPONENT)
                    LOG_printf(&trace, "MSGQ_locate (msgqOut) failed. Status = 0x%x\n", status);
#endif
                }
            }
        }
       /* Initialize the sequenceNumber */
        info->sequenceNumber = 0;
    }

    return status;
}

// Optimized for 2 multiplication units
void multiplyMatrices()
{
  int k, l, m;
  int32_t temp1, temp2;
  // Start multiplication
  for (k = 0; k < matSize / 2; k++)
  {
    for (l = 0; l < matSize; l++)
    {
      prod[k * matSize + l] = 0;
      temp1 = 0;
      temp2 = 0;
      m = 0;
      while(m < matSize)
      {
        temp1 = temp1 + mat1[k * matSize + m] * mat2[m * matSize + l];
        if(m + 1 < matSize)
          temp2 = temp2 + mat1[k * matSize + m+1] * mat2[(m+1) * matSize + l];
        m = m + 2;
      }
      prod[k * matSize + l] = temp1 + temp2;
    }
  }
}

// void multiplyMatrices()
// {
//   int k, l, m;
//   // Start multiplication
//   for (k = 0; k < matSize/2; k++)
//   {
//     for (l = 0; l < matSize; l++)
//     {
//       prod[k * matSize + l] = 0;
//       for(m = 0; m < matSize; m++)
//         prod[k * matSize + l] = prod[k * matSize + l] + mat1[k * matSize + m] * mat2[m * matSize + l];
//     }
//   }
// }

void memcpyMatrix(int16_t* src, int16_t* dst, int width){
  int16_t i;
  int16_t *ptr = dst;

  i = 0;
  while(i < width)
  {
    *ptr = *src;
    i++;
    ptr++;
    src++;
  }
}

void memcpyProdMatrix(int32_t* src, int16_t* dst1, int16_t* dst2, int width){
  int16_t i;
  int16_t *ptr1 = dst1;
  int16_t *ptr2 = dst2;

  i = 0;
  while(i < width)
  {
    *ptr1 = (*src >> 16) & 0xffff;
    *ptr2 = *src & 0xffff;
    ptr1++;
    ptr2++;
    src++;
    i++;
  }
}

/** ============================================================================
 *  @func   TSKMESSAGE_execute
 *
 *  @desc   Execute phase function for the TSKMESSAGE application. Application
 *          receives a message, verifies the id and executes the DSP processing.
 *
 *  @modif  None.
 *  ============================================================================
 */

Int TSKMESSAGE_execute(TSKMESSAGE_TransferInfo* info)
{
    Int status = SYS_OK;
    ControlMsg* msg;
    Uint32 i, offset, remainingEls, remainingElsHalf;
    Uint8 totalMessages, iterations;
    Uint8 messageNumber;

    /* Allocate and send the message */
    status = MSGQ_alloc(SAMPLE_POOL_ID, (MSGQ_Msg*) &msg, APP_BUFFER_SIZE);

    if (status == SYS_OK)
    {
        MSGQ_setMsgId((MSGQ_Msg) msg, info->sequenceNumber);
        MSGQ_setSrcQueue((MSGQ_Msg) msg, info->localMsgq);
        msg->command = 0xFF;
        #ifdef DEBUG
        SYS_sprintf(msg->text, "DSP is awake!");
        #endif

        status = MSGQ_put(info->locatedMsgq, (MSGQ_Msg) msg);
        if (status != SYS_OK)
        {
            /* Must free the message */
            MSGQ_free ((MSGQ_Msg) msg);
            SET_FAILURE_REASON(status);
        }
    }
    else
    {
        SET_FAILURE_REASON(status);
    }

    // Total amount of messages needed to send a matrix: ceil(matSize*matSize / (messageSize*messageSize))
    totalMessages = CEIL(matSize * matSize, MSG_MATSIZE * MSG_MATSIZE);
    // Total iterations: sending the two matrices + half of it to receive the half multiplication
    iterations = totalMessages + CEIL(totalMessages, 2);

    for(i = 0; (i < iterations && status == SYS_OK); i++)
    {
      /* Receive a message from the GPP */
      status = MSGQ_get(info->localMsgq,(MSGQ_Msg*) &msg, SYS_FOREVER);
      if (status == SYS_OK)
      {
          /* Check if the message is an asynchronous error message */
          if (MSGQ_getMsgId((MSGQ_Msg) msg) == MSGQ_ASYNCERRORMSGID)
          {
  #if !defined (LOG_COMPONENT)
              LOG_printf(&trace, "Transport error Type = %d",((MSGQ_AsyncErrorMsg *) msg)->errorType);
  #endif
              /* Must free the message */
              MSGQ_free((MSGQ_Msg) msg);
              status = SYS_EBADIO;
              SET_FAILURE_REASON(status);
          }
          /* Check if the message received has the correct sequence number */
          else if (MSGQ_getMsgId ((MSGQ_Msg) msg) != info->sequenceNumber)
          {
  #if !defined (LOG_COMPONENT)
              LOG_printf(&trace, "Out of sequence message!");
  #endif
              MSGQ_free((MSGQ_Msg) msg);
              status = SYS_EBADIO;
              SET_FAILURE_REASON(status);
          }
          else
          {
              messageNumber = msg->command;

              // Offset for storing remaining parts of a matrix
              offset = MSG_MATSIZE * MSG_MATSIZE * (messageNumber % totalMessages);
              // Remaining elements for the last message received from DSP
              remainingEls = (matSize * matSize) % (MSG_MATSIZE * MSG_MATSIZE);
              // Remaining elements of half the product that is sent
              remainingElsHalf = ((matSize/2)*matSize) % (MSG_MATSIZE * MSG_MATSIZE);

              msg->command = 0xFF;
              if(messageNumber < totalMessages) // Receive part of matrix 1 and 2
              {
                #ifdef DEBUG
                SYS_sprintf(msg->text, "Got part %d/%d, offset %d", messageNumber, totalMessages-1, offset);
                #endif
                if(messageNumber == totalMessages-1 && remainingEls > 0) // Receive the remaining elements
                {
                  // Copy remaining elements in message buffer to mat1 and mat2
                  memcpyMatrix(msg->mat1, mat1+offset, remainingEls);
                  memcpyMatrix(msg->mat2, mat2+offset, remainingEls);
                }
                else
                {
                  // Store (part of) mat1 and mat2
                  memcpyMatrix(msg->mat1, mat1+offset, MSG_MATSIZE * MSG_MATSIZE);
                  memcpyMatrix(msg->mat2, mat2+offset, MSG_MATSIZE * MSG_MATSIZE);
                }

                #ifdef DEBUG
                  SYS_sprintf(msg->text, "Got part %d/%d, offset %d", messageNumber, totalMessages-1, offset);
                #endif

                if(messageNumber == totalMessages-1)
                {
                  // This was the last part of matrix 1 and 2. Start multiplication and send first part of the result
                  #ifdef DEBUG
                    SYS_sprintf(msg->text, "Got part %d/%d, offset %d, last part -> sending product part", messageNumber, totalMessages-1, offset);
                  #endif

                  multiplyMatrices(); // Perform matrix multiplication (first half)

                  if(totalMessages == 1 && remainingElsHalf > 0) // Can fit complete result in 1 message
                    memcpyProdMatrix(prod, msg->mat1, msg->mat2, remainingElsHalf);  // Upper 16 bits in mat1, lower 16 bits in mat2 of product result
                  else
                    memcpyProdMatrix(prod, msg->mat1, msg->mat2, MSG_MATSIZE * MSG_MATSIZE); // Upper 16 bits in mat1, lower 16 bits in mat2 of product result
                }
              }
              else
              {
                #ifdef DEBUG
                SYS_sprintf(msg->text, "Sending half of the product, messageNumber is now %d", messageNumber);
                #endif
                if(messageNumber == (iterations-2) && remainingElsHalf > 0) // Send the remaining elements
                  memcpyProdMatrix(prod + offset + MSG_MATSIZE * MSG_MATSIZE, msg->mat1, msg->mat2, remainingElsHalf);
                else
                  memcpyProdMatrix(prod + offset + MSG_MATSIZE * MSG_MATSIZE, msg->mat1, msg->mat2, MSG_MATSIZE * MSG_MATSIZE);
              }

            /* Increment the sequenceNumber for next received message */
            info->sequenceNumber++;
            /* Make sure that sequenceNumber stays within the range of iterations */
            if (info->sequenceNumber == MSGQ_INTERNALIDSSTART)
            {
                info->sequenceNumber = 0;
            }
            MSGQ_setMsgId((MSGQ_Msg) msg, info->sequenceNumber);
            MSGQ_setSrcQueue((MSGQ_Msg) msg, info->localMsgq);

            /* Send the message back to the GPP */
            status = MSGQ_put(info->locatedMsgq,(MSGQ_Msg) msg);
            if (status != SYS_OK)
            {
                SET_FAILURE_REASON(status);
            }
          }
      }
      else
      {
          SET_FAILURE_REASON (status);
      }
    }

    return status;
}


/** ============================================================================
 *  @func   TSKMESSAGE_delete
 *
 *  @desc   Delete phase function for the TSKMESSAGE application. It deallocates
 *          all the resources of allocated during create phase of the
 *          application.
 *
 *  @modif  None.
 *  ============================================================================
 */
Int TSKMESSAGE_delete(TSKMESSAGE_TransferInfo* info)
{
    Int status = SYS_OK;
    Int tmpStatus = SYS_OK;
    Bool freeStatus = FALSE;

    /* Release the located message queue */
    if (info->locatedMsgq != MSGQ_INVALIDMSGQ)
    {
        status = MSGQ_release(info->locatedMsgq);
        if (status != SYS_OK)
        {
            SET_FAILURE_REASON(status);
        }
    }

     /* Reset the error handler before deleting the MSGQ that receives */
     /* the error messages.                                            */
    MSGQ_setErrorHandler(MSGQ_INVALIDMSGQ, POOL_INVALIDID);

    /* Delete the message queue */
    if (info->localMsgq != MSGQ_INVALIDMSGQ)
    {
        tmpStatus = MSGQ_close(info->localMsgq);
        if ((status == SYS_OK) && (tmpStatus != SYS_OK))
        {
            status = tmpStatus;
            SET_FAILURE_REASON(status);
        }
    }

    /* Free the info structure */
    freeStatus = MEM_free(DSPLINK_SEGID, info, sizeof(TSKMESSAGE_TransferInfo));
    if ((status == SYS_OK) && (freeStatus != TRUE))
    {
        status = SYS_EFREE;
        SET_FAILURE_REASON(status);
    }
    return status;
}


#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
