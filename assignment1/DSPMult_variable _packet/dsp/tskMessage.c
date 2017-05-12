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

#include "cycBuffer.h"

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
#include <Com_config.h>
#include <tskMessage.h>
#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif

//#define DEBUG

/* FILEID is used by SET_FAILURE_REASON macro. */
#define FILEID  FID_APP_C

/* Place holder for the MSGQ name created on DSP */
Uint8 dspMsgQName[DSP_MAX_STRLEN];

/* Number of iterations message transfers to be done by the application. */
extern Uint16 matSize;

Int16 matrix1[MAX_MATSIZE][MAX_MATSIZE];
Int16 matrix2[MAX_MATSIZE][MAX_MATSIZE];
    
ControlMsg* msg;
    
Int sendMessage(TSKMESSAGE_TransferInfo* info, ControlMsg* message, Uint16 id, Uint16 command, Char* text, Uint8 textLength, Int32* data, Uint8 dataLength);


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
        info->matSize = matSize;
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


/** ============================================================================
 *  @func   TSKMESSAGE_execute
 *
 *  @desc   Executes the multiplication. After receiving enough elements to compute
 *          at least one element of the product, the computed product is send back
 *          the GPP, trying to take advantage as much as possible of the message
 *          capacity.
 *  ============================================================================
 */
Int TSKMESSAGE_execute(TSKMESSAGE_TransferInfo* info)
{
    Int status = SYS_OK;
    Uint16 i,j, packIndex, rcIndex, curRow, curCol, curElem;
    Int32 res;

    /* Allocate and send the handshake message */
    status = MSGQ_alloc(SAMPLE_POOL_ID, (MSGQ_Msg*) &msg, APP_BUFFER_SIZE);

    if (status == SYS_OK)
    {
        MSGQ_setMsgId((MSGQ_Msg) msg, info->sequenceNumber);
        MSGQ_setSrcQueue((MSGQ_Msg) msg, info->localMsgq);
        msg->command = 0x01;
        SYS_sprintf(msg->text, "DSP is awake!");

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

    //for matrices than can be placed in a single message, the DSP receives them both.
    if(matSize*matSize<=DATA_SIZE/2)
    {
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
            else
            {                
                for(i=0;i<matSize * matSize;i++)
                {
                   res = 0;
                    //The 32 bit product is computed and pushed in a buffer to be sent later
                    for(j=0;j<matSize;j++)
                    {
                        res += (Int32) msg->mat[matSize * (i/matSize) + j] * (Int32) msg->mat[matSize * (matSize + i%matSize) + j];
                    }
                    bufPush(res);
                }
                
                for(i=0;i<matSize * matSize;i++) 
                {
                    res = bufPop();
                    memcpy(msg->mat + 2*i, &res, sizeof(Int32));
                }
                
                msg->command = 0x02;

                /* Increment the sequenceNumber for next received message */
                info->sequenceNumber++;
                MSGQ_setMsgId((MSGQ_Msg) msg, info->sequenceNumber);
                MSGQ_setSrcQueue((MSGQ_Msg) msg, info->localMsgq);

                /* Send the product matrix back to the GPP */
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
    //else the matrices are sent line by line for matrix1 and column by column for matrix2 alternately until the message buffer is full.
    else
    {
        curRow=0;
        curCol=0;
        rcIndex=0;
        //elements of the product are sent back to the GPP as soon as possilbe, until the complete product is sent(the buffer is empty after all the elements are received) 
        while((curRow < matSize) || (curCol < matSize) || (bufEmpty() == 0))
        {
            //full packets are received until both matrices become available on the DSP
            status = MSGQ_get(info->localMsgq,(MSGQ_Msg*) &msg, SYS_FOREVER);
            if(curRow < matSize || curCol < matSize){
                for(packIndex=0; packIndex<DATA_SIZE && (curRow < matSize || curCol < matSize); packIndex++)
                {
                    //a packet is distributed to the two matrices by first receiving a row of matrix1 and the a column of matrix2 and so on until the packet is empty.
                    if(curRow <= curCol)
                    {
                        //the elements of the new packet will continue filling the entity in which the last packet was emptied.
                        matrix1[curRow][rcIndex++] = msg->mat[packIndex];
                        if(rcIndex%matSize == 0)
                        {
                            rcIndex=0;
                            for(j=0;j<curCol;j++)
                            {
                                //calculation can be performed when a new row or a new column is fully received and there is at least one column or one row respectively received earlier.
                                res=0;
                                for(i=0;i<matSize;i++) res+= (Int32) matrix1[curRow][i] * (Int32) matrix2[i][j];
                                //the results are put to a FIFO to be sent in the order they were produced.
                                bufPush(res);
                            }
                            curRow++;
                        }
                    }
                    else
                    {
                        matrix2[rcIndex++][curCol] = msg->mat[packIndex];
                        if(rcIndex%matSize == 0)
                        {
                            rcIndex=0;
                            for(i=0;i<curRow;i++)
                            {
                                res=0;
                                for(j=0;j<matSize;j++) res+= (Int32) matrix1[i][j] * (Int32) matrix2[j][curCol];
                                bufPush(res);
                            }
                            curCol++;
                        }
                    }
                }
            }
            curElem=bufNumElem();
            //all the calculated products are sent back to the GPP as long as there is capacity available on the next packet.
            for(i=0;((i<DATA_SIZE/2) && (i<curElem));i++)
            {
                res = bufPop();
                memcpy(msg->mat + 2*i, &res, sizeof(Int32));                
            }
            info->sequenceNumber++;
            MSGQ_setMsgId((MSGQ_Msg) msg, info->sequenceNumber);
            MSGQ_setSrcQueue((MSGQ_Msg) msg, info->localMsgq);
            /* Send part of the product back to the GPP */
            status = MSGQ_put(info->locatedMsgq,(MSGQ_Msg) msg);
            if (status != SYS_OK)
            {
                SET_FAILURE_REASON(status);
            }
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

    
Int sendMessage(TSKMESSAGE_TransferInfo* info, ControlMsg* message, Uint16 id, Uint16 command, Char* text, Uint8 textLength, Int32* data, Uint8 dataLength)
{
    Int status = SYS_EBADIO;
    
    if (message != NULL)
    {
        status = SYS_OK;
        MSGQ_setMsgId((MSGQ_Msg) message, id);
        MSGQ_setSrcQueue((MSGQ_Msg) message, info->localMsgq);
        message->command = command;
        if (text != NULL && textLength <= TEXT_SIZE)
        {
            SYS_sprintf(message->text, text);
        }
        else status = SYS_EBADIO;
        if (data != NULL && dataLength<= DATA_SIZE)
        {
            //memcpy(message->mat, data, dataLength * sizeof(Int32));
            message->mat[0] = 0;
        }
        else status = SYS_EBADIO;
        
        status = MSGQ_put(info->locatedMsgq,(MSGQ_Msg) message);
        if (status != SYS_OK)
        {
            MSGQ_free ((MSGQ_Msg) message);
            SET_FAILURE_REASON(status);
        }
    }
        
    return status;
}

#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
