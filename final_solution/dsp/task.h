#if !defined (TASK_)
#define TASK_

/*  ----------------------------------- DSP/BIOS Headers            */
#include <sem.h>

/*  ----------------------------------- Sample Headers              */
#include <pool_notify_config.h>

// The indices of the layer in a pixel of the frame structure.

#define BLUE               0
#define GREEN              1
#define RED                2

// DSP status.

#define DSP_BUSY           0
#define DSP_READY          1
#define DSP_DONE           2

//Agreed set of GPP to DSP commands.

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

typedef struct Task_TransferInfo_tag {
    Uint16 *        dataBuf ;
    SEM_Obj         notifySemObj ;
    Uint32          bufferSize ;
} Task_TransferInfo ;

Int Task_create (Task_TransferInfo ** transferInfo) ;

Int Task_execute (Task_TransferInfo * transferInfo) ;

Int Task_delete (Task_TransferInfo * transferInfo) ;



#endif /* !defined (Task_) */
