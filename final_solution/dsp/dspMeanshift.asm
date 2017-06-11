;******************************************************************************
;* TMS320C6x C/C++ Codegen                                       Unix v6.1.17 *
;* Date/Time created: Sun Jun 11 14:10:57 2017                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --disable:=sploop --endian=little --hll_source=on --mem_model:code=near --mem_model:const=data --mem_model:data=far_aggregates --quiet --silicon_version=6500 --symdebug:skeletal 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64x+                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug for Program Analysis w/Optimization      *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("dspMeanshift.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen Unix v6.1.17 Copyright (c) 1996-2010 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/constantinos/embLab/danielle/dsp")
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_binWidth+0,32
	.field  	16,16			; _binWidth @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_cfgMaxIter+0,32
	.field  	8,16			; _cfgMaxIter @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_epanechnikovSum+0,32
	.field  	0,32			; _epanechnikovSum @ 0

	.sect	".cinit"
	.align	8
	.field  	$C$IR_1,32
	.field  	_kernel+0,32
	.field  	0,32			; _kernel[0][0] @ 0
$C$IR_1:	.set	4

	.sect	".cinit"
	.align	8
	.field  	$C$IR_2,32
	.field  	_bin+0,32
	.field  	0,32			; _bin[0][0] @ 0
$C$IR_2:	.set	4


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_norm")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__norm")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("_extu")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("__extu")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$11)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$11)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$3


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("_hill")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("__hill")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$14)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("_loll")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("__loll")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$14)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("_itof")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("__itof")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$11


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("_ftoi")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("__ftoi")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$16)
	.dwendtag $C$DW$13


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("_mpy32ll")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("__mpy32ll")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$10)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$15


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNdiv")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("__IQNdiv")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$38)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$38)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$18


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNsqrt")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("__IQNsqrt")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$38)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$22

	.global	_binWidth
	.bss	_binWidth,2,2
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("binWidth")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_binWidth")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr _binWidth]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$25, DW_AT_external
	.global	_cfgMaxIter
	.bss	_cfgMaxIter,2,2
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("cfgMaxIter")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_cfgMaxIter")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr _cfgMaxIter]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$26, DW_AT_external
	.global	_epanechnikovSum
	.bss	_epanechnikovSum,4,4
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("epanechnikovSum")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_epanechnikovSum")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _epanechnikovSum]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$27, DW_AT_external
	.global	_kernel
_kernel:	.usect	".far",19952,8
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("kernel")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_kernel")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _kernel]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$28, DW_AT_external
	.global	_target_model
_target_model:	.usect	".far",192,8
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("target_model")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_target_model")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _target_model]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$29, DW_AT_external
	.global	_target_candidate
_target_candidate:	.usect	".far",64,8
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("target_candidate")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_target_candidate")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr _target_candidate]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$30, DW_AT_external
	.global	_bin
_bin:	.usect	".far",19952,8
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("bin")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_bin")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _bin]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$31, DW_AT_external
;	/opt/bbToolChain/usr/local/share/c6000/bin/opt6x /tmp/026599XUa8R /tmp/02659ns653h 
	.sect	".text"
	.clink
	.global	_pdf_representation

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("pdf_representation")
	.dwattr $C$DW$32, DW_AT_low_pc(_pdf_representation)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_pdf_representation")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x46)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$32, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 71,column 1,is_stmt,address _pdf_representation
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg4]
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rect")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_rect")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: pdf_representation                                          *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,B8,B9      *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_pdf_representation:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDHU    .D2T2   *+B4(6),B0        ; |77| 
           LDHU    .D2T2   *+B4(2),B8        ; |73| 
           ZERO    .L1     A9                ; |77| 
           MV      .L1     A4,A6             ; |71| 
           NOP             1

   [!B0]   B       .S1     $C$L6             ; |77| 
|| [ B0]   LDHU    .D2T2   *+B4(4),B2

   [ B0]   LDHU    .D2T2   *B4,B9
           MV      .L2     B0,B1             ; |79| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L6}         ; |77| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5

   [!B2]   B       .S2     $C$L5             ; |80| 
|| [ B2]   MVK     .S1     640,A3
||         MV      .L1X    B9,A4             ; |79| 

   [ B2]   MVKL    .S2     _bin,B6
|| [ B2]   MPYUS   .M1X    B8,A3,A7
|| [ B2]   MVKL    .S1     _target_candidate,A5

   [ B2]   MVK     .S2     86,B4

   [ B2]   MVKH    .S2     _bin,B6
|| [ B2]   MPYUS   .M2X    A9,B4,B4

	.dwpsn	file "dspMeanshift.c",line 77,column 0,is_stmt
   [ B2]   MVKL    .S2     _kernel,B5
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L1
;** --------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_pdf_representation$3$B:
	.dwpsn	file "dspMeanshift.c",line 78,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
   [ B2]   MVKH    .S2     _kernel,B5
           ; BRANCHCC OCCURS {$C$L5}         ; |80| 
$C$DW$L$_pdf_representation$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_pdf_representation$4$B:
;          EXCLUSIVE CPU CYCLES: 2

           MVKH    .S1     _target_candidate,A5
||         ADD     .L1     A7,A4,A3          ; |80| (P) <0,0> 
||         ADDAW   .D2     B5,B4,B5
||         DINT                              ; interrupts off
||         SUB     .L2     B2,1,B0

           ADDAW   .D2     B6,B4,B4
||         ADD     .L2X    1,A4,B6           ; |87| (P) <0,0> 

$C$DW$L$_pdf_representation$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 80
;*      Loop opening brace source line   : 81
;*      Loop closing brace source line   : 88
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65535                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 13
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        2     
;*      .D units                     3*       2     
;*      .M units                     0        0     
;*      .X cross paths               2        2     
;*      .T address paths             3*       2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 13 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   * ***                        |*   ***                         |
;*       1: |     ***                        |*   ** *                        |
;*       2: |     ***                        |*   ** *                        |
;*       3: |     ***                        |*   ** *                        |
;*       4: |     ***                        |*   ** *                        |
;*       5: |   * ***                        |*   ** *                        |
;*       6: |   * ***                        |*   ** *                        |
;*       7: |   * ***                        |*   ** *                        |
;*       8: |   * ***                        |*   ****                        |
;*       9: |   * ***                        |*   ** *                        |
;*      10: |   * ***                        |*   ** *                        |
;*      11: |   ******                       |*   ***                         |
;*      12: |   ******                       |*   **                          |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages       : 1
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh4
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 2
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.125, max 1.000 }
;*      Mem bank perf. penalty (est.) : 1.0%
;*
;*      Effective ii                : { min 13.00, est 13.12, max 14.00 }
;*
;*
;*      Total cycles (est.)         : 1 + trip_cnt * 13        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B0,1,B0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C43:
;*   0              ADD     .L1     A7,A4,A3          ; |80| 
;*     ||           ADD     .L2X    1,A4,B6           ; |87| 
;*   1              LDBU    .D1T1   *+A3[A6],A3       ; |80|  ^ 
;*     ||           EXTU    .S2     B6,16,16,B7       ; |87| 
;*   2              NOP             4
;*   6              SHRU    .S1     A3,4,A3           ; |80|  ^ 
;*   7              LDW     .D1T1   *+A5[A3],A8       ; |85|  ^ 
;*     ||           LDW     .D2T2   *B5++,B6          ; |85| 
;*   8              MV      .L2X    A3,B6             ; |80| Define a twin register
;*     ||   [ B0]   BDEC    .S2     $C$C43,B0         ; |80| 
;*   9              STW     .D2T2   B6,*B4++          ; |80| 
;*  10              NOP             1
;*  11              MV      .L1X    B7,A4             ; |87| Define a twin register
;*  12              ADD     .S1X    B6,A8,A8          ; |85|  ^ 
;*  13              STW     .D1T1   A8,*+A5[A3]       ; |85|  ^ 
;*  14              ; BRANCHCC OCCURS {$C$C43}        ; |80| 
;*----------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP KERNEL
$C$DW$L$_pdf_representation$6$B:
	.dwpsn	file "dspMeanshift.c",line 81,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 13

           EXTU    .S2     B6,16,16,B7       ; |87| <0,1> 
||         LDBU    .D1T1   *+A3[A6],A3       ; |80| <0,1>  ^ 

           NOP             4
           SHRU    .S1     A3,4,A3           ; |80| <0,6>  ^ 

           LDW     .D2T2   *B5++,B6          ; |85| <0,7> 
||         LDW     .D1T1   *+A5[A3],A8       ; |85| <0,7>  ^ 

           MV      .L2X    A3,B6             ; |80| <0,8> Define a twin register
|| [ B0]   BDEC    .S2     $C$L3,B0          ; |80| <0,8> 

           STW     .D2T2   B6,*B4++          ; |80| <0,9> 
           NOP             1
           MV      .L1X    B7,A4             ; |87| <0,11> Define a twin register
           ADD     .S1X    B6,A8,A8          ; |85| <0,12>  ^ 
	.dwpsn	file "dspMeanshift.c",line 88,column 0,is_stmt

           STW     .D1T1   A8,*+A5[A3]       ; |85| <0,13>  ^ 
||         ADD     .L2X    1,A4,B6           ; |87| <1,0> 
||         ADD     .L1     A7,A4,A3          ; |80| <1,0> 

$C$DW$L$_pdf_representation$6$E:
;** --------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$DW$L$_pdf_representation$8$B:
;          EXCLUSIVE CPU CYCLES: 1
           RINT                              ; interrupts on
$C$DW$L$_pdf_representation$8$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_pdf_representation$9$B:
;          EXCLUSIVE CPU CYCLES: 7

           SUB     .L2     B1,1,B1           ; |77| 
||         ADD     .S2     1,B8,B4           ; |77| 
||         ADD     .L1     1,A9,A3           ; |77| 

   [!B1]   MVK     .L2     0x1,B2            ; nullify predicate
|| [ B1]   B       .S1     $C$L1             ; |77| 
||         EXTU    .S2     B4,16,16,B8       ; |77| 
|| [ B1]   MV      .L1X    B9,A4             ; |79| 

   [!B2]   B       .S2     $C$L5             ; |80| 
||         EXTU    .S1     A3,16,16,A9       ; |77| 

   [ B2]   MVK     .S2     86,B4
|| [ B2]   MVK     .S1     640,A3

   [ B2]   MPYUS   .M2X    A9,B4,B4
|| [ B2]   MPYUS   .M1X    B8,A3,A7
|| [ B2]   MVKL    .S2     _bin,B6
|| [ B2]   MVKL    .S1     _target_candidate,A5

   [ B2]   MVKL    .S2     _kernel,B5
	.dwpsn	file "dspMeanshift.c",line 90,column 0,is_stmt
   [ B2]   MVKH    .S2     _bin,B6
           ; BRANCHCC OCCURS {$C$L1}         ; |77| 
$C$DW$L$_pdf_representation$9$E:
;** --------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "dspMeanshift.c",line 91,column 1,is_stmt
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |91| 
           ; BRANCH OCCURS {B3}              ; |91| 

$C$DW$36	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$36, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L1:1:1497183057")
	.dwattr $C$DW$36, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x4d)
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x5a)
$C$DW$37	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$37, DW_AT_low_pc($C$DW$L$_pdf_representation$3$B)
	.dwattr $C$DW$37, DW_AT_high_pc($C$DW$L$_pdf_representation$3$E)
$C$DW$38	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$38, DW_AT_low_pc($C$DW$L$_pdf_representation$4$B)
	.dwattr $C$DW$38, DW_AT_high_pc($C$DW$L$_pdf_representation$4$E)
$C$DW$39	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$39, DW_AT_low_pc($C$DW$L$_pdf_representation$8$B)
	.dwattr $C$DW$39, DW_AT_high_pc($C$DW$L$_pdf_representation$8$E)
$C$DW$40	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$40, DW_AT_low_pc($C$DW$L$_pdf_representation$9$B)
	.dwattr $C$DW$40, DW_AT_high_pc($C$DW$L$_pdf_representation$9$E)

$C$DW$41	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$41, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L3:2:1497183057")
	.dwattr $C$DW$41, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x50)
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x58)
$C$DW$42	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$42, DW_AT_low_pc($C$DW$L$_pdf_representation$6$B)
	.dwattr $C$DW$42, DW_AT_high_pc($C$DW$L$_pdf_representation$6$E)
	.dwendtag $C$DW$41

	.dwendtag $C$DW$36

	.dwattr $C$DW$32, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x5b)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$32

	.sect	".text"
	.clink
	.global	_initWeight

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("initWeight")
	.dwattr $C$DW$43, DW_AT_low_pc(_initWeight)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_initWeight")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x89)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$43, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$43, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 138,column 1,is_stmt,address _initWeight
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CalWeight")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_CalWeight")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: initWeight                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B4,B5,  *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B3,B4,  *
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_initWeight:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 18
           MVK     .S1     264,A7
           MVK     .S1     280,A6
           MVK     .S1     80,A17            ; |143| 
           MVK     .S1     96,A9             ; |143| 
           MVK     .S1     104,A8            ; |143| 
           MVK     .S1     88,A16            ; |143| 

           MVK     .S1     120,A3            ; |143| 
||         DINT                              ; interrupts off
||         MV      .L1     A4,A2             ; |138| 

           ADDAD   .D1     A2,23,A27
||         MVK     .S1     32,A22            ; |143| 
||         MVK     .S2     272,B7

           ADDAD   .D1     A2,19,A25
||         MVK     .S1     72,A18            ; |143| 
||         MVK     .S2     288,B18

           ADDAD   .D1     A2,17,A24
||         STW     .D2T1   A12,*SP--(8)      ; |138| 
||         MVK     .S1     64,A19            ; |143| 
||         MVK     .S2     336,B5
||         MV      .L2X    A4,B17            ; |138| 

           ADDAD   .D2     B17,16,B6
||         ADDAD   .D1     A2,25,A28
||         MVK     .S1     40,A21            ; |143| 
||         MVK     .S2     320,B16

           ADDAD   .D2     B17,22,B9
||         ADDAD   .D1     A2,21,A26
||         MVK     .S1     56,A5             ; |143| 
||         MVK     .S2     256,B26

           ADDAD   .D2     B17,20,B8
||         ADDAD   .D1     A2,27,A29
||         MVK     .S1     48,A20            ; |143| 
||         MVK     .S2     304,B19
||         ZERO    .L2     B4

           ADDAD   .D2     B17,18,B7
||         MVK     .S1     312,A12
||         ADDAD   .D1     A2,31,A31
||         ADD     .L2X    B7,A4,B21
||         MVK     .S2     0x3a,B0           ; |141| 
||         MV      .L1     A4,A23            ; |138| 

           MVK     .S1     328,A11
||         STDW    .D2T1   A11:A10,*SP--     ; |138| 
||         ADD     .L2     B18,B17,B22
||         ADDAD   .D1     A2,29,A30
||         SET     .S2     B4,0x17,0x1d,B4
||         ADD     .L1     A7,A4,A0

           MVK     .S1     296,A10
||         ADDAD   .D2     B17,28,B18
||         ADDAD   .D1     A2,30,A7
||         ADD     .L2     B5,B17,B25
||         ADD     .S2     B16,B17,B24
||         ADD     .L1     A6,A4,A1

           MVK     .S1     112,A4            ; |143| 
||         ADD     .L1     A11,A4,A11
||         ADDAD   .D2     B17,24,B16
||         MV      .D1X    B4,A6
||         ADD     .L2     B26,B17,B20
||         ADD     .S2     B19,B17,B23

           ADD     .L1     A12,A2,A10
||         ADD     .S1     A10,A2,A2
||         ADDAD   .D2     B17,26,B17
||         MV      .D1X    B4,A7
||         MV      .L2X    A7,B19            ; Define a twin register
||         MV      .S2     B4,B5

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 141
;*      Loop opening brace source line   : 142
;*      Loop closing brace source line   : 147
;*      Known Minimum Trip Count         : 58                    
;*      Known Maximum Trip Count         : 58                    
;*      Known Max Trip Count Factor      : 58
;*      Loop Carried Dependency Bound(^) : 1
;*      Unpartitioned Resource Bound     : 22
;*      Partitioned Resource Bound(*)    : 43
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                    15       14     
;*      .D units                    29       14     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths            43*      43*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             8        7     
;*      Bound(.L .S .D .LS .LSD)    15       10     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 43 Schedule found with 1 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |************    ****************|*   ******      **********      |
;*       1: |************    ****************|*   ******      **********      |
;*       2: |************    ****************|*   ******      **********      |
;*       3: |************    ****************|*   ******      **********      |
;*       4: |************    ****************|*   ******      **********      |
;*       5: |************    ****************|*   ******      **********      |
;*       6: |************    ****************|*   ******      **********      |
;*       7: |************    ****************|*   ******      **********      |
;*       8: |************    ****************|*   ******      **********      |
;*       9: |************    ****************|*   ******      **********      |
;*      10: |************    ****************|*   ******      **********      |
;*      11: |************    ****************|*   ******      **********      |
;*      12: |************    ****************|*   ******      **********      |
;*      13: |************    ****************|*   ******      **********      |
;*      14: |************    ****************|*   ******      **********      |
;*      15: |************    ****************|*   ******      **********      |
;*      16: |************    ****************|*   ******      **********      |
;*      17: |************    ****************|*   ******      **********      |
;*      18: |************    ****************|*   ******      **********      |
;*      19: |************    ****************|*   ******      **********      |
;*      20: |************    ****************|*   ******      **********      |
;*      21: |************    ****************|*   ******      **********      |
;*      22: |************    ****************|*   ******      **********      |
;*      23: |************    ****************|*   ******      **********      |
;*      24: |************    ****************|*   ******      **********      |
;*      25: |************    ****************|*   ******      **********      |
;*      26: |************    ****************|*   ******      **********      |
;*      27: |************    ****************|*   ******      **********      |
;*      28: |************    ****************|*   ******      **********      |
;*      29: |************    ****************|*   ******      **********      |
;*      30: |************    ****************|*   ******      **********      |
;*      31: |************    ****************|*   ******      **********      |
;*      32: |************    ****************|*   ******      **********      |
;*      33: |************    ****************|*   ******      **********      |
;*      34: |************    ****************|*   ******      **********      |
;*      35: |************    ****************|*   ******      **********      |
;*      36: |************    ****************|*   ******      **********      |
;*      37: |************    ****************|*   ******      **********      |
;*      38: |************    ****************|*   ******      **********      |
;*      39: |************    ****************|*   ******      **********      |
;*      40: |************    ****************|*   ******      **********      |
;*      41: |************    ****************|*   ******      **********      |
;*      42: |************    ****************|*   ******      **********      |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*
;*      Minimum safe trip count       : 1
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 0 + min_trip_cnt * 43 = 2494        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A6,B4
;*                  MV              A7,B5
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C141:
;*   0              STNDW   .D2T2   B5:B4,*B25        ; |143|  ^ 
;*   1              STNDW   .D1T1   A7:A6,*A11        ; |143|  ^ 
;*   2              STNDW   .D2T2   B5:B4,*B24        ; |143|  ^ 
;*   3              STNDW   .D1T1   A7:A6,*A10        ; |143|  ^ 
;*   4              STNDW   .D2T2   B5:B4,*B23        ; |143|  ^ 
;*   5              STNDW   .D1T1   A7:A6,*A2         ; |143|  ^ 
;*   6              STNDW   .D2T2   B5:B4,*B22        ; |143|  ^ 
;*   7              STNDW   .D1T1   A7:A6,*A1         ; |143|  ^ 
;*   8              STNDW   .D2T2   B5:B4,*B21        ; |143|  ^ 
;*   9              STNDW   .D1T1   A7:A6,*A0         ; |143|  ^ 
;*  10              STNDW   .D2T2   B5:B4,*B20        ; |143|  ^ 
;*  11              STNDW   .D1T1   A7:A6,*A31        ; |143|  ^ 
;*  12              STNDW   .D2T2   B5:B4,*B19        ; |143|  ^ 
;*  13              STNDW   .D1T1   A7:A6,*A30        ; |143|  ^ 
;*  14              STNDW   .D2T2   B5:B4,*B18        ; |143|  ^ 
;*  15              STNDW   .D1T1   A7:A6,*A29        ; |143|  ^ 
;*  16              STNDW   .D2T2   B5:B4,*B17        ; |143|  ^ 
;*  17              STNDW   .D1T1   A7:A6,*A28        ; |143|  ^ 
;*  18              STNDW   .D2T2   B5:B4,*B16        ; |143|  ^ 
;*  19              STNDW   .D1T1   A7:A6,*A27        ; |143|  ^ 
;*  20              STNDW   .D2T2   B5:B4,*B9         ; |143|  ^ 
;*  21              STNDW   .D1T1   A7:A6,*A26        ; |143|  ^ 
;*  22              STNDW   .D2T2   B5:B4,*B8         ; |143|  ^ 
;*  23              STNDW   .D1T1   A7:A6,*A25        ; |143|  ^ 
;*  24              STNDW   .D2T2   B5:B4,*B7         ; |143|  ^ 
;*  25              STNDW   .D1T1   A7:A6,*A24        ; |143|  ^ 
;*  26              STNDW   .D2T1   A7:A6,*B6         ; |143|  ^ 
;*  27              STNDW   .D1T2   B5:B4,*+A23(A3)   ; |143|  ^ 
;*  28              STNDW   .D1T1   A7:A6,*+A23(A4)   ; |143|  ^ 
;*     ||           ADDK    .S1     344,A24           ; |143|  ^ 
;*  29              STNDW   .D1T2   B5:B4,*+A23(A8)   ; |143|  ^ 
;*     ||           ADDK    .S2     344,B6            ; |143|  ^ 
;*     ||           ADDK    .S1     344,A25           ; |143|  ^ 
;*  30              STNDW   .D1T1   A7:A6,*+A23(A9)   ; |143|  ^ 
;*     ||           ADDK    .S2     344,B7            ; |143|  ^ 
;*     ||           ADDK    .S1     344,A26           ; |143|  ^ 
;*  31              STNDW   .D1T2   B5:B4,*+A23(A16)  ; |143|  ^ 
;*     ||           ADDK    .S2     344,B8            ; |143|  ^ 
;*     ||           ADDK    .S1     344,A27           ; |143|  ^ 
;*  32              STNDW   .D1T1   A7:A6,*+A23(A17)  ; |143|  ^ 
;*     ||           ADDK    .S2     344,B9            ; |143|  ^ 
;*     ||           ADDK    .S1     344,A28           ; |143|  ^ 
;*  33              STNDW   .D1T2   B5:B4,*+A23(A18)  ; |143|  ^ 
;*     ||           ADDK    .S2     344,B16           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A29           ; |143|  ^ 
;*  34              STNDW   .D1T1   A7:A6,*+A23(A19)  ; |143|  ^ 
;*     ||           ADDK    .S2     344,B17           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A30           ; |143|  ^ 
;*  35              STNDW   .D1T2   B5:B4,*+A23(A5)   ; |143|  ^ 
;*     ||           ADDK    .S2     344,B18           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A31           ; |143|  ^ 
;*  36              STNDW   .D1T1   A7:A6,*+A23(A20)  ; |143|  ^ 
;*     ||           ADDK    .S2     344,B19           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A0            ; |143|  ^ 
;*     ||   [ B0]   SUB     .L2     B0,1,B0           ; |141|  ^ 
;*  37              STNDW   .D1T2   B5:B4,*+A23(A21)  ; |143|  ^ 
;*     ||           ADDK    .S2     344,B20           ; |143|  ^ 
;*     ||   [ B0]   B       .S1     $C$C141           ; |141| 
;*  38              STNDW   .D1T1   A7:A6,*+A23(A22)  ; |143|  ^ 
;*     ||           ADDK    .S2     344,B21           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A1            ; |143|  ^ 
;*  39              STNDW   .D1T2   B5:B4,*+A23(24)   ; |143|  ^ 
;*     ||           ADDK    .S2     344,B22           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A2            ; |143|  ^ 
;*  40              STNDW   .D1T1   A7:A6,*+A23(16)   ; |143|  ^ 
;*     ||           ADDK    .S2     344,B23           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A10           ; |143|  ^ 
;*  41              STNDW   .D1T2   B5:B4,*+A23(8)    ; |143|  ^ 
;*     ||           ADDK    .S2     344,B24           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A11           ; |143|  ^ 
;*  42              STNDW   .D1T1   A7:A6,*A23        ; |143|  ^ 
;*     ||           ADDK    .S2     344,B25           ; |143|  ^ 
;*     ||           ADDK    .S1     344,A23           ; |141|  ^ 
;*  43              ; BRANCHCC OCCURS {$C$C141}       ; |141| 
;*----------------------------------------------------------------------------*
$C$L7:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP KERNEL
$C$DW$L$_initWeight$3$B:
	.dwpsn	file "dspMeanshift.c",line 142,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 43
           STNDW   .D2T2   B5:B4,*B25        ; |143| <0,0>  ^ 
           STNDW   .D1T1   A7:A6,*A11        ; |143| <0,1>  ^ 
           STNDW   .D2T2   B5:B4,*B24        ; |143| <0,2>  ^ 
           STNDW   .D1T1   A7:A6,*A10        ; |143| <0,3>  ^ 
           STNDW   .D2T2   B5:B4,*B23        ; |143| <0,4>  ^ 
           STNDW   .D1T1   A7:A6,*A2         ; |143| <0,5>  ^ 
           STNDW   .D2T2   B5:B4,*B22        ; |143| <0,6>  ^ 
           STNDW   .D1T1   A7:A6,*A1         ; |143| <0,7>  ^ 
           STNDW   .D2T2   B5:B4,*B21        ; |143| <0,8>  ^ 
           STNDW   .D1T1   A7:A6,*A0         ; |143| <0,9>  ^ 
           STNDW   .D2T2   B5:B4,*B20        ; |143| <0,10>  ^ 
           STNDW   .D1T1   A7:A6,*A31        ; |143| <0,11>  ^ 
           STNDW   .D2T2   B5:B4,*B19        ; |143| <0,12>  ^ 
           STNDW   .D1T1   A7:A6,*A30        ; |143| <0,13>  ^ 
           STNDW   .D2T2   B5:B4,*B18        ; |143| <0,14>  ^ 
           STNDW   .D1T1   A7:A6,*A29        ; |143| <0,15>  ^ 
           STNDW   .D2T2   B5:B4,*B17        ; |143| <0,16>  ^ 
           STNDW   .D1T1   A7:A6,*A28        ; |143| <0,17>  ^ 
           STNDW   .D2T2   B5:B4,*B16        ; |143| <0,18>  ^ 
           STNDW   .D1T1   A7:A6,*A27        ; |143| <0,19>  ^ 
           STNDW   .D2T2   B5:B4,*B9         ; |143| <0,20>  ^ 
           STNDW   .D1T1   A7:A6,*A26        ; |143| <0,21>  ^ 
           STNDW   .D2T2   B5:B4,*B8         ; |143| <0,22>  ^ 
           STNDW   .D1T1   A7:A6,*A25        ; |143| <0,23>  ^ 
           STNDW   .D2T2   B5:B4,*B7         ; |143| <0,24>  ^ 
           STNDW   .D1T1   A7:A6,*A24        ; |143| <0,25>  ^ 
           STNDW   .D2T1   A7:A6,*B6         ; |143| <0,26>  ^ 
           STNDW   .D1T2   B5:B4,*+A23(A3)   ; |143| <0,27>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A4)   ; |143| <0,28>  ^ 
||         ADDK    .S1     344,A24           ; |143| <0,28>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A8)   ; |143| <0,29>  ^ 
||         ADDK    .S2     344,B6            ; |143| <0,29>  ^ 
||         ADDK    .S1     344,A25           ; |143| <0,29>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A9)   ; |143| <0,30>  ^ 
||         ADDK    .S2     344,B7            ; |143| <0,30>  ^ 
||         ADDK    .S1     344,A26           ; |143| <0,30>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A16)  ; |143| <0,31>  ^ 
||         ADDK    .S2     344,B8            ; |143| <0,31>  ^ 
||         ADDK    .S1     344,A27           ; |143| <0,31>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A17)  ; |143| <0,32>  ^ 
||         ADDK    .S2     344,B9            ; |143| <0,32>  ^ 
||         ADDK    .S1     344,A28           ; |143| <0,32>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A18)  ; |143| <0,33>  ^ 
||         ADDK    .S2     344,B16           ; |143| <0,33>  ^ 
||         ADDK    .S1     344,A29           ; |143| <0,33>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A19)  ; |143| <0,34>  ^ 
||         ADDK    .S2     344,B17           ; |143| <0,34>  ^ 
||         ADDK    .S1     344,A30           ; |143| <0,34>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A5)   ; |143| <0,35>  ^ 
||         ADDK    .S2     344,B18           ; |143| <0,35>  ^ 
||         ADDK    .S1     344,A31           ; |143| <0,35>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A20)  ; |143| <0,36>  ^ 
||         ADDK    .S2     344,B19           ; |143| <0,36>  ^ 
||         ADDK    .S1     344,A0            ; |143| <0,36>  ^ 
|| [ B0]   SUB     .L2     B0,1,B0           ; |141| <0,36>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A21)  ; |143| <0,37>  ^ 
||         ADDK    .S2     344,B20           ; |143| <0,37>  ^ 
|| [ B0]   B       .S1     $C$L8             ; |141| <0,37> 

           STNDW   .D1T1   A7:A6,*+A23(A22)  ; |143| <0,38>  ^ 
||         ADDK    .S2     344,B21           ; |143| <0,38>  ^ 
||         ADDK    .S1     344,A1            ; |143| <0,38>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(24)   ; |143| <0,39>  ^ 
||         ADDK    .S2     344,B22           ; |143| <0,39>  ^ 
||         ADDK    .S1     344,A2            ; |143| <0,39>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(16)   ; |143| <0,40>  ^ 
||         ADDK    .S2     344,B23           ; |143| <0,40>  ^ 
||         ADDK    .S1     344,A10           ; |143| <0,40>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(8)    ; |143| <0,41>  ^ 
||         ADDK    .S2     344,B24           ; |143| <0,41>  ^ 
||         ADDK    .S1     344,A11           ; |143| <0,41>  ^ 

	.dwpsn	file "dspMeanshift.c",line 147,column 0,is_stmt

           STNDW   .D1T1   A7:A6,*A23        ; |143| <0,42>  ^ 
||         ADDK    .S2     344,B25           ; |143| <0,42>  ^ 
||         ADDK    .S1     344,A23           ; |141| <0,42>  ^ 

$C$DW$L$_initWeight$3$E:
;** --------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           LDDW    .D2T1   *++SP,A11:A10
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

           RETNOP  .S2     B3,4              ; |148| 
||         LDW     .D2T1   *++SP(8),A12      ; |148| 

	.dwpsn	file "dspMeanshift.c",line 148,column 1,is_stmt
           RINT                              ; interrupts on
           ; BRANCH OCCURS {B3}              ; |148| 

$C$DW$46	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$46, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L8:1:1497183057")
	.dwattr $C$DW$46, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x8d)
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x93)
$C$DW$47	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$47, DW_AT_low_pc($C$DW$L$_initWeight$3$B)
	.dwattr $C$DW$47, DW_AT_high_pc($C$DW$L$_initWeight$3$E)
	.dwendtag $C$DW$46

	.dwattr $C$DW$43, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x94)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$43

	.sect	".text"
	.clink
	.global	_initTarget

$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("initTarget")
	.dwattr $C$DW$48, DW_AT_low_pc(_initTarget)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_initTarget")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x73)
	.dwattr $C$DW$48, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$48, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$48, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 116,column 1,is_stmt,address _initTarget
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("matIndex")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_matIndex")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: initTarget                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,B4,B5,B6,B8                           *
;*   Regs Used         : A0,A1,A3,A4,A5,B3,B4,B5,B6,B8,DP                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_initTarget:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           CMPEQ   .L1     A4,1,A1           ; |120| 
||         LDW     .D2T2   *+DP(_epanechnikovSum),B4 ; |118| 
||         MVK     .L2     0x8,B8            ; |130| 
||         MVKL    .S1     _target_model,A3
||         MVKL    .S2     _target_candidate,B6
||         MVK     .D1     0x3,A0            ; |122| 

   [ A1]   BNOP    .S1     $C$L13,1          ; |120| 
||         MVKH    .S2     _target_candidate,B6

           MVKH    .S1     _target_model,A3
   [!A1]   SUB     .L1X    B8,5,A0
           MV      .L2     B4,B5
           MV      .L1X    B4,A4
           ; BRANCHCC OCCURS {$C$L13}        ; |120| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 130
;*      Loop opening brace source line   : 131
;*      Loop closing brace source line   : 133
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*                               |    ***                         |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages       : 1
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 5 (after unrolling)
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 5 + min_trip_cnt * 1 = 13        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C177:
;*   0      [ A0]   BDEC    .S1     $C$C177,A0        ; |130| 
;*   1              NOP             4
;*   5              STDW    .D2T2   B5:B4,*B6++       ; |130| 
;*   6              ; BRANCHCC OCCURS {$C$C177}       ; |130| 
;*----------------------------------------------------------------------------*
$C$L10:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 5
   [ A0]   BDEC    .S1     $C$L11,A0         ; |130| (P) <0,0> 
   [ A0]   BDEC    .S1     $C$L11,A0         ; |130| (P) <1,0> 
   [ A0]   BDEC    .S1     $C$L11,A0         ; |130| (P) <2,0> 
   [ A0]   BDEC    .S1     $C$L11,A0         ; |130| (P) <3,0> 
	.dwpsn	file "dspMeanshift.c",line 130,column 0,is_stmt
   [ A0]   BDEC    .S1     $C$L11,A0         ; |130| (P) <4,0> 
;** --------------------------------------------------------------------------*
$C$L11:    ; PIPED LOOP KERNEL
$C$DW$L$_initTarget$3$B:
	.dwpsn	file "dspMeanshift.c",line 131,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "dspMeanshift.c",line 133,column 0,is_stmt

           STDW    .D2T2   B5:B4,*B6++       ; |130| <0,5> 
|| [ A0]   BDEC    .S1     $C$L11,A0         ; |130| <5,0> 

$C$DW$L$_initTarget$3$E:
;** --------------------------------------------------------------------------*
$C$L12:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return
           RETNOP  .S2     B3,1              ; |135| 
           STDW    .D2T2   B5:B4,*B6++       ; |130| (E) <2,5> 
           STDW    .D2T2   B5:B4,*B6++       ; |130| (E) <3,5> 
           STDW    .D2T2   B5:B4,*B6++       ; |130| (E) <4,5> 
           STDW    .D2T2   B5:B4,*B6++       ; |130| (E) <5,5> 
           ; BRANCH OCCURS {B3}              ; |135| 
;** --------------------------------------------------------------------------*
$C$L13:    
;          EXCLUSIVE CPU CYCLES: 1

           SUB     .L1     A0,2,A0
||         ADD     .L2X    8,A3,B6
||         DINT                              ; interrupts off

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 122
;*      Loop opening brace source line   : 123
;*      Loop closing brace source line   : 126
;*      Known Minimum Trip Count         : 3                    
;*      Known Maximum Trip Count         : 3                    
;*      Known Max Trip Count Factor      : 3
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     4*       4*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             4*       4*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 4  Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*  ***                          |    ***                         |
;*       1: |*  ***                          |    ***                         |
;*       2: |*  ***                          |    ***                         |
;*       3: |*  ***                          |    ***                         |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 2
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 2 + min_trip_cnt * 4 = 14        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*                  MV              A3,B6
;*                  MV              A4,B4
;*                  MV              A5,B5
;*                  ADD             8,B6,B6
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C207:
;*   0              STDW    .D2T2   B5:B4,*B6++(64)   ; |123| 
;*     ||   [ A0]   BDEC    .S1     $C$C207,A0        ; |122| 
;*   1              STDW    .D2T2   B5:B4,*-B6(56)    ; |123| 
;*   2              STDW    .D1T1   A5:A4,*A3++(64)   ; |123| 
;*     ||           STDW    .D2T2   B5:B4,*-B6(48)    ; |123| 
;*   3              STDW    .D2T2   B5:B4,*-B6(40)    ; |123| 
;*     ||           STDW    .D1T1   A5:A4,*-A3(24)    ; |123| 
;*   4              STDW    .D1T1   A5:A4,*-A3(16)    ; |123| 
;*   5              STDW    .D1T1   A5:A4,*-A3(8)     ; |123| 
;*   6              ; BRANCHCC OCCURS {$C$C207}       ; |122| 
;*----------------------------------------------------------------------------*
$C$L14:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 2

   [ A0]   BDEC    .S1     $C$L15,A0         ; |122| (P) <0,0> 
||         STDW    .D2T2   B5:B4,*B6++(64)   ; |123| (P) <0,0> 

	.dwpsn	file "dspMeanshift.c",line 122,column 0,is_stmt

           MV      .L1X    B5,A5
||         STDW    .D2T2   B5:B4,*-B6(56)    ; |123| (P) <0,1> 

;** --------------------------------------------------------------------------*
$C$L15:    ; PIPED LOOP KERNEL
$C$DW$L$_initTarget$8$B:
	.dwpsn	file "dspMeanshift.c",line 123,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 4

           STDW    .D1T1   A5:A4,*A3++(64)   ; |123| <0,2> 
||         STDW    .D2T2   B5:B4,*-B6(48)    ; |123| <0,2> 

           STDW    .D1T1   A5:A4,*-A3(24)    ; |123| <0,3> 
||         STDW    .D2T2   B5:B4,*-B6(40)    ; |123| <0,3> 

           STDW    .D1T1   A5:A4,*-A3(16)    ; |123| <0,4> 
|| [ A0]   BDEC    .S1     $C$L15,A0         ; |122| <1,0> 
||         STDW    .D2T2   B5:B4,*B6++(64)   ; |123| <1,0> 

	.dwpsn	file "dspMeanshift.c",line 126,column 0,is_stmt

           STDW    .D1T1   A5:A4,*-A3(8)     ; |123| <0,5> 
||         STDW    .D2T2   B5:B4,*-B6(56)    ; |123| <1,1> 

$C$DW$L$_initTarget$8$E:
;** --------------------------------------------------------------------------*
$C$L16:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return
           RETNOP  .S2     B3,1              ; |135| 

           STDW    .D1T1   A5:A4,*A3++(64)   ; |123| (E) <1,2> 
||         STDW    .D2T2   B5:B4,*-B6(48)    ; |123| (E) <1,2> 

           STDW    .D2T2   B5:B4,*-B6(40)    ; |123| (E) <1,3> 
||         STDW    .D1T1   A5:A4,*-A3(24)    ; |123| (E) <1,3> 

           STDW    .D1T1   A5:A4,*-A3(16)    ; |123| (E) <1,4> 
	.dwpsn	file "dspMeanshift.c",line 135,column 1,is_stmt

           STDW    .D1T1   A5:A4,*-A3(8)     ; |123| (E) <1,5> 
||         RINT                              ; interrupts on

           ; BRANCH OCCURS {B3}              ; |135| 

$C$DW$52	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$52, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L15:1:1497183057")
	.dwattr $C$DW$52, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x7a)
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x7e)
$C$DW$53	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$53, DW_AT_low_pc($C$DW$L$_initTarget$8$B)
	.dwattr $C$DW$53, DW_AT_high_pc($C$DW$L$_initTarget$8$E)
	.dwendtag $C$DW$52


$C$DW$54	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$54, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L11:1:1497183057")
	.dwattr $C$DW$54, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x82)
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x85)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$_initTarget$3$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$_initTarget$3$E)
	.dwendtag $C$DW$54

	.dwattr $C$DW$48, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x87)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$48

	.sect	".text"
	.clink
	.global	_HC_pdf_representation_target

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_pdf_representation_target")
	.dwattr $C$DW$56, DW_AT_low_pc(_HC_pdf_representation_target)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_HC_pdf_representation_target")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$56, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 46,column 1,is_stmt,address _HC_pdf_representation_target
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colorIndex")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_colorIndex")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg4]
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: HC_pdf_representation_target                                *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A8,A9,B0,B1,B4,B5,B6,B7,B8,B9,A16,A31,*
;*                           B31                                              *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B0,B1,B3,B4,B5,B6,B7,B8,B9,A16, *
;*                           A31,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_HC_pdf_representation_target:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           MVK     .S1     0xe4,A16
           MVKL    .S1     _target_model,A6
           SHL     .S1     A4,6,A7

           EXTU    .S1     A16,16,16,A31     ; |56| 
||         MVK     .S2     0x3a,B1           ; |54| 

           MVKH    .S1     _target_model,A6
||         MVK     .S2     0x16f,B8          ; |50| 
||         MV      .L1X    B4,A8             ; |46| 
||         ZERO    .D1     A9                ; |54| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L17
;** --------------------------------------------------------------------------*
$C$L17:    
$C$DW$L$_HC_pdf_representation_target$2$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVK     .S2     86,B4
           MVKL    .S2     _bin,B6
           MVKL    .S2     _kernel,B5

           MPYUS   .M2X    A9,B4,B4
||         MVK     .S2     0x56,B9
||         MVK     .S1     640,A3

           MPYUS   .M1X    B8,A3,A5
||         MVKH    .S2     _bin,B6

           ADDAW   .D2     B6,B4,B6
||         MVKH    .S2     _kernel,B5

           ADDAW   .D2     B5,B4,B7
||         ADD     .L1     1,A31,A3          ; |63| (P) <0,0> 
||         ADD     .S1     A5,A31,A4         ; |57| (P) <0,0> 
||         SUB     .L2     B9,2,B0
||         DINT                              ; interrupts off

$C$DW$L$_HC_pdf_representation_target$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 57
;*      Loop opening brace source line   : 58
;*      Loop closing brace source line   : 64
;*      Known Minimum Trip Count         : 86                    
;*      Known Maximum Trip Count         : 86                    
;*      Known Max Trip Count Factor      : 86
;*      Loop Carried Dependency Bound(^) : 15
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        2     
;*      .D units                     3*       3*    
;*      .M units                     0        0     
;*      .X cross paths               2        3*    
;*      .T address paths             3*       2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3*       3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 15 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   ******                       |*     **                        |
;*       1: |   * ****                       |*     **                        |
;*       2: |   * ****                       |*     **                        |
;*       3: |   * ****                       |*     **                        |
;*       4: |   * ****                       |*     **                        |
;*       5: |   ******                       |*     **                        |
;*       6: |   ******                       |*     **                        |
;*       7: |   ******                       |*     **                        |
;*       8: |   ******                       |*     **                        |
;*       9: |   ******                       |*     **                        |
;*      10: |   * ****                       |*   * **                        |
;*      11: |   * ****                       |*   * **                        |
;*      12: |   * ****                       |*   * **                        |
;*      13: |   ******                       |*   ****                        |
;*      14: |   * ****                       |*   ****                        |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh4
;*
;*      Minimum safe trip count       : 2
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.125, max 1.000 }
;*      Mem bank perf. penalty (est.) : 0.8%
;*
;*      Effective ii                : { min 15.00, est 15.12, max 16.00 }
;*
;*
;*      Total cycles (est.)         : 1 + min_trip_cnt * 15 = 1291        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B0,1,B0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C261:
;*   0              ADD     .S1     A5,A3,A4          ; |57| 
;*     ||           ADD     .L1     1,A3,A3           ; |63| 
;*   1              LDBU    .D1T1   *+A4[A8],A4       ; |57|  ^ 
;*   2              NOP             4
;*   6              SHRU    .S1     A4,4,A4           ; |57|  ^ 
;*   7              STW     .D2T1   A4,*B6++          ; |57| 
;*     ||           ADDAW   .D1     A7,A4,A4          ; |61|  ^ 
;*   8              ADD     .L1     A6,A4,A4          ; |61|  ^ 
;*   9              LDW     .D1T1   *A4,A4            ; |61|  ^ 
;*     ||           LDW     .D2T2   *B7++,B5          ; |61| 
;*  10              MV      .L2X    A4,B4             ; |61| Define a twin register
;*     ||   [ B0]   BDEC    .S2     $C$C261,B0        ; |57| 
;*  11              NOP             3
;*  14              ADD     .L2X    B5,A4,B5          ; |61|  ^ 
;*     ||           EXTU    .S1     A3,16,16,A3       ; |63| 
;*  15              STW     .D2T2   B5,*B4            ; |61|  ^ 
;*  16              ; BRANCHCC OCCURS {$C$C261}       ; |57| 
;*----------------------------------------------------------------------------*
$C$L18:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L19:    ; PIPED LOOP KERNEL
$C$DW$L$_HC_pdf_representation_target$4$B:
	.dwpsn	file "dspMeanshift.c",line 58,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 15
           LDBU    .D1T1   *+A4[A8],A4       ; |57| <0,1>  ^ 
           NOP             4
           SHRU    .S1     A4,4,A4           ; |57| <0,6>  ^ 

           STW     .D2T1   A4,*B6++          ; |57| <0,7> 
||         ADDAW   .D1     A7,A4,A4          ; |61| <0,7>  ^ 

           ADD     .L1     A6,A4,A4          ; |61| <0,8>  ^ 

           LDW     .D2T2   *B7++,B5          ; |61| <0,9> 
||         LDW     .D1T1   *A4,A4            ; |61| <0,9>  ^ 

           MV      .L2X    A4,B4             ; |61| <0,10> Define a twin register
|| [ B0]   BDEC    .S2     $C$L19,B0         ; |57| <0,10> 

           NOP             3

           EXTU    .S1     A3,16,16,A3       ; |63| <0,14> 
||         ADD     .L2X    B5,A4,B5          ; |61| <0,14>  ^ 

	.dwpsn	file "dspMeanshift.c",line 64,column 0,is_stmt

           STW     .D2T2   B5,*B4            ; |61| <0,15>  ^ 
||         ADD     .L1     1,A3,A3           ; |63| <1,0> 
||         ADD     .S1     A5,A3,A4          ; |57| <1,0> 

$C$DW$L$_HC_pdf_representation_target$4$E:
;** --------------------------------------------------------------------------*
$C$L20:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 15

           ADD     .L1     1,A9,A3           ; |54| 
||         ADD     .L2     1,B8,B31          ; |54| 
||         SUB     .S2     B1,1,B1           ; |54| 
||         LDBU    .D1T1   *+A4[A8],A3       ; |57| (E) <1,1>  ^ 

           EXTU    .S2     B31,16,16,B8      ; |54| 
||         EXTU    .S1     A3,16,16,A9       ; |54| 

           NOP             3
           SHRU    .S1     A3,4,A3           ; |57| (E) <1,6>  ^ 

           STW     .D2T1   A3,*B6++          ; |57| (E) <1,7> 
||         ADDAW   .D1     A7,A3,A3          ; |61| (E) <1,7>  ^ 

           ADD     .L1     A6,A3,A3          ; |61| (E) <1,8>  ^ 

           LDW     .D2T2   *B7++,B4          ; |61| (E) <1,9> 
||         LDW     .D1T1   *A3,A3            ; |61| (E) <1,9>  ^ 

   [ B1]   BNOP    .S2     $C$L17,2          ; |54| 
||         MV      .L2X    A3,B5             ; |61| (E) <1,10> Define a twin register

           RINT                              ; interrupts on
           ADD     .L2X    B4,A3,B4          ; |61| (E) <1,14>  ^ 
           STW     .D2T2   B4,*B5            ; |61| (E) <1,15>  ^ 
           ; BRANCHCC OCCURS {$C$L17}        ; |54| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "dspMeanshift.c",line 67,column 1,is_stmt
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |67| 
           ; BRANCH OCCURS {B3}              ; |67| 

$C$DW$60	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$60, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L17:1:1497183057")
	.dwattr $C$DW$60, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$60, DW_AT_TI_begin_line(0x36)
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x3f)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_HC_pdf_representation_target$2$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_HC_pdf_representation_target$2$E)

$C$DW$62	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$62, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L19:2:1497183057")
	.dwattr $C$DW$62, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x39)
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x40)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_HC_pdf_representation_target$4$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_HC_pdf_representation_target$4$E)
	.dwendtag $C$DW$62

	.dwendtag $C$DW$60

	.dwattr $C$DW$56, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x43)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$56

	.sect	".text"
	.clink
	.global	_HC_Epanechnikov_kernel

$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_Epanechnikov_kernel")
	.dwattr $C$DW$64, DW_AT_low_pc(_HC_Epanechnikov_kernel)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x17)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$64, DW_AT_frame_base[DW_OP_breg31 64]
	.dwattr $C$DW$64, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 24,column 1,is_stmt,address _HC_Epanechnikov_kernel

;******************************************************************************
;* FUNCTION NAME: HC_Epanechnikov_kernel                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 8 Auto + 56 Save = 64 byte                  *
;******************************************************************************
_HC_Epanechnikov_kernel:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 37

           MVKL    .S1     0x40490fd0,A8
||         MVKL    .S2     0x3dcccccd,B9

           MVKH    .S1     0x40490fd0,A8
||         MVK     .S2     139,B17           ; |81| 

           MV      .L1     A8,A5             ; |61| 
||         ZERO    .L2     B16
||         MVKH    .S2     0x3dcccccd,B9
||         MVK     .S1     128,A4            ; |72| 

           MV      .L2X    A8,B4             ; |61| 
||         SET     .S2     B16,0x1e,0x1e,B16
||         EXTU    .S1     A5,9,9,A7         ; |97| 

           CLR     .S2     B4,0,29,B6        ; |61| 
||         EXTU    .S1     A5,1,24,A3        ; |71| 
||         MV      .L2     B9,B8             ; |61| 
||         MV      .D2     B9,B7             ; |61| 
||         CMPEQ   .L1     A7,0,A16          ; |97| 

           MV      .L2     B6,B4             ; |61| 
||         CMPLTU  .L1     A3,A4,A0          ; |72| 
||         SHL     .S1     A5,7,A4           ; |89| 
||         MV      .D2     B16,B18           ; |72| 
||         EXTU    .S2     B8,1,24,B5        ; |71| 

   [ A0]   XOR     .L2     B18,B6,B4         ; |74| 
||         CLR     .S2     B7,0,29,B6        ; |61| 
||         ADD     .D2     -1,B16,B7
||         MVK     .S1     128,A7            ; |71| 
||         SUB     .L1X    B17,A3,A3         ; |81| 

           AND     .D2X    B7,A4,B9          ; |99| 
||         CMPEQ   .L2     B9,0,B7           ; |58| 
||         EXTU    .S1     A5,9,2,A4         ; |89| 
||         SHRU    .S2     B4,31,B18         ; |97| 
||         ZERO    .D1     A6
||         CMPLTU  .L1X    B5,A7,A0          ; |71| 

           OR      .L2     B4,B9,B19         ; |99| 
||         OR      .L1X    B4,A4,A4          ; |89| 
||         MV      .D2     B6,B4             ; |61| 
||         EXTU    .S2     B8,9,9,B9         ; |97| 
||         XOR     .D1     1,A16,A5          ; |97| 
||         SET     .S1     A6,0x7,0x1e,A6

   [ A0]   XOR     .D2     B16,B6,B4         ; |74| 
||         AND     .S1X    A5,B18,A0         ; |97| 
||         CMPEQ   .L1     A8,0,A5           ; |58| 
||         MV      .D1     A6,A8             ; |99| 
||         CMPEQ   .L2     B9,0,B6           ; |97| 
||         EXTU    .S2     B8,9,2,B9         ; |89| 

   [ A0]   XOR     .L1X    A8,B19,A4         ; |99| 
||         XOR     .L2     1,B6,B8           ; |97| 
||         SHRU    .S2     B4,31,B6          ; |97| 

           SHR     .S1     A4,A3,A4          ; |574| 
||         XOR     .L1X    1,B7,A3           ; |58| 
||         AND     .L2     B8,B6,B0          ; |97| 
||         OR      .S2     B4,B9,B4          ; |89| 

   [ B0]   XOR     .L2X    A6,B4,B4          ; |99| 
||         EXTU    .S1     A3,16,16,A3       ; |104| 
||         SUB     .S2     B17,B5,B5         ; |81| 
||         ZERO    .L1     A9

           XOR     .L2X    1,A5,B6           ; |58| 
||         SHR     .S2     B4,B5,B4          ; |104| 
||         ZERO    .L1     A17
||         MVKH    .S1     0x1580000,A9

           EXTU    .S2     B6,16,16,B6       ; |574| 
||         MPY32   .M2X    A3,B4,B4          ; |104| 
||         MVKH    .S1     0xe80000,A17

           MPY32   .M2X    B6,A4,B5          ; |574| 
||         MPY32   .M1     A17,A9,A5:A4      ; |574| 

           ZERO    .L2     B7
           MVKH    .S2     0x540000,B7
           ZERO    .L1     A7
           MPY32   .M2     B4,B5,B5:B4       ; |574| 
           SHL     .S2X    A5,14,B6          ; |574| 
           SHRU    .S1     A4,18,A3          ; |574| 
           OR      .L1X    B6,A3,A6          ; |574| 

           SHRU    .S2     B4,18,B4          ; |574| 
||         MPY32   .M1X    A9,B7,A5:A4
||         SET     .S1     A7,0x13,0x15,A7

           SHL     .S1X    B5,14,A3          ; |574| 

           OR      .L1X    A3,B4,A3          ; |574| 
||         MPY32   .M1     A17,A7,A9:A8

           MPY32   .M1     A3,A6,A7:A6       ; |574| 

           STW     .D2T1   A11,*SP--(8)      ; |24| 
||         SHRU    .S1     A4,18,A4

           STW     .D2T1   A10,*SP--(8)      ; |24| 
||         ZERO    .L1     A10
||         SHL     .S2X    A5,14,B6

           MVKH    .S1     0xff8c0000,A10
||         STDW    .D2T2   B13:B12,*SP--     ; |24| 
||         OR      .L2X    B6,A4,B13

           MPY32   .M1     A10,A10,A5:A4
||         SHRU    .S1     A8,18,A3
||         STDW    .D2T2   B11:B10,*SP--     ; |24| 
||         SHL     .S2X    A9,14,B5

           SHL     .S2X    A7,14,B4          ; |574| 
||         STDW    .D2T1   A15:A14,*SP--     ; |24| 
||         ZERO    .L1     A15
||         MVK     .S1     0x56,A31          ; |33| 

           OR      .L2X    B5,A3,B12
||         MVKL    .S2     _kernel,B5
||         SET     .S1     A15,0x12,0x12,A15

           SHRU    .S1     A6,18,A3          ; |574| 
||         STDW    .D2T1   A13:A12,*SP--     ; |24| 
||         ZERO    .L1     A13
||         MVKH    .S2     _kernel,B5

           OR      .L1X    B4,A3,A14         ; |574| 
||         MVK     .S2     0x3a,B4           ; |31| 
||         STW     .D2T2   B3,*SP--(16)      ; |24| 
||         MVKH    .S1     0xff540000,A13

           STW     .D2T2   B4,*+SP(4)        ; |574| 
||         SHL     .S2X    A5,14,B4
||         SHRU    .S1     A4,18,A3
||         MPY32   .M1     A13,A13,A5:A4     ; |37| 
||         ZERO    .L2     B11

	.dwpsn	file "dspMeanshift.c",line 31,column 0,is_stmt

           MVK     .S1     0x12,A6           ; |37| 
||         ADD     .L2     B5,B11,B10
||         STW     .D2T1   A31,*+SP(8)

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L21
;** --------------------------------------------------------------------------*
$C$L21:    
$C$DW$L$_HC_Epanechnikov_kernel$2$B:
	.dwpsn	file "dspMeanshift.c",line 32,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 5
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$65, DW_AT_TI_call
           CALL    .S1     __IQNdiv          ; |37| 
           OR      .L1X    B4,A3,A12
           SHL     .S2X    A5,14,B4          ; |37| 
           SHRU    .S1     A4,18,A3          ; |37| 
	.dwpsn	file "dspMeanshift.c",line 33,column 0,is_stmt

           OR      .L1X    B4,A3,A4          ; |37| 
||         MV      .L2     B13,B4            ; |37| 

$C$DW$L$_HC_Epanechnikov_kernel$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L22:    
$C$DW$L$_HC_Epanechnikov_kernel$3$B:
	.dwpsn	file "dspMeanshift.c",line 34,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
           ADDKPC  .S2     $C$RL0,B3,0       ; |37| 
$C$RL0:    ; CALL OCCURS {__IQNdiv} {0}      ; |37| 
$C$DW$L$_HC_Epanechnikov_kernel$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$4$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$66, DW_AT_TI_call

           CALLP   .S2     __IQNdiv,B3
||         MV      .L2     B12,B4            ; |37| 
||         MVK     .S1     0x12,A6           ; |37| 
||         MV      .L1     A4,A11            ; |37| 
||         MV      .D1     A12,A4            ; |37| 

$C$RL1:    ; CALL OCCURS {__IQNdiv} {0}      ; |37| 
$C$DW$L$_HC_Epanechnikov_kernel$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$5$B:
;          EXCLUSIVE CPU CYCLES: 24
           ADD     .L1     A11,A4,A3         ; |37| 
           SUB     .L1     A15,A3,A4         ; |38| 
           MPY32   .M1     A14,A4,A5:A4      ; |38| 
           ADD     .L1     A15,A13,A13       ; |33| 
           MVK     .L2     2,B5              ; |39| 
           CMPLT   .L1     A3,A15,A0         ; |38| 
           SHRU    .S1     A4,18,A4          ; |38| 
           SHL     .S2X    A5,14,B4          ; |38| 

           OR      .L2X    B4,A4,B4          ; |38| 
||         MPY32   .M1     A13,A13,A5:A4     ; |37| 

   [ A0]   SHR     .S2     B4,7,B4           ; |38| 
|| [!A0]   ZERO    .L2     B4                ; |38| 

           MPY32   .M2     B4,B5,B7:B6       ; |39| 
||         STW     .D2T2   B4,*B10++         ; |33| 

           LDW     .D2T1   *+SP(8),A31
           LDW     .D2T2   *+DP(_epanechnikovSum),B8 ; |39| 
           SHL     .S2X    A5,14,B4          ; |37| 
           SHRU    .S2     B6,11,B5          ; |39| 
           SHL     .S1X    B7,21,A3          ; |39| 
           SUB     .L1     A31,1,A0          ; |33| 

   [!A0]   ADDK    .S2     344,B11           ; |31| 
||         STW     .D2T1   A0,*+SP(8)        ; |39| 
||         OR      .L2X    A3,B5,B5          ; |39| 
|| [ A0]   SHRU    .S1     A4,18,A3          ; |37| 

   [ A0]   B       .S1     $C$L22            ; |33| 
||         OR      .L1X    B4,A3,A4          ; |37| 
||         MV      .L2     B13,B4            ; |37| 

$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$67, DW_AT_TI_call

   [ A0]   CALL    .S1     __IQNdiv          ; |37| 
|| [!A0]   LDW     .D2T2   *+SP(4),B4

   [!A0]   ADD     .L1     A15,A10,A10       ; |31| 
   [ A0]   MVK     .S1     0x12,A6           ; |37| 
           ADD     .L2     B8,B5,B5          ; |39| 
	.dwpsn	file "dspMeanshift.c",line 40,column 0,is_stmt
           STW     .D2T2   B5,*+DP(_epanechnikovSum) ; |39| 
           ; BRANCHCC OCCURS {$C$L22}        ; |33| 
$C$DW$L$_HC_Epanechnikov_kernel$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$6$B:
;          EXCLUSIVE CPU CYCLES: 7

           MPY32   .M1     A10,A10,A5:A4
||         SUB     .L1X    B4,1,A0           ; |31| 
||         SUB     .L2     B4,1,B4           ; |31| 

   [ A0]   B       .S1     $C$L21            ; |31| 
|| [ A0]   ZERO    .L1     A13
|| [ A0]   MVKL    .S2     _kernel,B5
||         STW     .D2T2   B4,*+SP(4)        ; |31| 
|| [ A0]   ZERO    .D1     A15

   [ A0]   MVKH    .S1     0xff540000,A13
|| [ A0]   MVKH    .S2     _kernel,B5

   [ A0]   MVK     .S1     0x56,A31          ; |33| 
|| [ A0]   ADD     .L2     B5,B11,B10

   [ A0]   SHRU    .S1     A4,18,A3
|| [ A0]   STW     .D2T1   A31,*+SP(8)

           SHL     .S2X    A5,14,B4
||         MPY32   .M1     A13,A13,A5:A4     ; |37| 
|| [ A0]   SET     .S1     A15,0x12,0x12,A15

	.dwpsn	file "dspMeanshift.c",line 41,column 0,is_stmt

   [ A0]   MVK     .S1     0x12,A6           ; |37| 
|| [!A0]   ZERO    .L2     B4                ; |574| 

           ; BRANCHCC OCCURS {$C$L21}        ; |31| 
$C$DW$L$_HC_Epanechnikov_kernel$6$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 20
           MPY32   .M2     B5,B4,B5:B4       ; |574| 
           NOP             4
           SHL     .S1X    B5,21,A3          ; |574| 
           SHRU    .S2     B4,11,B4          ; |574| 
           OR      .L2X    A3,B4,B4          ; |574| 
           STW     .D2T2   B4,*+DP(_epanechnikovSum) ; |574| 
           LDW     .D2T2   *++SP(16),B3      ; |43| 
           LDDW    .D2T1   *++SP,A13:A12     ; |43| 
           LDDW    .D2T1   *++SP,A15:A14     ; |43| 
           LDDW    .D2T2   *++SP,B11:B10     ; |43| 
           LDDW    .D2T2   *++SP,B13:B12     ; |43| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x04)
	.dwattr $C$DW$68, DW_AT_TI_return

           LDW     .D2T1   *++SP(8),A10      ; |43| 
||         RET     .S2     B3                ; |43| 

           LDW     .D2T1   *++SP(8),A11      ; |43| 
	.dwpsn	file "dspMeanshift.c",line 43,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |43| 

$C$DW$69	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$69, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L21:1:1497183057")
	.dwattr $C$DW$69, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x1f)
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x29)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$2$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$2$E)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$6$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$6$E)

$C$DW$72	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$72, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L22:2:1497183057")
	.dwattr $C$DW$72, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x21)
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x28)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$3$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$3$E)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$4$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$4$E)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$5$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$5$E)
	.dwendtag $C$DW$72

	.dwendtag $C$DW$69

	.dwattr $C$DW$64, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x2b)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$64

	.sect	".text"
	.clink
	.global	_CalcWeight

$C$DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcWeight")
	.dwattr $C$DW$76, DW_AT_low_pc(_CalcWeight)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_CalcWeight")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$76, DW_AT_TI_begin_line(0x5d)
	.dwattr $C$DW$76, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$76, DW_AT_frame_base[DW_OP_breg31 72]
	.dwattr $C$DW$76, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 94,column 1,is_stmt,address _CalcWeight
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colorIndex")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_colorIndex")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg4]
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg20]
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rect")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_rect")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg6]
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CalWeight")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_CalWeight")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg22]

;******************************************************************************
;* FUNCTION NAME: CalcWeight                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 12 Auto + 56 Save = 68 byte                 *
;******************************************************************************
_CalcWeight:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 18
           STW     .D2T1   A11,*SP--(8)      ; |94| 
           STW     .D2T1   A10,*SP--(8)      ; |94| 
           STDW    .D2T2   B13:B12,*SP--     ; |94| 
           STDW    .D2T2   B11:B10,*SP--     ; |94| 
           STDW    .D2T1   A15:A14,*SP--     ; |94| 
           STDW    .D2T1   A13:A12,*SP--     ; |94| 
           STW     .D2T2   B3,*SP--(24)      ; |94| 
           LDHU    .D1T1   *+A6(6),A0        ; |102| 
           LDHU    .D1T2   *+A6(4),B4        ; |98| 
           MV      .L2     B6,B13            ; |94| 
           MV      .L1     A4,A14            ; |94| 
           ZERO    .L1     A12               ; |102| 

   [!A0]   B       .S1     $C$L26            ; |102| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
||         MV      .L2X    A0,B5             ; |104| 

           STW     .D2T2   B5,*+SP(4)        ; |104| 
|| [ A1]   MVK     .S2     86,B5

           STW     .D2T2   B4,*+SP(8)        ; |104| 
           LDW     .D2T1   *+SP(8),A0
   [ A1]   MPYUS   .M1X    A12,B5,A6
           NOP             1
           ; BRANCHCC OCCURS {$C$L26}        ; |102| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
	.dwpsn	file "dspMeanshift.c",line 102,column 0,is_stmt
           NOP             2
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L23
;** --------------------------------------------------------------------------*
$C$L23:    
$C$DW$L$_CalcWeight$3$B:
	.dwpsn	file "dspMeanshift.c",line 103,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 6

   [ A0]   MVKL    .S1     _bin,A5
|| [!A0]   B       .S2     $C$L25            ; |104| 
|| [ A0]   MV      .L2X    A0,B4
|| [ A0]   ZERO    .L1     A15

   [ A0]   MVKH    .S1     _bin,A5
|| [ A0]   STW     .D2T2   B4,*+SP(12)
|| [ A0]   MVK     .S2     128,B12
|| [ A0]   MV      .L2X    A6,B5             ; Define a twin register

           ADDAW   .D1     A5,A6,A10
|| [ A0]   SET     .S1     A15,0x0,0x1e,A15
|| [ A0]   ADDAW   .D2     B13,B5,B11

   [ A0]   LDW     .D1T1   *A10,A5           ; |108| 
|| [ A0]   ADD     .L1     1,A15,A11
|| [ A0]   MVKL    .S1     _target_candidate,A3

   [ A0]   MVKH    .S1     _target_candidate,A3

   [ A0]   SUB     .L2X    A11,B12,B12
|| [ A0]   MVKL    .S1     _target_model,A4

           ; BRANCHCC OCCURS {$C$L25}        ; |104| 
$C$DW$L$_CalcWeight$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_CalcWeight$4$B:
;          EXCLUSIVE CPU CYCLES: 2
           SHL     .S1     A14,6,A13
	.dwpsn	file "dspMeanshift.c",line 105,column 0,is_stmt
           NOP             1
$C$DW$L$_CalcWeight$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L24:    
$C$DW$L$_CalcWeight$5$B:
	.dwpsn	file "dspMeanshift.c",line 106,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7

           MVKH    .S1     _target_model,A4
||         ADDAW   .D1     A13,A5,A6         ; |108| 

$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x08)
	.dwattr $C$DW$81, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$81, DW_AT_TI_call

           LDW     .D1T2   *+A3[A5],B4       ; |108| 
||         ADD     .L1     A4,A6,A3          ; |108| 
||         CALL    .S1     __IQNdiv          ; |108| 

           LDW     .D1T1   *A3,A4            ; |108| 
||         LDW     .D2T2   *B11,B10          ; |58| 

           MVK     .L1     0xb,A6            ; |108| 
           ADDKPC  .S2     $C$RL2,B3,2       ; |108| 
$C$RL2:    ; CALL OCCURS {__IQNdiv} {0}      ; |108| 
$C$DW$L$_CalcWeight$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_CalcWeight$6$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("__IQNsqrt")
	.dwattr $C$DW$82, DW_AT_TI_call

           CALLP   .S2     __IQNsqrt,B3
||         MVK     .L2     0xb,B4            ; |108| 

$C$RL3:    ; CALL OCCURS {__IQNsqrt} {0}     ; |108| 
$C$DW$L$_CalcWeight$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_CalcWeight$7$B:
;          EXCLUSIVE CPU CYCLES: 36

           ZERO    .L2     B4
||         ZERO    .D2     B31
||         EXTU    .S2     B10,1,24,B6       ; |71| 

           MVKH    .S2     0xc0000000,B4
||         CMPEQ   .L2     B10,0,B30         ; |58| 

           MVK     .S2     0x80,B5

           CMPLTU  .L2     B6,B5,B0          ; |72| 
||         AND     .D2     B4,B10,B5         ; |61| 
||         SET     .S2     B31,0x1e,0x1e,B4

           EXTU    .S2     B10,9,9,B7        ; |89| 
|| [ B0]   XOR     .L2     B4,B5,B5          ; |74| 

           EXTU    .S2     B10,9,2,B29       ; |89| 

           CMPEQ   .L1X    B7,0,A3           ; |97| 
||         MVK     .S2     0x92,B28
||         XOR     .L2     1,B30,B7          ; |58| 

           SHRU    .S1X    B5,31,A5          ; |97| 
||         XOR     .L1     1,A3,A3           ; |97| 
||         OR      .L2     B5,B29,B5         ; |89| 
||         SUB     .D2     B28,B6,B6         ; |81| 
||         EXTU    .S2     B7,16,16,B27      ; |1079| 

           AND     .L1     A3,A5,A0          ; |97| 
   [ A0]   XOR     .L2     B12,B5,B5         ; |99| 
           SHR     .S2     B5,B6,B5          ; |1079| 
           MPY32   .M2     B27,B5,B4         ; |1079| 
           ADD     .L1     4,A10,A10         ; |105| 
           MVK     .S1     0x92,A31
           NOP             2
           MPY32   .M1X    B4,A4,A5:A4       ; |1079| 
           NOP             4
           SHL     .S2X    A5,21,B4          ; |1079| 
           SHRU    .S1     A4,11,A3          ; |1079| 

           OR      .L1X    B4,A3,A3          ; |1079| 
||         LDW     .D2T2   *+SP(12),B4       ; |105| 

           NORM    .L1     A3,A5             ; |1079| 

           SHL     .S1     A3,A5,A4          ; |1087| 
||         SUB     .L1     A31,A5,A5         ; |1099| 

           XOR     .L1     A15,A4,A3         ; |1087| 
           CMPLT   .L1     A3,0,A0           ; |1088| 

   [!A0]   MV      .L1     A4,A3             ; |1090| 
||         SUB     .S1X    B4,1,A2           ; |105| 
||         SUB     .L2     B4,1,B26          ; |105| 

           MV      .L1     A3,A0             ; |1092| 
||         EXTU    .S1     A3,2,9,A3         ; |105| 

   [!A0]   ZERO    .L1     A5                ; |1102| 
|| [ A2]   B       .S1     $C$L24            ; |105| 
||         AND     .D1     A11,A0,A30        ; |105| 

           SHL     .S1     A5,23,A4          ; |105| 
|| [ A2]   LDW     .D1T1   *A10,A5           ; |108| 

           OR      .L1     A30,A4,A4         ; |105| 

           OR      .L1     A3,A4,A3          ; |105| 
|| [ A2]   MVKL    .S1     _target_model,A4

           STW     .D2T1   A3,*B11++         ; |108| 
|| [ A2]   MVKL    .S1     _target_candidate,A3

	.dwpsn	file "dspMeanshift.c",line 110,column 0,is_stmt

   [ A2]   MVKH    .S1     _target_candidate,A3
||         STW     .D2T2   B26,*+SP(12)      ; |108| 

           ; BRANCHCC OCCURS {$C$L24}        ; |105| 
$C$DW$L$_CalcWeight$7$E:
;** --------------------------------------------------------------------------*
$C$L25:    
$C$DW$L$_CalcWeight$8$B:
;          EXCLUSIVE CPU CYCLES: 12
           LDW     .D2T2   *+SP(4),B4        ; |102| 
           ADD     .L1     1,A12,A3          ; |102| 
           EXTU    .S1     A3,16,16,A12      ; |102| 
           NOP             2

           SUB     .L1X    B4,1,A0           ; |102| 
||         SUB     .L2     B4,1,B4           ; |102| 

   [ A0]   BNOP    .S1     $C$L23,2          ; |102| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
||         LDW     .D2T1   *+SP(8),A0

   [ A1]   MVK     .S2     86,B5
           STW     .D2T2   B4,*+SP(4)        ; |102| 
	.dwpsn	file "dspMeanshift.c",line 112,column 0,is_stmt
   [ A1]   MPYUS   .M1X    A12,B5,A6
           ; BRANCHCC OCCURS {$C$L23}        ; |102| 
$C$DW$L$_CalcWeight$8$E:
;** --------------------------------------------------------------------------*
$C$L26:    
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(24),B3      ; |113| 
           LDDW    .D2T1   *++SP,A13:A12     ; |113| 
           LDDW    .D2T1   *++SP,A15:A14     ; |113| 
           LDDW    .D2T2   *++SP,B11:B10     ; |113| 
           LDDW    .D2T2   *++SP,B13:B12     ; |113| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x04)
	.dwattr $C$DW$83, DW_AT_TI_return

           LDW     .D2T1   *++SP(8),A10      ; |113| 
||         RET     .S2     B3                ; |113| 

           LDW     .D2T1   *++SP(8),A11      ; |113| 
	.dwpsn	file "dspMeanshift.c",line 113,column 2,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |113| 

$C$DW$84	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$84, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L23:1:1497183057")
	.dwattr $C$DW$84, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x66)
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x70)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_CalcWeight$3$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_CalcWeight$3$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_CalcWeight$4$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_CalcWeight$4$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_CalcWeight$8$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_CalcWeight$8$E)

$C$DW$88	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$88, DW_AT_name("/home/constantinos/embLab/danielle/dsp/dspMeanshift.asm:$C$L24:2:1497183057")
	.dwattr $C$DW$88, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0x69)
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x6e)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_CalcWeight$5$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_CalcWeight$5$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_CalcWeight$6$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_CalcWeight$6$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_CalcWeight$7$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_CalcWeight$7$E)
	.dwendtag $C$DW$88

	.dwendtag $C$DW$84

	.dwattr $C$DW$76, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x71)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x02)
	.dwendtag $C$DW$76

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__IQNdiv
	.global	__IQNsqrt

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x20)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("I32_IQ")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("_iq11")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x158)
$C$DW$92	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$92, DW_AT_upper_bound(0x55)
	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x4df0)
$C$DW$93	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$93, DW_AT_upper_bound(0x39)
$C$DW$94	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$94, DW_AT_upper_bound(0x55)
	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x40)
$C$DW$95	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$95, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_byte_size(0xc0)
$C$DW$96	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$96, DW_AT_upper_bound(0x02)
$C$DW$97	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$97, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("_iq18")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Uword32")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("U32_IQ")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)

$C$DW$T$70	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x158)
$C$DW$98	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$98, DW_AT_upper_bound(0x55)
	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x4df0)
$C$DW$99	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$99, DW_AT_upper_bound(0x39)
$C$DW$100	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$100, DW_AT_upper_bound(0x55)
	.dwendtag $C$DW$T$71

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("I64_IQ")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("Fword32")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg0]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg1]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg2]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg3]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg4]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg5]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg6]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg7]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg8]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg9]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg10]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg11]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg12]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg13]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg14]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg15]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg16]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg17]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg18]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg19]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg20]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg21]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg22]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg23]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg24]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg25]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg26]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg27]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg28]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg29]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg30]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg31]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x20]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x21]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x22]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x23]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x24]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x25]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x26]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x27]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x28]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x29]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x30]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x31]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x32]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x33]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x34]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x35]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x36]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x37]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x38]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x39]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x40]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x41]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x42]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x43]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x44]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x45]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x46]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x47]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x48]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x49]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x50]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x51]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x52]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x53]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x54]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x55]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x56]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x57]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x58]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x59]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x60]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x61]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x62]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x63]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x64]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x65]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x66]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x67]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x68]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x69]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x70]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x71]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x72]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x73]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x74]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x75]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x76]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x77]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x78]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x79]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

