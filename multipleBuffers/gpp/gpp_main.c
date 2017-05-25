/*  ----------------------------------- OS Specific Headers           */
#include <stdio.h>
#include <stdlib.h>

/*  ----------------------------------- DSP/BIOS Link                 */
#include <dsplink.h>

/*  ----------------------------------- Application Header            */
#include <pool_notify.h>

/** ============================================================================
 *  @func   main
 *
 *  @desc   Entry point for the application
 *
 *  @modif  None
 *  ============================================================================
 */
int main (int argc, char ** argv)
{
    Char8 * dspExecutable    = NULL ;

    if (argc != 2) {
        printf ("Usage : %s <absolute path of DSP executable> ",
           argv [0]) ;
    }
    else {
        dspExecutable    = argv [1] ;

        pool_notify_Main (dspExecutable) ;
    }

    return 0 ;
}
