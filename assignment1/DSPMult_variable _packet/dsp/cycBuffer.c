#include "cycBuffer.h"


Int32 buffer[100*MAX_MATSIZE];
Uint16 bufBeg=0;
Uint16 bufEnd=0;


Int bufEmpty(void)
{
    if(bufBeg == bufEnd) return 1;
    else return 0;
}

Int bufFull(void)
{
    if(bufBeg == bufEnd + 1) return 1;
    else return 0;
}

Uint16 bufNumElem(void)
{
    Int numElem;
    
    numElem= bufEnd - bufBeg;
    if(numElem <0) numElem+= 100*MAX_MATSIZE;
    
    return numElem;
    
}

Void bufPush(Int32 newElem)
{
    buffer[bufEnd++] = newElem;
    if(bufEnd == 100*MAX_MATSIZE) bufEnd = 0;
}

Int32 bufPop(void)
{
    Int32 popElem;
    
    popElem = buffer[bufBeg++];
    if(bufBeg == 100*MAX_MATSIZE) bufBeg = 0;
    
    return popElem;
}

