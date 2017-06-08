#if !defined (TASK_)
#define TASK_

/*  ----------------------------------- DSP/BIOS Headers            */
#include <sem.h>

/*  ----------------------------------- Sample Headers              */
#include <pool_notify_config.h>

#define BLUE               0
#define GREEN              1
#define RED                2


#define STOP_DSP           0
#define IDLE               1
#define LOAD_COLOR         2
#define COMBINE_BLUE       4
#define INIT_BLUE          5
#define INIT_GREEN         6
#define INIT_RED           7

typedef struct Task_TransferInfo_tag {
    Uint16 *        dataBuf ;
    SEM_Obj         notifySemObj ;
    Uint32          bufferSize ;
} Task_TransferInfo ;

Int Task_create (Task_TransferInfo ** transferInfo) ;

Int Task_execute (Task_TransferInfo * transferInfo) ;

Int Task_delete (Task_TransferInfo * transferInfo) ;



#endif /* !defined (Task_) */
