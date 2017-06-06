This is the release package for the IQMath release ver 2.1.4. Following are the contents of the package:
IQmath: IQmath master folder
----> docs: Documents master folder
--------> SPRUGG9.pdf: IQMath user's guide 
----> example: Examples master folder
--------> dotprod: Dotproduct example for little endian device
--------> FFT: FFT example for little endian device
--------> FIR: FIR example for little endian device
----> inc: Header files master folder
--------> IQmath.h: IQmath interface header file
--------> IQmath_inline.h: Header file to be used to enable inlining
----> lib: Release libraries master folder
--------> IQmath_c64x+.lib: IQMath little endian library
--------> IQmath_c64x+e.lib: IQMath big endian library
--------> IQmath_RAM_c64x+.lib: IQMath RAM data tables (little endian only)
--------> IQmath_ROM_c643x.lib: C643x IQMath ROM symbol table (little endian only)
--------> IQmath_pc.lib: Host library for PC evaluation


The inlining support can be enabled by including the IQmath_inline.h file. Please refer the user’s guide for more details.

The IQmath_inline.h includes the source for FtoIQ.c, IQNabs.c, IQNfrac.c, IQNint.c, IQNmag.c, IQNmpy.c, IQNmpyI32frac.c, IQNmpyI32int.c, IQNmpyIQx.c, IQNrmpy.c, IQNrsmpy.c, IQNsat.c, IQNtoF.c

The header file can be incldued in the application source code to enable inlining of the above mentioned kernels. Or, the provided source can be modified for custom usecases.

The inlining support can be enabled by including the IQmath_inline.h file. Please refer the user’s guide for more details.

For complete inline support make a request for the full IQMATH source at 
http://focus.ti.com/docs/toolsw/folders/print/sprc542.html

Bug Fix and Updates in new release 
-----------------------------------------------------
-Bug in inlining functions for which inline source is not provided in this package is resolved
-Global definition of some variables changed to local const to prevent redefinition errors reported in user code with similar variables.
-Linux installer created 
-Included TI TSPA license 
-ELF version of IQMATH library included 

Changes Since release version:IQMATH_REV212_06FEB2008
-----------------------------------------------------

Bug Fix
-------

Enhancement
-----------
- Added FFT and FIR example
- Modified UG to support TI std format


Changes Since release version:IQMATH_REV211_21SEP2007
-----------------------------------------------------

Bug Fix
-------
- Updated the file IQNmpyIQx.c. Corrected the data_type used for high_new variable. This was a bug and for certain cases could result in incorrect output.

Enhancement
-----------
- Updated the dotprod example to allow easier usage in PC environment
