;******************************************************************************
;* TMS320C6x C/C++ Codegen                                       Unix v6.1.17 *
;* Date/Time created: Tue Jun  6 19:37:16 2017                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --disable:=sploop --endian=little --hll_source=on --mem_model:code=far --mem_model:const=data --mem_model:data=far --predefine_memory_model_macros --quiet --silicon_version=6500 --symdebug:skeletal 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64x+                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
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
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp")
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
	.field  	$C$IR_1,32
	.field  	_kernel+0,32
	.field  	0,32			; _kernel[0][0] @ 0
$C$IR_1:	.set	4


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


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("_abs")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("__abs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("_hill")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("__hill")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$14)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("_loll")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("__loll")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$14)
	.dwendtag $C$DW$11


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("_itof")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("__itof")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$13


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("_ftoi")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("__ftoi")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)
	.dwendtag $C$DW$15


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("_mpy32ll")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("__mpy32ll")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$10)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$17


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNdiv")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("__IQNdiv")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$41)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$41)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$42)
	.dwendtag $C$DW$20


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNsqrt")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("__IQNsqrt")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$41)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$44)
	.dwendtag $C$DW$24

	.global	_binWidth
_binWidth:	.usect	".far",2,2
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("binWidth")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_binWidth")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _binWidth]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_external
	.global	_cfgMaxIter
_cfgMaxIter:	.usect	".far",2,2
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("cfgMaxIter")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_cfgMaxIter")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _cfgMaxIter]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_external
	.global	_kernel
_kernel:	.usect	".far",19952,8
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("kernel")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_kernel")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _kernel]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$29, DW_AT_external
	.global	_target_model
_target_model:	.usect	".far",192,8
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("target_model")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_target_model")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr _target_model]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$30, DW_AT_external
	.global	_target_candidate
_target_candidate:	.usect	".far",64,8
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("target_candidate")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_target_candidate")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _target_candidate]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$31, DW_AT_external
;	/opt/bbToolChain/usr/local/share/c6000/bin/opt6x /tmp/12416ueI1ed /tmp/12416y2q5oj 
	.sect	".text"
	.clink
	.global	_retModel

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("retModel")
	.dwattr $C$DW$32, DW_AT_low_pc(_retModel)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_retModel")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x45)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$32, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 70,column 1,is_stmt,address _retModel
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("retbuf")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_retbuf")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: retModel                                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,  *
;*                           B8,B9,A16,A17,A18,A19,A20,A21,A27,A28,A29,A30,   *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A27,A28,A29,A30,*
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_retModel:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           MVKL    .S1     _target_model-8,A21
           MVKH    .S1     _target_model-8,A21
           MV      .L1     A21,A6
           LDDW    .D1T1   *++A6,A19:A18     ; |73| (P) <0,0> 
           LDDW    .D1T2   *+A6(64),B23:B22  ; |73| (P) <0,4> 
           ZERO    .L2     B4
           SET     .S2     B4,0x0,0x1e,B4
           DINT                              ; interrupts off
           NORM    .L1     A18,A16           ; |1099| (P) <0,5>  ^ 
           SHL     .S1     A18,A16,A9        ; |1099| (P) <0,6>  ^ 
           XOR     .L1X    B4,A9,A8          ; |1099| (P) <0,7>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 73
;*      Loop opening brace source line   : 73
;*      Loop closing brace source line   : 73
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 10
;*      Partitioned Resource Bound(*)    : 10
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     4        4     
;*      .S units                     7        6     
;*      .D units                     2        4     
;*      .M units                     0        0     
;*      .X cross paths               6        0     
;*      .T address paths             3        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           2        0     (.L or .S unit)
;*      Addition ops (.LSD)         14       16     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             7        5     
;*      Bound(.L .S .D .LS .LSD)    10*      10*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 10 Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |* ********      ** *            |**  *****       **              |
;*       1: |**********      ** *            |**  *****        ***            |
;*       2: |******* **      ** *            | *  ******      ****  **        |
;*       3: |*** *** **      * **            | *  ******      ****  **        |
;*       4: | ** ******      ****            |    ******      **** ***        |
;*       5: |******** *      ****            |*   ******      *** ** *        |
;*       6: |* *******       * *             |**  *****       ******          |
;*       7: |* ****** *                      |*** ******      *****           |
;*       8: |* ****** *       ****           |*** ******      *** *           |
;*       9: |  ********      *****           |**  *****       ***             |
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
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count       : 3 (after unrolling)
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 17 + min_trip_cnt * 10 = 97        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A2,1,A2
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C133:
;*   0              LDDW    .D1T1   *++A6,A19:A18     ; |73| 
;*   1              NOP             3
;*   4              LDDW    .D1T2   *+A6(64),B23:B22  ; |73| 
;*   5              NORM    .L1     A18,A16           ; |1099|  ^ 
;*   6              SHL     .S1     A18,A16,A9        ; |1099|  ^ 
;*   7              XOR     .D1X    B4,A9,A8          ; |1099|  ^ 
;*   8              CMPLT   .L1     A8,0,A1           ; |1099|  ^ 
;*   9              NOP             1
;*  10              NORM    .L2     B22,B18           ; |1099|  ^ 
;*  11      [ A1]   MV      .D1     A8,A0             ; |1099|  ^ 
;*     ||           SHL     .S2     B22,B18,B0        ; |1099|  ^ 
;*     ||           NORM    .L1     A19,A3            ; |1099|  ^ 
;*     ||           NORM    .L2     B23,B16           ; |1099|  ^ 
;*  12      [!A1]   MV      .D1     A9,A0             ; |1099|  ^ 
;*     ||           XOR     .L2     B4,B0,B19         ; |1099|  ^ 
;*     ||           SHL     .S1     A19,A3,A7         ; |1099|  ^ 
;*     ||           SHL     .S2     B23,B16,B1        ; |1099|  ^ 
;*  13      [!A0]   ZERO    .D1     A5                ; |1099| 
;*     ||   [ A0]   SUB     .L1X    B6,A16,A5         ; |1099|  ^ 
;*     ||           CMPLT   .L2     B19,0,B2          ; |1099|  ^ 
;*     ||           XOR     .S2     B4,B1,B9          ; |1099|  ^ 
;*  14              SHL     .S1     A5,23,A17         ; |1099| 
;*     ||           AND     .L1X    B5,A0,A20         ; |1099| 
;*     ||   [ B2]   MV      .D2     B19,B0            ; |1099|  ^ 
;*     ||           CMPLT   .L2     B9,0,B2           ; |1099|  ^ 
;*  15              EXTU    .S1     A0,2,9,A8         ; |1099| 
;*     ||   [ B2]   MV      .L2     B9,B1             ; |1099|  ^ 
;*  16              OR      .D1     A20,A17,A17       ; |1099| 
;*     ||   [!B0]   ZERO    .L2     B8                ; |1099| 
;*     ||   [ B0]   SUB     .S2     B6,B18,B8         ; |1099|  ^ 
;*     ||           XOR     .L1X    B4,A7,A0          ; |1099|  ^ 
;*  17              OR      .S1     A8,A17,A17        ; |1099| 
;*     ||           EXTU    .S2     B0,2,9,B18        ; |1099| 
;*     ||           CMPLT   .L1     A0,0,A1           ; |1099|  ^ 
;*     ||   [ B1]   SUB     .L2     B6,B16,B17        ; |1099|  ^ 
;*     ||           AND     .D2     B5,B1,B19         ; |1099| 
;*  18              SHL     .S2     B8,23,B9          ; |1099| 
;*     ||           AND     .L2     B5,B0,B16         ; |1099| 
;*     ||   [!A1]   MV      .D1     A7,A0             ; |1099|  ^ 
;*     ||   [!B1]   ZERO    .D2     B17               ; |1099| 
;*  19              STW     .D2T1   A17,*++B7(8)      ; |1099| 
;*     ||           OR      .L2     B16,B9,B9         ; |1099| 
;*     ||   [!A0]   ZERO    .D1     A4                ; |1099| 
;*     ||   [ A0]   SUB     .L1X    B6,A3,A4          ; |1099|  ^ 
;*     ||           EXTU    .S1     A0,2,9,A18        ; |1099| 
;*     ||           SHL     .S2     B17,23,B16        ; |1099| 
;*  20              OR      .D2     B18,B9,B9         ; |1099| 
;*     ||           SHL     .S1     A4,23,A7          ; |1099| 
;*     ||           AND     .L1X    B5,A0,A17         ; |1099| 
;*     ||           EXTU    .S2     B1,2,9,B21        ; |1099| 
;*  21              OR      .D2     B19,B16,B20       ; |1099| 
;*     ||   [ A2]   BDEC    .S1     $C$C133,A2        ; |73| 
;*  22              STW     .D2T2   B9,*+B7(64)       ; |1099| 
;*     ||           OR      .L1     A17,A7,A8         ; |1099| 
;*  23              OR      .S1     A18,A8,A9         ; |1099| 
;*     ||           OR      .D2     B21,B20,B20       ; |1099| 
;*  24              NOP             1
;*  25              STW     .D2T2   B20,*+B7(68)      ; |1099| 
;*  26              STW     .D2T1   A9,*+B7(4)        ; |1099| 
;*  27              ; BRANCHCC OCCURS {$C$C133}       ; |73| 
;*----------------------------------------------------------------------------*
$C$L1:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 7

           MVK     .S2     0x92,B6
||         CMPLT   .L1     A8,0,A1           ; |1099| (P) <0,8>  ^ 
||         NORM    .L2     B22,B18           ; |1099| (P) <0,10>  ^ 
||         LDDW    .D1T1   *++A6,A19:A18     ; |73| (P) <1,0> 

   [ A1]   MV      .S1     A8,A0             ; |1099| (P) <0,11>  ^ 
||         SHL     .S2     B22,B18,B0        ; |1099| (P) <0,11>  ^ 
||         NORM    .L2     B23,B16           ; |1099| (P) <0,11>  ^ 
||         NORM    .L1     A19,A3            ; |1099| (P) <0,11>  ^ 

           ADD     .L2     1,B4,B5
||         XOR     .D2     B4,B0,B19         ; |1099| (P) <0,12>  ^ 
||         SHL     .S2     B23,B16,B1        ; |1099| (P) <0,12>  ^ 
||         SHL     .S1     A19,A3,A7         ; |1099| (P) <0,12>  ^ 
|| [!A1]   MV      .L1     A9,A0             ; |1099| (P) <0,12>  ^ 

           CMPLT   .L2     B19,0,B2          ; |1099| (P) <0,13>  ^ 
||         XOR     .S2     B4,B1,B9          ; |1099| (P) <0,13>  ^ 
|| [!A0]   ZERO    .S1     A5                ; |1099| (P) <0,13> 
|| [ A0]   SUB     .L1X    B6,A16,A5         ; |1099| (P) <0,13>  ^ 

           CMPLT   .L2     B9,0,B2           ; |1099| (P) <0,14>  ^ 
|| [ B2]   MV      .D2     B19,B0            ; |1099| (P) <0,14>  ^ 
||         AND     .L1X    B5,A0,A20         ; |1099| (P) <0,14> 
||         SHL     .S1     A5,23,A9          ; |1099| (P) <0,14> 
||         LDDW    .D1T2   *+A6(64),B23:B22  ; |73| (P) <1,4> 

           MVK     .D1     5,A2              ; |73| 
||         MV      .L2X    A4,B24            ; |70| 
|| [ B2]   MV      .S2     B9,B1             ; |1099| (P) <0,15>  ^ 
||         EXTU    .S1     A0,2,9,A8         ; |1099| (P) <0,15> 
||         NORM    .L1     A18,A16           ; |1099| (P) <1,5>  ^ 

	.dwpsn	file "dspMeanshift.c",line 73,column 0,is_stmt

           SUB     .L2X    A4,8,B7
||         XOR     .L1X    B4,A7,A0          ; |1099| (P) <0,16>  ^ 
|| [!B0]   ZERO    .S2     B8                ; |1099| (P) <0,16> 
|| [ B0]   SUB     .D2     B6,B18,B8         ; |1099| (P) <0,16>  ^ 
||         OR      .D1     A20,A9,A17        ; |1099| (P) <0,16> 
||         SHL     .S1     A18,A16,A9        ; |1099| (P) <1,6>  ^ 

;** --------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP KERNEL
$C$DW$L$_retModel$3$B:
;          EXCLUSIVE CPU CYCLES: 10

           OR      .S1     A8,A17,A17        ; |1099| <0,17> 
|| [ B1]   SUB     .L2     B6,B16,B17        ; |1099| <0,17>  ^ 
||         AND     .D2     B5,B1,B19         ; |1099| <0,17> 
||         EXTU    .S2     B0,2,9,B18        ; |1099| <0,17> 
||         CMPLT   .L1     A0,0,A1           ; |1099| <0,17>  ^ 
||         XOR     .D1X    B4,A9,A8          ; |1099| <1,7>  ^ 

           AND     .L2     B5,B0,B16         ; |1099| <0,18> 
|| [!B1]   ZERO    .D2     B17               ; |1099| <0,18> 
||         SHL     .S2     B8,23,B9          ; |1099| <0,18> 
|| [!A1]   MV      .D1     A7,A0             ; |1099| <0,18>  ^ 
||         CMPLT   .L1     A8,0,A1           ; |1099| <1,8>  ^ 

           STW     .D2T1   A17,*++B7(8)      ; |1099| <0,19> 
||         OR      .L2     B16,B9,B9         ; |1099| <0,19> 
||         SHL     .S2     B17,23,B16        ; |1099| <0,19> 
|| [!A0]   ZERO    .D1     A4                ; |1099| <0,19> 
|| [ A0]   SUB     .L1X    B6,A3,A4          ; |1099| <0,19>  ^ 
||         EXTU    .S1     A0,2,9,A18        ; |1099| <0,19> 

           EXTU    .S2     B1,2,9,B21        ; |1099| <0,20> 
||         SHL     .S1     A4,23,A7          ; |1099| <0,20> 
||         OR      .D2     B18,B9,B9         ; |1099| <0,20> 
||         AND     .L1X    B5,A0,A17         ; |1099| <0,20> 
||         NORM    .L2     B22,B18           ; |1099| <1,10>  ^ 
||         LDDW    .D1T1   *++A6,A19:A18     ; |73| <2,0> 

   [ A2]   BDEC    .S1     $C$L2,A2          ; |73| <0,21> 
||         OR      .D2     B19,B16,B20       ; |1099| <0,21> 
|| [ A1]   MV      .D1     A8,A0             ; |1099| <1,11>  ^ 
||         SHL     .S2     B22,B18,B0        ; |1099| <1,11>  ^ 
||         NORM    .L2     B23,B16           ; |1099| <1,11>  ^ 
||         NORM    .L1     A19,A3            ; |1099| <1,11>  ^ 

           STW     .D2T2   B9,*+B7(64)       ; |1099| <0,22> 
||         OR      .L1     A17,A7,A8         ; |1099| <0,22> 
||         XOR     .L2     B4,B0,B19         ; |1099| <1,12>  ^ 
||         SHL     .S2     B23,B16,B1        ; |1099| <1,12>  ^ 
||         SHL     .S1     A19,A3,A7         ; |1099| <1,12>  ^ 
|| [!A1]   MV      .D1     A9,A0             ; |1099| <1,12>  ^ 

           OR      .D2     B21,B20,B20       ; |1099| <0,23> 
||         OR      .S1     A18,A8,A9         ; |1099| <0,23> 
||         CMPLT   .L2     B19,0,B2          ; |1099| <1,13>  ^ 
||         XOR     .S2     B4,B1,B9          ; |1099| <1,13>  ^ 
|| [!A0]   ZERO    .D1     A5                ; |1099| <1,13> 
|| [ A0]   SUB     .L1X    B6,A16,A5         ; |1099| <1,13>  ^ 

           CMPLT   .L2     B9,0,B2           ; |1099| <1,14>  ^ 
|| [ B2]   MV      .D2     B19,B0            ; |1099| <1,14>  ^ 
||         AND     .L1X    B5,A0,A20         ; |1099| <1,14> 
||         SHL     .S1     A5,23,A17         ; |1099| <1,14> 
||         LDDW    .D1T2   *+A6(64),B23:B22  ; |73| <2,4> 

           STW     .D2T2   B20,*+B7(68)      ; |1099| <0,25> 
|| [ B2]   MV      .L2     B9,B1             ; |1099| <1,15>  ^ 
||         EXTU    .S1     A0,2,9,A8         ; |1099| <1,15> 
||         NORM    .L1     A18,A16           ; |1099| <2,5>  ^ 

           STW     .D2T1   A9,*+B7(4)        ; |1099| <0,26> 
||         XOR     .L1X    B4,A7,A0          ; |1099| <1,16>  ^ 
|| [!B0]   ZERO    .L2     B8                ; |1099| <1,16> 
|| [ B0]   SUB     .S2     B6,B18,B8         ; |1099| <1,16>  ^ 
||         OR      .D1     A20,A17,A17       ; |1099| <1,16> 
||         SHL     .S1     A18,A16,A9        ; |1099| <2,6>  ^ 

$C$DW$L$_retModel$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 73
;*      Loop opening brace source line   : 73
;*      Loop closing brace source line   : 73
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 1
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        2     
;*      .S units                     3        4     
;*      .D units                     2        1     
;*      .M units                     0        0     
;*      .X cross paths               0        5*    
;*      .T address paths             2        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        1     (.L or .S unit)
;*      Addition ops (.LSD)          8        7     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        4     
;*      Bound(.L .S .D .LS .LSD)     5*       5*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 5  Schedule found with 4 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |** ******        ** **          | ** * ****                      |
;*       1: |** ******        ** **          | **  *****                      |
;*       2: |** *******       ****           |**  ******      **              |
;*       3: |** *******      *****           |*** ******      *               |
;*       4: |** *******      ****            | ** *** **                      |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages       : 2
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh24
;*
;*      Minimum safe trip count       : 3 (after unrolling)
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 15 + min_trip_cnt * 5 = 55        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B1,1,B1
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C84:
;*   0              LDDW    .D1T1   *A7++,A21:A20     ; |73| 
;*   1              NOP             4
;*   5              NORM    .L1     A21,A17           ; |1099| 
;*   6              SHL     .S1     A21,A17,A9        ; |1099| 
;*   7              NORM    .L2X    A20,B16           ; |1099| 
;*     ||           XOR     .L1     A4,A9,A16         ; |1099| 
;*   8              MVD     .M2     B16,B4            ; |1099| Split a long life
;*     ||           SHL     .S2X    A20,B16,B6        ; |1099| 
;*     ||           CMPLT   .L1     A16,0,A0          ; |1099| 
;*   9              XOR     .L2X    A4,B6,B7          ; |1099| 
;*     ||   [ A0]   MV      .S1     A16,A0            ; |1099|  ^ 
;*     ||   [!A0]   MV      .D1     A9,A0             ; |1099|  ^ 
;*  10      [ A0]   SUB     .S1     A6,A17,A18        ; |1099|  ^ 
;*  11              CMPLT   .L2     B7,0,B0           ; |1099| 
;*     ||   [!A0]   ZERO    .D1     A18               ; |1099|  ^ 
;*     ||           AND     .L1     A5,A0,A19         ; |1099| 
;*  12      [!B0]   MV      .S2     B6,B2             ; |1099|  ^ 
;*     ||           SHL     .S1     A18,23,A3         ; |1099| 
;*  13      [ B0]   MV      .L2     B7,B2             ; |1099|  ^ 
;*     ||           OR      .D1     A19,A3,A19        ; |1099| 
;*     ||           EXTU    .S1     A0,2,9,A3         ; |1099| 
;*  14              OR      .L1     A3,A19,A3         ; |1099| 
;*     ||   [ B1]   BDEC    .S2     $C$C84,B1         ; |73| 
;*  15      [!B2]   ZERO    .D2     B8                ; |1099|  ^ 
;*     ||   [ B2]   SUB     .L2X    A6,B4,B8          ; |1099|  ^ 
;*     ||           EXTU    .S2     B2,2,9,B5         ; |1099| 
;*  16              SHL     .S2     B8,23,B16         ; |1099| 
;*     ||           AND     .D2X    A5,B2,B17         ; |1099| 
;*  17              OR      .D2     B17,B16,B6        ; |1099| 
;*     ||           STW     .D1T1   A3,*A8++(8)       ; |1099| 
;*  18              OR      .D2     B5,B6,B5          ; |1099| 
;*  19              STW     .D2T2   B5,*B9++(8)       ; |1099| 
;*  20              ; BRANCHCC OCCURS {$C$C84}        ; |73| 
;*----------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP EPILOG AND PROLOG
;          EXCLUSIVE CPU CYCLES: 23

           MVK     .S1     132,A28
|| [ B1]   SUB     .L2     B6,B16,B17        ; |1099| (E) <1,17>  ^ 
||         AND     .D2     B5,B0,B21         ; |1099| (E) <1,18> 
||         EXTU    .S2     B0,2,9,B20        ; |1099| (E) <1,17> 
||         OR      .D1     A8,A17,A6         ; |1099| (E) <1,17> 
||         CMPLT   .L1     A0,0,A1           ; |1099| (E) <1,17>  ^ 

           AND     .L2     B5,B1,B18         ; |1099| (E) <1,17> 
|| [!B1]   ZERO    .D2     B17               ; |1099| (E) <1,18> 
||         EXTU    .S2     B1,2,9,B9         ; |1099| (E) <1,20> 
||         NORM    .L1     A19,A31           ; |1099| (E) <2,11>  ^ 
|| [!A1]   MV      .S1     A7,A0             ; |1099| (E) <1,18>  ^ 
||         XOR     .D1X    B4,A9,A8          ; |1099| (E) <2,7>  ^ 

           STW     .D2T1   A6,*++B7(8)       ; |1099| (E) <1,19> 
||         SHL     .S2     B17,23,B16        ; |1099| (E) <1,19> 
||         AND     .D1X    B5,A0,A17         ; |1099| (E) <1,20> 
||         EXTU    .S1     A0,2,9,A6         ; |1099| (E) <1,19> 
||         CMPLT   .L1     A8,0,A1           ; |1099| (E) <2,8>  ^ 
||         NORM    .L2     B22,B31           ; |1099| (E) <2,10>  ^ 

           OR      .D2     B18,B16,B16       ; |1099| (E) <1,21> 
|| [!A1]   MV      .S1     A9,A0             ; |1099| (E) <2,12>  ^ 
||         NORM    .L2     B23,B30           ; |1099| (E) <2,11>  ^ 
|| [!A0]   ZERO    .D1     A4                ; |1099| (E) <1,19> 
|| [ A0]   SUB     .L1X    B6,A3,A4          ; |1099| (E) <1,19>  ^ 
||         SHL     .S2     B22,B31,B0        ; |1099| (E) <2,11>  ^ 

           ADDAD   .D1     A21,17,A7
||         OR      .L2     B9,B16,B18        ; |1099| (E) <1,23> 
||         SHL     .S1     A19,A31,A30       ; |1099| (E) <2,12>  ^ 
||         SHL     .S2     B23,B30,B1        ; |1099| (E) <2,12>  ^ 
|| [ A1]   MV      .L1     A8,A0             ; |1099| (E) <2,11>  ^ 
||         XOR     .D2     B4,B0,B19         ; |1099| (E) <2,12>  ^ 

           SHL     .S2     B8,23,B16         ; |1099| (E) <1,18> 
||         XOR     .D2     B4,B1,B9          ; |1099| (E) <2,13>  ^ 
|| [!A0]   ZERO    .D1     A5                ; |1099| (E) <2,13> 
|| [ A0]   SUB     .L1X    B6,A16,A5         ; |1099| (E) <2,13>  ^ 
||         CMPLT   .L2     B19,0,B2          ; |1099| (E) <2,13>  ^ 
||         EXTU    .S1     A0,2,9,A29        ; |1099| (E) <2,15> 

           ZERO    .L1     A27
||         OR      .S2     B21,B16,B21       ; |1099| (E) <1,19> 
||         SHL     .S1     A4,23,A3          ; |1099| (E) <1,20> 
||         CMPLT   .L2     B9,0,B2           ; |1099| (E) <2,14>  ^ 
|| [ B2]   MV      .D2     B19,B0            ; |1099| (E) <2,14>  ^ 
||         AND     .D1X    B5,A0,A20         ; |1099| (E) <2,14> 

           SHL     .S1     A5,23,A3          ; |1099| (E) <2,14> 
|| [!B0]   ZERO    .L2     B8                ; |1099| (E) <2,16> 
|| [ B0]   SUB     .S2     B6,B31,B8         ; |1099| (E) <2,16>  ^ 
||         OR      .L1     A17,A3,A5         ; |1099| (E) <1,22> 
|| [ B2]   MV      .D2     B9,B1             ; |1099| (E) <2,15>  ^ 
||         XOR     .D1X    B4,A30,A0         ; |1099| (E) <2,16>  ^ 

           OR      .S1     A6,A5,A5          ; |1099| (E) <1,23> 
||         OR      .D1     A20,A3,A3         ; |1099| (E) <2,16> 
||         SHL     .S2     B8,23,B19         ; |1099| (E) <2,18> 
|| [ B1]   SUB     .L2     B6,B30,B17        ; |1099| (E) <2,17>  ^ 
|| [!B1]   ZERO    .D2     B17               ; |1099| (E) <2,18> 
||         CMPLT   .L1     A0,0,A1           ; |1099| (E) <2,17>  ^ 

           MV      .L1X    B6,A6
||         OR      .S1     A29,A3,A3         ; |1099| (E) <2,17> 
||         AND     .L2     B5,B0,B29         ; |1099| (E) <2,18> 
||         AND     .D2     B5,B1,B9          ; |1099| (E) <2,17> 
||         SHL     .S2     B17,23,B16        ; |1099| (E) <2,19> 
|| [!A1]   MV      .D1     A30,A0            ; |1099| (E) <2,18>  ^ 

           OR      .L2     B9,B16,B9         ; |1099| (E) <2,21> 
||         OR      .S2     B29,B19,B16       ; |1099| (E) <2,19> 
||         EXTU    .S1     A0,2,9,A18        ; |1099| (E) <2,19> 
||         OR      .D2     B20,B21,B6        ; |1099| (E) <1,20> 
|| [!A0]   ZERO    .D1     A4                ; |1099| (E) <2,19> 
|| [ A0]   SUB     .L1X    B6,A31,A4         ; |1099| (E) <2,19>  ^ 

           MVK     .L2     6,B1              ; |73| 
||         EXTU    .S2     B1,2,9,B6         ; |1099| (E) <2,20> 
||         STW     .D2T2   B6,*+B7(64)       ; |1099| (E) <1,22> 
||         AND     .L1X    B5,A0,A17         ; |1099| (E) <2,20> 
||         SHL     .S1     A4,23,A4          ; |1099| (E) <2,20> 

           SET     .S1     A27,0xf,0xf,A1    ; init prolog collapse predicate
||         MV      .L1X    B4,A4
||         OR      .L2     B6,B9,B4          ; |1099| (E) <2,23> 
||         EXTU    .S2     B0,2,9,B6         ; |1099| (E) <2,17> 
||         STW     .D2T1   A5,*+B7(4)        ; |1099| (E) <1,26> 
||         OR      .D1     A17,A4,A5         ; |1099| (E) <2,22> 

           MV      .L1X    B5,A5
||         RINT                              ; interrupts on
||         OR      .L2     B6,B16,B5         ; |1099| (E) <2,20> 
||         OR      .S1     A18,A5,A9         ; |1099| (E) <2,23> 
||         STW     .D2T2   B18,*+B7(68)      ; |1099| (E) <1,25> 

           ADD     .L1X    A28,B24,A8
||         DINT                              ; interrupts off
||         STW     .D2T1   A3,*++B7(8)       ; |1099| (E) <2,19> 

           STW     .D2T2   B4,*+B7(68)       ; |1099| (E) <2,25> 
           STW     .D2T2   B5,*+B7(64)       ; |1099| (E) <2,22> 
           STW     .D2T1   A9,*+B7(4)        ; |1099| (E) <2,26> 

           ADDAD   .D2     B24,16,B9
||         LDDW    .D1T1   *A7++,A21:A20     ; |73| (P) <0,0> 

           NOP             3
   [ B1]   BDEC    .S2     $C$L4,B1          ; |73| (P) <0,14> 
;** --------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP KERNEL
$C$DW$L$_retModel$5$B:
;          EXCLUSIVE CPU CYCLES: 5

           EXTU    .S2     B2,2,9,B5         ; |1099| <0,15> 
|| [!B2]   ZERO    .D2     B8                ; |1099| <0,15>  ^ 
|| [ B2]   SUB     .L2X    A6,B4,B8          ; |1099| <0,15>  ^ 
|| [ A0]   SUB     .S1     A6,A17,A18        ; |1099| <1,10>  ^ 
||         NORM    .L1     A21,A17           ; |1099| <2,5> 
||         LDDW    .D1T1   *A7++,A21:A20     ; |73| <3,0> 

           AND     .D2X    A5,B2,B17         ; |1099| <0,16> 
||         SHL     .S2     B8,23,B16         ; |1099| <0,16> 
||         AND     .L1     A5,A0,A19         ; |1099| <1,11> 
|| [!A0]   ZERO    .D1     A18               ; |1099| <1,11>  ^ 
||         CMPLT   .L2     B7,0,B0           ; |1099| <1,11> 
||         SHL     .S1     A21,A17,A9        ; |1099| <2,6> 

   [!A1]   STW     .D1T1   A3,*A8++(8)       ; |1099| <0,17> 
||         OR      .D2     B17,B16,B6        ; |1099| <0,17> 
||         SHL     .S1     A18,23,A3         ; |1099| <1,12> 
|| [!B0]   MV      .S2     B6,B2             ; |1099| <1,12>  ^ 
||         NORM    .L2X    A20,B16           ; |1099| <2,7> 
||         XOR     .L1     A4,A9,A16         ; |1099| <2,7> 

           OR      .D2     B5,B6,B5          ; |1099| <0,18> 
||         EXTU    .S1     A0,2,9,A3         ; |1099| <1,13> 
||         OR      .D1     A19,A3,A19        ; |1099| <1,13> 
|| [ B0]   MV      .L2     B7,B2             ; |1099| <1,13>  ^ 
||         MVD     .M2     B16,B4            ; |1099| <2,8> Split a long life
||         SHL     .S2X    A20,B16,B6        ; |1099| <2,8> 
||         CMPLT   .L1     A16,0,A0          ; |1099| <2,8> 

   [ A1]   MPYSU   .M1     2,A1,A1           ; <0,19> 
|| [!A1]   STW     .D2T2   B5,*B9++(8)       ; |1099| <0,19> 
||         OR      .L1     A3,A19,A3         ; |1099| <1,14> 
|| [ B1]   BDEC    .S2     $C$L4,B1          ; |73| <1,14> 
||         XOR     .L2X    A4,B6,B7          ; |1099| <2,9> 
|| [ A0]   MV      .S1     A16,A0            ; |1099| <2,9>  ^ 
|| [!A0]   MV      .D1     A9,A0             ; |1099| <2,9>  ^ 

$C$DW$L$_retModel$5$E:
;** --------------------------------------------------------------------------*
$C$L5:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 6

           EXTU    .S2     B2,2,9,B16        ; |1099| (E) <1,15> 
|| [!B2]   ZERO    .D2     B8                ; |1099| (E) <1,15>  ^ 
|| [ B2]   SUB     .L2X    A6,B4,B8          ; |1099| (E) <1,15>  ^ 
|| [ A0]   SUB     .S1     A6,A17,A18        ; |1099| (E) <2,10>  ^ 
||         NORM    .L1     A21,A17           ; |1099| (E) <3,5> 

           AND     .D2X    A5,B2,B5          ; |1099| (E) <1,16> 
||         SHL     .S2     B8,23,B17         ; |1099| (E) <1,16> 
||         AND     .L1     A5,A0,A7          ; |1099| (E) <2,11> 
|| [!A0]   ZERO    .D1     A18               ; |1099| (E) <2,11>  ^ 
||         CMPLT   .L2     B7,0,B0           ; |1099| (E) <2,11> 
||         SHL     .S1     A21,A17,A9        ; |1099| (E) <3,6> 

           STW     .D1T1   A3,*A8++(8)       ; |1099| (E) <1,17> 
||         OR      .S2     B5,B17,B6         ; |1099| (E) <1,17> 
||         SHL     .S1     A18,23,A3         ; |1099| (E) <2,12> 
|| [!B0]   MV      .D2     B6,B2             ; |1099| (E) <2,12>  ^ 
||         NORM    .L2X    A20,B5            ; |1099| (E) <3,7> 
||         XOR     .L1     A4,A9,A16         ; |1099| (E) <3,7> 

           OR      .L2     B16,B6,B5         ; |1099| (E) <1,18> 
||         EXTU    .S1     A0,2,9,A3         ; |1099| (E) <2,13> 
||         OR      .D1     A7,A3,A7          ; |1099| (E) <2,13> 
|| [ B0]   MV      .D2     B7,B2             ; |1099| (E) <2,13>  ^ 
||         MVD     .M2     B5,B4             ; |1099| (E) <3,8> Split a long life
||         SHL     .S2X    A20,B5,B6         ; |1099| (E) <3,8> 
||         CMPLT   .L1     A16,0,A0          ; |1099| (E) <3,8> 

           STW     .D2T2   B5,*B9++(8)       ; |1099| (E) <1,19> 
||         OR      .L1     A3,A7,A3          ; |1099| (E) <2,14> 
||         XOR     .L2X    A4,B6,B7          ; |1099| (E) <3,9> 
|| [ A0]   MV      .S1     A16,A0            ; |1099| (E) <3,9>  ^ 
|| [!A0]   MV      .D1     A9,A0             ; |1099| (E) <3,9>  ^ 

           EXTU    .S1     A0,2,9,A4         ; |1099| (E) <3,13> 
||         AND     .L1     A5,A0,A7          ; |1099| (E) <3,11> 
||         EXTU    .S2     B2,2,9,B17        ; |1099| (E) <2,15> 
|| [!B2]   ZERO    .D2     B8                ; |1099| (E) <2,15>  ^ 
|| [ B2]   SUB     .L2X    A6,B4,B8          ; |1099| (E) <2,15>  ^ 
|| [ A0]   SUB     .D1     A6,A17,A18        ; |1099| (E) <3,10>  ^ 

;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           SHL     .S2     B8,23,B16         ; |1099| (E) <2,16> 
||         AND     .D2X    A5,B2,B5          ; |1099| (E) <2,16> 
||         CMPLT   .L2     B7,0,B0           ; |1099| (E) <3,11> 

$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

           RET     .S2     B3                ; |74| 
|| [ B0]   MV      .L2     B7,B2             ; |1099| (E) <3,13>  ^ 
|| [!B0]   MV      .D2     B6,B2             ; |1099| (E) <3,12>  ^ 

           OR      .L2     B5,B16,B4         ; |1099| (E) <2,17> 
|| [!B2]   ZERO    .D2     B8                ; |1099| (E) <3,15>  ^ 
|| [ B2]   SUB     .S2X    A6,B4,B8          ; |1099| (E) <3,15>  ^ 
|| [!A0]   ZERO    .L1     A18               ; |1099| (E) <3,11>  ^ 

           AND     .L2X    A5,B2,B4          ; |1099| (E) <3,16> 
||         SHL     .S2     B8,23,B5          ; |1099| (E) <3,16> 
||         OR      .D2     B17,B4,B6         ; |1099| (E) <2,18> 
||         SHL     .S1     A18,23,A3         ; |1099| (E) <3,12> 
||         STW     .D1T1   A3,*A8++(8)       ; |1099| (E) <2,17> 

           EXTU    .S2     B2,2,9,B5         ; |1099| (E) <3,15> 
||         OR      .L2     B4,B5,B4          ; |1099| (E) <3,17> 
||         OR      .L1     A7,A3,A3          ; |1099| (E) <3,13> 

           OR      .L2     B5,B4,B4          ; |1099| (E) <3,18> 
||         STW     .D2T2   B6,*B9++(8)       ; |1099| (E) <2,19> 
||         OR      .L1     A4,A3,A3          ; |1099| (E) <3,14> 

	.dwpsn	file "dspMeanshift.c",line 74,column 1,is_stmt

           STW     .D2T2   B4,*B9++(8)       ; |1099| (E) <3,19> 
||         STW     .D1T1   A3,*A8++(8)       ; |1099| (E) <3,17> 
||         RINT                              ; interrupts on

           ; BRANCH OCCURS {B3}              ; |74| 

$C$DW$35	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$35, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L4:1:1496770636")
	.dwattr $C$DW$35, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x49)
$C$DW$36	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$36, DW_AT_low_pc($C$DW$L$_retModel$5$B)
	.dwattr $C$DW$36, DW_AT_high_pc($C$DW$L$_retModel$5$E)
	.dwendtag $C$DW$35


$C$DW$37	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$37, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L2:1:1496770636")
	.dwattr $C$DW$37, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x49)
$C$DW$38	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$38, DW_AT_low_pc($C$DW$L$_retModel$3$B)
	.dwattr $C$DW$38, DW_AT_high_pc($C$DW$L$_retModel$3$E)
	.dwendtag $C$DW$37

	.dwattr $C$DW$32, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x4a)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$32

	.sect	".text"
	.clink
	.global	_retEpan

$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("retEpan")
	.dwattr $C$DW$39, DW_AT_low_pc(_retEpan)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_retEpan")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x53)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$39, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$39, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 84,column 1,is_stmt,address _retEpan
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("retbuf")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_retbuf")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: retEpan                                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,  *
;*                           B8,B9,A16,A17,A18,A19,A20,A21,A22,A31,B16,B17,   *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B31              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A31,B16,B17,*
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B31              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_retEpan:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5

           MVK     .S2     0x1d,B4
||         ZERO    .L2     B7

           SET     .S2     B7,0x0,0x1e,B7

           MV      .L1X    B4,A22
||         MVK     .S1     348,A4
||         MV      .L2X    A4,B25            ; |84| 

           ADD     .L1X    1,B7,A3
||         ADD     .S1     -4,A4,A5

           ADD     .L1X    A5,B25,A21
||         ADD     .L2X    A4,B25,B24
||         ZERO    .D2     B23
||         MVK     .S2     0x8b,B9

;** --------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 3
           MVKL    .S2     _kernel,B5

           MVKH    .S2     _kernel,B5
||         MVK     .S1     0x2b,A16          ; |87| 

           ADD     .L2     B5,B23,B6
||         MVK     .S1     344,A4
||         MV      .S2X    A3,B8
||         ADD     .L1X    B23,A21,A18
||         ADD     .D2     B23,B25,B4

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L7
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_retEpan$3$B:
;          EXCLUSIVE CPU CYCLES: 11
           NOP             1

           LDDW    .D2T1   *B6++,A5:A4       ; |87| (P) <0,0> 
||         ADD     .L1X    A4,B6,A17

           NOP             1
           LDDW    .D1T2   *A17++,B21:B20    ; |87| (P) <0,2> 
           NOP             2
           NORM    .L1     A5,A7             ; |1099| (P) <0,6> 

           SHL     .S1     A5,A7,A5          ; |1099| (P) <0,7> 
||         NORM    .L1     A4,A19            ; |1099| (P) <0,5> 

           XOR     .L1X    B7,A5,A6          ; |1099| (P) <0,8> 
||         SHL     .S1     A4,A19,A3         ; |1099| (P) <0,6> 
||         NORM    .L2     B20,B18           ; |1099| (P) <0,7> 
||         DINT                              ; interrupts off

           NORM    .L2     B21,B20           ; |1099| (P) <0,8> 
||         XOR     .S1X    B7,A3,A4          ; |1099| (P) <0,7> 
||         CMPLT   .L1     A6,0,A0           ; |1099| (P) <0,9> 
||         SHL     .S2     B20,B18,B5        ; |1099| (P) <0,8> 

           SHL     .S2     B21,B20,B21       ; |1099| (P) <0,9> 
||         CMPLT   .L1     A4,0,A2           ; |1099| (P) <0,8> 
||         ADD     .L2     B23,B24,B4
||         SUB     .S1X    B4,8,A16
||         SUB     .D1     A16,2,A1

$C$DW$L$_retEpan$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 87
;*      Loop opening brace source line   : 87
;*      Loop closing brace source line   : 87
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 43                    
;*      Known Maximum Trip Count         : 43                    
;*      Known Max Trip Count Factor      : 43
;*      Loop Carried Dependency Bound(^) : 1
;*      Unpartitioned Resource Bound     : 10
;*      Partitioned Resource Bound(*)    : 11
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     4        4     
;*      .S units                     7        6     
;*      .D units                     4        2     
;*      .M units                     0        0     
;*      .X cross paths               6        0     
;*      .T address paths             3        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           2        0     (.L or .S unit)
;*      Addition ops (.LSD)         14       16     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             7        5     
;*      Bound(.L .S .D .LS .LSD)    11*      10     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 11 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |**********      ****            |    ******       *****          |
;*       1: |***  *****      ****            |  * ******      ******          |
;*       2: |****   ***      ****            |* * ******      ******          |
;*       3: |****   ***      ***             |*** ******      ******          |
;*       4: |** *** ***      ***             |* * * ****       ****           |
;*       5: |** ** * **      ***             |* * * ****       ****           |
;*       6: | * *******      ***             |* * * ****       ****           |
;*       7: | * *******      ****            |*   ******      ******          |
;*       8: | * *******      ****            |    ******      *******         |
;*       9: | * *** ***      *****           |    ******      ******          |
;*      10: | *********      *****           |    ******      ******          |
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
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count       : 2 (after unrolling)
;*      Min. prof. trip count  (est.) : 3 (after unrolling)
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 10 + min_trip_cnt * 11 = 483        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A1,1,A1
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C218:
;*   0              LDDW    .D2T1   *B6++,A5:A4       ; |87| 
;*   1              NOP             1
;*   2              LDDW    .D1T2   *A17++,B21:B20    ; |87| 
;*   3              NOP             2
;*   5              NORM    .L1     A4,A19            ; |1099| 
;*   6              SHL     .S1     A4,A19,A3         ; |1099| 
;*     ||           NORM    .L1     A5,A7             ; |1099| 
;*   7              XOR     .D1X    B7,A3,A4          ; |1099| 
;*     ||           NORM    .L2     B20,B18           ; |1099| 
;*     ||           SHL     .S1     A5,A7,A5          ; |1099| 
;*   8              CMPLT   .L1     A4,0,A2           ; |1099| 
;*     ||           SHL     .S2     B20,B18,B5        ; |1099| 
;*     ||           XOR     .S1X    B7,A5,A6          ; |1099| 
;*     ||           NORM    .L2     B21,B20           ; |1099| 
;*   9              CMPLT   .L1     A6,0,A0           ; |1099| 
;*     ||           SHL     .S2     B21,B20,B21       ; |1099| 
;*  10      [ A2]   MV      .L1     A4,A2             ; |1099|  ^ 
;*     ||   [!A2]   MV      .S1     A3,A2             ; |1099|  ^ 
;*     ||           XOR     .L2     B7,B5,B2          ; |1099| 
;*     ||           XOR     .S2     B7,B21,B16        ; |1099| 
;*  11              EXTU    .S1     A2,2,9,A3         ; |1099| 
;*     ||           CMPLT   .L2     B2,0,B0           ; |1099| 
;*     ||   [ A0]   MV      .L1     A6,A0             ; |1099|  ^ 
;*     ||   [!A0]   MV      .D1     A5,A0             ; |1099|  ^ 
;*  12      [!A2]   ZERO    .D1     A9                ; |1099|  ^ 
;*     ||   [ A2]   SUB     .L1X    B9,A19,A9         ; |1099|  ^ 
;*     ||   [!A0]   ZERO    .S1     A8                ; |1099|  ^ 
;*     ||           CMPLT   .L2     B16,0,B1          ; |1099| 
;*  13              SHL     .S1     A9,23,A4          ; |1099| 
;*     ||           AND     .L1X    B8,A2,A5          ; |1099| 
;*     ||   [!B0]   MV      .L2     B5,B2             ; |1099|  ^ 
;*     ||   [ B1]   MV      .D2     B16,B0            ; |1099|  ^ 
;*     ||   [!B1]   MV      .S2     B21,B0            ; |1099|  ^ 
;*  14              OR      .D1     A5,A4,A4          ; |1099| 
;*     ||   [!B2]   ZERO    .L2     B17               ; |1099|  ^ 
;*     ||   [ B2]   SUB     .D2     B9,B18,B17        ; |1099|  ^ 
;*     ||           EXTU    .S2     B2,2,9,B18        ; |1099| 
;*     ||   [ A0]   SUB     .L1X    B9,A7,A8          ; |1099|  ^ 
;*     ||           EXTU    .S1     A0,2,9,A6         ; |1099| 
;*  15              OR      .D1     A3,A4,A3          ; |1099| 
;*     ||           SHL     .S2     B17,23,B20        ; |1099| 
;*     ||           AND     .L1X    B8,A0,A7          ; |1099| 
;*     ||   [!B0]   ZERO    .L2     B19               ; |1099|  ^ 
;*     ||   [ B0]   SUB     .D2     B9,B20,B19        ; |1099|  ^ 
;*     ||   [ A1]   BDEC    .S1     $C$C218,A1        ; |87| 
;*  16              STW     .D1T1   A3,*++A16(8)      ; |1099| 
;*     ||           AND     .D2     B8,B2,B21         ; |1099| 
;*     ||           SHL     .S1     A8,23,A3          ; |1099| 
;*     ||           SHL     .S2     B19,23,B5         ; |1099| 
;*     ||           AND     .L2     B8,B0,B16         ; |1099| 
;*  17              OR      .L2     B21,B20,B22       ; |1099| 
;*     ||           OR      .D1     A7,A3,A4          ; |1099| 
;*     ||           OR      .D2     B16,B5,B5         ; |1099| 
;*     ||           EXTU    .S2     B0,2,9,B16        ; |1099| 
;*  18              OR      .S2     B18,B22,B5        ; |1099| 
;*     ||           OR      .L1     A6,A4,A20         ; |1099| 
;*     ||           OR      .D2     B16,B5,B16        ; |1099| 
;*  19              STW     .D1T2   B5,*A18++(8)      ; |1099| 
;*  20              STW     .D1T1   A20,*+A16(4)      ; |1099| 
;*     ||           STW     .D2T2   B16,*B4++(8)      ; |1099| 
;*  21              ; BRANCHCC OCCURS {$C$C218}       ; |87| 
;*----------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP KERNEL
$C$DW$L$_retEpan$5$B:
	.dwpsn	file "dspMeanshift.c",line 87,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 11

   [ A2]   MV      .L1     A4,A2             ; |1099| <0,10>  ^ 
|| [!A2]   MV      .S1     A3,A2             ; |1099| <0,10>  ^ 
||         XOR     .L2     B7,B5,B2          ; |1099| <0,10> 
||         XOR     .S2     B7,B21,B16        ; |1099| <0,10> 

   [ A0]   MV      .L1     A6,A0             ; |1099| <0,11>  ^ 
|| [!A0]   MV      .D1     A5,A0             ; |1099| <0,11>  ^ 
||         EXTU    .S1     A2,2,9,A3         ; |1099| <0,11> 
||         CMPLT   .L2     B2,0,B0           ; |1099| <0,11> 
||         LDDW    .D2T1   *B6++,A5:A4       ; |87| <1,0> 

   [!A0]   ZERO    .S1     A8                ; |1099| <0,12>  ^ 
|| [!A2]   ZERO    .D1     A9                ; |1099| <0,12>  ^ 
|| [ A2]   SUB     .L1X    B9,A19,A9         ; |1099| <0,12>  ^ 
||         CMPLT   .L2     B16,0,B1          ; |1099| <0,12> 

           SHL     .S1     A9,23,A4          ; |1099| <0,13> 
||         AND     .L1X    B8,A2,A5          ; |1099| <0,13> 
|| [!B0]   MV      .L2     B5,B2             ; |1099| <0,13>  ^ 
|| [!B1]   MV      .S2     B21,B0            ; |1099| <0,13>  ^ 
|| [ B1]   MV      .D2     B16,B0            ; |1099| <0,13>  ^ 
||         LDDW    .D1T2   *A17++,B21:B20    ; |87| <1,2> 

           EXTU    .S1     A0,2,9,A6         ; |1099| <0,14> 
||         OR      .D1     A5,A4,A4          ; |1099| <0,14> 
|| [ A0]   SUB     .L1X    B9,A7,A8          ; |1099| <0,14>  ^ 
|| [!B2]   ZERO    .L2     B17               ; |1099| <0,14>  ^ 
|| [ B2]   SUB     .D2     B9,B18,B17        ; |1099| <0,14>  ^ 
||         EXTU    .S2     B2,2,9,B18        ; |1099| <0,14> 

           AND     .L1X    B8,A0,A7          ; |1099| <0,15> 
|| [ A1]   BDEC    .S1     $C$L9,A1          ; |87| <0,15> 
||         OR      .D1     A3,A4,A3          ; |1099| <0,15> 
|| [!B0]   ZERO    .L2     B19               ; |1099| <0,15>  ^ 
||         SHL     .S2     B17,23,B20        ; |1099| <0,15> 
|| [ B0]   SUB     .D2     B9,B20,B19        ; |1099| <0,15>  ^ 

           STW     .D1T1   A3,*++A16(8)      ; |1099| <0,16> 
||         SHL     .S1     A8,23,A3          ; |1099| <0,16> 
||         AND     .L2     B8,B0,B16         ; |1099| <0,16> 
||         SHL     .S2     B19,23,B5         ; |1099| <0,16> 
||         AND     .D2     B8,B2,B21         ; |1099| <0,16> 
||         NORM    .L1     A4,A19            ; |1099| <1,5> 

           OR      .D1     A7,A3,A4          ; |1099| <0,17> 
||         EXTU    .S2     B0,2,9,B16        ; |1099| <0,17> 
||         OR      .L2     B21,B20,B22       ; |1099| <0,17> 
||         OR      .D2     B16,B5,B5         ; |1099| <0,17> 
||         NORM    .L1     A5,A7             ; |1099| <1,6> 
||         SHL     .S1     A4,A19,A3         ; |1099| <1,6> 

           OR      .L1     A6,A4,A20         ; |1099| <0,18> 
||         OR      .S2     B18,B22,B5        ; |1099| <0,18> 
||         OR      .D2     B16,B5,B16        ; |1099| <0,18> 
||         XOR     .D1X    B7,A3,A4          ; |1099| <1,7> 
||         NORM    .L2     B20,B18           ; |1099| <1,7> 
||         SHL     .S1     A5,A7,A5          ; |1099| <1,7> 

           STW     .D1T2   B5,*A18++(8)      ; |1099| <0,19> 
||         XOR     .S1X    B7,A5,A6          ; |1099| <1,8> 
||         CMPLT   .L1     A4,0,A2           ; |1099| <1,8> 
||         SHL     .S2     B20,B18,B5        ; |1099| <1,8> 
||         NORM    .L2     B21,B20           ; |1099| <1,8> 

           STW     .D1T1   A20,*+A16(4)      ; |1099| <0,20> 
||         STW     .D2T2   B16,*B4++(8)      ; |1099| <0,20> 
||         SHL     .S2     B21,B20,B21       ; |1099| <1,9> 
||         CMPLT   .L1     A6,0,A0           ; |1099| <1,9> 

$C$DW$L$_retEpan$5$E:
;** --------------------------------------------------------------------------*
$C$L10:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$DW$L$_retEpan$7$B:
;          EXCLUSIVE CPU CYCLES: 13

   [!A2]   MV      .L1     A3,A2             ; |1099| (E) <1,10>  ^ 
|| [ A2]   MV      .S1     A4,A2             ; |1099| (E) <1,10>  ^ 
||         XOR     .L2     B7,B5,B2          ; |1099| (E) <1,10> 
||         XOR     .D2     B7,B21,B16        ; |1099| (E) <1,10> 
||         SUB     .D1     A22,1,A1          ; |86| 
||         ADDK    .S2     688,B23           ; |86| 

   [ A2]   SUB     .L1X    B9,A19,A9         ; |1099| (E) <1,12>  ^ 
|| [!A2]   ZERO    .D1     A9                ; |1099| (E) <1,12>  ^ 
||         CMPLT   .L2     B2,0,B0           ; |1099| (E) <1,11> 
||         EXTU    .S1     A2,2,9,A3         ; |1099| (E) <1,11> 
||         RINT                              ; interrupts on

   [!A0]   MV      .L1     A5,A0             ; |1099| (E) <1,11>  ^ 
|| [ A0]   MV      .D1     A6,A0             ; |1099| (E) <1,11>  ^ 
||         SHL     .S1     A9,23,A6          ; |1099| (E) <1,13> 
|| [!B0]   MV      .S2     B5,B2             ; |1099| (E) <1,13>  ^ 
||         CMPLT   .L2     B16,0,B1          ; |1099| (E) <1,12> 

           AND     .L1X    B8,A2,A5          ; |1099| (E) <1,13> 
|| [ B2]   SUB     .L2     B9,B18,B17        ; |1099| (E) <1,14>  ^ 
|| [!B2]   ZERO    .S2     B17               ; |1099| (E) <1,14>  ^ 
|| [!B1]   MV      .D2     B21,B0            ; |1099| (E) <1,13>  ^ 
|| [!A0]   ZERO    .D1     A8                ; |1099| (E) <1,12>  ^ 
||         EXTU    .S1     A0,2,9,A4         ; |1099| (E) <1,14> 

           OR      .L1     A5,A6,A5          ; |1099| (E) <1,14> 
|| [ B1]   MV      .L2     B16,B0            ; |1099| (E) <1,13>  ^ 
||         AND     .D2     B8,B2,B5          ; |1099| (E) <1,16> 
|| [ A0]   SUB     .S1X    B9,A7,A8          ; |1099| (E) <1,14>  ^ 
||         EXTU    .S2     B2,2,9,B18        ; |1099| (E) <1,14> 
||         SUB     .D1     A22,1,A22         ; |86| 

           OR      .L1     A3,A5,A3          ; |1099| (E) <1,15> 
||         AND     .L2     B8,B0,B6          ; |1099| (E) <1,16> 
|| [ B0]   SUB     .S2     B9,B20,B19        ; |1099| (E) <1,15>  ^ 
|| [!B0]   ZERO    .D2     B19               ; |1099| (E) <1,15>  ^ 
||         AND     .D1X    B8,A0,A7          ; |1099| (E) <1,15> 
||         SHL     .S1     A8,23,A31         ; |1099| (E) <1,16> 

           STW     .D1T1   A3,*++A16(8)      ; |1099| (E) <1,16> 
||         MV      .L1X    B8,A3
||         SHL     .S2     B17,23,B8         ; |1099| (E) <1,15> 
||         OR      .S1     A7,A31,A5         ; |1099| (E) <1,17> 

           SHL     .S2     B19,23,B5         ; |1099| (E) <1,16> 
||         OR      .L1     A4,A5,A4          ; |1099| (E) <1,18> 
||         OR      .L2     B5,B8,B22         ; |1099| (E) <1,17> 
|| [ A1]   B       .S1     $C$L7             ; |86| 

           OR      .L2     B6,B5,B5          ; |1099| (E) <1,17> 
||         OR      .D2     B18,B22,B6        ; |1099| (E) <1,18> 
||         EXTU    .S2     B0,2,9,B31        ; |1099| (E) <1,17> 

$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x0c)
	.dwattr $C$DW$41, DW_AT_TI_return

           STW     .D1T2   B6,*A18++(8)      ; |1099| (E) <1,19> 
||         OR      .L2     B31,B5,B5         ; |1099| (E) <1,18> 
|| [ A1]   MV      .D2X    A3,B8
|| [!A1]   RET     .S2     B3                ; |88| 

           STW     .D1T1   A4,*+A16(4)       ; |1099| (E) <1,20> 
||         STW     .D2T2   B5,*B4++(8)       ; |1099| (E) <1,20> 
|| [ A1]   MVKL    .S2     _kernel,B5
|| [ A1]   MVK     .S1     0x2b,A16          ; |87| 
|| [ A1]   ADD     .L1X    B23,A21,A18

   [ A1]   MVKH    .S2     _kernel,B5
|| [ A1]   ADD     .L2     B23,B25,B4
|| [ A1]   MVK     .S1     344,A4

   [ A1]   ADD     .L2     B5,B23,B6
           ; BRANCHCC OCCURS {$C$L7}         ; |86| 
$C$DW$L$_retEpan$7$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
	.dwpsn	file "dspMeanshift.c",line 88,column 1,is_stmt
           NOP             2
           ; BRANCH OCCURS {B3}              ; |88| 

$C$DW$42	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$42, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L7:1:1496770636")
	.dwattr $C$DW$42, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x58)
$C$DW$43	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$43, DW_AT_low_pc($C$DW$L$_retEpan$3$B)
	.dwattr $C$DW$43, DW_AT_high_pc($C$DW$L$_retEpan$3$E)
$C$DW$44	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$44, DW_AT_low_pc($C$DW$L$_retEpan$7$B)
	.dwattr $C$DW$44, DW_AT_high_pc($C$DW$L$_retEpan$7$E)

$C$DW$45	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$45, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L9:2:1496770636")
	.dwattr $C$DW$45, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x57)
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x57)
$C$DW$46	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$46, DW_AT_low_pc($C$DW$L$_retEpan$5$B)
	.dwattr $C$DW$46, DW_AT_high_pc($C$DW$L$_retEpan$5$E)
	.dwendtag $C$DW$45

	.dwendtag $C$DW$42

	.dwattr $C$DW$39, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x58)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$39

	.sect	".text"
	.clink
	.global	_retCandidate

$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("retCandidate")
	.dwattr $C$DW$47, DW_AT_low_pc(_retCandidate)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_retCandidate")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0x4c)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$47, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$47, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 78,column 1,is_stmt,address _retCandidate
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("retbuf")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_retbuf")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: retCandidate                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,  *
;*                           B8,B9,A16,B16,B17,B18                            *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,B16,B17,B18                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_retCandidate:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3

           MVK     .S2     0x92,B6
||         ZERO    .L2     B4

           SET     .S2     B4,0x0,0x1e,B4
||         MVK     .L2     7,B1              ; |80| 
||         MVKL    .S1     _target_candidate,A5

           ADD     .L2     1,B4,B5
||         MVKH    .S1     _target_candidate,A5
||         SUB     .D2X    A4,8,B7
||         MVK     .L1     0x2,A2            ; init prolog collapse predicate
||         DINT                              ; interrupts off

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 80
;*      Loop opening brace source line   : 80
;*      Loop closing brace source line   : 80
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 5
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        2     
;*      .S units                     3        4     
;*      .D units                     1        2     
;*      .M units                     0        0     
;*      .X cross paths               3        2     
;*      .T address paths             2        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        0     (.L or .S unit)
;*      Addition ops (.LSD)          7        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        3     
;*      Bound(.L .S .D .LS .LSD)     5        6*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |* ****                          |*** ******      *               |
;*       1: |* * *****                       |**  ******                      |
;*       2: |  ********      *               |**  **** *      *               |
;*       3: |* *******                       | *  ******      ***             |
;*       4: |* ******                        |**  ******      **              |
;*       5: |*******                         |**  ******      **              |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 2
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count       : 2 (after unrolling)
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 10 + min_trip_cnt * 6 = 58        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B1,1,B1
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C350:
;*   0              LDDW    .D1T1   *A5++,A7:A6       ; |80| 
;*   1              NOP             4
;*   5              NORM    .L1     A6,A3             ; |1099|  ^ 
;*   6              SHL     .S1     A6,A3,A0          ; |1099|  ^ 
;*     ||           NORM    .L2X    A7,B8             ; |1099|  ^ 
;*   7              XOR     .S1X    B4,A0,A6          ; |1099|  ^ 
;*     ||           SHL     .S2X    A7,B8,B0          ; |1099|  ^ 
;*   8              CMPLT   .L1     A6,0,A1           ; |1099|  ^ 
;*     ||           XOR     .S2     B4,B0,B16         ; |1099|  ^ 
;*   9      [ A1]   MV      .S1     A6,A0             ; |1099|  ^ 
;*     ||           CMPLT   .L2     B16,0,B2          ; |1099|  ^ 
;*  10      [!A0]   ZERO    .D1     A4                ; |1099| 
;*     ||   [ A0]   SUB     .L1X    B6,A3,A4          ; |1099|  ^ 
;*     ||           EXTU    .S1     A0,2,9,A8         ; |1099| 
;*     ||   [ B2]   MV      .L2     B16,B0            ; |1099|  ^ 
;*     ||   [ B1]   BDEC    .S2     $C$C350,B1        ; |80| 
;*  11              SHL     .S1     A4,23,A9          ; |1099| 
;*     ||           AND     .D1X    B5,A0,A16         ; |1099| 
;*     ||   [!B0]   ZERO    .D2     B9                ; |1099| 
;*     ||   [ B0]   SUB     .L2     B6,B8,B9          ; |1099|  ^ 
;*     ||           EXTU    .S2     B0,2,9,B16        ; |1099| 
;*  12              OR      .L1     A16,A9,A6         ; |1099| 
;*     ||           SHL     .S2     B9,23,B17         ; |1099| 
;*     ||           AND     .D2     B5,B0,B18         ; |1099| 
;*  13              OR      .L1     A8,A6,A7          ; |1099| 
;*     ||           OR      .L2     B18,B17,B17       ; |1099| 
;*  14              STW     .D2T1   A7,*++B7(8)       ; |1099| 
;*     ||           OR      .L2     B16,B17,B17       ; |1099| 
;*  15              STW     .D2T2   B17,*+B7(4)       ; |1099| 
;*  16              ; BRANCHCC OCCURS {$C$C350}       ; |80| 
;*----------------------------------------------------------------------------*
$C$L11:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L12:    ; PIPED LOOP KERNEL
$C$DW$L$_retCandidate$3$B:
	.dwpsn	file "dspMeanshift.c",line 80,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 6

           EXTU    .S1     A0,2,9,A8         ; |1099| <0,10> 
|| [ B2]   MV      .L2     B16,B0            ; |1099| <0,10>  ^ 
|| [ B1]   BDEC    .S2     $C$L12,B1         ; |80| <0,10> 
|| [!A0]   ZERO    .D1     A4                ; |1099| <0,10> 
|| [ A0]   SUB     .L1X    B6,A3,A4          ; |1099| <0,10>  ^ 

   [ B0]   SUB     .L2     B6,B8,B9          ; |1099| <0,11>  ^ 
|| [!B0]   ZERO    .D2     B9                ; |1099| <0,11> 
||         EXTU    .S2     B0,2,9,B16        ; |1099| <0,11> 
||         AND     .D1X    B5,A0,A16         ; |1099| <0,11> 
||         SHL     .S1     A4,23,A9          ; |1099| <0,11> 
||         NORM    .L1     A6,A3             ; |1099| <1,5>  ^ 

           AND     .D2     B5,B0,B18         ; |1099| <0,12> 
||         SHL     .S2     B9,23,B17         ; |1099| <0,12> 
||         OR      .L1     A16,A9,A6         ; |1099| <0,12> 
||         NORM    .L2X    A7,B8             ; |1099| <1,6>  ^ 
||         SHL     .S1     A6,A3,A0          ; |1099| <1,6>  ^ 
||         LDDW    .D1T1   *A5++,A7:A6       ; |80| <2,0> 

           OR      .L2     B18,B17,B17       ; |1099| <0,13> 
||         OR      .L1     A8,A6,A7          ; |1099| <0,13> 
||         SHL     .S2X    A7,B8,B0          ; |1099| <1,7>  ^ 
||         XOR     .S1X    B4,A0,A6          ; |1099| <1,7>  ^ 

           OR      .L2     B16,B17,B17       ; |1099| <0,14> 
|| [!A2]   STW     .D2T1   A7,*++B7(8)       ; |1099| <0,14> 
||         XOR     .S2     B4,B0,B16         ; |1099| <1,8>  ^ 
||         CMPLT   .L1     A6,0,A1           ; |1099| <1,8>  ^ 

   [ A2]   SUB     .L1     A2,1,A2           ; <0,15> 
|| [!A2]   STW     .D2T2   B17,*+B7(4)       ; |1099| <0,15> 
||         CMPLT   .L2     B16,0,B2          ; |1099| <1,9>  ^ 
|| [ A1]   MV      .S1     A6,A0             ; |1099| <1,9>  ^ 

$C$DW$L$_retCandidate$3$E:
;** --------------------------------------------------------------------------*
$C$L13:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12
   [ A0]   SUB     .L1X    B6,A3,A4          ; |1099| (E) <1,10>  ^ 

           NORM    .L1     A6,A3             ; |1099| (E) <2,5>  ^ 
||         EXTU    .S1     A0,2,9,A8         ; |1099| (E) <1,10> 
|| [ B2]   MV      .L2     B16,B0            ; |1099| (E) <1,10>  ^ 

           SHL     .S1     A6,A3,A0          ; |1099| (E) <2,6>  ^ 
||         NORM    .L2X    A7,B8             ; |1099| (E) <2,6>  ^ 
||         EXTU    .S2     B0,2,9,B18        ; |1099| (E) <1,11> 
|| [ B0]   SUB     .D2     B6,B8,B9          ; |1099| (E) <1,11>  ^ 
|| [!A0]   ZERO    .L1     A4                ; |1099| (E) <1,10> 
||         AND     .D1X    B5,A0,A5          ; |1099| (E) <1,11> 

           SHL     .S2X    A7,B8,B0          ; |1099| (E) <2,7>  ^ 
||         XOR     .L1X    B4,A0,A6          ; |1099| (E) <2,7>  ^ 
||         AND     .L2     B5,B0,B17         ; |1099| (E) <1,12> 
|| [!B0]   ZERO    .D2     B9                ; |1099| (E) <1,11> 

           SHL     .S1     A4,23,A7          ; |1099| (E) <1,11> 
||         XOR     .L2     B4,B0,B16         ; |1099| (E) <2,8>  ^ 
||         CMPLT   .L1     A6,0,A1           ; |1099| (E) <2,8>  ^ 

           OR      .L1     A5,A7,A5          ; |1099| (E) <1,12> 
||         SHL     .S2     B9,23,B4          ; |1099| (E) <1,12> 
|| [ A1]   MV      .S1     A6,A0             ; |1099| (E) <2,9>  ^ 
||         CMPLT   .L2     B16,0,B2          ; |1099| (E) <2,9>  ^ 

$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return

           RET     .S2     B3                ; |81| 
|| [ A0]   SUB     .L1X    B6,A3,A4          ; |1099| (E) <2,10>  ^ 
|| [!A0]   ZERO    .S1     A4                ; |1099| (E) <2,10> 
||         OR      .D1     A8,A5,A5          ; |1099| (E) <1,13> 
||         OR      .L2     B17,B4,B4         ; |1099| (E) <1,13> 
|| [ B2]   MV      .D2     B16,B0            ; |1099| (E) <2,10>  ^ 

           AND     .L1X    B5,A0,A4          ; |1099| (E) <2,11> 
||         SHL     .S1     A4,23,A5          ; |1099| (E) <2,11> 
|| [ B0]   SUB     .L2     B6,B8,B9          ; |1099| (E) <2,11>  ^ 
|| [!B0]   ZERO    .S2     B9                ; |1099| (E) <2,11> 
||         STW     .D2T1   A5,*++B7(8)       ; |1099| (E) <1,14> 

           SHL     .S2     B9,23,B5          ; |1099| (E) <2,12> 
||         OR      .L1     A4,A5,A4          ; |1099| (E) <2,12> 
||         EXTU    .S1     A0,2,9,A3         ; |1099| (E) <2,10> 
||         AND     .L2     B5,B0,B4          ; |1099| (E) <2,12> 
||         OR      .D2     B18,B4,B16        ; |1099| (E) <1,14> 

           EXTU    .S2     B0,2,9,B5         ; |1099| (E) <2,11> 
||         OR      .L2     B4,B5,B4          ; |1099| (E) <2,13> 
||         OR      .L1     A3,A4,A3          ; |1099| (E) <2,13> 
||         STW     .D2T2   B16,*+B7(4)       ; |1099| (E) <1,15> 

           OR      .L2     B5,B4,B4          ; |1099| (E) <2,14> 
||         STW     .D2T1   A3,*++B7(8)       ; |1099| (E) <2,14> 

	.dwpsn	file "dspMeanshift.c",line 81,column 1,is_stmt

           STW     .D2T2   B4,*+B7(4)        ; |1099| (E) <2,15> 
||         RINT                              ; interrupts on

           ; BRANCH OCCURS {B3}              ; |81| 

$C$DW$50	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$50, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L12:1:1496770636")
	.dwattr $C$DW$50, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x50)
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x50)
$C$DW$51	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$51, DW_AT_low_pc($C$DW$L$_retCandidate$3$B)
	.dwattr $C$DW$51, DW_AT_high_pc($C$DW$L$_retCandidate$3$E)
	.dwendtag $C$DW$50

	.dwattr $C$DW$47, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x51)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$47

	.sect	".text"
	.clink
	.global	_pdf_representation_target

$C$DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("pdf_representation_target")
	.dwattr $C$DW$52, DW_AT_low_pc(_pdf_representation_target)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_pdf_representation_target")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x62)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$52, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$52, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 99,column 1,is_stmt,address _pdf_representation_target
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colorIndex")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_colorIndex")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg4]
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg20]
$C$DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rect")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_rect")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: pdf_representation_target                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A14,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A14,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_pdf_representation_target:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           STW     .D2T1   A14,*SP--(8)      ; |99| 

           STDW    .D2T2   B13:B12,*SP--     ; |99| 
||         MVKL    .S1     _binWidth,A3

           STDW    .D2T2   B11:B10,*SP--     ; |99| 
||         MVKH    .S1     _binWidth,A3

           LDHU    .D1T1   *A3,A3            ; |104| 
||         MVKL    .S2     __IQNdiv,B5       ; |104| 

           MVKH    .S2     __IQNdiv,B5       ; |104| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x04)
	.dwattr $C$DW$56, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$56, DW_AT_TI_call

           MV      .L2X    A6,B11            ; |99| 
||         CALL    .S2     B5                ; |104| 

           LDHU    .D2T2   *+B11(2),B10      ; |102| 
           MV      .L2X    A4,B12            ; |99| 

           ZERO    .L1     A4
||         SHL     .S1     A3,20,A3          ; |104| 

           SET     .S1     A4,0x14,0x14,A4

           MVK     .S1     0x14,A6           ; |104| 
||         MV      .L2     B4,B13            ; |99| 
||         MV      .D2X    A3,B4             ; |104| 
||         MV      .L1X    B3,A14            ; |99| 
||         ADDKPC  .S2     $C$RL0,B3,0       ; |104| 

$C$RL0:    ; CALL OCCURS {__IQNdiv} {0}      ; |104| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDHU    .D2T2   *+B11(6),B0       ; |106| 
           ZERO    .L1     A16               ; |106| 
           MV      .L1     A4,A5             ; |104| 
           MV      .L1X    B13,A6            ; |99| 
           NOP             1

   [!B0]   B       .S1     $C$L19            ; |106| 
|| [ B0]   LDHU    .D2T2   *+B11(4),B2

   [ B0]   LDHU    .D2T2   *B11,B9
           MV      .L2     B0,B1             ; |108| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L19}        ; |106| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5

   [!B2]   B       .S2     $C$L18            ; |109| 
|| [ B2]   MVK     .S1     344,A3
||         MV      .L1X    B9,A7             ; |108| 

   [ B2]   MVKL    .S1     _target_model,A8
|| [ B2]   MVKL    .S2     _kernel,B4
|| [ B2]   MPYUS   .M1     A16,A3,A4

   [ B2]   MVKH    .S1     _target_model,A8
|| [ B2]   MVKH    .S2     _kernel,B4

           MVK     .S1     640,A31
	.dwpsn	file "dspMeanshift.c",line 106,column 0,is_stmt
           SHL     .S2     B12,6,B6
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L14
;** --------------------------------------------------------------------------*
$C$L14:    
$C$DW$L$_pdf_representation_target$4$B:
	.dwpsn	file "dspMeanshift.c",line 107,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
           ; BRANCHCC OCCURS {$C$L18}        ; |109| 
$C$DW$L$_pdf_representation_target$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_pdf_representation_target$5$B:
;          EXCLUSIVE CPU CYCLES: 2

           MPYUS   .M1X    B10,A31,A3
||         MVK     .L1     0x1,A1            ; init prolog collapse predicate
||         MV      .L2     B2,B0
||         MV      .D2X    A8,B5
||         DINT                              ; interrupts off

           ADD     .L1X    B4,A4,A4
$C$DW$L$_pdf_representation_target$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 109
;*      Loop opening brace source line   : 110
;*      Loop closing brace source line   : 116
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65535                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 23
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     3        4*    
;*      .D units                     2        2     
;*      .M units                     1        0     
;*      .X cross paths               3        5*    
;*      .T address paths             3        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        3     
;*      Bound(.L .S .D .LS .LSD)     4*       4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 23 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: | * ******                       |*    **                         |
;*       1: | * *****                        |*    **                         |
;*       2: | * *****                        |*    **                         |
;*       3: | * *****                        |*    **                         |
;*       4: | * *****                        |*    **                         |
;*       5: | * ******                       |*    **                         |
;*       6: | * ******                       |*    **                         |
;*       7: | * *****                        |*    **                         |
;*       8: | * *****                        |*    **                         |
;*       9: | * *****                        |*    **                         |
;*      10: | * *******                      |*    **                         |
;*      11: | * *******                      |*    **                         |
;*      12: | * ******                       |*   ***                         |
;*      13: | * *****                        |*   ***                         |
;*      14: | * *****                        |*   ****                        |
;*      15: |** *****                        |*   ***                         |
;*      16: | * *****                        |*   *** *                       |
;*      17: | * *****                        |*   *** *                       |
;*      18: | * *****                        |*   *** *                       |
;*      19: | * *****                        |*   *** *                       |
;*      20: | * ******                       |*   *** *                       |
;*      21: | * ******                       |*   *****                       |
;*      22: | * ******                       |*   *** *                       |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages       : 1
;*      Collapsed prolog stages       : 1
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh4
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 2
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 1 + trip_cnt * 23        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B0,1,B0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C394:
;*   0              ADD     .D1     A3,A7,A8          ; |253| 
;*     ||           ADD     .S1     1,A7,A7           ; |115| 
;*   1              LDBU    .D1T1   *+A8[A6],A8       ; |253|  ^ 
;*   2              NOP             4
;*   6              SHL     .S1     A8,20,A8          ; |253|  ^ 
;*   7              MPY32   .M1     A8,A5,A9:A8       ; |253|  ^ 
;*   8              NOP             3
;*  11              SHRU    .S1     A8,20,A8          ; |253|  ^ 
;*  12              SHL     .S2X    A9,12,B4          ; |253|  ^ 
;*  13              OR      .L2X    B4,A8,B4          ; |253|  ^ 
;*  14              ABS     .L2     B4,B7             ; |253|  ^ 
;*  15              SHRU    .S2     B7,20,B4          ; |253|  ^ 
;*     ||           CMPLT   .L1X    B4,0,A0           ; |253|  ^ 
;*  16      [ A0]   NEG     .L2     B4,B4             ; |253|  ^ 
;*     ||           ADD     .S2     B6,B5,B8          ; |253| 
;*     ||           LDW     .D1T1   *A4++,A8          ; |253| 
;*  17              LDW     .D2T2   *+B8[B4],B7       ; |253|  ^ 
;*  18      [ B0]   BDEC    .S2     $C$C394,B0        ; |109| 
;*  19              NOP             2
;*  21              SHR     .S1     A8,7,A8           ; |253| 
;*  22              ADD     .L1X    A8,B7,A8          ; |253|  ^ 
;*     ||           EXTU    .S1     A7,16,16,A7       ; |115| 
;*  23              STW     .D2T1   A8,*+B8[B4]       ; |253|  ^ 
;*  24              ; BRANCHCC OCCURS {$C$C394}       ; |109| 
;*----------------------------------------------------------------------------*
$C$L15:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L16:    ; PIPED LOOP KERNEL
$C$DW$L$_pdf_representation_target$7$B:
	.dwpsn	file "dspMeanshift.c",line 110,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 23
   [!A1]   LDBU    .D1T1   *+A8[A6],A8       ; |253| <0,1>  ^ 
           NOP             4
           SHL     .S1     A8,20,A8          ; |253| <0,6>  ^ 
           MPY32   .M1     A8,A5,A9:A8       ; |253| <0,7>  ^ 
           NOP             3
           SHRU    .S1     A8,20,A8          ; |253| <0,11>  ^ 
           SHL     .S2X    A9,12,B4          ; |253| <0,12>  ^ 
           OR      .L2X    B4,A8,B4          ; |253| <0,13>  ^ 
           ABS     .L2     B4,B7             ; |253| <0,14>  ^ 

           SHRU    .S2     B7,20,B4          ; |253| <0,15>  ^ 
||         CMPLT   .L1X    B4,0,A0           ; |253| <0,15>  ^ 

           ADD     .S2     B6,B5,B8          ; |253| <0,16> 
|| [!A1]   LDW     .D1T1   *A4++,A8          ; |253| <0,16> 
|| [ A0]   NEG     .L2     B4,B4             ; |253| <0,16>  ^ 

   [!A1]   LDW     .D2T2   *+B8[B4],B7       ; |253| <0,17>  ^ 
   [ B0]   BDEC    .S2     $C$L16,B0         ; |109| <0,18> 
           NOP             2
           SHR     .S1     A8,7,A8           ; |253| <0,21> 

   [!A1]   EXTU    .S1     A7,16,16,A7       ; |115| <0,22> 
||         ADD     .L1X    A8,B7,A8          ; |253| <0,22>  ^ 

	.dwpsn	file "dspMeanshift.c",line 116,column 0,is_stmt

   [ A1]   SUB     .L1     A1,1,A1           ; <0,23> 
|| [!A1]   STW     .D2T1   A8,*+B8[B4]       ; |253| <0,23>  ^ 
||         ADD     .S1     1,A7,A7           ; |115| <1,0> 
||         ADD     .D1     A3,A7,A8          ; |253| <1,0> 

$C$DW$L$_pdf_representation_target$7$E:
;** --------------------------------------------------------------------------*
$C$L17:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$DW$L$_pdf_representation_target$9$B:
;          EXCLUSIVE CPU CYCLES: 1
           RINT                              ; interrupts on
$C$DW$L$_pdf_representation_target$9$E:
;** --------------------------------------------------------------------------*
$C$L18:    
$C$DW$L$_pdf_representation_target$10$B:
;          EXCLUSIVE CPU CYCLES: 7

           SUB     .L2     B1,1,B1           ; |106| 
||         ADD     .L1     1,A16,A3          ; |106| 
||         ADD     .S2     1,B10,B4          ; |106| 

   [ B1]   B       .S1     $C$L14            ; |106| 
|| [!B1]   MVK     .L2     0x1,B2            ; nullify predicate
||         EXTU    .S2     B4,16,16,B10      ; |106| 
|| [ B1]   MV      .L1X    B9,A7             ; |108| 

   [!B2]   B       .S2     $C$L18            ; |109| 
|| [ B2]   MVKL    .S1     _target_model,A8

           EXTU    .S1     A3,16,16,A16      ; |106| 
|| [ B2]   MVKL    .S2     _kernel,B4

   [ B2]   MVK     .S1     344,A3
|| [ B2]   MVKH    .S2     _kernel,B4

   [ B2]   MVKH    .S1     _target_model,A8
	.dwpsn	file "dspMeanshift.c",line 118,column 0,is_stmt
   [ B2]   MPYUS   .M1     A16,A3,A4
           ; BRANCHCC OCCURS {$C$L14}        ; |106| 
$C$DW$L$_pdf_representation_target$10$E:
;** --------------------------------------------------------------------------*
$C$L19:    
;          EXCLUSIVE CPU CYCLES: 7

           LDDW    .D2T2   *++SP,B11:B10     ; |119| 
||         MV      .L2X    A14,B3            ; |119| 

$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x04)
	.dwattr $C$DW$57, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B13:B12     ; |119| 
||         RET     .S2     B3                ; |119| 

           LDW     .D2T1   *++SP(8),A14      ; |119| 
	.dwpsn	file "dspMeanshift.c",line 119,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |119| 

$C$DW$58	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$58, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L14:1:1496770636")
	.dwattr $C$DW$58, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x6a)
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x76)
$C$DW$59	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$59, DW_AT_low_pc($C$DW$L$_pdf_representation_target$4$B)
	.dwattr $C$DW$59, DW_AT_high_pc($C$DW$L$_pdf_representation_target$4$E)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_pdf_representation_target$5$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_pdf_representation_target$5$E)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_pdf_representation_target$9$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_pdf_representation_target$9$E)
$C$DW$62	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$62, DW_AT_low_pc($C$DW$L$_pdf_representation_target$10$B)
	.dwattr $C$DW$62, DW_AT_high_pc($C$DW$L$_pdf_representation_target$10$E)

$C$DW$63	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$63, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L16:2:1496770636")
	.dwattr $C$DW$63, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x6d)
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x74)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_pdf_representation_target$7$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_pdf_representation_target$7$E)
	.dwendtag $C$DW$63

	.dwendtag $C$DW$58

	.dwattr $C$DW$52, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x77)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$52

	.sect	".text"
	.clink
	.global	_pdf_representation

$C$DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("pdf_representation")
	.dwattr $C$DW$65, DW_AT_low_pc(_pdf_representation)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_pdf_representation")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0x92)
	.dwattr $C$DW$65, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$65, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$65, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 147,column 1,is_stmt,address _pdf_representation
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg4]
$C$DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rect")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_rect")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: pdf_representation                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_pdf_representation:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           STW     .D2T1   A11,*SP--(8)      ; |147| 

           STDW    .D2T2   B11:B10,*SP--     ; |147| 
||         MVKL    .S1     _binWidth,A3

           STW     .D2T1   A10,*SP--(8)      ; |147| 
||         MVKH    .S1     _binWidth,A3

           LDHU    .D1T1   *A3,A3            ; |152| 
||         MVKL    .S2     __IQNdiv,B5       ; |152| 

           MVKH    .S2     __IQNdiv,B5       ; |152| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$68, DW_AT_TI_call

           CALL    .S2     B5                ; |152| 
||         MV      .L2     B4,B11            ; |147| 

           LDHU    .D2T2   *+B11(2),B10      ; |150| 
           MV      .L1     A4,A10            ; |147| 
           SHL     .S1     A3,20,A3          ; |152| 

           ZERO    .L1     A4
||         MVK     .S1     0x14,A6           ; |152| 

           MV      .L2X    A3,B4             ; |152| 
||         SET     .S1     A4,0x14,0x14,A4
||         MV      .L1X    B3,A11            ; |147| 
||         ADDKPC  .S2     $C$RL1,B3,0       ; |152| 

$C$RL1:    ; CALL OCCURS {__IQNdiv} {0}      ; |152| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDHU    .D2T2   *+B11(6),B0       ; |154| 
           ZERO    .L1     A16               ; |154| 
           MV      .L1     A4,A5             ; |152| 
           MV      .L1     A10,A6            ; |147| 
           NOP             1

   [!B0]   B       .S1     $C$L25            ; |154| 
|| [ B0]   LDHU    .D2T2   *+B11(4),B2

   [ B0]   LDHU    .D2T2   *B11,B7
           MV      .L2     B0,B1             ; |156| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L25}        ; |154| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5

   [!B2]   B       .S2     $C$L24            ; |157| 
|| [ B2]   MVK     .S1     344,A3
||         MV      .L1X    B7,A7             ; |156| 

   [ B2]   MVKL    .S1     _target_candidate,A8
|| [ B2]   MVKL    .S2     _kernel,B4
|| [ B2]   MPYUS   .M1     A16,A3,A4

   [ B2]   MVKH    .S2     _kernel,B4
   [ B2]   MVKH    .S1     _target_candidate,A8
	.dwpsn	file "dspMeanshift.c",line 154,column 0,is_stmt
           MVK     .S1     640,A31
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L20
;** --------------------------------------------------------------------------*
$C$L20:    
$C$DW$L$_pdf_representation$4$B:
	.dwpsn	file "dspMeanshift.c",line 155,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
           ; BRANCHCC OCCURS {$C$L24}        ; |157| 
$C$DW$L$_pdf_representation$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_pdf_representation$5$B:
;          EXCLUSIVE CPU CYCLES: 2

           MPYUS   .M1X    B10,A31,A3
||         MVK     .L1     0x1,A1            ; init prolog collapse predicate
||         MV      .L2     B2,B0
||         MV      .D2X    A8,B5
||         DINT                              ; interrupts off

           ADD     .L1X    B4,A4,A4
$C$DW$L$_pdf_representation$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 157
;*      Loop opening brace source line   : 158
;*      Loop closing brace source line   : 164
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 65535                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 23
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     3        4*    
;*      .D units                     3        1     
;*      .M units                     1        0     
;*      .X cross paths               3        3     
;*      .T address paths             3        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        3     
;*      Bound(.L .S .D .LS .LSD)     5*       3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 23 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: | * ******                       |*    *                          |
;*       1: | * *****                        |*    *                          |
;*       2: | * *****                        |*    *                          |
;*       3: | * *****                        |*    *                          |
;*       4: | * *****                        |*    *                          |
;*       5: | * ******                       |*    *                          |
;*       6: | * ******                       |*    *                          |
;*       7: | * *****                        |*    *                          |
;*       8: | * *****                        |*    *                          |
;*       9: | * *****                        |*    *                          |
;*      10: | * *******                      |*    *                          |
;*      11: | * *******                      |*    *                          |
;*      12: | * ******                       |*   **                          |
;*      13: | * *****                        |*    **                         |
;*      14: | * *****                        |*   ***                         |
;*      15: |** *****                        |*   **                          |
;*      16: | * *****                        |*   **                          |
;*      17: | * *****                        |*   **                          |
;*      18: | * *****                        |*   **                          |
;*      19: | * *****                        |*   **                          |
;*      20: | * ******                       |*   **                          |
;*      21: | * ******                       |*   ***                         |
;*      22: | * ******                       |*   **                          |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages       : 1
;*      Collapsed prolog stages       : 1
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh4
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 2
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 1 + trip_cnt * 23        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B0,1,B0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C469:
;*   0              ADD     .D1     A3,A7,A8          ; |253| 
;*     ||           ADD     .S1     1,A7,A7           ; |163| 
;*   1              LDBU    .D1T1   *+A8[A6],A8       ; |253|  ^ 
;*   2              NOP             4
;*   6              SHL     .S1     A8,20,A8          ; |253|  ^ 
;*   7              MPY32   .M1     A8,A5,A9:A8       ; |253|  ^ 
;*   8              NOP             3
;*  11              SHRU    .S1     A8,20,A8          ; |253|  ^ 
;*  12              SHL     .S2X    A9,12,B4          ; |253|  ^ 
;*  13              OR      .L2X    B4,A8,B6          ; |253|  ^ 
;*  14              ABS     .L2     B6,B4             ; |253|  ^ 
;*  15              SHRU    .S2     B4,20,B4          ; |253|  ^ 
;*     ||           CMPLT   .L1X    B6,0,A0           ; |253|  ^ 
;*  16      [ A0]   NEG     .L2     B4,B4             ; |253|  ^ 
;*     ||           LDW     .D1T1   *A4++,A8          ; |253| 
;*  17              LDW     .D2T2   *+B5[B4],B6       ; |253|  ^ 
;*  18      [ B0]   BDEC    .S2     $C$C469,B0        ; |157| 
;*  19              NOP             2
;*  21              SHR     .S1     A8,7,A8           ; |253| 
;*  22              ADD     .L1X    A8,B6,A8          ; |253|  ^ 
;*     ||           EXTU    .S1     A7,16,16,A7       ; |163| 
;*  23              STW     .D2T1   A8,*+B5[B4]       ; |253|  ^ 
;*  24              ; BRANCHCC OCCURS {$C$C469}       ; |157| 
;*----------------------------------------------------------------------------*
$C$L21:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L22:    ; PIPED LOOP KERNEL
$C$DW$L$_pdf_representation$7$B:
	.dwpsn	file "dspMeanshift.c",line 158,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 23
   [!A1]   LDBU    .D1T1   *+A8[A6],A8       ; |253| <0,1>  ^ 
           NOP             4
           SHL     .S1     A8,20,A8          ; |253| <0,6>  ^ 
           MPY32   .M1     A8,A5,A9:A8       ; |253| <0,7>  ^ 
           NOP             3
           SHRU    .S1     A8,20,A8          ; |253| <0,11>  ^ 
           SHL     .S2X    A9,12,B4          ; |253| <0,12>  ^ 
           OR      .L2X    B4,A8,B6          ; |253| <0,13>  ^ 
           ABS     .L2     B6,B4             ; |253| <0,14>  ^ 

           SHRU    .S2     B4,20,B4          ; |253| <0,15>  ^ 
||         CMPLT   .L1X    B6,0,A0           ; |253| <0,15>  ^ 

   [!A1]   LDW     .D1T1   *A4++,A8          ; |253| <0,16> 
|| [ A0]   NEG     .L2     B4,B4             ; |253| <0,16>  ^ 

   [!A1]   LDW     .D2T2   *+B5[B4],B6       ; |253| <0,17>  ^ 
   [ B0]   BDEC    .S2     $C$L22,B0         ; |157| <0,18> 
           NOP             2
           SHR     .S1     A8,7,A8           ; |253| <0,21> 

   [!A1]   EXTU    .S1     A7,16,16,A7       ; |163| <0,22> 
||         ADD     .L1X    A8,B6,A8          ; |253| <0,22>  ^ 

	.dwpsn	file "dspMeanshift.c",line 164,column 0,is_stmt

   [ A1]   SUB     .L1     A1,1,A1           ; <0,23> 
|| [!A1]   STW     .D2T1   A8,*+B5[B4]       ; |253| <0,23>  ^ 
||         ADD     .S1     1,A7,A7           ; |163| <1,0> 
||         ADD     .D1     A3,A7,A8          ; |253| <1,0> 

$C$DW$L$_pdf_representation$7$E:
;** --------------------------------------------------------------------------*
$C$L23:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$DW$L$_pdf_representation$9$B:
;          EXCLUSIVE CPU CYCLES: 1
           RINT                              ; interrupts on
$C$DW$L$_pdf_representation$9$E:
;** --------------------------------------------------------------------------*
$C$L24:    
$C$DW$L$_pdf_representation$10$B:
;          EXCLUSIVE CPU CYCLES: 7

           SUB     .L2     B1,1,B1           ; |154| 
||         ADD     .L1     1,A16,A3          ; |154| 
||         ADD     .S2     1,B10,B4          ; |154| 

   [ B1]   B       .S1     $C$L20            ; |154| 
|| [!B1]   MVK     .L2     0x1,B2            ; nullify predicate
||         EXTU    .S2     B4,16,16,B10      ; |154| 
|| [ B1]   MV      .L1X    B7,A7             ; |156| 

   [!B2]   B       .S2     $C$L24            ; |157| 
|| [ B2]   MVKL    .S1     _target_candidate,A8

           EXTU    .S1     A3,16,16,A16      ; |154| 
|| [ B2]   MVKL    .S2     _kernel,B4

   [ B2]   MVK     .S1     344,A3
|| [ B2]   MVKH    .S2     _kernel,B4

   [ B2]   MVKH    .S1     _target_candidate,A8
	.dwpsn	file "dspMeanshift.c",line 166,column 0,is_stmt
   [ B2]   MPYUS   .M1     A16,A3,A4
           ; BRANCHCC OCCURS {$C$L20}        ; |154| 
$C$DW$L$_pdf_representation$10$E:
;** --------------------------------------------------------------------------*
$C$L25:    
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T1   *++SP(8),A10      ; |167| 
||         MV      .L2X    A11,B3            ; |167| 

$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x04)
	.dwattr $C$DW$69, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B11:B10     ; |167| 
||         RET     .S2     B3                ; |167| 

           LDW     .D2T1   *++SP(8),A11      ; |167| 
	.dwpsn	file "dspMeanshift.c",line 167,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |167| 

$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L20:1:1496770636")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x9a)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0xa6)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_pdf_representation$4$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_pdf_representation$4$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_pdf_representation$5$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_pdf_representation$5$E)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_pdf_representation$9$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_pdf_representation$9$E)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_pdf_representation$10$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_pdf_representation$10$E)

$C$DW$75	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$75, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L22:2:1496770636")
	.dwattr $C$DW$75, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x9d)
	.dwattr $C$DW$75, DW_AT_TI_end_line(0xa4)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_pdf_representation$7$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_pdf_representation$7$E)
	.dwendtag $C$DW$75

	.dwendtag $C$DW$70

	.dwattr $C$DW$65, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0xa7)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$65

	.sect	".text"
	.clink
	.global	_initWeight

$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("initWeight")
	.dwattr $C$DW$77, DW_AT_low_pc(_initWeight)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_initWeight")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0xd7)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$77, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$77, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 216,column 1,is_stmt,address _initWeight
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CalWeight")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_CalWeight")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg4]

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
           MVK     .S1     80,A17            ; |222| 
           MVK     .S1     96,A9             ; |222| 
           MVK     .S1     104,A8            ; |222| 
           MVK     .S1     88,A16            ; |222| 

           MVK     .S1     120,A3            ; |222| 
||         DINT                              ; interrupts off
||         MV      .L1     A4,A2             ; |216| 

           ADDAD   .D1     A2,23,A27
||         MVK     .S1     32,A22            ; |222| 
||         MVK     .S2     272,B7

           ADDAD   .D1     A2,19,A25
||         MVK     .S1     72,A18            ; |222| 
||         MVK     .S2     288,B18

           ADDAD   .D1     A2,17,A24
||         STW     .D2T1   A12,*SP--(8)      ; |216| 
||         MVK     .S1     64,A19            ; |222| 
||         MVK     .S2     336,B5
||         MV      .L2X    A4,B17            ; |216| 

           ADDAD   .D2     B17,16,B6
||         ADDAD   .D1     A2,25,A28
||         MVK     .S1     40,A21            ; |222| 
||         MVK     .S2     320,B16

           ADDAD   .D2     B17,22,B9
||         ADDAD   .D1     A2,21,A26
||         MVK     .S1     56,A5             ; |222| 
||         MVK     .S2     256,B26

           ADDAD   .D2     B17,20,B8
||         ADDAD   .D1     A2,27,A29
||         MVK     .S1     48,A20            ; |222| 
||         MVK     .S2     304,B19
||         ZERO    .L2     B4

           ADDAD   .D2     B17,18,B7
||         MVK     .S1     312,A12
||         ADDAD   .D1     A2,31,A31
||         ADD     .L2X    B7,A4,B21
||         MVK     .S2     0x3a,B0           ; |220| 
||         MV      .L1     A4,A23            ; |216| 

           MVK     .S1     328,A11
||         STDW    .D2T1   A11:A10,*SP--     ; |216| 
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

           MVK     .S1     112,A4            ; |222| 
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
;*      Loop source line                 : 220
;*      Loop opening brace source line   : 221
;*      Loop closing brace source line   : 226
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
;*        $C$C570:
;*   0              STNDW   .D2T2   B5:B4,*B25        ; |222|  ^ 
;*   1              STNDW   .D1T1   A7:A6,*A11        ; |222|  ^ 
;*   2              STNDW   .D2T2   B5:B4,*B24        ; |222|  ^ 
;*   3              STNDW   .D1T1   A7:A6,*A10        ; |222|  ^ 
;*   4              STNDW   .D2T2   B5:B4,*B23        ; |222|  ^ 
;*   5              STNDW   .D1T1   A7:A6,*A2         ; |222|  ^ 
;*   6              STNDW   .D2T2   B5:B4,*B22        ; |222|  ^ 
;*   7              STNDW   .D1T1   A7:A6,*A1         ; |222|  ^ 
;*   8              STNDW   .D2T2   B5:B4,*B21        ; |222|  ^ 
;*   9              STNDW   .D1T1   A7:A6,*A0         ; |222|  ^ 
;*  10              STNDW   .D2T2   B5:B4,*B20        ; |222|  ^ 
;*  11              STNDW   .D1T1   A7:A6,*A31        ; |222|  ^ 
;*  12              STNDW   .D2T2   B5:B4,*B19        ; |222|  ^ 
;*  13              STNDW   .D1T1   A7:A6,*A30        ; |222|  ^ 
;*  14              STNDW   .D2T2   B5:B4,*B18        ; |222|  ^ 
;*  15              STNDW   .D1T1   A7:A6,*A29        ; |222|  ^ 
;*  16              STNDW   .D2T2   B5:B4,*B17        ; |222|  ^ 
;*  17              STNDW   .D1T1   A7:A6,*A28        ; |222|  ^ 
;*  18              STNDW   .D2T2   B5:B4,*B16        ; |222|  ^ 
;*  19              STNDW   .D1T1   A7:A6,*A27        ; |222|  ^ 
;*  20              STNDW   .D2T2   B5:B4,*B9         ; |222|  ^ 
;*  21              STNDW   .D1T1   A7:A6,*A26        ; |222|  ^ 
;*  22              STNDW   .D2T2   B5:B4,*B8         ; |222|  ^ 
;*  23              STNDW   .D1T1   A7:A6,*A25        ; |222|  ^ 
;*  24              STNDW   .D2T2   B5:B4,*B7         ; |222|  ^ 
;*  25              STNDW   .D1T1   A7:A6,*A24        ; |222|  ^ 
;*  26              STNDW   .D2T1   A7:A6,*B6         ; |222|  ^ 
;*  27              STNDW   .D1T2   B5:B4,*+A23(A3)   ; |222|  ^ 
;*  28              STNDW   .D1T1   A7:A6,*+A23(A4)   ; |222|  ^ 
;*     ||           ADDK    .S1     344,A24           ; |222|  ^ 
;*  29              STNDW   .D1T2   B5:B4,*+A23(A8)   ; |222|  ^ 
;*     ||           ADDK    .S2     344,B6            ; |222|  ^ 
;*     ||           ADDK    .S1     344,A25           ; |222|  ^ 
;*  30              STNDW   .D1T1   A7:A6,*+A23(A9)   ; |222|  ^ 
;*     ||           ADDK    .S2     344,B7            ; |222|  ^ 
;*     ||           ADDK    .S1     344,A26           ; |222|  ^ 
;*  31              STNDW   .D1T2   B5:B4,*+A23(A16)  ; |222|  ^ 
;*     ||           ADDK    .S2     344,B8            ; |222|  ^ 
;*     ||           ADDK    .S1     344,A27           ; |222|  ^ 
;*  32              STNDW   .D1T1   A7:A6,*+A23(A17)  ; |222|  ^ 
;*     ||           ADDK    .S2     344,B9            ; |222|  ^ 
;*     ||           ADDK    .S1     344,A28           ; |222|  ^ 
;*  33              STNDW   .D1T2   B5:B4,*+A23(A18)  ; |222|  ^ 
;*     ||           ADDK    .S2     344,B16           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A29           ; |222|  ^ 
;*  34              STNDW   .D1T1   A7:A6,*+A23(A19)  ; |222|  ^ 
;*     ||           ADDK    .S2     344,B17           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A30           ; |222|  ^ 
;*  35              STNDW   .D1T2   B5:B4,*+A23(A5)   ; |222|  ^ 
;*     ||           ADDK    .S2     344,B18           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A31           ; |222|  ^ 
;*  36              STNDW   .D1T1   A7:A6,*+A23(A20)  ; |222|  ^ 
;*     ||           ADDK    .S2     344,B19           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A0            ; |222|  ^ 
;*     ||   [ B0]   SUB     .L2     B0,1,B0           ; |220|  ^ 
;*  37              STNDW   .D1T2   B5:B4,*+A23(A21)  ; |222|  ^ 
;*     ||           ADDK    .S2     344,B20           ; |222|  ^ 
;*     ||   [ B0]   B       .S1     $C$C570           ; |220| 
;*  38              STNDW   .D1T1   A7:A6,*+A23(A22)  ; |222|  ^ 
;*     ||           ADDK    .S2     344,B21           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A1            ; |222|  ^ 
;*  39              STNDW   .D1T2   B5:B4,*+A23(24)   ; |222|  ^ 
;*     ||           ADDK    .S2     344,B22           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A2            ; |222|  ^ 
;*  40              STNDW   .D1T1   A7:A6,*+A23(16)   ; |222|  ^ 
;*     ||           ADDK    .S2     344,B23           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A10           ; |222|  ^ 
;*  41              STNDW   .D1T2   B5:B4,*+A23(8)    ; |222|  ^ 
;*     ||           ADDK    .S2     344,B24           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A11           ; |222|  ^ 
;*  42              STNDW   .D1T1   A7:A6,*A23        ; |222|  ^ 
;*     ||           ADDK    .S2     344,B25           ; |222|  ^ 
;*     ||           ADDK    .S1     344,A23           ; |220|  ^ 
;*  43              ; BRANCHCC OCCURS {$C$C570}       ; |220| 
;*----------------------------------------------------------------------------*
$C$L26:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L27:    ; PIPED LOOP KERNEL
$C$DW$L$_initWeight$3$B:
	.dwpsn	file "dspMeanshift.c",line 221,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 43
           STNDW   .D2T2   B5:B4,*B25        ; |222| <0,0>  ^ 
           STNDW   .D1T1   A7:A6,*A11        ; |222| <0,1>  ^ 
           STNDW   .D2T2   B5:B4,*B24        ; |222| <0,2>  ^ 
           STNDW   .D1T1   A7:A6,*A10        ; |222| <0,3>  ^ 
           STNDW   .D2T2   B5:B4,*B23        ; |222| <0,4>  ^ 
           STNDW   .D1T1   A7:A6,*A2         ; |222| <0,5>  ^ 
           STNDW   .D2T2   B5:B4,*B22        ; |222| <0,6>  ^ 
           STNDW   .D1T1   A7:A6,*A1         ; |222| <0,7>  ^ 
           STNDW   .D2T2   B5:B4,*B21        ; |222| <0,8>  ^ 
           STNDW   .D1T1   A7:A6,*A0         ; |222| <0,9>  ^ 
           STNDW   .D2T2   B5:B4,*B20        ; |222| <0,10>  ^ 
           STNDW   .D1T1   A7:A6,*A31        ; |222| <0,11>  ^ 
           STNDW   .D2T2   B5:B4,*B19        ; |222| <0,12>  ^ 
           STNDW   .D1T1   A7:A6,*A30        ; |222| <0,13>  ^ 
           STNDW   .D2T2   B5:B4,*B18        ; |222| <0,14>  ^ 
           STNDW   .D1T1   A7:A6,*A29        ; |222| <0,15>  ^ 
           STNDW   .D2T2   B5:B4,*B17        ; |222| <0,16>  ^ 
           STNDW   .D1T1   A7:A6,*A28        ; |222| <0,17>  ^ 
           STNDW   .D2T2   B5:B4,*B16        ; |222| <0,18>  ^ 
           STNDW   .D1T1   A7:A6,*A27        ; |222| <0,19>  ^ 
           STNDW   .D2T2   B5:B4,*B9         ; |222| <0,20>  ^ 
           STNDW   .D1T1   A7:A6,*A26        ; |222| <0,21>  ^ 
           STNDW   .D2T2   B5:B4,*B8         ; |222| <0,22>  ^ 
           STNDW   .D1T1   A7:A6,*A25        ; |222| <0,23>  ^ 
           STNDW   .D2T2   B5:B4,*B7         ; |222| <0,24>  ^ 
           STNDW   .D1T1   A7:A6,*A24        ; |222| <0,25>  ^ 
           STNDW   .D2T1   A7:A6,*B6         ; |222| <0,26>  ^ 
           STNDW   .D1T2   B5:B4,*+A23(A3)   ; |222| <0,27>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A4)   ; |222| <0,28>  ^ 
||         ADDK    .S1     344,A24           ; |222| <0,28>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A8)   ; |222| <0,29>  ^ 
||         ADDK    .S2     344,B6            ; |222| <0,29>  ^ 
||         ADDK    .S1     344,A25           ; |222| <0,29>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A9)   ; |222| <0,30>  ^ 
||         ADDK    .S2     344,B7            ; |222| <0,30>  ^ 
||         ADDK    .S1     344,A26           ; |222| <0,30>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A16)  ; |222| <0,31>  ^ 
||         ADDK    .S2     344,B8            ; |222| <0,31>  ^ 
||         ADDK    .S1     344,A27           ; |222| <0,31>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A17)  ; |222| <0,32>  ^ 
||         ADDK    .S2     344,B9            ; |222| <0,32>  ^ 
||         ADDK    .S1     344,A28           ; |222| <0,32>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A18)  ; |222| <0,33>  ^ 
||         ADDK    .S2     344,B16           ; |222| <0,33>  ^ 
||         ADDK    .S1     344,A29           ; |222| <0,33>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A19)  ; |222| <0,34>  ^ 
||         ADDK    .S2     344,B17           ; |222| <0,34>  ^ 
||         ADDK    .S1     344,A30           ; |222| <0,34>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A5)   ; |222| <0,35>  ^ 
||         ADDK    .S2     344,B18           ; |222| <0,35>  ^ 
||         ADDK    .S1     344,A31           ; |222| <0,35>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(A20)  ; |222| <0,36>  ^ 
||         ADDK    .S2     344,B19           ; |222| <0,36>  ^ 
||         ADDK    .S1     344,A0            ; |222| <0,36>  ^ 
|| [ B0]   SUB     .L2     B0,1,B0           ; |220| <0,36>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(A21)  ; |222| <0,37>  ^ 
||         ADDK    .S2     344,B20           ; |222| <0,37>  ^ 
|| [ B0]   B       .S1     $C$L27            ; |220| <0,37> 

           STNDW   .D1T1   A7:A6,*+A23(A22)  ; |222| <0,38>  ^ 
||         ADDK    .S2     344,B21           ; |222| <0,38>  ^ 
||         ADDK    .S1     344,A1            ; |222| <0,38>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(24)   ; |222| <0,39>  ^ 
||         ADDK    .S2     344,B22           ; |222| <0,39>  ^ 
||         ADDK    .S1     344,A2            ; |222| <0,39>  ^ 

           STNDW   .D1T1   A7:A6,*+A23(16)   ; |222| <0,40>  ^ 
||         ADDK    .S2     344,B23           ; |222| <0,40>  ^ 
||         ADDK    .S1     344,A10           ; |222| <0,40>  ^ 

           STNDW   .D1T2   B5:B4,*+A23(8)    ; |222| <0,41>  ^ 
||         ADDK    .S2     344,B24           ; |222| <0,41>  ^ 
||         ADDK    .S1     344,A11           ; |222| <0,41>  ^ 

	.dwpsn	file "dspMeanshift.c",line 226,column 0,is_stmt

           STNDW   .D1T1   A7:A6,*A23        ; |222| <0,42>  ^ 
||         ADDK    .S2     344,B25           ; |222| <0,42>  ^ 
||         ADDK    .S1     344,A23           ; |220| <0,42>  ^ 

$C$DW$L$_initWeight$3$E:
;** --------------------------------------------------------------------------*
$C$L28:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           LDDW    .D2T1   *++SP,A11:A10
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_return

           RETNOP  .S2     B3,4              ; |227| 
||         LDW     .D2T1   *++SP(8),A12      ; |227| 

	.dwpsn	file "dspMeanshift.c",line 227,column 1,is_stmt
           RINT                              ; interrupts on
           ; BRANCH OCCURS {B3}              ; |227| 

$C$DW$80	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$80, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L27:1:1496770636")
	.dwattr $C$DW$80, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0xdc)
	.dwattr $C$DW$80, DW_AT_TI_end_line(0xe2)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_initWeight$3$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_initWeight$3$E)
	.dwendtag $C$DW$80

	.dwattr $C$DW$77, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0xe3)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$77

	.sect	".text"
	.clink
	.global	_initTarget

$C$DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("initTarget")
	.dwattr $C$DW$82, DW_AT_low_pc(_initTarget)
	.dwattr $C$DW$82, DW_AT_high_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_initTarget")
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$82, DW_AT_TI_begin_line(0xc1)
	.dwattr $C$DW$82, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$82, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$82, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 194,column 1,is_stmt,address _initTarget
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("matIndex")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_matIndex")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: initTarget                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,B4,B5,B6,B7                           *
;*   Regs Used         : A0,A3,A4,A5,A6,B3,B4,B5,B6,B7                        *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_initTarget:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           CMPEQ   .L1     A4,1,A0           ; |198| 
||         MVKL    .S1     0x1388000,A4
||         MVK     .L2     0x8,B5            ; |208| 
||         MVKL    .S2     _target_candidate,B6
||         MVK     .D2     0x3,B7            ; |200| 

   [ A0]   B       .S2     $C$L32            ; |198| 
||         MVKH    .S1     0x1388000,A4

   [!A0]   SUB     .L1X    B5,5,A0
||         MV      .S1     A4,A6
||         MVKH    .S2     _target_candidate,B6

           MVKL    .S1     _target_model,A3
           MVKH    .S1     _target_model,A3
           MV      .L1     A4,A5
           MV      .L2X    A4,B4
           ; BRANCHCC OCCURS {$C$L32}        ; |198| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 208
;*      Loop opening brace source line   : 209
;*      Loop closing brace source line   : 211
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
;*        $C$C606:
;*   0      [ A0]   BDEC    .S1     $C$C606,A0        ; |208| 
;*   1              NOP             4
;*   5              STDW    .D2T2   B5:B4,*B6++       ; |208| 
;*   6              ; BRANCHCC OCCURS {$C$C606}       ; |208| 
;*----------------------------------------------------------------------------*
$C$L29:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 5
   [ A0]   BDEC    .S1     $C$L30,A0         ; |208| (P) <0,0> 
   [ A0]   BDEC    .S1     $C$L30,A0         ; |208| (P) <1,0> 
   [ A0]   BDEC    .S1     $C$L30,A0         ; |208| (P) <2,0> 
   [ A0]   BDEC    .S1     $C$L30,A0         ; |208| (P) <3,0> 
	.dwpsn	file "dspMeanshift.c",line 208,column 0,is_stmt

           MV      .L2X    A6,B5
|| [ A0]   BDEC    .S1     $C$L30,A0         ; |208| (P) <4,0> 

;** --------------------------------------------------------------------------*
$C$L30:    ; PIPED LOOP KERNEL
$C$DW$L$_initTarget$3$B:
	.dwpsn	file "dspMeanshift.c",line 209,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "dspMeanshift.c",line 211,column 0,is_stmt

           STDW    .D2T2   B5:B4,*B6++       ; |208| <0,5> 
|| [ A0]   BDEC    .S1     $C$L30,A0         ; |208| <5,0> 

$C$DW$L$_initTarget$3$E:
;** --------------------------------------------------------------------------*
$C$L31:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return
           RETNOP  .S2     B3,1              ; |213| 
           STDW    .D2T2   B5:B4,*B6++       ; |208| (E) <2,5> 
           STDW    .D2T2   B5:B4,*B6++       ; |208| (E) <3,5> 
           STDW    .D2T2   B5:B4,*B6++       ; |208| (E) <4,5> 
           STDW    .D2T2   B5:B4,*B6++       ; |208| (E) <5,5> 
           ; BRANCH OCCURS {B3}              ; |213| 
;** --------------------------------------------------------------------------*
$C$L32:    
;          EXCLUSIVE CPU CYCLES: 2

           DINT                              ; interrupts off
||         SUB     .L1X    B7,2,A0
||         MV      .L2X    A5,B5

           ADD     .L2X    8,A3,B6
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 200
;*      Loop opening brace source line   : 201
;*      Loop closing brace source line   : 204
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
;*        $C$C636:
;*   0              STDW    .D2T2   B5:B4,*B6++(64)   ; |201| 
;*     ||   [ A0]   BDEC    .S1     $C$C636,A0        ; |200| 
;*   1              STDW    .D2T2   B5:B4,*-B6(56)    ; |201| 
;*   2              STDW    .D1T1   A5:A4,*A3++(64)   ; |201| 
;*     ||           STDW    .D2T2   B5:B4,*-B6(48)    ; |201| 
;*   3              STDW    .D2T2   B5:B4,*-B6(40)    ; |201| 
;*     ||           STDW    .D1T1   A5:A4,*-A3(24)    ; |201| 
;*   4              STDW    .D1T1   A5:A4,*-A3(16)    ; |201| 
;*   5              STDW    .D1T1   A5:A4,*-A3(8)     ; |201| 
;*   6              ; BRANCHCC OCCURS {$C$C636}       ; |200| 
;*----------------------------------------------------------------------------*
$C$L33:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 2

   [ A0]   BDEC    .S1     $C$L34,A0         ; |200| (P) <0,0> 
||         STDW    .D2T2   B5:B4,*B6++(64)   ; |201| (P) <0,0> 

	.dwpsn	file "dspMeanshift.c",line 200,column 0,is_stmt
           STDW    .D2T2   B5:B4,*-B6(56)    ; |201| (P) <0,1> 
;** --------------------------------------------------------------------------*
$C$L34:    ; PIPED LOOP KERNEL
$C$DW$L$_initTarget$8$B:
	.dwpsn	file "dspMeanshift.c",line 201,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 4

           STDW    .D1T1   A5:A4,*A3++(64)   ; |201| <0,2> 
||         STDW    .D2T2   B5:B4,*-B6(48)    ; |201| <0,2> 

           STDW    .D1T1   A5:A4,*-A3(24)    ; |201| <0,3> 
||         STDW    .D2T2   B5:B4,*-B6(40)    ; |201| <0,3> 

           STDW    .D1T1   A5:A4,*-A3(16)    ; |201| <0,4> 
|| [ A0]   BDEC    .S1     $C$L34,A0         ; |200| <1,0> 
||         STDW    .D2T2   B5:B4,*B6++(64)   ; |201| <1,0> 

	.dwpsn	file "dspMeanshift.c",line 204,column 0,is_stmt

           STDW    .D1T1   A5:A4,*-A3(8)     ; |201| <0,5> 
||         STDW    .D2T2   B5:B4,*-B6(56)    ; |201| <1,1> 

$C$DW$L$_initTarget$8$E:
;** --------------------------------------------------------------------------*
$C$L35:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return
           RETNOP  .S2     B3,1              ; |213| 

           STDW    .D1T1   A5:A4,*A3++(64)   ; |201| (E) <1,2> 
||         STDW    .D2T2   B5:B4,*-B6(48)    ; |201| (E) <1,2> 

           STDW    .D2T2   B5:B4,*-B6(40)    ; |201| (E) <1,3> 
||         STDW    .D1T1   A5:A4,*-A3(24)    ; |201| (E) <1,3> 

           STDW    .D1T1   A5:A4,*-A3(16)    ; |201| (E) <1,4> 
	.dwpsn	file "dspMeanshift.c",line 213,column 1,is_stmt

           STDW    .D1T1   A5:A4,*-A3(8)     ; |201| (E) <1,5> 
||         RINT                              ; interrupts on

           ; BRANCH OCCURS {B3}              ; |213| 

$C$DW$86	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$86, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L34:1:1496770636")
	.dwattr $C$DW$86, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0xc8)
	.dwattr $C$DW$86, DW_AT_TI_end_line(0xcc)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_initTarget$8$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_initTarget$8$E)
	.dwendtag $C$DW$86


$C$DW$88	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$88, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L30:1:1496770636")
	.dwattr $C$DW$88, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0xd0)
	.dwattr $C$DW$88, DW_AT_TI_end_line(0xd3)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_initTarget$3$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_initTarget$3$E)
	.dwendtag $C$DW$88

	.dwattr $C$DW$82, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$82, DW_AT_TI_end_line(0xd5)
	.dwattr $C$DW$82, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$82

	.sect	".text"
	.clink
	.global	_HC_pdf_representation_target

$C$DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_pdf_representation_target")
	.dwattr $C$DW$90, DW_AT_low_pc(_HC_pdf_representation_target)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_HC_pdf_representation_target")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0x79)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$90, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$90, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 122,column 1,is_stmt,address _HC_pdf_representation_target
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colorIndex")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_colorIndex")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg4]
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: HC_pdf_representation_target                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_HC_pdf_representation_target:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10

           MVKL    .S1     _binWidth,A3
||         STW     .D2T2   B10,*SP--(8)      ; |122| 

           MVKH    .S1     _binWidth,A3
||         STDW    .D2T1   A11:A10,*SP--     ; |122| 

           LDHU    .D1T1   *A3,A3            ; |128| 
||         MVKL    .S2     __IQNdiv,B5       ; |128| 

           MVKH    .S2     __IQNdiv,B5       ; |128| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$93, DW_AT_TI_call
           CALL    .S2     B5                ; |128| 
           MV      .L1     A4,A10            ; |122| 
           ZERO    .L1     A4
           SHL     .S1     A3,20,A3          ; |128| 
           MVK     .S1     0x14,A6           ; |128| 

           SET     .S1     A4,0x14,0x14,A4
||         MV      .L1X    B3,A11            ; |122| 
||         ADDKPC  .S2     $C$RL2,B3,0       ; |128| 
||         MV      .L2     B4,B10            ; |122| 
||         MV      .D2X    A3,B4             ; |128| 

$C$RL2:    ; CALL OCCURS {__IQNdiv} {0}      ; |128| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           MVKL    .S2     _target_model,B4
           MVK     .S2     0xe4,B8
           MVKH    .S2     _target_model,B4

           MVK     .S2     0x3a,B2           ; |130| 
||         SHL     .S1     A10,6,A8

           MV      .L1X    B4,A7
||         MVK     .S2     0x16f,B7          ; |126| 
||         ZERO    .S1     A18               ; |130| 
||         MV      .D1     A4,A9             ; |128| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L36
;** --------------------------------------------------------------------------*
$C$L36:    
$C$DW$L$_HC_pdf_representation_target$3$B:
;          EXCLUSIVE CPU CYCLES: 5

           MVKL    .S2     _kernel,B4
||         MVK     .S1     344,A3

           MPYUS   .M1     A18,A3,A3
||         EXTU    .S2     B8,16,16,B6       ; |132| 

           MV      .L1X    B10,A16
||         MVK     .S2     0x56,B5
||         MVK     .S1     640,A4

           MPYUS   .M1X    B7,A4,A6
||         MVKH    .S2     _kernel,B4

           MV      .L1X    B6,A3
||         ADD     .L2X    B4,A3,B4
||         SUB     .D2     B5,1,B1
||         DINT                              ; interrupts off
||         MVK     .S1     0x1,A0            ; init prolog collapse predicate

$C$DW$L$_HC_pdf_representation_target$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 133
;*      Loop opening brace source line   : 134
;*      Loop closing brace source line   : 140
;*      Known Minimum Trip Count         : 86                    
;*      Known Maximum Trip Count         : 86                    
;*      Known Max Trip Count Factor      : 86
;*      Loop Carried Dependency Bound(^) : 22
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     4        3     
;*      .D units                     3        1     
;*      .M units                     1        0     
;*      .X cross paths               2        1     
;*      .T address paths             3        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        0     (.L or .S unit)
;*      Addition ops (.LSD)          6        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        2     
;*      Bound(.L .S .D .LS .LSD)     5*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 22 Did not find schedule
;*         ii = 23 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*  *  ****      *               | *  * *                         |
;*       1: |*     ****      *               | *  * *                         |
;*       2: |*     ****      *               | *  * *                         |
;*       3: |*     ****      *               | *  * *                         |
;*       4: |*     ****      *               | *  * *                         |
;*       5: |*   * ****      *               | *  * *                         |
;*       6: |*   * ****      *               | *  * *                         |
;*       7: |*     ****      *               | *  * *                         |
;*       8: |*     ****      *               | *  * *                         |
;*       9: |*     ****      *               | *  * *                         |
;*      10: |*   ******      *               | *  * *                         |
;*      11: |*   ******      *               | *  * *                         |
;*      12: |*   ******      *               | *  * *                         |
;*      13: |*   * ****      *               | *  * *                         |
;*      14: |*   ******      *               | *  * *                         |
;*      15: |*   * ****      *               |**  * *                         |
;*      16: |*   * ****      **              | *  * *                         |
;*      17: |*   * ****      **              | *  * *                         |
;*      18: |*   * ****      **              | *  **                          |
;*      19: |*   * ****      **              | *  ***                         |
;*      20: |*   * ****      **              | *  ***                         |
;*      21: |*  *******      **              | *  ***                         |
;*      22: |*  *******      **              | *  * *                         |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 1
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh4
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 2
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 1 + min_trip_cnt * 23 = 1979        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B1,1,B1
;*                  MV              A3,B6
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C719:
;*   0              ADD     .S1     A6,A3,A3          ; |253| 
;*   1              LDBU    .D1T1   *+A3[A16],A4      ; |253|  ^ 
;*   2              NOP             4
;*   6              SHL     .S1     A4,20,A4          ; |253|  ^ 
;*   7              MPY32   .M1     A4,A9,A5:A4       ; |253|  ^ 
;*   8              NOP             3
;*  11              SHRU    .S1     A4,20,A4          ; |253|  ^ 
;*  12              SHL     .S1     A5,12,A5          ; |253|  ^ 
;*  13              OR      .L1     A5,A4,A4          ; |253|  ^ 
;*  14              ABS     .L1     A4,A5             ; |253|  ^ 
;*  15              SHRU    .S1     A5,20,A4          ; |253|  ^ 
;*     ||           CMPLT   .L2X    A4,0,B0           ; |253|  ^ 
;*     ||           LDW     .D2T2   *B4++,B5          ; |253| 
;*  16      [ B0]   NEG     .L1     A4,A4             ; |253|  ^ 
;*     ||           ADD     .S1     A8,A7,A17         ; |253| 
;*  17              LDW     .D1T1   *+A17[A4],A5      ; |253|  ^ 
;*  18              ADD     .L2     1,B6,B5           ; |139| Define a twin register
;*     ||   [ B1]   BDEC    .S2     $C$C719,B1        ; |133| 
;*  19              EXTU    .S2     B5,16,16,B6       ; |139| 
;*  20              SHR     .S2     B5,7,B5           ; |253| 
;*  21              MV      .L1X    B6,A3             ; |139| Define a twin register
;*  22              ADD     .L1X    B5,A5,A5          ; |253|  ^ 
;*  23              STW     .D1T1   A5,*+A17[A4]      ; |253|  ^ 
;*  24              ; BRANCHCC OCCURS {$C$C719}       ; |133| 
;*----------------------------------------------------------------------------*
$C$L37:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L38:    ; PIPED LOOP KERNEL
$C$DW$L$_HC_pdf_representation_target$5$B:
	.dwpsn	file "dspMeanshift.c",line 134,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A16],A4      ; |253| <0,1>  ^ 
           NOP             4
           SHL     .S1     A4,20,A4          ; |253| <0,6>  ^ 
           MPY32   .M1     A4,A9,A5:A4       ; |253| <0,7>  ^ 
           NOP             3
           SHRU    .S1     A4,20,A4          ; |253| <0,11>  ^ 
           SHL     .S1     A5,12,A5          ; |253| <0,12>  ^ 
           OR      .L1     A5,A4,A4          ; |253| <0,13>  ^ 
           ABS     .L1     A4,A5             ; |253| <0,14>  ^ 

   [!A0]   LDW     .D2T2   *B4++,B5          ; |253| <0,15> 
||         CMPLT   .L2X    A4,0,B0           ; |253| <0,15>  ^ 
||         SHRU    .S1     A5,20,A4          ; |253| <0,15>  ^ 

           ADD     .S1     A8,A7,A17         ; |253| <0,16> 
|| [ B0]   NEG     .L1     A4,A4             ; |253| <0,16>  ^ 

   [!A0]   LDW     .D1T1   *+A17[A4],A5      ; |253| <0,17>  ^ 

           ADD     .L2     1,B6,B5           ; |139| <0,18> Define a twin register
|| [ B1]   BDEC    .S2     $C$L38,B1         ; |133| <0,18> 

   [!A0]   EXTU    .S2     B5,16,16,B6       ; |139| <0,19> 
           SHR     .S2     B5,7,B5           ; |253| <0,20> 
   [!A0]   MV      .L1X    B6,A3             ; |139| <0,21> Define a twin register
           ADD     .L1X    B5,A5,A5          ; |253| <0,22>  ^ 
	.dwpsn	file "dspMeanshift.c",line 140,column 0,is_stmt

   [ A0]   SUB     .L1     A0,1,A0           ; <0,23> 
|| [!A0]   STW     .D1T1   A5,*+A17[A4]      ; |253| <0,23>  ^ 
||         ADD     .S1     A6,A3,A3          ; |253| <1,0> 

$C$DW$L$_HC_pdf_representation_target$5$E:
;** --------------------------------------------------------------------------*
$C$L39:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 23

           ADD     .L1     1,A18,A3          ; |130| 
||         SUB     .L2     B2,1,B2           ; |130| 
||         LDBU    .D1T1   *+A3[A16],A4      ; |253| (E) <1,1>  ^ 

           MV      .L2X    A16,B10
||         EXTU    .S1     A3,16,16,A18      ; |130| 

           NOP             3
           SHL     .S1     A4,20,A4          ; |253| (E) <1,6>  ^ 
           MPY32   .M1     A4,A9,A5:A4       ; |253| (E) <1,7>  ^ 
           NOP             3
           SHRU    .S1     A4,20,A4          ; |253| (E) <1,11>  ^ 
           SHL     .S1     A5,12,A5          ; |253| (E) <1,12>  ^ 
           OR      .L1     A5,A4,A4          ; |253| (E) <1,13>  ^ 
           ABS     .L1     A4,A5             ; |253| (E) <1,14>  ^ 

           LDW     .D2T2   *B4++,B4          ; |253| (E) <1,15> 
||         CMPLT   .L2X    A4,0,B0           ; |253| (E) <1,15>  ^ 
||         SHRU    .S1     A5,20,A4          ; |253| (E) <1,15>  ^ 

           ADD     .L2     1,B7,B4           ; |141| 
||         ADD     .S1     A8,A7,A3          ; |253| (E) <1,16> 
|| [ B0]   NEG     .L1     A4,A4             ; |253| (E) <1,16>  ^ 

           EXTU    .S2     B4,16,16,B7       ; |141| 
||         LDW     .D1T1   *+A3[A4],A5       ; |253| (E) <1,17>  ^ 

   [ B2]   B       .S2     $C$L36            ; |130| 
||         ADD     .L2     1,B6,B4           ; |139| (E) <1,18> Define a twin register

           EXTU    .S2     B4,16,16,B6       ; |139| (E) <1,19> 
           SHR     .S2     B4,7,B4           ; |253| (E) <1,20> 
           RINT                              ; interrupts on
           ADD     .L1X    B4,A5,A5          ; |253| (E) <1,22>  ^ 
           STW     .D1T1   A5,*+A3[A4]       ; |253| (E) <1,23>  ^ 
           ; BRANCHCC OCCURS {$C$L36}        ; |130| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L2X    A11,B3            ; |143| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

           RET     .S2     B3                ; |143| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |143| 

           LDW     .D2T2   *++SP(8),B10      ; |143| 
	.dwpsn	file "dspMeanshift.c",line 143,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |143| 

$C$DW$95	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$95, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L36:1:1496770636")
	.dwattr $C$DW$95, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x82)
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x8d)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_HC_pdf_representation_target$3$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_HC_pdf_representation_target$3$E)

$C$DW$97	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$97, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L38:2:1496770636")
	.dwattr $C$DW$97, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0x85)
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x8c)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_HC_pdf_representation_target$5$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_HC_pdf_representation_target$5$E)
	.dwendtag $C$DW$97

	.dwendtag $C$DW$95

	.dwattr $C$DW$90, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$90

	.sect	".text"
	.clink
	.global	_HC_Epanechnikov_kernel

$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_Epanechnikov_kernel")
	.dwattr $C$DW$99, DW_AT_low_pc(_HC_Epanechnikov_kernel)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_frame_base[DW_OP_breg31 64]
	.dwattr $C$DW$99, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 46,column 1,is_stmt,address _HC_Epanechnikov_kernel

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
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 8 Auto + 56 Save = 64 byte                  *
;******************************************************************************
_HC_Epanechnikov_kernel:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 46
           MVKL    .S2     0x3dcccccd,B5

           MVKL    .S1     0x40490fd0,A8
||         MVKH    .S2     0x3dcccccd,B5
||         ZERO    .L2     B16

           MVKH    .S1     0x40490fd0,A8
||         SET     .S2     B16,0x1e,0x1e,B16

           EXTU    .S2     B5,9,9,B17        ; |97| 

           MV      .L2X    A8,B4             ; |61| 
||         EXTU    .S2     B5,9,2,B18        ; |89| 

           CLR     .S2     B4,0,29,B7        ; |61| 
||         MV      .L2     B5,B4             ; |61| 
||         MV      .L1     A8,A5             ; |61| 
||         MVK     .S1     128,A4            ; |72| 

           CLR     .S2     B4,0,29,B6        ; |61| 
||         EXTU    .S1     A5,1,24,A3        ; |71| 
||         CMPEQ   .L2     B5,0,B9           ; |58| 
||         ZERO    .D2     B21

           EXTU    .S2     B5,1,24,B4        ; |71| 
||         EXTU    .S1     A5,9,9,A9         ; |97| 
||         MV      .D2     B16,B20           ; |72| 
||         CMPEQ   .L2     B17,0,B19         ; |97| 

           CMPLTU  .L2X    B4,A4,B0          ; |71| 
||         CMPLTU  .L1     A3,A4,A0          ; |72| 
||         SHL     .S1     A5,7,A4           ; |89| 
||         MV      .D2     B7,B5             ; |61| 
||         ZERO    .D1     A6
||         MVK     .S2     139,B17           ; |81| 

   [ A0]   XOR     .L2     B20,B7,B5         ; |74| 
||         MV      .S2     B6,B7             ; |61| 
||         CMPEQ   .L1     A9,0,A7           ; |97| 
||         ADD     .D2     -1,B16,B8
||         SET     .S1     A6,0x7,0x1e,A6
||         ZERO    .D1     A16

   [ B0]   XOR     .L2     B16,B6,B7         ; |74| 
||         AND     .D2X    B8,A4,B6          ; |99| 
||         XOR     .D1     1,A7,A4           ; |97| 
||         SHRU    .S2     B5,31,B16         ; |97| 
||         SUB     .L1X    B17,A3,A3         ; |81| 
||         MVKH    .S1     0x1580000,A16

           EXTU    .S1     A5,9,2,A7         ; |89| 
||         XOR     .L1X    1,B9,A5           ; |58| 
||         OR      .L2     B5,B6,B9          ; |99| 
||         SHRU    .S2     B7,31,B6          ; |97| 
||         XOR     .D2     1,B19,B8          ; |97| 

           AND     .L2X    A4,B16,B0         ; |97| 
||         OR      .S1X    B5,A7,A4          ; |89| 
||         CMPEQ   .L1     A8,0,A7           ; |58| 
||         MV      .D1     A6,A8             ; |99| 
||         OR      .S2     B7,B18,B5         ; |89| 
||         AND     .D2     B8,B6,B1          ; |97| 

   [ B0]   XOR     .L1X    A8,B9,A4          ; |99| 
|| [ B1]   XOR     .L2X    A6,B5,B5          ; |99| 
||         EXTU    .S1     A5,16,16,A5       ; |104| 
||         SUB     .D2     B17,B4,B4         ; |81| 
||         SET     .S2     B21,0x10,0x10,B21

           SHR     .S1     A4,A3,A3          ; |574| 
||         SHR     .S2     B5,B4,B5          ; |104| 
||         XOR     .L2X    1,A7,B4           ; |58| 
||         ZERO    .L1     A20

           MPY32   .M2X    A5,B5,B4          ; |104| 
||         EXTU    .S2     B4,16,16,B5       ; |574| 
||         MVKH    .S1     0xe80000,A20

           MPY32   .M2X    B5,A3,B5          ; |574| 
||         MV      .L1     A20,A3
||         MPY32   .M1     A20,A16,A9:A8     ; |574| 

           MV      .L2     B21,B6
||         MPY32   .M1X    A3,B21,A5:A4

           MV      .L1     A16,A3
||         ZERO    .L2     B22

           MPY32   .M1X    A3,B6,A7:A6
||         SET     .S2     B22,0x11,0x11,B22

           MV      .L2     B22,B6
           SHRU    .S1     A4,18,A17

           MPY32   .M1X    A16,B6,A19:A18
||         MPY32   .M2     B4,B5,B7:B6       ; |574| 
||         SHL     .S2X    A9,14,B4          ; |574| 
||         MV      .L1     A20,A4
||         SHL     .S1     A5,14,A5

           SHRU    .S1     A8,18,A3          ; |574| 
||         MPY32   .M1X    A4,B22,A9:A8

           SHL     .S2X    A7,14,B5
||         SHRU    .S1     A6,18,A7
||         OR      .L1X    B4,A3,A6          ; |574| 
||         OR      .D1     A5,A17,A3

           MPY32   .M1     A4,A3,A5:A4
           SHRU    .S2     B6,18,B4          ; |574| 
           SHL     .S2X    A19,14,B9
           STW     .D2T1   A11,*SP--(8)      ; |46| 
           SHL     .S1X    B7,14,A3          ; |574| 

           STW     .D2T1   A10,*SP--(8)      ; |46| 
||         SHRU    .S2X    A4,18,B8

           OR      .L1X    A3,B4,A3          ; |574| 
||         OR      .L2X    B5,A7,B4
||         STDW    .D2T2   B13:B12,*SP--     ; |46| 

           SHL     .S2X    A9,14,B5
||         SHRU    .S1     A18,18,A4
||         STDW    .D2T2   B11:B10,*SP--     ; |46| 

           MPY32   .M1     A3,A6,A7:A6       ; |574| 
||         SHRU    .S1     A8,18,A3
||         STDW    .D2T1   A15:A14,*SP--     ; |46| 
||         OR      .L1X    B9,A4,A15

           SHL     .S1     A5,14,A4
||         OR      .L1X    B5,A3,A5

           NEG     .L1     A5,A10
||         MPY32   .M2X    A16,B4,B7:B6

           OR      .L2X    A4,B8,B13
||         MPY32   .M1     A10,A10,A5:A4

           STDW    .D2T1   A13:A12,*SP--     ; |46| 

           MVK     .S2     0x3a,B4           ; |56| 
||         STW     .D2T2   B3,*SP--(16)      ; |46| 

           STW     .D2T2   B4,*+SP(4)        ; |56| 
||         SHL     .S2X    A7,14,B4          ; |574| 

           SHRU    .S1     A6,18,A3          ; |574| 
||         SHRU    .S2     B6,18,B6

           OR      .L1X    B4,A3,A14         ; |574| 
||         SHL     .S2X    A5,14,B4

           SHRU    .S1     A4,18,A4
||         SHL     .S2     B7,14,B5
||         NEG     .L1     A15,A13

           OR      .L1X    B4,A4,A12
||         MPY32   .M1     A13,A13,A5:A4     ; |62| 
||         OR      .L2     B5,B6,B11
||         MVKL    .S2     _kernel,B5

           MVK     .S1     0x56,A3           ; |58| 
||         MVKH    .S2     _kernel,B5
||         ZERO    .L2     B12

	.dwpsn	file "dspMeanshift.c",line 56,column 0,is_stmt

           STW     .D2T1   A3,*+SP(8)
||         ADD     .L2     B5,B12,B10
||         MVK     .S1     0x12,A6           ; |62| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L40
;** --------------------------------------------------------------------------*
$C$L40:    
$C$DW$L$_HC_Epanechnikov_kernel$2$B:
	.dwpsn	file "dspMeanshift.c",line 57,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 3
           NOP             1

           SHL     .S2X    A5,14,B4          ; |62| 
||         MVKL    .S1     __IQNdiv,A5       ; |62| 

	.dwpsn	file "dspMeanshift.c",line 58,column 0,is_stmt
           SHRU    .S1     A4,18,A3          ; |62| 
$C$DW$L$_HC_Epanechnikov_kernel$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L41:    
$C$DW$L$_HC_Epanechnikov_kernel$3$B:
	.dwpsn	file "dspMeanshift.c",line 59,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 8
           MVKH    .S1     __IQNdiv,A5       ; |62| 
           OR      .L1X    B4,A3,A4          ; |62| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$100, DW_AT_TI_call
           CALL    .S2X    A5                ; |62| 
           MV      .L2     B11,B4            ; |62| 
           ADDKPC  .S2     $C$RL3,B3,3       ; |62| 
$C$RL3:    ; CALL OCCURS {__IQNdiv} {0}      ; |62| 
$C$DW$L$_HC_Epanechnikov_kernel$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$4$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     __IQNdiv,B5       ; |62| 
           MVKH    .S2     __IQNdiv,B5       ; |62| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$101, DW_AT_TI_call
           CALL    .S2     B5                ; |62| 
           ADDKPC  .S2     $C$RL4,B3,3       ; |62| 

           MV      .L2     B13,B4            ; |62| 
||         MVK     .S1     0x12,A6           ; |62| 
||         MV      .L1     A4,A11            ; |62| 
||         MV      .D1     A12,A4            ; |62| 

$C$RL4:    ; CALL OCCURS {__IQNdiv} {0}      ; |62| 
$C$DW$L$_HC_Epanechnikov_kernel$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$5$B:
;          EXCLUSIVE CPU CYCLES: 17

           ZERO    .L1     A3
||         ADD     .S1     A11,A4,A6         ; |62| 
||         LDW     .D2T1   *+SP(8),A30
||         ZERO    .D1     A31

           SET     .S1     A3,0x12,0x12,A3
           SUB     .L1     A3,A6,A3          ; |574| 
           MPY32   .M1     A14,A3,A5:A4      ; |574| 
           SET     .S1     A31,0x12,0x12,A3
           ADD     .L1     A3,A13,A13        ; |58| 
           CMPLT   .L1     A6,A3,A0          ; |63| 
           SHRU    .S1     A4,18,A4          ; |574| 
           SHL     .S2X    A5,14,B4          ; |574| 

   [ A0]   OR      .L2X    B4,A4,B4          ; |574| 
|| [!A0]   ZERO    .S2     B4                ; |63| 
||         SUB     .L1     A30,1,A0          ; |58| 
||         MV      .S1     A3,A4             ; |63| 

   [ A0]   MPY32   .M1     A13,A13,A5:A4     ; |62| 
||         STW     .D2T2   B4,*B10++         ; |58| 
|| [!A0]   ADD     .L1     A4,A10,A10        ; |56| 
|| [!A0]   ADDK    .S2     344,B12           ; |56| 
|| [ A0]   MVK     .S1     0x12,A6           ; |62| 

   [ A0]   BNOP    .S1     $C$L41,2          ; |58| 
||         STW     .D2T1   A0,*+SP(8)        ; |58| 

   [ A0]   SHRU    .S1     A4,18,A3          ; |62| 

           SHL     .S2X    A5,14,B4          ; |62| 
|| [!A0]   LDW     .D2T2   *+SP(4),B4

	.dwpsn	file "dspMeanshift.c",line 64,column 0,is_stmt
           MVKL    .S1     __IQNdiv,A5       ; |62| 
           ; BRANCHCC OCCURS {$C$L41}        ; |58| 
$C$DW$L$_HC_Epanechnikov_kernel$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$6$B:
;          EXCLUSIVE CPU CYCLES: 10
           MPY32   .M1     A10,A10,A5:A4
           NOP             2

           SUB     .L1X    B4,1,A0           ; |56| 
||         SUB     .L2     B4,1,B4           ; |56| 

   [ A0]   B       .S2     $C$L40            ; |56| 
||         STW     .D2T2   B4,*+SP(4)        ; |56| 
|| [ A0]   SHRU    .S1     A4,18,A4
|| [ A0]   NEG     .L1     A15,A13

           SHL     .S2X    A5,14,B4
|| [!A0]   LDW     .D2T2   *++SP(16),B3      ; |66| 
|| [ A0]   MVK     .S1     0x56,A3           ; |58| 

   [ A0]   MVKL    .S2     _kernel,B5
|| [ A0]   STW     .D2T1   A3,*+SP(8)
|| [ A0]   MVK     .S1     0x12,A6           ; |62| 

           OR      .L1X    B4,A4,A12
||         MPY32   .M1     A13,A13,A5:A4     ; |62| 
|| [!A0]   LDDW    .D2T1   *++SP,A13:A12     ; |66| 
|| [ A0]   MVKH    .S2     _kernel,B5

   [!A0]   LDDW    .D2T1   *++SP,A15:A14     ; |66| 
|| [ A0]   ADD     .L2     B5,B12,B10

	.dwpsn	file "dspMeanshift.c",line 65,column 0,is_stmt
   [!A0]   LDDW    .D2T2   *++SP,B11:B10     ; |66| 
           ; BRANCHCC OCCURS {$C$L40}        ; |56| 
$C$DW$L$_HC_Epanechnikov_kernel$6$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           LDDW    .D2T2   *++SP,B13:B12     ; |66| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x04)
	.dwattr $C$DW$102, DW_AT_TI_return

           LDW     .D2T1   *++SP(8),A10      ; |66| 
||         RET     .S2     B3                ; |66| 

           LDW     .D2T1   *++SP(8),A11      ; |66| 
	.dwpsn	file "dspMeanshift.c",line 66,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |66| 

$C$DW$103	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$103, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L40:1:1496770636")
	.dwattr $C$DW$103, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$103, DW_AT_TI_begin_line(0x38)
	.dwattr $C$DW$103, DW_AT_TI_end_line(0x41)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$2$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$2$E)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$6$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$6$E)

$C$DW$106	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$106, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L41:2:1496770636")
	.dwattr $C$DW$106, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0x3a)
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x40)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$3$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$3$E)
$C$DW$108	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$108, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$4$B)
	.dwattr $C$DW$108, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$4$E)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$5$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$5$E)
	.dwendtag $C$DW$106

	.dwendtag $C$DW$103

	.dwattr $C$DW$99, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x42)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$99

	.sect	".text"
	.clink
	.global	_Epanechnikov_kernel

$C$DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("Epanechnikov_kernel")
	.dwattr $C$DW$110, DW_AT_low_pc(_Epanechnikov_kernel)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_Epanechnikov_kernel")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$110, DW_AT_TI_begin_line(0x16)
	.dwattr $C$DW$110, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$110, DW_AT_frame_base[DW_OP_breg31 64]
	.dwattr $C$DW$110, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 23,column 1,is_stmt,address _Epanechnikov_kernel
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rect")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_rect")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Epanechnikov_kernel                                         *
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
;*   Local Frame Size  : 0 Args + 8 Auto + 56 Save = 64 byte                  *
;******************************************************************************
_Epanechnikov_kernel:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 36

           STW     .D2T1   A11,*SP--(8)      ; |23| 
||         MVKL    .S1     0x40490fd0,A3
||         MVKL    .S2     0x3dcccccd,B4
||         ZERO    .L2     B17
||         ZERO    .L1     A6

           STW     .D2T1   A10,*SP--(8)      ; |23| 
||         MVKH    .S1     0x40490fd0,A3
||         MVKH    .S2     0x3dcccccd,B4

           STDW    .D2T2   B13:B12,*SP--     ; |23| 
||         MV      .D1     A3,A5             ; |61| 
||         MV      .L2     B4,B9             ; |61| 
||         SET     .S2     B17,0x1e,0x1e,B17
||         MVK     .S1     128,A16           ; |72| 
||         CMPEQ   .L1     A3,0,A8           ; |58| 

           STDW    .D2T2   B11:B10,*SP--     ; |23| 
||         MV      .L2X    A3,B7             ; |61| 
||         EXTU    .S2     B9,1,24,B5        ; |71| 
||         SHL     .S1     A5,7,A3           ; |89| 

           STDW    .D2T1   A15:A14,*SP--     ; |23| 
||         CLR     .S2     B7,0,29,B7        ; |61| 
||         MV      .L1     A4,A15            ; |23| 
||         EXTU    .S1     A5,1,24,A4        ; |71| 
||         CMPEQ   .L2     B4,0,B16          ; |58| 

           CMPLTU  .L1     A4,A16,A0         ; |72| 
||         CLR     .S2     B4,0,29,B6        ; |61| 
||         MV      .L2     B7,B4             ; |61| 
||         MV      .D2     B17,B20           ; |72| 
||         EXTU    .S1     A5,9,9,A7         ; |97| 

   [ A0]   XOR     .L2     B20,B7,B4         ; |74| 
||         ADD     .D2     -1,B17,B8
||         CMPLTU  .L1X    B5,A16,A0         ; |71| 
||         EXTU    .S2     B9,9,9,B19        ; |97| 
||         EXTU    .S1     A5,9,2,A16        ; |89| 

           MV      .L2     B6,B7             ; |61| 
||         STDW    .D2T1   A13:A12,*SP--     ; |23| 
||         AND     .S2X    B8,A3,B8          ; |99| 
||         CMPEQ   .L1     A7,0,A3           ; |97| 
||         XOR     .D1X    1,B16,A5          ; |58| 
||         SET     .S1     A6,0x7,0x1e,A6

           XOR     .L1     1,A3,A7           ; |97| 
||         SHRU    .S1X    B4,31,A3          ; |97| 
|| [ A0]   XOR     .S2     B17,B6,B7         ; |74| 
||         CMPEQ   .L2     B19,0,B6          ; |97| 
||         STW     .D2T2   B3,*SP--(16)      ; |23| 

           OR      .L2     B4,B8,B16         ; |99| 
||         MVK     .S2     139,B18           ; |81| 
||         AND     .L1     A7,A3,A0          ; |97| 
||         OR      .S1X    B4,A16,A3         ; |89| 
||         XOR     .D2     1,B6,B8           ; |97| 
||         LDHU    .D1T2   *+A15(6),B0       ; |29| 

           MV      .L1     A6,A7             ; |99| 
||         SHRU    .S2     B7,31,B6          ; |97| 
||         LDHU    .D1T1   *+A15(4),A1       ; |30| 
||         EXTU    .S1     A5,16,16,A5       ; |104| 
||         SUB     .L2     B18,B5,B5         ; |81| 

           EXTU    .S2     B9,9,2,B9         ; |89| 
||         AND     .L2     B8,B6,B1          ; |97| 
||         SUB     .L1X    B18,A4,A4         ; |81| 
||         XOR     .D2X    1,A8,B6           ; |58| 

   [ A0]   XOR     .L1X    A7,B16,A3         ; |99| 
||         OR      .L2     B7,B9,B4          ; |89| 
||         EXTU    .S2     B6,16,16,B6       ; |574| 

           SHR     .S1     A3,A4,A3          ; |574| 
|| [ B1]   XOR     .L2X    A6,B4,B4          ; |99| 

           SHR     .S2     B4,B5,B4          ; |104| 

           MPY32   .M2X    B6,A3,B5          ; |574| 
||         SHL     .S2     B0,18,B11         ; |29| 
||         SHL     .S1     A1,18,A14         ; |30| 

           MPY32   .M2X    A5,B4,B4          ; |104| 
           MPY32   .M1X    B11,A14,A5:A4     ; |574| 
           ZERO    .L1     A12               ; |33| 
           NOP             1
           MPY32   .M2     B4,B5,B5:B4       ; |574| 
           SHRU    .S1     A4,18,A3          ; |574| 
           SHL     .S2X    A5,14,B6          ; |574| 
           NOP             1

           SHRU    .S2     B4,18,B4          ; |574| 
||         OR      .L1X    B6,A3,A3          ; |574| 

           SHL     .S1X    B5,14,A4          ; |574| 
           OR      .L1X    A4,B4,A4          ; |574| 
           MPY32   .M1     A4,A3,A5:A4       ; |574| 
           NOP             2
   [!B0]   BNOP    .S1     $C$L45,1          ; |33| 
           SHL     .S2X    A5,14,B4          ; |574| 
           SHRU    .S1     A4,18,A3          ; |574| 
           OR      .L1X    B4,A3,A3          ; |574| 
           STW     .D2T1   A3,*+SP(4)        ; |574| 
           ; BRANCHCC OCCURS {$C$L45}        ; |33| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5

   [ A1]   ZERO    .L1     A3
|| [!A1]   B       .S1     $C$L44            ; |35| 
|| [ A1]   ZERO    .L2     B6

   [ A1]   SET     .S1     A3,0x10,0x10,A3
|| [ A1]   SET     .S2     B6,0x11,0x11,B6

   [ A1]   MPY32   .M1X    B11,A3,A5:A4
|| [ A1]   MPY32   .M2     B11,B6,B5:B4

   [ A1]   MPY32   .M1     A14,A3,A7:A6
	.dwpsn	file "dspMeanshift.c",line 33,column 0,is_stmt
           NOP             1
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L42
;** --------------------------------------------------------------------------*
$C$L42:    
$C$DW$L$_Epanechnikov_kernel$3$B:
	.dwpsn	file "dspMeanshift.c",line 34,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
           ; BRANCHCC OCCURS {$C$L44}        ; |35| 
$C$DW$L$_Epanechnikov_kernel$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Epanechnikov_kernel$4$B:
;          EXCLUSIVE CPU CYCLES: 15

           SHRU    .S2     B4,18,B4
||         SHRU    .S1     A4,18,A3
||         MPY32   .M2X    A14,B6,B7:B6
||         ZERO    .L1     A30
||         ZERO    .D1     A11               ; |35| 

           SHRU    .S1     A6,18,A6
||         SHL     .S2X    A7,14,B8

           SHL     .S1     A5,14,A4
||         MVK     .S2     344,B16

           SHL     .S1X    B5,14,A5
||         OR      .L1     A4,A3,A4
||         OR      .L2X    B8,A6,B5
||         MVKL    .S2     _kernel,B18

           OR      .L1X    A5,B4,A5
||         SHL     .S1     A12,18,A31
||         MPY32   .M2X    A14,B5,B9:B8
||         SHL     .S2     B7,14,B7

           SUB     .L1     A31,A5,A3
||         MPY32   .M2X    B11,A4,B5:B4
||         SHRU    .S2     B6,18,B6

           MVKH    .S2     _kernel,B18
||         MPY32   .M1     A3,A3,A5:A4
||         OR      .L2     B7,B6,B7
||         MPYLI   .M2X    B16,A12,B17:B16

           SET     .S1     A30,0x12,0x12,A3

           NEG     .L1X    B7,A10
||         SHRU    .S2     B8,18,B6

           SHL     .S1X    B9,14,A6
||         SHRU    .S2     B4,18,B4

           SHL     .S1     A5,14,A5
||         SHL     .S2     B5,14,B5
||         ADD     .L2     B18,B16,B10

           SHRU    .S1     A4,18,A4
||         OR      .L2X    A6,B6,B13
||         OR      .S2     B5,B4,B12

           OR      .L1     A5,A4,A3
||         MV      .D1     A3,A4             ; |35| 
||         MPY32   .M1     A10,A10,A5:A4     ; |39| 
||         MVK     .S1     0x12,A6           ; |39| 

           STW     .D2T1   A3,*+SP(8)
||         MVKL    .S1     __IQNdiv,A3       ; |39| 

	.dwpsn	file "dspMeanshift.c",line 35,column 0,is_stmt
           MVKH    .S1     __IQNdiv,A3       ; |39| 
$C$DW$L$_Epanechnikov_kernel$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L43:    
$C$DW$L$_Epanechnikov_kernel$5$B:
	.dwpsn	file "dspMeanshift.c",line 36,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7
           NOP             1
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$112, DW_AT_TI_call
           CALL    .S2X    A3                ; |39| 
           NOP             2
           SHL     .S2X    A5,14,B4          ; |39| 
           SHRU    .S1     A4,18,A4          ; |39| 

           ADDKPC  .S2     $C$RL5,B3,0       ; |39| 
||         MV      .L2     B13,B4            ; |39| 
||         OR      .L1X    B4,A4,A4          ; |39| 

$C$RL5:    ; CALL OCCURS {__IQNdiv} {0}      ; |39| 
$C$DW$L$_Epanechnikov_kernel$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Epanechnikov_kernel$6$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     __IQNdiv,B5       ; |39| 
           MVKH    .S2     __IQNdiv,B5       ; |39| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$113, DW_AT_TI_call
           CALL    .S2     B5                ; |39| 

           MV      .L1     A4,A13            ; |39| 
||         LDW     .D2T1   *+SP(8),A4        ; |39| 

           ADDKPC  .S2     $C$RL6,B3,2       ; |39| 

           MV      .L2     B12,B4            ; |39| 
||         MVK     .S1     0x12,A6           ; |39| 

$C$RL6:    ; CALL OCCURS {__IQNdiv} {0}      ; |39| 
$C$DW$L$_Epanechnikov_kernel$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Epanechnikov_kernel$7$B:
;          EXCLUSIVE CPU CYCLES: 13

           ADD     .L1     A13,A4,A6         ; |39| 
||         LDW     .D2T1   *+SP(4),A4        ; |574| 
||         ZERO    .S1     A3
||         ADD     .D1     1,A11,A11         ; |35| 

           LDHU    .D1T1   *+A15(4),A1       ; |35| 
           ZERO    .L1     A31
           SET     .S1     A3,0x12,0x12,A3
           SUB     .L1     A3,A6,A3          ; |574| 

           MPY32   .M1     A4,A3,A5:A4       ; |574| 
||         SET     .S1     A31,0x12,0x12,A3

           CMPGT   .L1     A1,A11,A2         ; |35| 
||         ADD     .S1     A3,A10,A10        ; |35| 

   [ A2]   B       .S2     $C$L43            ; |35| 
||         CMPLT   .L1     A6,A3,A0          ; |40| 
|| [ A2]   MVKL    .S1     __IQNdiv,A3       ; |39| 

   [ A2]   MVKH    .S1     __IQNdiv,A3       ; |39| 
           SHRU    .S1     A4,18,A4          ; |574| 

           SHL     .S2X    A5,14,B4          ; |574| 
|| [ A2]   MVK     .S1     0x12,A6           ; |39| 

   [ A0]   OR      .L2X    B4,A4,B4          ; |574| 
|| [!A0]   ZERO    .S2     B4                ; |40| 
|| [ A2]   MPY32   .M1     A10,A10,A5:A4     ; |39| 

	.dwpsn	file "dspMeanshift.c",line 41,column 0,is_stmt
           STW     .D2T2   B4,*B10++         ; |35| 
           ; BRANCHCC OCCURS {$C$L43}        ; |35| 
$C$DW$L$_Epanechnikov_kernel$7$E:
;** --------------------------------------------------------------------------*
$C$L44:    
$C$DW$L$_Epanechnikov_kernel$8$B:
;          EXCLUSIVE CPU CYCLES: 12
           LDHU    .D1T1   *+A15(6),A3       ; |33| 
           ADD     .L1     1,A12,A12         ; |33| 
           NOP             3
           CMPGT   .L1     A3,A12,A0         ; |33| 

   [ A0]   B       .S1     $C$L42            ; |33| 
|| [!A0]   MVK     .L1     0x1,A1            ; nullify predicate

   [!A1]   B       .S1     $C$L44            ; |35| 
|| [ A1]   ZERO    .L1     A3
|| [ A1]   ZERO    .L2     B6

   [ A1]   SET     .S1     A3,0x10,0x10,A3
|| [ A1]   SET     .S2     B6,0x11,0x11,B6

   [ A1]   MPY32   .M2     B11,B6,B5:B4
|| [ A1]   MPY32   .M1X    B11,A3,A5:A4

   [ A1]   MPY32   .M1     A14,A3,A7:A6
	.dwpsn	file "dspMeanshift.c",line 42,column 0,is_stmt
           NOP             1
           ; BRANCHCC OCCURS {$C$L42}        ; |33| 
$C$DW$L$_Epanechnikov_kernel$8$E:
;** --------------------------------------------------------------------------*
$C$L45:    
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(16),B3      ; |43| 
           LDDW    .D2T1   *++SP,A13:A12     ; |43| 
           LDDW    .D2T1   *++SP,A15:A14     ; |43| 
           LDDW    .D2T2   *++SP,B11:B10     ; |43| 
           LDDW    .D2T2   *++SP,B13:B12     ; |43| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x04)
	.dwattr $C$DW$114, DW_AT_TI_return

           LDW     .D2T1   *++SP(8),A10      ; |43| 
||         RET     .S2     B3                ; |43| 

           LDW     .D2T1   *++SP(8),A11      ; |43| 
	.dwpsn	file "dspMeanshift.c",line 43,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |43| 

$C$DW$115	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$115, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L42:1:1496770636")
	.dwattr $C$DW$115, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0x21)
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x2a)
$C$DW$116	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$116, DW_AT_low_pc($C$DW$L$_Epanechnikov_kernel$3$B)
	.dwattr $C$DW$116, DW_AT_high_pc($C$DW$L$_Epanechnikov_kernel$3$E)
$C$DW$117	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$117, DW_AT_low_pc($C$DW$L$_Epanechnikov_kernel$4$B)
	.dwattr $C$DW$117, DW_AT_high_pc($C$DW$L$_Epanechnikov_kernel$4$E)
$C$DW$118	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$118, DW_AT_low_pc($C$DW$L$_Epanechnikov_kernel$8$B)
	.dwattr $C$DW$118, DW_AT_high_pc($C$DW$L$_Epanechnikov_kernel$8$E)

$C$DW$119	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$119, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L43:2:1496770636")
	.dwattr $C$DW$119, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x23)
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x29)
$C$DW$120	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$120, DW_AT_low_pc($C$DW$L$_Epanechnikov_kernel$5$B)
	.dwattr $C$DW$120, DW_AT_high_pc($C$DW$L$_Epanechnikov_kernel$5$E)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_Epanechnikov_kernel$6$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_Epanechnikov_kernel$6$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_Epanechnikov_kernel$7$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_Epanechnikov_kernel$7$E)
	.dwendtag $C$DW$119

	.dwendtag $C$DW$115

	.dwattr $C$DW$110, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x2b)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$110

	.sect	".text"
	.clink
	.global	_CalcWeight

$C$DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcWeight")
	.dwattr $C$DW$123, DW_AT_low_pc(_CalcWeight)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_CalcWeight")
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0xa9)
	.dwattr $C$DW$123, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$123, DW_AT_frame_base[DW_OP_breg31 88]
	.dwattr $C$DW$123, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 170,column 1,is_stmt,address _CalcWeight
$C$DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colorIndex")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_colorIndex")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg4]
$C$DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg20]
$C$DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rect")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_rect")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg6]
$C$DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CalWeight")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_CalWeight")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg22]

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
;*   Local Frame Size  : 0 Args + 28 Auto + 56 Save = 84 byte                 *
;******************************************************************************
_CalcWeight:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
           STW     .D2T1   A11,*SP--(8)      ; |170| 
           STW     .D2T1   A10,*SP--(8)      ; |170| 
           STDW    .D2T2   B13:B12,*SP--     ; |170| 
           STDW    .D2T2   B11:B10,*SP--     ; |170| 
           STDW    .D2T1   A15:A14,*SP--     ; |170| 

           STDW    .D2T1   A13:A12,*SP--     ; |170| 
||         MVKL    .S1     _binWidth,A3

           STW     .D2T2   B3,*SP--(40)      ; |170| 
||         MVKH    .S1     _binWidth,A3

           LDHU    .D1T1   *A3,A3            ; |178| 
||         MVKL    .S2     __IQNdiv,B5       ; |178| 

           MVKH    .S2     __IQNdiv,B5       ; |178| 
||         MV      .L2     B4,B11            ; |170| 
||         LDHU    .D1T2   *+A6(4),B4        ; |174| 

$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$128, DW_AT_TI_call

           CALL    .S2     B5                ; |178| 
||         LDHU    .D1T1   *+A6(6),A10       ; |173| 

           LDHU    .D1T2   *+A6(2),B12       ; |172| 
           MV      .L1     A4,A11            ; |170| 

           ZERO    .L1     A4
||         SHL     .S1     A3,20,A3          ; |178| 

           STW     .D2T1   A6,*+SP(4)        ; |170| 
||         MV      .L2     B6,B10            ; |170| 
||         SET     .S1     A4,0x14,0x14,A4

           STW     .D2T2   B4,*+SP(8)        ; |174| 
||         MV      .L2X    A3,B4             ; |178| 
||         MVK     .S1     0x14,A6           ; |178| 
||         ADDKPC  .S2     $C$RL7,B3,0       ; |178| 

$C$RL7:    ; CALL OCCURS {__IQNdiv} {0}      ; |178| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A10,A0            ; |170| 
||         MV      .S1X    B10,A3            ; |170| 
||         MV      .L2X    A10,B4            ; |170| 
||         ZERO    .D1     A14               ; |180| 
||         STW     .D2T1   A4,*+SP(12)       ; |178| 

   [!A0]   B       .S1     $C$L49            ; |180| 
||         MV      .L1X    B11,A3            ; |170| 
||         MV      .D1     A0,A1             ; guard predicate rewrite
||         STW     .D2T1   A3,*+SP(16)       ; |170| 
||         MV      .L2X    A11,B10           ; |170| 

           STW     .D2T1   A3,*+SP(20)       ; |182| 
           LDW     .D2T1   *+SP(4),A3
   [ A0]   LDW     .D2T1   *+SP(8),A0        ; |182| 
   [ A1]   LDW     .D2T1   *+SP(16),A31
           STW     .D2T2   B4,*+SP(24)       ; |182| 
           ; BRANCHCC OCCURS {$C$L49}        ; |180| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
           NOP             1
           LDHU    .D1T1   *A3,A10           ; |182| 
	.dwpsn	file "dspMeanshift.c",line 180,column 0,is_stmt

   [ A0]   MVK     .S1     344,A3
|| [ A0]   MV      .L2X    A0,B31

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L46
;** --------------------------------------------------------------------------*
$C$L46:    
$C$DW$L$_CalcWeight$4$B:
	.dwpsn	file "dspMeanshift.c",line 181,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7
   [ A0]   MPYUS   .M1     A14,A3,A3
   [!A0]   B       .S1     $C$L48            ; |183| 

           ADD     .L1     A31,A3,A12
||         LDW     .D2T1   *+SP(20),A3       ; |245| 

   [ A0]   MVK     .S1     640,A5
   [ A0]   MPYUS   .M1X    B12,A5,A15
           NOP             2
           ; BRANCHCC OCCURS {$C$L48}        ; |183| 
$C$DW$L$_CalcWeight$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_CalcWeight$5$B:
;          EXCLUSIVE CPU CYCLES: 8

           ADD     .L1     A15,A10,A4        ; |245| 
||         STW     .D2T2   B31,*+SP(28)
||         ZERO    .L2     B4
||         MVK     .S1     128,A13
||         MVKL    .S2     _target_candidate,B7
||         MVK     .D1     0xb,A6            ; |186| 

           SET     .S2     B4,0x0,0x1e,B4
||         LDW     .D2T1   *+SP(12),A31      ; |245| 

           ADD     .L2     1,B4,B11
||         MVKL    .S2     _target_model,B6
||         LDW     .D1T1   *A12,A11          ; |60| 

           LDBU    .D1T1   *+A4[A3],A3       ; |245| 
           MVKH    .S2     _target_candidate,B7
           MVKH    .S2     _target_model,B6
           SUB     .L1X    B11,A13,A13
	.dwpsn	file "dspMeanshift.c",line 183,column 0,is_stmt
           SHL     .S2     B10,6,B13
$C$DW$L$_CalcWeight$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L47:    
$C$DW$L$_CalcWeight$6$B:
	.dwpsn	file "dspMeanshift.c",line 184,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 19
           SHL     .S1     A3,20,A4          ; |245| 
           MPY32   .M1     A4,A31,A5:A4      ; |245| 
           NOP             3
           SHRU    .S1     A4,20,A3          ; |245| 
           SHL     .S2X    A5,12,B4          ; |245| 

           OR      .L2X    B4,A3,B4          ; |245| 
||         MVKL    .S1     __IQNdiv,A3       ; |186| 

           ABS     .L2     B4,B5             ; |245| 
||         MVKH    .S1     __IQNdiv,A3       ; |186| 

           CMPLT   .L1X    B4,0,A0           ; |251| 
||         SHRU    .S2     B5,20,B4          ; |245| 

   [ A0]   NEG     .L2     B4,B4             ; |253| 
           EXTU    .S2     B4,16,16,B4       ; |58| 
           ADDAW   .D2     B13,B4,B5         ; |186| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x04)
	.dwattr $C$DW$129, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$129, DW_AT_TI_call

           ADD     .L2     B6,B5,B5          ; |186| 
||         CALL    .S2X    A3                ; |186| 
||         LDW     .D2T2   *+B7[B4],B4       ; |186| 

           LDW     .D2T1   *B5,A4            ; |186| 
           ADDKPC  .S2     $C$RL8,B3,3       ; |186| 
$C$RL8:    ; CALL OCCURS {__IQNdiv} {0}      ; |186| 
$C$DW$L$_CalcWeight$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_CalcWeight$7$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     __IQNsqrt,B5      ; |186| 
           MVKH    .S2     __IQNsqrt,B5      ; |186| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("__IQNsqrt")
	.dwattr $C$DW$130, DW_AT_TI_call
           CALL    .S2     B5                ; |186| 
           ADDKPC  .S2     $C$RL9,B3,3       ; |186| 
           MVK     .L2     0xb,B4            ; |186| 
$C$RL9:    ; CALL OCCURS {__IQNsqrt} {0}     ; |186| 
$C$DW$L$_CalcWeight$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_CalcWeight$8$B:
;          EXCLUSIVE CPU CYCLES: 41

           ZERO    .L1     A3
||         EXTU    .S1     A11,1,24,A6       ; |71| 
||         MVK     .S2     0x80,B4
||         ZERO    .D1     A31

           MVKH    .S1     0xc0000000,A3
||         CMPEQ   .L1     A11,0,A9          ; |58| 

           AND     .L1     A3,A11,A5         ; |61| 
||         CMPLTU  .L2X    A6,B4,B0          ; |72| 
||         SET     .S1     A31,0x1e,0x1e,A3

           EXTU    .S1     A11,9,9,A7        ; |89| 
|| [ B0]   XOR     .L1     A3,A5,A5          ; |74| 
||         XOR     .L2X    1,A9,B4           ; |58| 

           CMPEQ   .L1     A7,0,A30          ; |97| 
||         SHRU    .S1     A5,31,A3          ; |97| 
||         EXTU    .S2     B4,16,16,B4       ; |1079| 

           XOR     .L1     1,A30,A7          ; |97| 
||         EXTU    .S1     A11,9,2,A8        ; |89| 

           AND     .L1     A7,A3,A0          ; |97| 
||         OR      .D1     A5,A8,A5          ; |89| 
||         MVK     .S1     0x92,A29

   [ A0]   XOR     .L1     A13,A5,A5         ; |99| 
||         SUB     .S1     A29,A6,A6         ; |81| 

           SHR     .S1     A5,A6,A3          ; |1079| 
           MPY32   .M1X    B4,A3,A3          ; |1079| 
           ZERO    .L2     B5
           SET     .S2     B5,0x0,0x1e,B5
           MVK     .S1     0x92,A28
           MPY32   .M1     A3,A4,A5:A4       ; |1079| 
           ADD     .L1     1,A10,A27         ; |187| 
           EXTU    .S1     A27,16,16,A10     ; |187| 
           NOP             1
           SHRU    .S1     A4,11,A3          ; |1079| 
           SHL     .S2X    A5,21,B4          ; |1079| 
           OR      .L2X    B4,A3,B4          ; |1079| 
           NORM    .L2     B4,B6             ; |1079| 

           SHL     .S2     B4,B6,B4          ; |1087| 
||         SUB     .L2X    A28,B6,B6         ; |1099| 

           XOR     .L2     B5,B4,B5          ; |1087| 
           CMPLT   .L2     B5,0,B0           ; |1088| 
   [!B0]   MV      .L2     B4,B5             ; |1090| 

           MV      .L2     B5,B0             ; |1092| 
||         EXTU    .S2     B5,2,9,B5         ; |183| 

   [!B0]   ZERO    .L2     B6                ; |1102| 
||         AND     .S2     B11,B0,B31        ; |183| 

           SHL     .S2     B6,23,B4          ; |183| 
           OR      .L2     B31,B4,B4         ; |183| 

           OR      .L2     B5,B4,B5          ; |183| 
||         LDW     .D2T2   *+SP(28),B4       ; |183| 

           STW     .D1T2   B5,*A12++         ; |186| 
           LDW     .D2T1   *+SP(20),A3       ; |245| 
           NOP             2

           SUB     .L1X    B4,1,A0           ; |183| 
||         SUB     .L2     B4,1,B4           ; |183| 

   [ A0]   B       .S1     $C$L47            ; |183| 
|| [ A0]   ADD     .L1     A15,A10,A4        ; |245| 
||         STW     .D2T2   B4,*+SP(28)       ; |186| 
||         MV      .D1     A0,A1             ; guard predicate rewrite
|| [ A0]   MVKL    .S2     _target_model,B6

   [ A0]   LDBU    .D1T1   *+A4[A3],A3       ; |245| 
|| [ A0]   MVKL    .S2     _target_candidate,B7
|| [ A1]   MVK     .L1     0xb,A6            ; |186| 

   [ A0]   LDW     .D2T1   *+SP(12),A31      ; |245| 
   [ A1]   MVKH    .S2     _target_model,B6
   [ A1]   MVKH    .S2     _target_candidate,B7
	.dwpsn	file "dspMeanshift.c",line 188,column 0,is_stmt
   [ A1]   LDW     .D1T1   *A12,A11          ; |60| 
           ; BRANCHCC OCCURS {$C$L47}        ; |183| 
$C$DW$L$_CalcWeight$8$E:
;** --------------------------------------------------------------------------*
$C$L48:    
$C$DW$L$_CalcWeight$9$B:
;          EXCLUSIVE CPU CYCLES: 12

           ADD     .L2     1,B12,B5          ; |180| 
||         LDW     .D2T2   *+SP(24),B4       ; |180| 

           ADD     .L1     1,A14,A3          ; |180| 
           EXTU    .S1     A3,16,16,A14      ; |180| 
           EXTU    .S2     B5,16,16,B12      ; |180| 
           LDW     .D2T1   *+SP(4),A3

           SUB     .L1X    B4,1,A0           ; |180| 
||         SUB     .L2     B4,1,B4           ; |180| 

   [ A0]   BNOP    .S1     $C$L46,1          ; |180| 
||         MV      .L1     A0,A1             ; guard predicate rewrite
|| [ A0]   LDW     .D2T1   *+SP(8),A0        ; |182| 

   [ A1]   LDW     .D2T1   *+SP(16),A31
           STW     .D2T2   B4,*+SP(24)       ; |180| 
   [ A1]   LDHU    .D1T1   *A3,A10           ; |182| 
	.dwpsn	file "dspMeanshift.c",line 190,column 0,is_stmt

   [ A0]   MVK     .S1     344,A3
|| [ A0]   MV      .L2X    A0,B31

           ; BRANCHCC OCCURS {$C$L46}        ; |180| 
$C$DW$L$_CalcWeight$9$E:
;** --------------------------------------------------------------------------*
$C$L49:    
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(40),B3      ; |191| 
           LDDW    .D2T1   *++SP,A13:A12     ; |191| 
           LDDW    .D2T1   *++SP,A15:A14     ; |191| 
           LDDW    .D2T2   *++SP,B11:B10     ; |191| 
           LDDW    .D2T2   *++SP,B13:B12     ; |191| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x04)
	.dwattr $C$DW$131, DW_AT_TI_return

           LDW     .D2T1   *++SP(8),A10      ; |191| 
||         RET     .S2     B3                ; |191| 

           LDW     .D2T1   *++SP(8),A11      ; |191| 
	.dwpsn	file "dspMeanshift.c",line 191,column 2,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |191| 

$C$DW$132	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$132, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L46:1:1496770636")
	.dwattr $C$DW$132, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0xb4)
	.dwattr $C$DW$132, DW_AT_TI_end_line(0xbe)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$_CalcWeight$4$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$_CalcWeight$4$E)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$_CalcWeight$5$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$_CalcWeight$5$E)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_CalcWeight$9$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_CalcWeight$9$E)

$C$DW$136	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$136, DW_AT_name("/home/constantinos/embLab/part2/gitDSP/no_split_slow/dsp/dspMeanshift.asm:$C$L47:2:1496770636")
	.dwattr $C$DW$136, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0xb7)
	.dwattr $C$DW$136, DW_AT_TI_end_line(0xbc)
$C$DW$137	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$137, DW_AT_low_pc($C$DW$L$_CalcWeight$6$B)
	.dwattr $C$DW$137, DW_AT_high_pc($C$DW$L$_CalcWeight$6$E)
$C$DW$138	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$138, DW_AT_low_pc($C$DW$L$_CalcWeight$7$B)
	.dwattr $C$DW$138, DW_AT_high_pc($C$DW$L$_CalcWeight$7$E)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$_CalcWeight$8$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$_CalcWeight$8$E)
	.dwendtag $C$DW$136

	.dwendtag $C$DW$132

	.dwattr $C$DW$123, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0xbf)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x02)
	.dwendtag $C$DW$123

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
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
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
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("I32_IQ")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("_iq18")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x158)
$C$DW$140	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$140, DW_AT_upper_bound(0x55)
	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x4df0)
$C$DW$141	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$141, DW_AT_upper_bound(0x39)
$C$DW$142	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$142, DW_AT_upper_bound(0x55)
	.dwendtag $C$DW$T$50

$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("_iq11")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x40)
$C$DW$143	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$143, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0xc0)
$C$DW$144	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$144, DW_AT_upper_bound(0x02)
$C$DW$145	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$145, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$53

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("_iq20")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("Uword32")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("U32_IQ")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
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
$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("I64_IQ")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)
$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("Fword32")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
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

$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg0]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg1]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg2]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg3]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg4]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg5]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg6]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg7]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg8]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg9]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg10]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg11]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg13]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg14]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg15]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg16]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg17]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg18]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg19]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg20]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg21]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg22]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg23]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg24]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg25]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg26]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg27]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg28]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg29]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg30]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg31]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x20]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x21]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x22]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x23]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x24]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x25]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x26]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x27]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x28]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x29]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x30]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x31]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x32]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x33]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x34]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x35]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x36]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x37]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x38]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x39]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x40]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x41]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x42]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x43]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x44]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x45]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x46]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x47]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x48]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x49]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x50]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x51]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x52]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x53]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x54]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x55]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x56]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x57]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x58]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x59]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x60]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x61]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x62]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x63]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x64]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x65]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x66]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x67]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x68]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x69]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x70]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x71]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x72]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x73]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x74]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x75]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x76]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x77]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x78]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x79]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

