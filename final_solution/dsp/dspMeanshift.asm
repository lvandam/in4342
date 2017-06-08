;******************************************************************************
;* TMS320C6x C/C++ Codegen                                       Unix v6.1.17 *
;* Date/Time created: Thu Jun  8 19:18:27 2017                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --disable:=sploop --endian=little --hll_source=on --mem_model:code=far --mem_model:const=data --mem_model:data=far --predefine_memory_model_macros --quiet --silicon_version=6500 --symdebug:skeletal 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64x+                                          *
;*   Optimization      : Disabled                                             *
;*   Optimizing for    : Compile time, Ease of Development                    *
;*                       Based on options: no -o, no -ms                      *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume not aliases (optimistic)                     *
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
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/constantinos/embLab/handing/dsp")
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
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$30)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$30)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$18


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNsqrt")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("__IQNsqrt")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$30)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$34)
	.dwendtag $C$DW$22

	.global	_binWidth
_binWidth:	.usect	".far",2,2
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("binWidth")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_binWidth")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr _binWidth]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$25, DW_AT_external
	.global	_cfgMaxIter
_cfgMaxIter:	.usect	".far",2,2
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("cfgMaxIter")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_cfgMaxIter")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr _cfgMaxIter]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$26, DW_AT_external
	.global	_kernel
_kernel:	.usect	".far",19952,8
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("kernel")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_kernel")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _kernel]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$27, DW_AT_external
	.global	_target_model
_target_model:	.usect	".far",192,8
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("target_model")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_target_model")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _target_model]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$28, DW_AT_external
	.global	_target_candidate
_target_candidate:	.usect	".far",64,8
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("target_candidate")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_target_candidate")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _target_candidate]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$29, DW_AT_external
;	/opt/bbToolChain/usr/local/share/c6000/bin/acp6x -@/tmp/28005Knx9j0 
	.sect	".text"
	.clink

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("_FtoIQN")
	.dwattr $C$DW$30, DW_AT_low_pc(__FtoIQN)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("__FtoIQN")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$30, DW_AT_TI_begin_file("./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x36)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x16)
	.dwattr $C$DW$30, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr $C$DW$30, DW_AT_TI_skeletal
	.dwpsn	file "./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h",line 55,column 1,is_stmt,address __FtoIQN
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg4]
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("qfmt")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_qfmt")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: _FtoIQN                                                     *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,B0,B4,B5,B6,B7,B8,B9,SP                     *
;*   Regs Used         : A0,A3,A4,B0,B3,B4,B5,B6,B7,B8,B9,SP                  *
;*   Local Frame Size  : 0 Args + 40 Auto + 0 Save = 40 byte                  *
;******************************************************************************
__FtoIQN:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 46

           MV      .L2X    A4,B6             ; |55| 
||         ADDK    .S2     -40,SP            ; |55| 

           STW     .D2T2   B6,*+SP(16)       ; |60| 
||         EXTU    .S2     B6,1,24,B6        ; |71| 
||         MV      .L2X    A4,B7             ; |55| 

           STW     .D2T2   B6,*+SP(28)       ; |71| 
||         CLR     .S2     B7,0,29,B6        ; |61| 

           STW     .D2T2   B6,*+SP(24)       ; |61| 
           LDW     .D2T2   *+SP(28),B6       ; |72| 

           LDW     .D2T2   *+SP(24),B7       ; |74| 
||         MV      .L2X    A4,B8             ; |55| 

           EXTU    .S2     B8,9,9,B8         ; |88| 
           STW     .D2T2   B8,*+SP(12)       ; |89| 

           STW     .D2T2   B8,*+SP(20)       ; |88| 
||         MV      .L2     B8,B9             ; |89| 
||         ZERO    .S2     B8

           SET     .S2     B8,0x1e,0x1e,B8
||         MVK     .S1     128,A3            ; |72| 

           CMPLTU  .L1X    B6,A3,A0          ; |72| 
||         STW     .D2T2   B4,*+SP(8)        ; |55| 
||         XOR     .L2     B8,B7,B4          ; |74| 

   [ A0]   STW     .D2T2   B4,*+SP(24)       ; |74| 
           LDW     .D2T2   *+SP(24),B8       ; |91| 
           LDW     .D2T2   *+SP(8),B6        ; |81| 
           SHL     .S2     B9,7,B4           ; |90| 
           MV      .L2     B4,B7             ; |91| 
           STW     .D2T2   B4,*+SP(12)       ; |90| 

           MV      .L2     B8,B4             ; |91| 
||         OR      .D2     B8,B7,B8          ; |91| 
||         MVK     .S2     30,B7             ; |81| 

           SHRU    .S2     B4,31,B0          ; |97| 
||         SUB     .L2     B7,B6,B4          ; |81| 

           ADDK    .S2     127,B4            ; |81| 
           STW     .D2T2   B4,*+SP(32)       ; |81| 

           MV      .L2     B4,B7             ; |99| 
||         LDW     .D2T2   *+SP(28),B4       ; |82| 

   [ B0]   ZERO    .L1     A3
   [ B0]   SET     .S1     A3,0x7,0x1e,A3
   [ B0]   MV      .L2     B8,B6             ; |81| 
           MV      .L1X    B9,A0             ; |81| 

           SUB     .L2     B7,B4,B4          ; |82| 
||         STW     .D2T2   B8,*+SP(12)       ; |91| 

   [ B0]   XOR     .L2X    A3,B6,B5          ; |99| 
|| [!B0]   ZERO    .L1     A0                ; |99| 
||         STW     .D2T2   B4,*+SP(28)       ; |82| 

   [ A0]   STW     .D2T2   B5,*+SP(12)       ; |99| 
           LDW     .D2T2   *+SP(12),B5       ; |101| 
           LDW     .D2T2   *+SP(28),B4       ; |102| 
           MVK     .L1     1,A3              ; |58| 

           ZERO    .L2     B6                ; |64| 
||         MV      .S2X    A4,B0             ; |82| 
||         STW     .D2T1   A3,*+SP(36)       ; |58| 

   [!B0]   STW     .D2T2   B6,*+SP(36)       ; |64| 
           STW     .D2T2   B5,*+SP(40)       ; |101| 

           SHR     .S2     B5,B4,B4          ; |102| 
||         LDW     .D2T2   *+SP(36),B5       ; |103| 

           STW     .D2T2   B4,*+SP(40)       ; |102| 
           STW     .D2T1   A4,*+SP(4)        ; |55| 
           NOP             2
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

           RETNOP  .S2     B3,4              ; |112| 
||         MPY32   .M2     B5,B4,B4          ; |103| 

	.dwpsn	file "./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h",line 112,column 1,is_stmt

           MV      .L1X    B4,A4             ; |103| 
||         STW     .D2T2   B4,*+SP(40)       ; |103| 
||         ADDK    .S2     40,SP             ; |112| 

           ; BRANCH OCCURS {B3}              ; |112| 
	.dwattr $C$DW$30, DW_AT_TI_end_file("./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x70)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$30

	.sect	".text"
	.clink

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNmpy")
	.dwattr $C$DW$34, DW_AT_low_pc(__IQNmpy)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("__IQNmpy")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$34, DW_AT_TI_begin_file("./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x22c)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x16)
	.dwattr $C$DW$34, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr $C$DW$34, DW_AT_TI_skeletal
	.dwpsn	file "./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h",line 557,column 1,is_stmt,address __IQNmpy
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f1")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg4]
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f2")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg20]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("q_format")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_q_format")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: _IQNmpy                                                     *
;*                                                                            *
;*   Regs Modified     : A4,B4,B5,B6,B7,B8,B9,SP                              *
;*   Regs Used         : A4,A6,B3,B4,B5,B6,B7,B8,B9,SP                        *
;*   Local Frame Size  : 0 Args + 40 Auto + 0 Save = 40 byte                  *
;******************************************************************************
__IQNmpy:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 27

           ADDK    .S2     -40,SP            ; |557| 
||         MV      .L2X    A4,B5             ; |557| 

           STW     .D2T2   B4,*+SP(8)        ; |557| 
||         MPY32   .M2     B5,B4,B5:B4       ; |563| 

           MVK     .S2     32,B6             ; |561| 
           STW     .D2T2   B6,*+SP(40)       ; |561| 
           STW     .D2T1   A6,*+SP(12)       ; |557| 
           STDW    .D2T2   B5:B4,*+SP(16)    ; |563| 
           LDW     .D2T2   *+SP(40),B5       ; |570| 
           LDDW    .D2T2   *+SP(16),B7:B6    ; |566| 
           LDDW    .D2T2   *+SP(16),B9:B8    ; |565| 
           LDW     .D2T2   *+SP(12),B9       ; |569| 
           STW     .D2T1   A4,*+SP(4)        ; |557| 
           SUB     .L2X    B5,A6,B4          ; |570| 
           MV      .L2     B7,B6             ; |565| 
           SHL     .S2     B6,B4,B4          ; |570| 
           STW     .D2T2   B4,*+SP(36)       ; |570| 
           LDW     .D2T2   *+SP(36),B5       ; |572| 
           STW     .D2T2   B7,*+SP(24)       ; |566| 
           MV      .L2     B8,B7             ; |565| 
           SHRU    .S2     B7,B9,B4          ; |569| 
           STW     .D2T2   B4,*+SP(32)       ; |569| 
           OR      .L2     B5,B4,B4          ; |572| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x04)
	.dwattr $C$DW$38, DW_AT_TI_return

           STW     .D2T2   B4,*+SP(32)       ; |572| 
||         RET     .S2     B3                ; |576| 

           LDW     .D2T1   *+SP(32),A4       ; |574| 
           STW     .D2T2   B8,*+SP(28)       ; |565| 
           ADDK    .S2     40,SP             ; |576| 
	.dwpsn	file "./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h",line 576,column 1,is_stmt
           NOP             2
           ; BRANCH OCCURS {B3}              ; |576| 
	.dwattr $C$DW$34, DW_AT_TI_end_file("./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x240)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$34

	.sect	".text"
	.clink

$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNtoF")
	.dwattr $C$DW$39, DW_AT_low_pc(__IQNtoF)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("__IQNtoF")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x42d)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x17)
	.dwattr $C$DW$39, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr $C$DW$39, DW_AT_TI_skeletal
	.dwpsn	file "./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h",line 1070,column 1,is_stmt,address __IQNtoF
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg4]
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("qfmt")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_qfmt")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: _IQNtoF                                                     *
;*                                                                            *
;*   Regs Modified     : A3,A4,B0,B4,B5,B6,B7,SP                              *
;*   Regs Used         : A3,A4,B0,B3,B4,B5,B6,B7,SP                           *
;*   Local Frame Size  : 0 Args + 32 Auto + 0 Save = 32 byte                  *
;******************************************************************************
__IQNtoF:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 52
           ADDK    .S2     -32,SP            ; |1070| 
           STW     .D2T1   A4,*+SP(4)        ; |1070| 
           LDW     .D2T2   *+SP(4),B5        ; |1080| 
           MV      .L2X    A4,B6             ; |1070| 
           ZERO    .L1     A4
           SET     .S1     A4,0x0,0x1e,A4
           MV      .L1X    B4,A3             ; |1070| 

           STW     .D2T2   B5,*+SP(12)       ; |1080| 
||         NORM    .L2     B6,B5             ; |1079| 

           STW     .D2T2   B5,*+SP(28)       ; |1079| 
           LDW     .D2T2   *+SP(12),B6       ; |1081| 
           LDW     .D2T2   *+SP(28),B5       ; |1081| 
           STW     .D2T1   A3,*+SP(8)        ; |1070| 
           NOP             3
           SHL     .S2     B6,B5,B5          ; |1081| 
           MV      .L2     B5,B4             ; |1070| 
           XOR     .L2X    A4,B4,B4          ; |1087| 
           STW     .D2T2   B4,*+SP(16)       ; |1087| 
           LDW     .D2T2   *+SP(16),B6       ; |1088| 
           STW     .D2T2   B5,*+SP(12)       ; |1081| 
           NOP             3
           CMPLT   .L2     B6,0,B0           ; |1088| 

   [!B0]   STW     .D2T2   B5,*+SP(16)       ; |1090| 
||         MVK     .S2     30,B5             ; |1098| 

           SUB     .L2X    B5,A3,B5          ; |1098| 
           ADDK    .S2     127,B5            ; |1098| 
           STW     .D2T2   B5,*+SP(24)       ; |1098| 
           LDW     .D2T2   *+SP(28),B5       ; |1099| 
           LDW     .D2T2   *+SP(24),B6       ; |1099| 
           LDW     .D2T2   *+SP(16),B4       ; |1092| 
           NOP             3
           SUB     .L2     B6,B5,B5          ; |1099| 

           STW     .D2T2   B5,*+SP(28)       ; |1099| 
||         ZERO    .L2     B5                ; |1102| 
||         MV      .S2     B4,B0             ; |1092| 

   [!B0]   STW     .D2T2   B5,*+SP(28)       ; |1102| 
           LDW     .D2T2   *+SP(28),B7       ; |1112| 
           MV      .L2     B4,B6             ; |1092| 
           STW     .D2T2   B4,*+SP(12)       ; |1092| 
           SHL     .S2     B4,2,B4           ; |1109| 
           MV      .L2     B4,B5             ; |1109| 

           STW     .D2T2   B4,*+SP(16)       ; |1109| 
||         MV      .L2     B7,B4             ; |1112| 

           CLR     .S2     B6,0,30,B6        ; |1111| 

           SHL     .S1X    B4,23,A3          ; |1113| 
||         SHRU    .S2     B5,9,B5           ; |1110| 

$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

           RET     .S2     B3                ; |1123| 
||         STW     .D2T2   B6,*+SP(20)       ; |1111| 

           MV      .L2     B5,B4             ; |1113| 
||         STW     .D2T2   B5,*+SP(16)       ; |1110| 
||         MV      .S2X    A3,B5             ; |1113| 

           OR      .L2     B5,B4,B4          ; |1114| 
||         STW     .D2T2   B7,*+SP(12)       ; |1112| 

           OR      .L2     B6,B4,B4          ; |1114| 
||         STW     .D2T1   A3,*+SP(12)       ; |1113| 

           STW     .D2T2   B4,*+SP(32)       ; |1115| 
	.dwpsn	file "./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h",line 1123,column 1,is_stmt

           MV      .L1X    B4,A4             ; |1115| 
||         STW     .D2T2   B4,*+SP(16)       ; |1114| 
||         ADDK    .S2     32,SP             ; |1123| 

           ; BRANCH OCCURS {B3}              ; |1123| 
	.dwattr $C$DW$39, DW_AT_TI_end_file("./c64xplus-iqmath_2_01_04_00/include/IQmath_inline.h")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x463)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$39

	.sect	".text"
	.clink
	.global	_HC_Epanechnikov_kernel

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_Epanechnikov_kernel")
	.dwattr $C$DW$43, DW_AT_low_pc(_HC_Epanechnikov_kernel)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x14)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$43, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr $C$DW$43, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 21,column 1,is_stmt,address _HC_Epanechnikov_kernel

;******************************************************************************
;* FUNCTION NAME: HC_Epanechnikov_kernel                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 20 Auto + 24 Save = 44 byte                 *
;******************************************************************************
_HC_Epanechnikov_kernel:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     __FtoIQN,B5       ; |26| 
           MVKH    .S2     __FtoIQN,B5       ; |26| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("__FtoIQN")
	.dwattr $C$DW$44, DW_AT_TI_call
           CALL    .S2     B5                ; |26| 
           MVKL    .S2     0x3dcccccd,B6
           STW     .D2T2   B13,*SP--(8)      ; |21| 

           MVKH    .S2     0x3dcccccd,B6
||         STDW    .D2T1   A13:A12,*SP--     ; |21| 

           STDW    .D2T1   A11:A10,*SP--     ; |21| 
||         MVK     .S2     0x12,B4           ; |26| 

           MV      .L1X    B6,A4             ; |26| 
||         SUB     .D2     SP,24,SP          ; |21| 
||         MV      .L2     B3,B13            ; |21| 
||         ADDKPC  .S2     $C$RL0,B3,0       ; |26| 

$C$RL0:    ; CALL OCCURS {__FtoIQN} {0}      ; |26| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 34
           MVKL    .S1     __FtoIQN,A3       ; |26| 
           MVKH    .S1     __FtoIQN,A3       ; |26| 
           MV      .L1     A4,A5             ; |26| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("__FtoIQN")
	.dwattr $C$DW$45, DW_AT_TI_call
           CALL    .S2X    A3                ; |26| 
           MVKL    .S1     0x40490fd0,A4
           MVK     .S2     0x12,B4           ; |26| 
           ADDKPC  .S2     $C$RL1,B3,1       ; |26| 
           MVKH    .S1     0x40490fd0,A4
$C$RL1:    ; CALL OCCURS {__FtoIQN} {0}      ; |26| 
           MVKL    .S1     __IQNmpy,A3       ; |26| 
           MVKH    .S1     __IQNmpy,A3       ; |26| 
           MV      .L2X    A4,B4             ; |26| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$46, DW_AT_TI_call
           CALL    .S2X    A3                ; |26| 
           MV      .L1     A5,A4             ; |26| 
           MVK     .S1     0x12,A6           ; |26| 
           ADDKPC  .S2     $C$RL2,B3,2       ; |26| 
$C$RL2:    ; CALL OCCURS {__IQNmpy} {0}      ; |26| 
           MVKL    .S2     __IQNmpy,B5       ; |26| 
           MVKH    .S2     __IQNmpy,B5       ; |26| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$47, DW_AT_TI_call
           CALL    .S2     B5                ; |26| 
           ZERO    .L1     A10
           MVKH    .S1     0x1580000,A10
           ZERO    .L1     A11
           MVKH    .S1     0xe80000,A11

           ADDKPC  .S2     $C$RL3,B3,0       ; |26| 
||         MV      .L2X    A10,B4            ; |26| 
||         MV      .L1     A4,A3             ; |26| 
||         MV      .S1     A11,A4            ; |26| 

$C$RL3:    ; CALL OCCURS {__IQNmpy} {0}      ; |26| 
           MVKL    .S2     __IQNmpy,B5       ; |26| 
           MVKH    .S2     __IQNmpy,B5       ; |26| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$48, DW_AT_TI_call
           CALL    .S2     B5                ; |26| 
           ADDKPC  .S2     $C$RL4,B3,3       ; |26| 

           MV      .L2X    A4,B4             ; |26| 
||         MV      .L1     A3,A4             ; |26| 

$C$RL4:    ; CALL OCCURS {__IQNmpy} {0}      ; |26| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           ZERO    .L2     B4                ; |28| 
||         MVK     .S2     58,B5             ; |28| 
||         MV      .L1     A4,A12            ; |26| 

           CMPLT   .L2     B4,B5,B0          ; |28| 
||         STW     .D2T2   B4,*+SP(4)        ; |28| 

   [!B0]   BNOP    .S1     $C$L5,4           ; |28| 
|| [ B0]   MVK     .S2     86,B5             ; |30| 
|| [ B0]   ZERO    .L2     B4                ; |30| 

   [ B0]   CMPLT   .L2     B4,B5,B0          ; |30| 
           ; BRANCHCC OCCURS {$C$L5}         ; |28| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
	.dwpsn	file "dspMeanshift.c",line 28,column 0,is_stmt

   [!B0]   BNOP    .S1     $C$L4,2           ; |30| 
||         STW     .D2T2   B4,*+SP(8)        ; |30| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L1
;** --------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_HC_Epanechnikov_kernel$5$B:
	.dwpsn	file "dspMeanshift.c",line 29,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 3
           NOP             3
           ; BRANCHCC OCCURS {$C$L4}         ; |30| 
$C$DW$L$_HC_Epanechnikov_kernel$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$6$B:
;          EXCLUSIVE CPU CYCLES: 6

           MVKL    .S1     __IQNmpy,A3       ; |34| 
||         LDW     .D2T2   *+SP(4),B4        ; |32| 
||         ZERO    .L2     B5
||         ZERO    .S2     B7

           MVKH    .S1     __IQNmpy,A3       ; |34| 
||         LDW     .D2T2   *+SP(8),B6        ; |33| 
||         MVKH    .S2     0xac0000,B7

           MVK     .S1     0x12,A6           ; |34| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$49, DW_AT_TI_call
           CALL    .S2X    A3                ; |34| 
           MVKH    .S2     0x740000,B5
	.dwpsn	file "dspMeanshift.c",line 30,column 0,is_stmt
           SHL     .S2     B4,18,B4          ; |32| 
$C$DW$L$_HC_Epanechnikov_kernel$6$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_HC_Epanechnikov_kernel$7$B:
	.dwpsn	file "dspMeanshift.c",line 31,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 3

           SHL     .S2     B6,18,B31         ; |33| 
||         SUB     .L2     B4,B5,B5          ; |32| 

           SUB     .L2     B31,B7,B4         ; |33| 
||         STW     .D2T2   B5,*+SP(12)       ; |32| 

           STW     .D2T2   B4,*+SP(16)       ; |33| 
||         MV      .L2     B5,B4             ; |34| 
||         MV      .L1X    B5,A4             ; |34| 
||         ADDKPC  .S2     $C$RL8,B3,0       ; |34| 

$C$RL8:    ; CALL OCCURS {__IQNmpy} {0}      ; |34| 
$C$DW$L$_HC_Epanechnikov_kernel$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$8$B:
;          EXCLUSIVE CPU CYCLES: 44
           MVKL    .S1     __IQNmpy,A3       ; |34| 
           MVKH    .S1     __IQNmpy,A3       ; |34| 
           ZERO    .L2     B4
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$50, DW_AT_TI_call
           CALL    .S2X    A3                ; |34| 
           SET     .S2     B4,0x13,0x15,B4
           ADDKPC  .S2     $C$RL9,B3,2       ; |34| 

           MV      .L1     A4,A5             ; |34| 
||         MV      .S1     A11,A4            ; |34| 

$C$RL9:    ; CALL OCCURS {__IQNmpy} {0}      ; |34| 
           MVKL    .S1     __IQNdiv,A3       ; |34| 
           MVKH    .S1     __IQNdiv,A3       ; |34| 
           MV      .L2X    A4,B4             ; |34| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$51, DW_AT_TI_call
           CALL    .S2X    A3                ; |34| 
           MV      .L1     A5,A4             ; |34| 
           ADDKPC  .S2     $C$RL10,B3,3      ; |34| 
$C$RL10:   ; CALL OCCURS {__IQNdiv} {0}      ; |34| 
           MVKL    .S1     __IQNmpy,A3       ; |34| 
           MVKH    .S1     __IQNmpy,A3       ; |34| 
           LDW     .D2T2   *+SP(16),B4       ; |34| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$52, DW_AT_TI_call
           CALL    .S2X    A3                ; |34| 
           ADDKPC  .S2     $C$RL5,B3,3       ; |34| 

           MV      .L1     A4,A13            ; |34| 
||         MV      .D1X    B4,A4             ; |34| 
||         MVK     .S1     0x12,A6           ; |34| 

$C$RL5:    ; CALL OCCURS {__IQNmpy} {0}      ; |34| 
           MVKL    .S2     __IQNmpy,B5       ; |34| 
           MVKH    .S2     __IQNmpy,B5       ; |34| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$53, DW_AT_TI_call
           CALL    .S2     B5                ; |34| 
           ZERO    .L2     B4
           MVKH    .S2     0x540000,B4
           ADDKPC  .S2     $C$RL6,B3,1       ; |34| 

           MV      .L1     A4,A3             ; |34| 
||         MV      .S1     A10,A4            ; |34| 

$C$RL6:    ; CALL OCCURS {__IQNmpy} {0}      ; |34| 
           MVKL    .S1     __IQNdiv,A5       ; |34| 
           MVKH    .S1     __IQNdiv,A5       ; |34| 
           MV      .L2X    A4,B4             ; |34| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$54, DW_AT_TI_call
           CALL    .S2X    A5                ; |34| 
           MV      .L1     A3,A4             ; |34| 
           ADDKPC  .S2     $C$RL7,B3,3       ; |34| 
$C$RL7:    ; CALL OCCURS {__IQNdiv} {0}      ; |34| 
$C$DW$L$_HC_Epanechnikov_kernel$8$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$9$B:
;          EXCLUSIVE CPU CYCLES: 12

           ADD     .L1     A4,A13,A3         ; |34| 
||         ZERO    .S1     A31

           STW     .D2T1   A3,*+SP(20)       ; |34| 

           MV      .L2X    A3,B4             ; |34| 
||         SET     .S1     A31,0x12,0x12,A3

           NOP             1

           CMPLT   .L1X    B4,A3,A0          ; |35| 
||         SUB     .L2X    A3,B4,B4          ; |35| 
||         MVKL    .S1     __IQNmpy,A3       ; |35| 

   [!A0]   LDW     .D2T2   *+SP(4),B4        ; |35| 
|| [!A0]   MVKL    .S1     _kernel,A5
|| [!A0]   MVK     .S2     344,B5            ; |35| 
|| [!A0]   ZERO    .L1     A4                ; |35| 

   [!A0]   BNOP    .S2     $C$L3,1           ; |35| 
||         MVKH    .S1     __IQNmpy,A3       ; |35| 

$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$55, DW_AT_TI_call
   [ A0]   CALL    .S2X    A3                ; |35| 
   [!A0]   LDW     .D2T1   *+SP(8),A3        ; |35| 
   [!A0]   MVKH    .S1     _kernel,A5
   [!A0]   MPYLI   .M2     B5,B4,B5:B4       ; |35| 
           ; BRANCHCC OCCURS {$C$L3}         ; |35| 
$C$DW$L$_HC_Epanechnikov_kernel$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$10$B:
;          EXCLUSIVE CPU CYCLES: 2
           MV      .L1     A12,A4            ; |35| 

           MVK     .S1     0x12,A6           ; |35| 
||         ADDKPC  .S2     $C$RL11,B3,0      ; |35| 

$C$RL11:   ; CALL OCCURS {__IQNmpy} {0}      ; |35| 
$C$DW$L$_HC_Epanechnikov_kernel$10$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$11$B:
;          EXCLUSIVE CPU CYCLES: 6
           LDW     .D2T2   *+SP(4),B4        ; |35| 
           MVK     .S2     344,B5            ; |35| 
           LDW     .D2T1   *+SP(8),A3        ; |35| 
           MVKL    .S1     _kernel,A5
           MVKH    .S1     _kernel,A5
           MPYLI   .M2     B5,B4,B5:B4       ; |35| 
$C$DW$L$_HC_Epanechnikov_kernel$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_HC_Epanechnikov_kernel$12$B:
$C$DW$L$_HC_Epanechnikov_kernel$12$E:
;** --------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$_HC_Epanechnikov_kernel$13$B:
;          EXCLUSIVE CPU CYCLES: 19
           NOP             4
           ADD     .L1X    A5,B4,A5          ; |35| 
           STW     .D1T1   A4,*+A5[A3]       ; |35| 
           LDW     .D2T2   *+SP(8),B4        ; |30| 
           NOP             4

           ADD     .L2     1,B4,B4           ; |30| 
||         MVK     .S2     86,B31            ; |30| 

           CMPLT   .L2     B4,B31,B0         ; |30| 
||         STW     .D2T2   B4,*+SP(8)        ; |30| 

   [ B0]   B       .S2     $C$L2             ; |30| 
||         LDW     .D2T2   *+SP(4),B4        ; |32| 
||         MVKL    .S1     __IQNmpy,A3       ; |34| 

   [ B0]   LDW     .D2T2   *+SP(8),B6        ; |33| 
|| [ B0]   ZERO    .L2     B7
||         MVKH    .S1     __IQNmpy,A3       ; |34| 

   [ B0]   MVKH    .S2     0xac0000,B7
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$56, DW_AT_TI_call

   [ B0]   CALL    .S2X    A3                ; |34| 
|| [ B0]   ZERO    .L2     B5

   [ B0]   MVKH    .S2     0x740000,B5
	.dwpsn	file "dspMeanshift.c",line 36,column 0,is_stmt

           SHL     .S2     B4,18,B4          ; |32| 
|| [ B0]   MVK     .S1     0x12,A6           ; |34| 

           ; BRANCHCC OCCURS {$C$L2}         ; |30| 
$C$DW$L$_HC_Epanechnikov_kernel$13$E:
;** --------------------------------------------------------------------------*
$C$L4:    
$C$DW$L$_HC_Epanechnikov_kernel$14$B:
;          EXCLUSIVE CPU CYCLES: 13
           LDW     .D2T2   *+SP(4),B4        ; |28| 
           MVK     .S2     58,B31            ; |28| 
           NOP             3

           ADD     .L2     1,B4,B5           ; |28| 
||         ADD     .S2     1,B4,B4           ; |28| 

           CMPLT   .L2     B5,B31,B0         ; |28| 
||         STW     .D2T2   B4,*+SP(4)        ; |28| 
||         MVK     .S2     86,B5             ; |30| 

   [ B0]   B       .S1     $C$L1             ; |28| 
||         ZERO    .L2     B4                ; |30| 
||         MV      .S2     B0,B1             ; guard predicate rewrite

           CMPLT   .L2     B4,B5,B0          ; |30| 
|| [ B1]   STW     .D2T2   B4,*+SP(8)        ; |30| 

   [!B1]   MVK     .L2     0x1,B0            ; |30| nullify predicate
	.dwpsn	file "dspMeanshift.c",line 37,column 0,is_stmt
   [!B0]   BNOP    .S1     $C$L4,2           ; |30| 
           ; BRANCHCC OCCURS {$C$L1}         ; |28| 
$C$DW$L$_HC_Epanechnikov_kernel$14$E:
;** --------------------------------------------------------------------------*
$C$L5:    
;          EXCLUSIVE CPU CYCLES: 8
           ADDK    .S2     24,SP             ; |38| 

           LDDW    .D2T1   *++SP,A11:A10     ; |38| 
||         MV      .L2     B13,B3            ; |38| 

$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x04)
	.dwattr $C$DW$57, DW_AT_TI_return

           LDDW    .D2T1   *++SP,A13:A12     ; |38| 
||         RET     .S2     B3                ; |38| 

           LDW     .D2T2   *++SP(8),B13      ; |38| 
	.dwpsn	file "dspMeanshift.c",line 38,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |38| 

$C$DW$58	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$58, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L1:1:1496942307")
	.dwattr $C$DW$58, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x25)
$C$DW$59	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$59, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$5$B)
	.dwattr $C$DW$59, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$5$E)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$6$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$6$E)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$14$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$14$E)

$C$DW$62	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$62, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L2:2:1496942307")
	.dwattr $C$DW$62, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x1e)
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x24)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$7$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$7$E)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$10$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$10$E)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$11$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$11$E)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$8$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$8$E)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$9$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$9$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$12$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$12$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_HC_Epanechnikov_kernel$13$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_HC_Epanechnikov_kernel$13$E)
	.dwendtag $C$DW$62

	.dwendtag $C$DW$58

	.dwattr $C$DW$43, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x26)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$43

	.sect	".text"
	.clink
	.global	_HC_pdf_representation_target

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_pdf_representation_target")
	.dwattr $C$DW$70, DW_AT_low_pc(_HC_pdf_representation_target)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_HC_pdf_representation_target")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x28)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$70, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$70, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 41,column 1,is_stmt,address _HC_pdf_representation_target
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colorIndex")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_colorIndex")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg4]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: HC_pdf_representation_target                                *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B0,B4,B5,B6,B7,B8,B9,SP,A30,A31,B29,B30,B31 *
;*   Regs Used         : A3,A4,A5,B0,B3,B4,B5,B6,B7,B8,B9,SP,A30,A31,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 16 Auto + 0 Save = 16 byte                  *
;******************************************************************************
_HC_pdf_representation_target:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14

           SUB     .D2     SP,16,SP          ; |41| 
||         ZERO    .L2     B5                ; |49| 
||         MV      .L1X    B4,A3             ; |41| 

           STH     .D2T2   B5,*+SP(16)       ; |49| 
           LDHU    .D2T2   *+SP(16),B4       ; |49| 
           MVK     .S2     58,B5             ; |49| 
           STW     .D2T1   A3,*+SP(8)        ; |41| 
           MVK     .S1     0x16f,A3          ; |45| 
           STB     .D2T1   A4,*+SP(4)        ; |41| 

           CMPLTU  .L2     B4,B5,B0          ; |49| 
||         ZERO    .S2     B4                ; |52| 

   [ B0]   STH     .D2T2   B4,*+SP(18)       ; |52| 
|| [!B0]   B       .S1     $C$L9             ; |49| 

           LDHU    .D2T2   *+SP(18),B4       ; |52| 
   [ B0]   MVK     .S2     86,B5             ; |52| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L9}         ; |49| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_HC_pdf_representation_target$2$B:
	.dwpsn	file "dspMeanshift.c",line 50,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7

           CMPLTU  .L2     B4,B5,B0          ; |52| 
||         MVK     .S2     0xe4,B4           ; |51| 

   [!B0]   BNOP    .S1     $C$L8,5           ; |52| 
|| [ B0]   LDW     .D2T2   *+SP(8),B5        ; |54| 

           ; BRANCHCC OCCURS {$C$L8}         ; |52| 
$C$DW$L$_HC_pdf_representation_target$2$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L7
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_HC_pdf_representation_target$3$B:
	.dwpsn	file "dspMeanshift.c",line 53,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 39

           SHL     .S1     A3,7,A5           ; |54| 
||         LDHU    .D2T2   *+SP(16),B8       ; |56| 
||         MVK     .S2     344,B9            ; |56| 

           SHL     .S1     A3,9,A4           ; |54| 
||         LDBU    .D2T2   *+SP(4),B31       ; |56| 
||         MVKL    .S2     _target_model,B7

           ADD     .L1     A5,A4,A4          ; |54| 
||         LDHU    .D2T1   *+SP(18),A31      ; |56| 
||         MVKL    .S1     _kernel,A30
||         MVKH    .S2     _target_model,B7

           MVKH    .S1     _kernel,A30
           ADD     .L2X    B4,A4,B6          ; |54| 
           LDBU    .D2T2   *+B6[B5],B6       ; |54| 
           MPYUS   .M2     B8,B9,B8          ; |56| 
           SHL     .S2     B31,6,B5          ; |56| 
           ADD     .L2     B7,B5,B5          ; |56| 
           ADD     .L1X    A30,B8,A5         ; |56| 
           SHRU    .S2     B6,4,B6           ; |54| 
           STW     .D2T2   B6,*+SP(12)       ; |54| 

           LDW     .D1T1   *+A5[A31],A4      ; |56| 
||         ADDAW   .D2     B5,B6,B5          ; |56| 

           LDW     .D2T2   *B5,B6            ; |56| 
           ADD     .L2     1,B4,B29          ; |58| 
           MVK     .S2     86,B30            ; |52| 
           EXTU    .S2     B29,16,16,B4      ; |58| 
           SHR     .S1     A4,7,A4           ; |56| 
           ADD     .L1X    A4,B6,A4          ; |56| 
           STW     .D2T1   A4,*B5            ; |56| 
           LDHU    .D2T2   *+SP(18),B5       ; |52| 
           NOP             4
           ADD     .L2     1,B5,B5           ; |52| 
           STH     .D2T2   B5,*+SP(18)       ; |52| 
           LDHU    .D2T2   *+SP(18),B5       ; |52| 
           NOP             4
           CMPLTU  .L2     B5,B30,B0         ; |52| 
	.dwpsn	file "dspMeanshift.c",line 59,column 0,is_stmt

   [ B0]   BNOP    .S1     $C$L7,5           ; |52| 
|| [ B0]   LDW     .D2T2   *+SP(8),B5        ; |54| 

           ; BRANCHCC OCCURS {$C$L7}         ; |52| 
$C$DW$L$_HC_pdf_representation_target$3$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_HC_pdf_representation_target$4$B:
;          EXCLUSIVE CPU CYCLES: 19
           LDHU    .D2T2   *+SP(16),B4       ; |49| 
           MVK     .S2     58,B5             ; |49| 
           ADD     .L1     1,A3,A3           ; |60| 
           EXTU    .S1     A3,16,16,A3       ; |60| 
           NOP             1
           ADD     .L2     1,B4,B4           ; |49| 
           STH     .D2T2   B4,*+SP(16)       ; |49| 
           LDHU    .D2T2   *+SP(16),B4       ; |49| 
           NOP             4

           CMPLTU  .L2     B4,B5,B0          ; |49| 
||         ZERO    .S2     B4                ; |52| 

   [ B0]   STH     .D2T2   B4,*+SP(18)       ; |52| 
|| [ B0]   B       .S1     $C$L6             ; |49| 

           LDHU    .D2T2   *+SP(18),B4       ; |52| 
   [ B0]   MVK     .S2     86,B5             ; |52| 
	.dwpsn	file "dspMeanshift.c",line 61,column 0,is_stmt
           NOP             3
           ; BRANCHCC OCCURS {$C$L6}         ; |49| 
$C$DW$L$_HC_pdf_representation_target$4$E:
;** --------------------------------------------------------------------------*
$C$L9:    
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_return
           RETNOP  .S2     B3,4              ; |62| 
	.dwpsn	file "dspMeanshift.c",line 62,column 1,is_stmt
           ADDK    .S2     16,SP             ; |62| 
           ; BRANCH OCCURS {B3}              ; |62| 

$C$DW$74	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$74, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L6:1:1496942307")
	.dwattr $C$DW$74, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x31)
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x3d)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_HC_pdf_representation_target$2$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_HC_pdf_representation_target$2$E)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_HC_pdf_representation_target$4$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_HC_pdf_representation_target$4$E)

$C$DW$77	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$77, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L7:2:1496942307")
	.dwattr $C$DW$77, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x34)
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x3b)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_HC_pdf_representation_target$3$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_HC_pdf_representation_target$3$E)
	.dwendtag $C$DW$77

	.dwendtag $C$DW$74

	.dwattr $C$DW$70, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$70

	.sect	".text"
	.clink
	.global	_pdf_representation

$C$DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("pdf_representation")
	.dwattr $C$DW$79, DW_AT_low_pc(_pdf_representation)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_pdf_representation")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x41)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$79, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$79, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 66,column 1,is_stmt,address _pdf_representation
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg4]
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rect")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_rect")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: pdf_representation                                          *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,B0,B4,B5,B6,B7,SP,A30,A31,B29,B30,B31       *
;*   Regs Used         : A3,A4,A5,B0,B3,B4,B5,B6,B7,SP,A30,A31,B29,B30,B31    *
;*   Local Frame Size  : 0 Args + 16 Auto + 0 Save = 16 byte                  *
;******************************************************************************
_pdf_representation:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 17

           SUB     .D2     SP,16,SP          ; |66| 
||         MV      .L1X    B4,A3             ; |66| 
||         ZERO    .L2     B5                ; |73| 

           STW     .D2T1   A4,*+SP(4)        ; |66| 
           STW     .D2T2   B4,*+SP(8)        ; |66| 

           LDHU    .D1T1   *+A3(2),A3        ; |69| 
||         STH     .D2T2   B5,*+SP(16)       ; |73| 

           LDHU    .D2T2   *+SP(16),B5       ; |73| 
           LDHU    .D2T2   *+B4(6),B4        ; |73| 
           NOP             4

           CMPLTU  .L2     B5,B4,B0          ; |73| 
||         LDW     .D2T2   *+SP(8),B4        ; |75| 

   [!B0]   BNOP    .S1     $C$L13,3          ; |73| 
|| [ B0]   ZERO    .L2     B5                ; |76| 

           MV      .L2     B4,B6             ; |75| 
|| [ B0]   LDHU    .D2T2   *B4,B4            ; |75| 

   [ B0]   STH     .D2T2   B5,*+SP(18)       ; |76| 
           ; BRANCHCC OCCURS {$C$L13}        ; |73| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_pdf_representation$2$B:
	.dwpsn	file "dspMeanshift.c",line 74,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 13
           LDHU    .D2T2   *+SP(18),B5       ; |76| 
           LDHU    .D2T2   *+B6(4),B6        ; |76| 
           NOP             4
           CMPLTU  .L2     B5,B6,B0          ; |76| 

   [!B0]   BNOP    .S1     $C$L12,5          ; |76| 
|| [ B0]   LDW     .D2T2   *+SP(4),B5        ; |78| 

           ; BRANCHCC OCCURS {$C$L12}        ; |76| 
$C$DW$L$_pdf_representation$2$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L11
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_pdf_representation$3$B:
	.dwpsn	file "dspMeanshift.c",line 77,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 40

           SHL     .S1     A3,7,A5           ; |78| 
||         LDHU    .D2T2   *+SP(16),B31      ; |80| 
||         MVK     .S2     344,B7            ; |80| 

           SHL     .S1     A3,9,A4           ; |78| 
||         LDHU    .D2T1   *+SP(18),A31      ; |80| 
||         MVKL    .S2     _target_candidate,B30

           ADD     .L1     A5,A4,A4          ; |78| 
           MVKH    .S2     _target_candidate,B30
           ADD     .L2X    B4,A4,B6          ; |78| 
           LDBU    .D2T2   *+B6[B5],B5       ; |78| 
           MPYUS   .M2     B31,B7,B7         ; |80| 
           MVKL    .S1     _kernel,A30
           MVKH    .S1     _kernel,A30
           ADD     .L1X    A30,B7,A5         ; |80| 
           SHRU    .S2     B5,4,B5           ; |78| 
           STW     .D2T2   B5,*+SP(12)       ; |78| 

           LDW     .D1T1   *+A5[A31],A4      ; |80| 
||         ADDAW   .D2     B30,B5,B5         ; |80| 

           LDW     .D2T2   *B5,B6            ; |80| 
           ADD     .L2     1,B4,B29          ; |82| 
           EXTU    .S2     B29,16,16,B4      ; |82| 
           NOP             1
           SHR     .S1     A4,7,A4           ; |80| 
           ADD     .L1X    A4,B6,A4          ; |80| 
           STW     .D2T1   A4,*B5            ; |80| 
           LDHU    .D2T2   *+SP(18),B5       ; |76| 
           LDW     .D2T2   *+SP(8),B6        ; |76| 
           NOP             3
           ADD     .L2     1,B5,B5           ; |76| 
           STH     .D2T2   B5,*+SP(18)       ; |76| 
           LDHU    .D2T2   *+B6(4),B6        ; |76| 
           LDHU    .D2T2   *+SP(18),B5       ; |76| 
           NOP             4
           CMPLTU  .L2     B5,B6,B0          ; |76| 
	.dwpsn	file "dspMeanshift.c",line 83,column 0,is_stmt

   [ B0]   BNOP    .S1     $C$L11,5          ; |76| 
|| [ B0]   LDW     .D2T2   *+SP(4),B5        ; |78| 

           ; BRANCHCC OCCURS {$C$L11}        ; |76| 
$C$DW$L$_pdf_representation$3$E:
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$_pdf_representation$4$B:
;          EXCLUSIVE CPU CYCLES: 20
           LDHU    .D2T2   *+SP(16),B5       ; |73| 
           LDW     .D2T2   *+SP(8),B4        ; |73| 
           ADD     .L1     1,A3,A3           ; |84| 
           EXTU    .S1     A3,16,16,A3       ; |84| 
           NOP             1
           ADD     .L2     1,B5,B5           ; |73| 
           STH     .D2T2   B5,*+SP(16)       ; |73| 
           LDHU    .D2T2   *+B4(6),B4        ; |73| 
           LDHU    .D2T2   *+SP(16),B5       ; |73| 
           NOP             4

           CMPLTU  .L2     B5,B4,B0          ; |73| 
||         LDW     .D2T2   *+SP(8),B4        ; |75| 

   [ B0]   BNOP    .S1     $C$L10,3          ; |73| 
|| [ B0]   ZERO    .L2     B5                ; |76| 

           MV      .L2     B4,B6             ; |75| 
|| [ B0]   LDHU    .D2T2   *B4,B4            ; |75| 

	.dwpsn	file "dspMeanshift.c",line 85,column 0,is_stmt
   [ B0]   STH     .D2T2   B5,*+SP(18)       ; |76| 
           ; BRANCHCC OCCURS {$C$L10}        ; |73| 
$C$DW$L$_pdf_representation$4$E:
;** --------------------------------------------------------------------------*
$C$L13:    
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return
           RETNOP  .S2     B3,4              ; |86| 
	.dwpsn	file "dspMeanshift.c",line 86,column 1,is_stmt
           ADDK    .S2     16,SP             ; |86| 
           ; BRANCH OCCURS {B3}              ; |86| 

$C$DW$83	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$83, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L10:1:1496942307")
	.dwattr $C$DW$83, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x55)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_pdf_representation$2$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_pdf_representation$2$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_pdf_representation$4$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_pdf_representation$4$E)

$C$DW$86	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$86, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L11:2:1496942307")
	.dwattr $C$DW$86, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0x4c)
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x53)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_pdf_representation$3$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_pdf_representation$3$E)
	.dwendtag $C$DW$86

	.dwendtag $C$DW$83

	.dwattr $C$DW$79, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$79

	.sect	".text"
	.clink
	.global	_CalcWeight

$C$DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcWeight")
	.dwattr $C$DW$88, DW_AT_low_pc(_CalcWeight)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_CalcWeight")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0x58)
	.dwattr $C$DW$88, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$88, DW_AT_frame_base[DW_OP_breg31 56]
	.dwattr $C$DW$88, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 89,column 1,is_stmt,address _CalcWeight
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colorIndex")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_colorIndex")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg4]
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg20]
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rect")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_rect")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg6]
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CalWeight")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_CalWeight")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg22]

;******************************************************************************
;* FUNCTION NAME: CalcWeight                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,  *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,  *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 24 Auto + 32 Save = 56 byte                 *
;******************************************************************************
_CalcWeight:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 24

           STW     .D2T1   A11,*SP--(8)      ; |89| 
||         MV      .L1X    B4,A3             ; |89| 
||         MV      .L2X    A4,B4             ; |89| 
||         MV      .S1     A6,A4             ; |89| 

           STDW    .D2T2   B11:B10,*SP--     ; |89| 
||         MV      .L2X    A6,B5             ; |89| 

           STDW    .D2T1   A13:A12,*SP--     ; |89| 
           STW     .D2T1   A10,*SP--(8)      ; |89| 
           SUB     .D2     SP,24,SP          ; |89| 

           STB     .D2T2   B4,*+SP(4)        ; |89| 
||         ZERO    .L2     B4                ; |98| 

           STW     .D2T1   A3,*+SP(8)        ; |89| 

           STW     .D2T2   B6,*+SP(16)       ; |89| 
||         MV      .L2X    A6,B6             ; |89| 

           STW     .D2T1   A6,*+SP(12)       ; |89| 

           LDHU    .D2T2   *+B5(4),B10       ; |93| 
||         LDHU    .D1T1   *+A4(2),A11       ; |91| 

           LDHU    .D2T2   *+B6(6),B11       ; |92| 
           STH     .D2T2   B4,*+SP(22)       ; |98| 
           LDHU    .D2T2   *+SP(22),B4       ; |98| 
           MV      .L1X    B3,A13            ; |89| 
           ZERO    .L2     B5                ; |94| 
           STH     .D2T2   B5,*+SP(20)       ; |94| 
           NOP             1

           CMPLTU  .L2     B4,B11,B0         ; |98| 
||         LDW     .D2T2   *+SP(12),B4       ; |100| 

   [!B0]   BNOP    .S1     $C$L17,3          ; |98| 
|| [ B0]   ZERO    .L2     B31               ; |101| 
|| [ B0]   LDW     .D2T1   *+SP(8),A5        ; |103| 

   [ B0]   LDHU    .D2T1   *B4,A10           ; |100| 
   [ B0]   STH     .D2T2   B31,*+SP(24)      ; |101| 
           ; BRANCHCC OCCURS {$C$L17}        ; |98| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L14
;** --------------------------------------------------------------------------*
$C$L14:    
$C$DW$L$_CalcWeight$2$B:
	.dwpsn	file "dspMeanshift.c",line 99,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 12
           LDHU    .D2T2   *+SP(24),B4       ; |101| 
           NOP             4

           CMPLTU  .L2     B4,B10,B0         ; |101| 
||         LDHU    .D2T2   *+SP(22),B4       ; |104| 

   [!B0]   B       .S2     $C$L16            ; |101| 
|| [ B0]   MV      .L1     A11,A3            ; |103| 
|| [ B0]   LDHU    .D2T2   *+SP(24),B5       ; |104| 
|| [ B0]   MVK     .S1     86,A31            ; |104| 

   [ B0]   SHL     .S1     A3,9,A4           ; |103| 
   [ B0]   SHL     .S1     A3,7,A3           ; |103| 
   [ B0]   ADD     .L1     A3,A4,A3          ; |103| 

   [ B0]   ADD     .L1     A10,A3,A3         ; |103| 
||         MPYUS   .M1X    B4,A31,A4         ; |104| 

   [ B0]   LDBU    .D1T1   *+A3[A5],A3       ; |103| 
           ; BRANCHCC OCCURS {$C$L16}        ; |101| 
$C$DW$L$_CalcWeight$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_CalcWeight$3$B:
	.dwpsn	file "dspMeanshift.c",line 102,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 13
           LDW     .D2T1   *+SP(16),A5       ; |104| 
           ADD     .L1X    B5,A4,A30         ; |104| 
           NOP             2

           SHRU    .S2X    A3,4,B4           ; |103| 
||         MVKL    .S1     __FtoIQN,A3       ; |104| 

           MVKH    .S1     __FtoIQN,A3       ; |104| 
           STH     .D2T2   B4,*+SP(20)       ; |103| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("__FtoIQN")
	.dwattr $C$DW$93, DW_AT_TI_call
           CALL    .S2X    A3                ; |104| 
           LDW     .D1T1   *+A5[A30],A4      ; |104| 
           MVK     .L2     0xb,B4            ; |104| 
           ADDKPC  .S2     $C$RL12,B3,2      ; |104| 
$C$RL12:   ; CALL OCCURS {__FtoIQN} {0}      ; |104| 
$C$DW$L$_CalcWeight$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_CalcWeight$4$B:
;          EXCLUSIVE CPU CYCLES: 38
           LDBU    .D2T2   *+SP(4),B4        ; |104| 

           LDHU    .D2T2   *+SP(20),B6       ; |104| 
||         MVKL    .S2     _target_model,B8

           LDHU    .D2T2   *+SP(20),B5       ; |104| 
||         MVKL    .S2     _target_candidate,B7

           MVKH    .S2     _target_model,B8
||         MVKL    .S1     __IQNdiv,A3       ; |104| 

           MVKH    .S1     __IQNdiv,A3       ; |104| 
||         MVKH    .S2     _target_candidate,B7

           SHL     .S2     B4,6,B4           ; |104| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("__IQNdiv")
	.dwattr $C$DW$94, DW_AT_TI_call

           CALL    .S2X    A3                ; |104| 
||         LDW     .D2T2   *+B7[B6],B4       ; |104| 
||         ADD     .L2     B8,B4,B6          ; |104| 

           LDW     .D2T1   *+B6[B5],A4       ; |104| 
||         MV      .L1     A4,A12            ; |104| 

           NOP             3

           ADDKPC  .S2     $C$RL13,B3,0      ; |104| 
||         MVK     .L1     0xb,A6            ; |104| 

$C$RL13:   ; CALL OCCURS {__IQNdiv} {0}      ; |104| 
           MVKL    .S1     __IQNsqrt,A3      ; |104| 
           MVKH    .S1     __IQNsqrt,A3      ; |104| 
           NOP             1
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("__IQNsqrt")
	.dwattr $C$DW$95, DW_AT_TI_call
           CALL    .S2X    A3                ; |104| 
           NOP             4

           ADDKPC  .S2     $C$RL14,B3,0      ; |104| 
||         MVK     .L2     0xb,B4            ; |104| 

$C$RL14:   ; CALL OCCURS {__IQNsqrt} {0}     ; |104| 
           MVKL    .S2     __IQNmpy,B5       ; |104| 
           MVKH    .S2     __IQNmpy,B5       ; |104| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("__IQNmpy")
	.dwattr $C$DW$96, DW_AT_TI_call
           CALL    .S2     B5                ; |104| 
           NOP             4

           ADDKPC  .S2     $C$RL15,B3,0      ; |104| 
||         MV      .L1     A12,A4            ; |104| 
||         MVK     .S1     0xb,A6            ; |104| 
||         MV      .L2X    A4,B4             ; |104| 

$C$RL15:   ; CALL OCCURS {__IQNmpy} {0}      ; |104| 
           MVKL    .S1     __IQNtoF,A3       ; |104| 
           MVKH    .S1     __IQNtoF,A3       ; |104| 
           NOP             1
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("__IQNtoF")
	.dwattr $C$DW$97, DW_AT_TI_call
           CALL    .S2X    A3                ; |104| 
           NOP             4

           ADDKPC  .S2     $C$RL16,B3,0      ; |104| 
||         MV      .L2X    A6,B4             ; |104| 

$C$RL16:   ; CALL OCCURS {__IQNtoF} {0}      ; |104| 
$C$DW$L$_CalcWeight$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_CalcWeight$5$B:
;          EXCLUSIVE CPU CYCLES: 28
           LDHU    .D2T2   *+SP(22),B4       ; |104| 
           LDHU    .D2T2   *+SP(24),B5       ; |104| 
           LDW     .D2T1   *+SP(16),A5       ; |104| 
           MVK     .S1     86,A3             ; |104| 
           ADD     .L1     1,A10,A31         ; |105| 
           MPYUS   .M1X    B4,A3,A3          ; |104| 
           EXTU    .S1     A31,16,16,A10     ; |105| 
           ADD     .L1X    B5,A3,A3          ; |104| 
           STW     .D1T1   A4,*+A5[A3]       ; |104| 
           LDHU    .D2T2   *+SP(24),B4       ; |101| 
           LDW     .D2T1   *+SP(8),A5        ; |103| 
           NOP             3
           ADD     .L2     1,B4,B4           ; |101| 
           STH     .D2T2   B4,*+SP(24)       ; |101| 
           LDHU    .D2T2   *+SP(24),B4       ; |101| 
           NOP             4
           CMPLTU  .L2     B4,B10,B0         ; |101| 

   [ B0]   B       .S2     $C$L15            ; |101| 
|| [ B0]   LDHU    .D2T2   *+SP(22),B4       ; |104| 
|| [ B0]   MV      .L1     A11,A3            ; |103| 
|| [ B0]   MVK     .S1     86,A31            ; |104| 

   [ B0]   SHL     .S1     A3,9,A4           ; |103| 
|| [ B0]   LDHU    .D2T2   *+SP(24),B5       ; |104| 

   [ B0]   SHL     .S1     A3,7,A3           ; |103| 
   [ B0]   ADD     .L1     A3,A4,A3          ; |103| 
   [ B0]   ADD     .L1     A10,A3,A3         ; |103| 
	.dwpsn	file "dspMeanshift.c",line 106,column 0,is_stmt

   [ B0]   MPYUS   .M1X    B4,A31,A4         ; |104| 
|| [ B0]   LDBU    .D1T1   *+A3[A5],A3       ; |103| 

           ; BRANCHCC OCCURS {$C$L15}        ; |101| 
$C$DW$L$_CalcWeight$5$E:
;** --------------------------------------------------------------------------*
$C$L16:    
$C$DW$L$_CalcWeight$6$B:
;          EXCLUSIVE CPU CYCLES: 19
           LDHU    .D2T2   *+SP(22),B4       ; |98| 
           ADD     .L1     1,A11,A3          ; |107| 
           EXTU    .S1     A3,16,16,A11      ; |107| 
           NOP             2
           ADD     .L2     1,B4,B4           ; |98| 
           STH     .D2T2   B4,*+SP(22)       ; |98| 
           LDHU    .D2T2   *+SP(22),B4       ; |98| 
           NOP             4

           CMPLTU  .L2     B4,B11,B0         ; |98| 
||         LDW     .D2T2   *+SP(12),B4       ; |100| 

   [ B0]   BNOP    .S1     $C$L14,3          ; |98| 
|| [ B0]   ZERO    .L2     B31               ; |101| 
|| [ B0]   LDW     .D2T1   *+SP(8),A5        ; |103| 

   [ B0]   LDHU    .D2T1   *B4,A10           ; |100| 
	.dwpsn	file "dspMeanshift.c",line 108,column 0,is_stmt
   [ B0]   STH     .D2T2   B31,*+SP(24)      ; |101| 
           ; BRANCHCC OCCURS {$C$L14}        ; |98| 
$C$DW$L$_CalcWeight$6$E:
;** --------------------------------------------------------------------------*
$C$L17:    
;          EXCLUSIVE CPU CYCLES: 9
           ADDK    .S2     24,SP             ; |109| 
           LDW     .D2T1   *++SP(8),A10      ; |109| 

           MV      .L2X    A13,B3            ; |109| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |109| 

$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x04)
	.dwattr $C$DW$98, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B11:B10     ; |109| 
||         RET     .S2     B3                ; |109| 

           LDW     .D2T1   *++SP(8),A11      ; |109| 
	.dwpsn	file "dspMeanshift.c",line 109,column 2,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |109| 

$C$DW$99	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$99, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L14:1:1496942307")
	.dwattr $C$DW$99, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x62)
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x6c)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_CalcWeight$2$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_CalcWeight$2$E)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_CalcWeight$6$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_CalcWeight$6$E)

$C$DW$102	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$102, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L15:2:1496942307")
	.dwattr $C$DW$102, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x65)
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x6a)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_CalcWeight$3$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_CalcWeight$3$E)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_CalcWeight$4$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_CalcWeight$4$E)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_CalcWeight$5$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_CalcWeight$5$E)
	.dwendtag $C$DW$102

	.dwendtag $C$DW$99

	.dwattr $C$DW$88, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x02)
	.dwendtag $C$DW$88

	.sect	".text"
	.clink
	.global	_initTarget

$C$DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("initTarget")
	.dwattr $C$DW$106, DW_AT_low_pc(_initTarget)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_initTarget")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$106, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$106, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$106, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 112,column 1,is_stmt,address _initTarget
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("matIndex")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_matIndex")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: initTarget                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,B0,B4,B5,B6,B7,SP,B31                       *
;*   Regs Used         : A0,A3,A4,B0,B3,B4,B5,B6,B7,SP,B31                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
_initTarget:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
           SUB     .L2     SP,8,SP           ; |112| 
           STB     .D2T1   A4,*+SP(4)        ; |112| 
           LDBU    .D2T2   *+SP(4),B4        ; |116| 
           MVK     .S2     16,B6             ; |126| 
           ZERO    .L1     A3                ; |118| 
           ZERO    .L1     A4                ; |118| 
           NOP             1
           CMPEQ   .L2     B4,1,B0           ; |116| 

   [ B0]   STH     .D2T1   A3,*+SP(6)        ; |118| 
|| [!B0]   B       .S1     $C$L21            ; |116| 

           LDHU    .D2T2   *+SP(6),B5        ; |118| 
   [!B0]   STH     .D2T1   A4,*+SP(8)        ; |126| 
   [!B0]   LDHU    .D2T2   *+SP(8),B5        ; |126| 
           MVKL    .S2     0x1388000,B4
           MVKH    .S2     0x1388000,B4
           ; BRANCHCC OCCURS {$C$L21}        ; |116| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           CMPLTU  .L2     B5,3,B0           ; |118| 
||         MV      .S2X    A4,B5

   [ B0]   STH     .D2T2   B5,*+SP(8)        ; |119| 
|| [!B0]   B       .S1     $C$L23            ; |118| 

           LDHU    .D2T2   *+SP(8),B5        ; |119| 
   [ B0]   MVK     .S2     16,B6             ; |119| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L23}        ; |118| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L18:    
$C$DW$L$_initTarget$3$B:
	.dwpsn	file "dspMeanshift.c",line 119,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7
           CMPLTU  .L2     B5,B6,B0          ; |119| 

   [!B0]   BNOP    .S1     $C$L20,4          ; |119| 
|| [ B0]   LDHU    .D2T2   *+SP(6),B6        ; |121| 

   [ B0]   LDHU    .D2T2   *+SP(8),B5        ; |121| 
           ; BRANCHCC OCCURS {$C$L20}        ; |119| 
$C$DW$L$_initTarget$3$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L19
;** --------------------------------------------------------------------------*
$C$L19:    
$C$DW$L$_initTarget$4$B:
	.dwpsn	file "dspMeanshift.c",line 120,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 24
           MVKL    .S2     _target_model,B7
           MVKH    .S2     _target_model,B7
           SHL     .S2     B6,6,B6           ; |121| 
           ADD     .L2     B7,B6,B6          ; |121| 
           STW     .D2T2   B4,*+B6[B5]       ; |121| 
           LDHU    .D2T2   *+SP(8),B5        ; |119| 
           MVK     .S1     16,A3             ; |119| 
           NOP             3
           ADD     .L2     1,B5,B5           ; |119| 
           STH     .D2T2   B5,*+SP(8)        ; |119| 
           LDHU    .D2T2   *+SP(8),B5        ; |119| 
           NOP             4
           CMPLTU  .L1X    B5,A3,A0          ; |119| 

   [ A0]   BNOP    .S1     $C$L19,3          ; |119| 
|| [ A0]   LDHU    .D2T2   *+SP(6),B6        ; |121| 

   [ A0]   LDHU    .D2T2   *+SP(8),B5        ; |121| 
	.dwpsn	file "dspMeanshift.c",line 122,column 0,is_stmt
           NOP             1
           ; BRANCHCC OCCURS {$C$L19}        ; |119| 
$C$DW$L$_initTarget$4$E:
;** --------------------------------------------------------------------------*
$C$L20:    
$C$DW$L$_initTarget$5$B:
;          EXCLUSIVE CPU CYCLES: 19
           LDHU    .D2T2   *+SP(6),B5        ; |118| 
           NOP             4
           ADD     .L2     1,B5,B5           ; |118| 
           STH     .D2T2   B5,*+SP(6)        ; |118| 
           LDHU    .D2T2   *+SP(6),B5        ; |118| 
           NOP             4

           CMPLTU  .L2     B5,3,B0           ; |118| 
||         MV      .S2X    A4,B5

   [ B0]   B       .S1     $C$L18            ; |118| 
|| [ B0]   STH     .D2T2   B5,*+SP(8)        ; |119| 
|| [ B0]   MVK     .S2     16,B6             ; |119| 

$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

   [!B0]   RETNOP  .S2     B3,4              ; |131| 
||         LDHU    .D2T2   *+SP(8),B5        ; |119| 
|| [!B0]   ADD     .L2     8,SP,SP           ; |131| 

           ; BRANCHCC OCCURS {$C$L18}        ; |118| 
$C$DW$L$_initTarget$5$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
           ; BRANCH OCCURS {B3}              ; |131| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L21:    
;          EXCLUSIVE CPU CYCLES: 9
           NOP             2
           CMPLTU  .L2     B5,B6,B0          ; |126| 

   [!B0]   BNOP    .S1     $C$L23,5          ; |126| 
|| [ B0]   LDHU    .D2T2   *+SP(8),B5        ; |128| 

           ; BRANCHCC OCCURS {$C$L23}        ; |126| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L22
;** --------------------------------------------------------------------------*
$C$L22:    
$C$DW$L$_initTarget$8$B:
	.dwpsn	file "dspMeanshift.c",line 127,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 22
           MVKL    .S2     _target_candidate,B6
           MVKH    .S2     _target_candidate,B6
           STW     .D2T2   B4,*+B6[B5]       ; |128| 
           LDHU    .D2T2   *+SP(8),B5        ; |126| 
           MVK     .S2     16,B31            ; |126| 
           NOP             3
           ADD     .L2     1,B5,B5           ; |126| 
           STH     .D2T2   B5,*+SP(8)        ; |126| 
           LDHU    .D2T2   *+SP(8),B5        ; |126| 
           NOP             4
           CMPLTU  .L2     B5,B31,B0         ; |126| 
	.dwpsn	file "dspMeanshift.c",line 129,column 0,is_stmt

   [ B0]   BNOP    .S1     $C$L22,5          ; |126| 
|| [ B0]   LDHU    .D2T2   *+SP(8),B5        ; |128| 

           ; BRANCHCC OCCURS {$C$L22}        ; |126| 
$C$DW$L$_initTarget$8$E:
;** --------------------------------------------------------------------------*
$C$L23:    
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_return
           RETNOP  .S2     B3,4              ; |131| 
	.dwpsn	file "dspMeanshift.c",line 131,column 1,is_stmt
           ADD     .L2     8,SP,SP           ; |131| 
           ; BRANCH OCCURS {B3}              ; |131| 

$C$DW$110	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$110, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L22:1:1496942307")
	.dwattr $C$DW$110, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$110, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x81)
$C$DW$111	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$111, DW_AT_low_pc($C$DW$L$_initTarget$8$B)
	.dwattr $C$DW$111, DW_AT_high_pc($C$DW$L$_initTarget$8$E)
	.dwendtag $C$DW$110


$C$DW$112	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$112, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L18:1:1496942307")
	.dwattr $C$DW$112, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$112, DW_AT_TI_begin_line(0x76)
	.dwattr $C$DW$112, DW_AT_TI_end_line(0x7a)
$C$DW$113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$113, DW_AT_low_pc($C$DW$L$_initTarget$3$B)
	.dwattr $C$DW$113, DW_AT_high_pc($C$DW$L$_initTarget$3$E)
$C$DW$114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$114, DW_AT_low_pc($C$DW$L$_initTarget$5$B)
	.dwattr $C$DW$114, DW_AT_high_pc($C$DW$L$_initTarget$5$E)

$C$DW$115	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$115, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L19:2:1496942307")
	.dwattr $C$DW$115, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0x77)
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x7a)
$C$DW$116	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$116, DW_AT_low_pc($C$DW$L$_initTarget$4$B)
	.dwattr $C$DW$116, DW_AT_high_pc($C$DW$L$_initTarget$4$E)
	.dwendtag $C$DW$115

	.dwendtag $C$DW$112

	.dwattr $C$DW$106, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$106

	.sect	".text"
	.clink
	.global	_initWeight

$C$DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("initWeight")
	.dwattr $C$DW$117, DW_AT_low_pc(_initWeight)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_initWeight")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0x85)
	.dwattr $C$DW$117, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$117, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$117, DW_AT_TI_skeletal
	.dwpsn	file "dspMeanshift.c",line 134,column 1,is_stmt,address _initWeight
$C$DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CalWeight")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_CalWeight")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: initWeight                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A3,B0,B4,B5,B6,B7,B8,SP                           *
;*   Regs Used         : A0,A3,A4,B0,B3,B4,B5,B6,B7,B8,SP                     *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
_initWeight:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14

           SUB     .L2     SP,8,SP           ; |134| 
||         ZERO    .S2     B4                ; |137| 

           STH     .D2T2   B4,*+SP(8)        ; |137| 
           LDHU    .D2T2   *+SP(8),B4        ; |137| 
           ZERO    .L1     A3
           MVK     .S2     58,B5             ; |137| 
           SET     .S1     A3,0x17,0x1d,A3
           STW     .D2T1   A4,*+SP(4)        ; |134| 

           CMPLTU  .L2     B4,B5,B0          ; |137| 
||         ZERO    .S2     B5                ; |139| 

   [ B0]   STH     .D2T2   B5,*+SP(10)       ; |139| 
|| [!B0]   B       .S1     $C$L27            ; |137| 

           LDHU    .D2T2   *+SP(10),B5       ; |139| 
           MV      .L2X    A3,B4             ; |136| 
   [ B0]   MVK     .S2     86,B6             ; |139| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L27}        ; |137| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L24:    
$C$DW$L$_initWeight$2$B:
	.dwpsn	file "dspMeanshift.c",line 138,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7
           CMPLTU  .L2     B5,B6,B0          ; |139| 

   [!B0]   BNOP    .S1     $C$L26,3          ; |139| 
|| [ B0]   LDHU    .D2T2   *+SP(8),B5        ; |141| 

   [ B0]   LDHU    .D2T2   *+SP(10),B7       ; |141| 
   [ B0]   LDW     .D2T2   *+SP(4),B6        ; |141| 
           ; BRANCHCC OCCURS {$C$L26}        ; |139| 
$C$DW$L$_initWeight$2$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L25
;** --------------------------------------------------------------------------*
$C$L25:    
$C$DW$L$_initWeight$3$B:
	.dwpsn	file "dspMeanshift.c",line 140,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 24
           MVK     .S2     86,B8             ; |141| 
           MPYUS   .M2     B5,B8,B5          ; |141| 
           MV      .L1X    B8,A3             ; |139| 
           ADD     .L2     B7,B5,B5          ; |141| 
           STW     .D2T2   B4,*+B6[B5]       ; |141| 
           LDHU    .D2T2   *+SP(10),B5       ; |139| 
           NOP             4
           ADD     .L2     1,B5,B5           ; |139| 
           STH     .D2T2   B5,*+SP(10)       ; |139| 
           LDHU    .D2T2   *+SP(10),B5       ; |139| 
           NOP             4
           CMPLTU  .L1X    B5,A3,A0          ; |139| 

   [ A0]   BNOP    .S1     $C$L25,3          ; |139| 
|| [ A0]   LDHU    .D2T2   *+SP(8),B5        ; |141| 

   [ A0]   LDHU    .D2T2   *+SP(10),B7       ; |141| 
	.dwpsn	file "dspMeanshift.c",line 142,column 0,is_stmt
   [ A0]   LDW     .D2T2   *+SP(4),B6        ; |141| 
           ; BRANCHCC OCCURS {$C$L25}        ; |139| 
$C$DW$L$_initWeight$3$E:
;** --------------------------------------------------------------------------*
$C$L26:    
$C$DW$L$_initWeight$4$B:
;          EXCLUSIVE CPU CYCLES: 19
           LDHU    .D2T2   *+SP(8),B5        ; |137| 
           MVK     .S2     58,B6             ; |137| 
           NOP             3
           ADD     .L2     1,B5,B5           ; |137| 
           STH     .D2T2   B5,*+SP(8)        ; |137| 
           LDHU    .D2T2   *+SP(8),B5        ; |137| 
           NOP             4

           CMPLTU  .L2     B5,B6,B0          ; |137| 
||         ZERO    .S2     B5                ; |139| 

   [ B0]   STH     .D2T2   B5,*+SP(10)       ; |139| 
|| [ B0]   B       .S1     $C$L24            ; |137| 

           LDHU    .D2T2   *+SP(10),B5       ; |139| 
   [ B0]   MVK     .S2     86,B6             ; |139| 
	.dwpsn	file "dspMeanshift.c",line 143,column 0,is_stmt
           NOP             3
           ; BRANCHCC OCCURS {$C$L24}        ; |137| 
$C$DW$L$_initWeight$4$E:
;** --------------------------------------------------------------------------*
$C$L27:    
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return
           RETNOP  .S2     B3,4              ; |144| 
	.dwpsn	file "dspMeanshift.c",line 144,column 1,is_stmt
           ADD     .L2     8,SP,SP           ; |144| 
           ; BRANCH OCCURS {B3}              ; |144| 

$C$DW$120	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$120, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L24:1:1496942307")
	.dwattr $C$DW$120, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x89)
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x8f)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_initWeight$2$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_initWeight$2$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_initWeight$4$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_initWeight$4$E)

$C$DW$123	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$123, DW_AT_name("/home/constantinos/embLab/handing/dsp/dspMeanshift.asm:$C$L25:2:1496942307")
	.dwattr $C$DW$123, DW_AT_TI_begin_file("dspMeanshift.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x8b)
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x8e)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_initWeight$3$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_initWeight$3$E)
	.dwendtag $C$DW$123

	.dwendtag $C$DW$120

	.dwattr $C$DW$117, DW_AT_TI_end_file("dspMeanshift.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x90)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$117

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
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("I32_IQ")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("_iq18")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x158)
$C$DW$125	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$125, DW_AT_upper_bound(0x55)
	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x4df0)
$C$DW$126	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$126, DW_AT_upper_bound(0x39)
$C$DW$127	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$127, DW_AT_upper_bound(0x55)
	.dwendtag $C$DW$T$43

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("_iq11")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x40)
$C$DW$128	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$128, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0xc0)
$C$DW$129	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$129, DW_AT_upper_bound(0x02)
$C$DW$130	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$130, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$48

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Uword32")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("U32_IQ")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
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
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("I64_IQ")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
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
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("Fword32")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
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

$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg0]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg1]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg2]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg3]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg4]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg5]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg6]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg7]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg8]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg9]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg10]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg11]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg12]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg13]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg14]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg15]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg16]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg17]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg18]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg19]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg20]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg21]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg22]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg23]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg24]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg25]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg26]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg27]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg28]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg29]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg30]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg31]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x20]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x21]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x22]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x23]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x24]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x25]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x26]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x27]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x28]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x29]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x30]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x31]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x32]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x33]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x34]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x35]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x36]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x37]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x38]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x39]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x40]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x41]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x42]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x43]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x44]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x45]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x46]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x47]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x48]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x49]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x50]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x51]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x52]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x53]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x54]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x55]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x56]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x57]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x58]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x59]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x60]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x61]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x62]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x63]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x64]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x65]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x66]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x67]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x68]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x69]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x70]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x71]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x72]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x73]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x74]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x75]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x76]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x77]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x78]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x79]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

