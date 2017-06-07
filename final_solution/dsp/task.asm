;******************************************************************************
;* TMS320C6x C/C++ Codegen                                       Unix v6.1.17 *
;* Date/Time created: Wed Jun  7 13:50:47 2017                                *
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
	.dwattr $C$DW$CU, DW_AT_name("task.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen Unix v6.1.17 Copyright (c) 1996-2010 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/constantinos/embLab/merge/dsp")
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	1,32
	.field  	_function+0,32
	.field  	1,8			; _function @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_count$1+0,32
	.field  	0,32			; _count$1 @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$40)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_free")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_MEM_free")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$42)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$43)
	.dwendtag $C$DW$5


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_valloc")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_MEM_valloc")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$22)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$43)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$43)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$44)
	.dwendtag $C$DW$9


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_pend")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_SEM_pend")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$54)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$90)
	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_post")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_SEM_post")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$17


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("_SEM_dopost")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("__SEM_dopost")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$19


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_register")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_NOTIFY_register")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$37)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$37)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$37)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$60)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$42)
	.dwendtag $C$DW$21


$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_unregister")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_NOTIFY_unregister")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$37)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$37)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$37)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$60)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$27


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_notify")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_NOTIFY_notify")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$37)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$37)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$37)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$33


$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_inv")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_BCACHE_inv")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$42)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$43)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$61)
	.dwendtag $C$DW$38


$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_wb")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_BCACHE_wb")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$42)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$43)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$61)
	.dwendtag $C$DW$42


$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("initTarget")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_initTarget")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$46


$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("initWeight")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_initWeight")
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$48


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_Epanechnikov_kernel")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external

$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_pdf_representation_target")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_HC_pdf_representation_target")
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$64)
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$72)
	.dwendtag $C$DW$51


$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("pdf_representation")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_pdf_representation")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$72)
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$54


$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcWeight")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_CalcWeight")
	.dwattr $C$DW$57, DW_AT_declaration
	.dwattr $C$DW$57, DW_AT_external
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$64)
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$72)
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$35)
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$57


$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("retCandidate")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_retCandidate")
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$62

$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("DDR2")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_DDR2")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$64, DW_AT_declaration
	.dwattr $C$DW$64, DW_AT_external
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("MPCSXFER_BufferSize")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_MPCSXFER_BufferSize")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_external
	.global	_dspColor
_dspColor:	.usect	".far",4,4
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("dspColor")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_dspColor")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr _dspColor]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$66, DW_AT_external
	.global	_dspResFrame
_dspResFrame:	.usect	".far",4,4
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("dspResFrame")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_dspResFrame")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr _dspResFrame]
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$67, DW_AT_external
	.global	_dspRectangle
_dspRectangle:	.usect	".far",4,4
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("dspRectangle")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_dspRectangle")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr _dspRectangle]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$68, DW_AT_external
	.global	_function
_function:	.usect	".far",1,1
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("function")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_function")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr _function]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$69, DW_AT_external
_count$1:	.usect	".far",4,4
;	/opt/bbToolChain/usr/local/share/c6000/bin/opt6x /tmp/09818jEC28i /tmp/09818NoFG6A 
	.sect	".text"
	.clink
	.global	_mult_dsp

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("mult_dsp")
	.dwattr $C$DW$70, DW_AT_low_pc(_mult_dsp)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_mult_dsp")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$70, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$70, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 130,column 1,is_stmt,address _mult_dsp

;******************************************************************************
;* FUNCTION NAME: mult_dsp                                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,B0,B2,B4,B5,B31              *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,B0,B2,B3,B4,B5,B31           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_mult_dsp:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 13
           MVKL    .S1     _MPCSXFER_BufferSize,A3
           MVKH    .S1     _MPCSXFER_BufferSize,A3
           LDW     .D1T1   *A3,A0            ; |134| 
           MVKL    .S2     _dspColor,B4
           MVKH    .S2     _dspColor,B4
           ZERO    .L1     A3                ; |134| 
           NOP             1

           MV      .L1     A0,A1             ; guard predicate rewrite
|| [!A0]   B       .S2     $C$L2             ; |134| 
|| [ A0]   MVKL    .S1     _dspResFrame,A5
|| [ A0]   AND     .D1     1,A3,A0           ; |136| 

   [ A1]   LDW     .D2T1   *B4,A7            ; |136| 
   [ A1]   MVKH    .S1     _dspResFrame,A5
   [ A1]   LDW     .D1T1   *A5,A5            ; |136| 
   [ A1]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ A1]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_mult_dsp$2$B:
	.dwpsn	file "task.c",line 135,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
           NOP             3
   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 

   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
|| [ A0]   ADD     .S1     4,A7,A7           ; |137| 

   [!A0]   ADD     .L1     2,A7,A7           ; |136| 
|| [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 

   [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$2$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$3$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$4$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$5$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$6$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$7$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$8$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$8$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$9$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$10$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$10$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$11$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,2           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4
|| [ B0]   AND     .L1     1,A3,A0           ; |136| 

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$12$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A8       ; |137| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A7       ; |137| 
           NOP             3
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 

   [ A0]   ADD     .L1     A7,A8,A7          ; |137| 
|| [!A0]   ADD     .S1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$13$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$14$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$15$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$16$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$17$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$17$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$18$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$19$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$19$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$20$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$20$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$21$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$22$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$22$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$23$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$23$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$24$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$25$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$26$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$26$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$27$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$28$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,2           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4
|| [ B0]   AND     .L1     1,A3,A0           ; |136| 

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$28$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$29$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A8       ; |137| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A7       ; |137| 
           NOP             3
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 

   [ A0]   ADD     .L1     A7,A8,A7          ; |137| 
|| [!A0]   ADD     .S1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$29$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$30$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!A0]   ADD     .L1     2,A7,A7           ; |136| 

   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ A0]   ADD     .L1     4,A7,A7           ; |137| 
   [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   BNOP    .S1     $C$L2,1           ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$30$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$31$B:
;          EXCLUSIVE CPU CYCLES: 23
   [!A0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
   [!A0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
           NOP             3
   [ A0]   ADD     .L1     A8,A7,A7          ; |137| 

   [!A0]   ADD     .L1     A7,A8,A7          ; |136| 
|| [ A0]   ADD     .S1     4,A7,A7           ; |137| 

   [!A0]   ADD     .L1     2,A7,A7           ; |136| 
|| [ A0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 

   [!A0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 
           LDW     .D2T2   *B31,B4           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

           CMPLTU  .L2X    A3,B4,B0          ; |134| 
||         MVKL    .S2     _dspColor,B4

   [!B0]   B       .S1     $C$L2             ; |134| 
|| [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
||         MVKH    .S2     _dspColor,B4
||         MV      .L2     B0,B2             ; guard predicate rewrite

   [ B0]   AND     .L2X    1,A3,B0           ; |136| 
|| [ B0]   LDW     .D2T1   *B4,A7            ; |136| 

   [ B2]   MVKL    .S2     _MPCSXFER_BufferSize,B31
   [ B2]   MVKH    .S2     _MPCSXFER_BufferSize,B31
   [ B2]   MVKL    .S2     _dspColor,B4
   [ B2]   MVKH    .S2     _dspColor,B4
           ; BRANCHCC OCCURS {$C$L2}         ; |134| 
$C$DW$L$_mult_dsp$31$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_mult_dsp$32$B:
;          EXCLUSIVE CPU CYCLES: 52
   [!B0]   LDBU    .D1T1   *+A3[A5],A8       ; |136| 
   [!B0]   LDBU    .D1T1   *+A3[A7],A7       ; |136| 
   [ B0]   LDBU    .D1T1   *+A3[A7],A8       ; |137| 
   [ B0]   LDBU    .D1T1   *+A3[A5],A7       ; |137| 
           NOP             2
   [!B0]   ADD     .L1     A7,A8,A7          ; |136| 
   [!B0]   ADD     .L1     2,A7,A7           ; |136| 

   [ B0]   ADD     .L1     A8,A7,A7          ; |137| 
|| [!B0]   STB     .D1T1   A7,*+A3[A5]       ; |136| 

   [ B0]   ADD     .L1     4,A7,A7           ; |137| 
   [ B0]   STB     .D1T1   A7,*+A3[A5]       ; |137| 
           LDW     .D2T2   *B31,B5           ; |134| 
           MVKL    .S1     _dspResFrame,A5
           ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1
           CMPLTU  .L2X    A3,B5,B0          ; |134| 
   [ B0]   LDW     .D1T1   *A5,A4            ; |136| 
   [ B0]   LDW     .D2T1   *B4,A6            ; |136| 
   [!B0]   MVK     .L1     0x1,A1            ; |136| 
   [ B0]   AND     .L1     1,A3,A1           ; |136| 
           MV      .L1     A1,A0             ; |136| 
   [!A1]   LDBU    .D1T1   *+A3[A4],A5       ; |136| 
   [!A1]   LDBU    .D1T1   *+A3[A6],A7       ; |136| 
   [!B0]   ZERO    .L1     A0                ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B4
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B4
           NOP             1
   [!A1]   ADD     .L1     A7,A5,A5          ; |136| 
   [!A1]   ADD     .L1     2,A5,A5           ; |136| 
   [!A1]   STB     .D1T1   A5,*+A3[A4]       ; |136| 
   [ A0]   LDBU    .D1T1   *+A3[A6],A7       ; |137| 
   [ A0]   LDBU    .D1T1   *+A3[A4],A5       ; |137| 
           NOP             4
   [ A0]   ADD     .L1     A7,A5,A5          ; |137| 
   [ A0]   ADD     .L1     4,A5,A5           ; |137| 
   [ A0]   STB     .D1T1   A5,*+A3[A4]       ; |137| 
   [ B0]   LDW     .D2T2   *B4,B4            ; |134| 
           MVKL    .S1     _dspResFrame,A5
   [ B0]   ADD     .L1     1,A3,A3           ; |134| 
           MVKH    .S1     _dspResFrame,A5
           NOP             1

   [ B0]   CMPLTU  .L2X    A3,B4,B0          ; |134| 
|| [!B0]   ZERO    .D2     B0                ; |134| 
||         MVKL    .S2     _dspColor,B4

   [ B0]   B       .S1     $C$L1             ; |134| 
||         MVKH    .S2     _dspColor,B4

   [ B0]   LDW     .D2T1   *B4,A7            ; |136| 
   [ B0]   AND     .L1     1,A3,A0           ; |136| 
   [ B0]   LDW     .D1T1   *A5,A5            ; |136| 
   [ B0]   MVKL    .S2     _MPCSXFER_BufferSize,B31
	.dwpsn	file "task.c",line 138,column 0,is_stmt
   [ B0]   MVKH    .S2     _MPCSXFER_BufferSize,B31
           ; BRANCHCC OCCURS {$C$L1}         ; |134| 
$C$DW$L$_mult_dsp$32$E:
;** --------------------------------------------------------------------------*
$C$L2:    
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "task.c",line 139,column 1,is_stmt
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |139| 
           ; BRANCH OCCURS {B3}              ; |139| 

$C$DW$72	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$72, DW_AT_name("/home/constantinos/embLab/merge/dsp/task.asm:$C$L1:1:1496836248")
	.dwattr $C$DW$72, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x86)
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x8a)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_mult_dsp$2$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_mult_dsp$2$E)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_mult_dsp$3$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_mult_dsp$3$E)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_mult_dsp$4$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_mult_dsp$4$E)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_mult_dsp$5$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_mult_dsp$5$E)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_mult_dsp$6$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_mult_dsp$6$E)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_mult_dsp$7$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_mult_dsp$7$E)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_mult_dsp$8$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_mult_dsp$8$E)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_mult_dsp$9$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_mult_dsp$9$E)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_mult_dsp$10$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_mult_dsp$10$E)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_mult_dsp$11$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_mult_dsp$11$E)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_mult_dsp$12$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_mult_dsp$12$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_mult_dsp$13$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_mult_dsp$13$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_mult_dsp$14$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_mult_dsp$14$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_mult_dsp$15$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_mult_dsp$15$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_mult_dsp$16$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_mult_dsp$16$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_mult_dsp$17$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_mult_dsp$17$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_mult_dsp$18$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_mult_dsp$18$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_mult_dsp$19$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_mult_dsp$19$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_mult_dsp$20$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_mult_dsp$20$E)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_mult_dsp$21$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_mult_dsp$21$E)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_mult_dsp$22$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_mult_dsp$22$E)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$_mult_dsp$23$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$_mult_dsp$23$E)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_mult_dsp$24$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_mult_dsp$24$E)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_mult_dsp$25$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_mult_dsp$25$E)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_mult_dsp$26$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_mult_dsp$26$E)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_mult_dsp$27$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_mult_dsp$27$E)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$_mult_dsp$28$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$_mult_dsp$28$E)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_mult_dsp$29$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_mult_dsp$29$E)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_mult_dsp$30$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_mult_dsp$30$E)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_mult_dsp$31$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_mult_dsp$31$E)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_mult_dsp$32$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_mult_dsp$32$E)
	.dwendtag $C$DW$72

	.dwattr $C$DW$70, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x8b)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$70

	.sect	".text"
	.clink
	.global	_Task_execute

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_execute")
	.dwattr $C$DW$104, DW_AT_low_pc(_Task_execute)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_Task_execute")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$104, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x8d)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$104, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr $C$DW$104, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 142,column 1,is_stmt,address _Task_execute
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_execute                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_Task_execute:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 19
           STW     .D2T1   A11,*SP--(8)      ; |142| 
           STDW    .D2T2   B13:B12,*SP--     ; |142| 

           STDW    .D2T2   B11:B10,*SP--     ; |142| 
||         MVKL    .S2     _dspResFrame,B4

           STW     .D2T1   A10,*SP--(8)      ; |142| 
||         MVKH    .S2     _dspResFrame,B4

           LDW     .D2T2   *B4,B11           ; |145| 
           ZERO    .L2     B4                ; |146| 
           MV      .L1     A4,A10            ; |142| 
           MV      .L1X    B3,A11            ; |142| 
           MVC     .S2     B4,TSCL           ; |146| 
           MVC     .S2     TSCL,B4           ; |148| 
           MVKL    .S1     _initTarget,A3    ; |149| 
           MVKH    .S1     _initTarget,A3    ; |149| 
           MVK     .L1     0x1,A4            ; |149| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_initTarget")
	.dwattr $C$DW$106, DW_AT_TI_call
           CALL    .S2X    A3                ; |149| 
           ADDKPC  .S2     $C$RL0,B3,4       ; |149| 
$C$RL0:    ; CALL OCCURS {_initTarget} {0}   ; |149| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 18
           MVKL    .S1     _HC_Epanechnikov_kernel,A3 ; |150| 
           MVKH    .S1     _HC_Epanechnikov_kernel,A3 ; |150| 
           NOP             1
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$107, DW_AT_TI_call
           CALL    .S2X    A3                ; |150| 
           ADDKPC  .S2     $C$RL1,B3,4       ; |150| 
$C$RL1:    ; CALL OCCURS {_HC_Epanechnikov_kernel} {0}  ; |150| 
           MVC     .S2     TSCL,B4           ; |151| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |368| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |368| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$108, DW_AT_TI_call
           CALL    .S2     B5                ; |368| 
           MVK     .L1     0x1,A4            ; |368| 
           ADDKPC  .S2     $C$RL2,B3,2       ; |368| 

           MV      .L2X    A4,B6             ; |368| 
||         MVK     .L1     0x5,A6            ; |368| 
||         ZERO    .S2     B4                ; |368| 

$C$RL2:    ; CALL OCCURS {_NOTIFY_notify} {0}  ; |368| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 13
           MVKL    .S1     _function,A3
           MVKH    .S1     _function,A3
           LDBU    .D1T1   *A3,A0            ; |156| 
           ADD     .L1     4,A10,A10
           MVKL    .S1     _initTarget,A3    ; |158| 
           MVKH    .S1     _initTarget,A3    ; |158| 
           NOP             1
   [!A0]   BNOP    .S1     $C$L18,5          ; |156| 
           ; BRANCHCC OCCURS {$C$L18}        ; |156| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_initTarget")
	.dwattr $C$DW$109, DW_AT_TI_call
           CALL    .S2X    A3                ; |158| 
           MVK     .L1     0x2,A4            ; |158| 
	.dwpsn	file "task.c",line 156,column 0,is_stmt
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$_Task_execute$5$B:
	.dwpsn	file "task.c",line 157,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
           ADDKPC  .S2     $C$RL3,B3,0       ; |158| 
$C$RL3:    ; CALL OCCURS {_initTarget} {0}   ; |158| 
$C$DW$L$_Task_execute$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$6$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _SEM_pend,B5      ; |160| 
           MVKH    .S2     _SEM_pend,B5      ; |160| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$110, DW_AT_TI_call
           CALL    .S2     B5                ; |160| 
           ADDKPC  .S2     $C$RL4,B3,3       ; |160| 

           MV      .L1     A10,A4            ; |160| 
||         MVK     .L2     0xffffffff,B4

$C$RL4:    ; CALL OCCURS {_SEM_pend} {0}     ; |160| 
$C$DW$L$_Task_execute$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$7$B:
;          EXCLUSIVE CPU CYCLES: 15

           MVKL    .S1     _function,A3
||         MVKL    .S2     $C$SW1,B6

           MVKH    .S1     _function,A3
||         MVKH    .S2     $C$SW1,B6

           LDBU    .D1T1   *A3,A3            ; |162| 
||         MVKL    .S2     _MPCSXFER_BufferSize,B4
||         MVKL    .S1     _dspColor,A5

           MVKL    .S2     _dspRectangle,B5
||         MVKH    .S1     _dspColor,A5

           MVKH    .S2     _MPCSXFER_BufferSize,B4

           MVKH    .S2     _dspRectangle,B5
||         LDW     .D2T2   *B4,B4            ; |162| 

           LDW     .D2T2   *B5,B5            ; |162| 
           SUB     .L1     A3,2,A4           ; |162| 

           CMPGTU  .L1     A4,10,A0          ; |162| 
||         LDW     .D1T1   *A5,A4            ; |162| 

   [ A0]   B       .S2     $C$L17            ; |162| 
|| [!A0]   SHL     .S1     A3,2,A3           ; |162| 

   [!A0]   SUB     .L1     A3,8,A3           ; |162| 

           ADD     .L1X    B6,A3,A3          ; |162| 
|| [ A0]   MVKL    .S2     _NOTIFY_notify,B5 ; |156| 

   [!A0]   LDW     .D1T1   *A3,A3            ; |162| 
|| [ A0]   MVKH    .S2     _NOTIFY_notify,B5 ; |156| 

$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$111, DW_AT_TI_call
   [ A0]   CALL    .S2     B5                ; |156| 
           NOP             1
           ; BRANCHCC OCCURS {$C$L17} {-12}  ; |162| 
$C$DW$L$_Task_execute$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$8$B:
;          EXCLUSIVE CPU CYCLES: 8
           NOP             2
           BNOP    .S2X    A3,5              ; |162| 
           ; BRANCH OCCURS {A3}              ; |162| 
	.sect	".switch"
	.clink
$C$SW1:	.word	$C$L14	; 2
	.word	$C$L13	; 3
	.word	$C$L12	; 4
	.word	$C$L11	; 5
	.word	$C$L10	; 6
	.word	$C$L9	; 7
	.word	$C$L8	; 8
	.word	$C$L7	; 9
	.word	$C$L6	; 10
	.word	$C$L5	; 11
	.word	$C$L4	; 12
	.sect	".text"
$C$DW$L$_Task_execute$8$E:
;** --------------------------------------------------------------------------*
$C$L4:    
$C$DW$L$_Task_execute$9$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _BCACHE_inv,B5    ; |353| 
           MVKH    .S2     _BCACHE_inv,B5    ; |353| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$112, DW_AT_TI_call
           CALL    .S2     B5                ; |353| 
           ADDKPC  .S2     $C$RL5,B3,3       ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$RL5:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$10$B:
;          EXCLUSIVE CPU CYCLES: 97
           MVKL    .S1     _NOTIFY_notify,A3 ; |368| 
           MVKH    .S1     _NOTIFY_notify,A3 ; |368| 
           MVK     .L1     0x1,A4            ; |368| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$113, DW_AT_TI_call
           CALL    .S2X    A3                ; |368| 
           ZERO    .L2     B4                ; |368| 
           MVK     .L1     0x5,A6            ; |368| 
           MVK     .L2     0x2,B6            ; |368| 
           ADDKPC  .S2     $C$RL6,B3,1       ; |368| 
$C$RL6:    ; CALL OCCURS {_NOTIFY_notify} {0}  ; |368| 
           MVKL    .S1     _BCACHE_inv,A3    ; |358| 
           MVKH    .S1     _BCACHE_inv,A3    ; |358| 
           MVKL    .S1     _dspRectangle,A4
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$114, DW_AT_TI_call

           CALL    .S2X    A3                ; |358| 
||         MVKH    .S1     _dspRectangle,A4

           LDW     .D1T1   *A4,A4            ; |358| 
           ADDKPC  .S2     $C$RL7,B3,2       ; |358| 

           MVK     .L2     0x8,B4            ; |358| 
||         ZERO    .L1     A6                ; |358| 

$C$RL7:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |358| 
           MVC     .S2     TSCL,B12          ; |288| 
           MVKL    .S1     _pdf_representation,A3 ; |289| 

           MVKH    .S1     _pdf_representation,A3 ; |289| 
||         MVKL    .S2     _dspRectangle,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B4

$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$115, DW_AT_TI_call

           CALL    .S2X    A3                ; |289| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D1T1   *A4,A4            ; |289| 
||         LDW     .D2T2   *B4,B4            ; |289| 

           ADDKPC  .S2     $C$RL8,B3,3       ; |289| 
$C$RL8:    ; CALL OCCURS {_pdf_representation} {0}  ; |289| 
           MVKL    .S2     _dspColor,B4
           MVKL    .S2     _CalcWeight,B5    ; |290| 
           MVKH    .S2     _dspColor,B4

           MVKH    .S2     _CalcWeight,B5    ; |290| 
||         MVKL    .S1     _dspRectangle,A3

$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$116, DW_AT_TI_call

           CALL    .S2     B5                ; |290| 
||         MVKH    .S1     _dspRectangle,A3

           LDW     .D1T1   *A3,A6            ; |290| 
||         LDW     .D2T2   *B4,B4            ; |290| 

           ADDKPC  .S2     $C$RL9,B3,2       ; |290| 

           MV      .L2     B11,B6            ; |290| 
||         ZERO    .L1     A4                ; |290| 

$C$RL9:    ; CALL OCCURS {_CalcWeight} {0}   ; |290| 
           MVC     .S2     TSCL,B13          ; |291| 
           MVKL    .S1     _initTarget,A3    ; |293| 
           MVKH    .S1     _initTarget,A3    ; |293| 
           MVK     .L1     0x2,A4            ; |293| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_initTarget")
	.dwattr $C$DW$117, DW_AT_TI_call
           CALL    .S2X    A3                ; |293| 
           ADDKPC  .S2     $C$RL10,B3,4      ; |293| 
$C$RL10:   ; CALL OCCURS {_initTarget} {0}   ; |293| 
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 

           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
||         MVKL    .S2     _MPCSXFER_BufferSize,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _MPCSXFER_BufferSize,B4

$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$118, DW_AT_TI_call

           CALL    .S2X    A3                ; |353| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D1T1   *A4,A4            ; |353| 
||         LDW     .D2T2   *B4,B4            ; |353| 

           ADDKPC  .S2     $C$RL11,B3,2      ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$RL11:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
           MVKL    .S1     _NOTIFY_notify,A3 ; |368| 
           MVKH    .S1     _NOTIFY_notify,A3 ; |368| 
           MVK     .L2     0x2,B6            ; |368| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$119, DW_AT_TI_call
           CALL    .S2X    A3                ; |368| 
           MVK     .L1     0x1,A4            ; |368| 
           ZERO    .L2     B4                ; |368| 
           MVK     .L1     0x5,A6            ; |368| 
           ADDKPC  .S2     $C$RL12,B3,1      ; |368| 
$C$RL12:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |368| 
           SUB     .L2     B13,B12,B4        ; |292| 

           ADD     .L2     B10,B4,B13        ; |292| 
||         MVC     .S2     TSCL,B12          ; |296| 

           MVKL    .S2     _dspRectangle,B4
           MVKL    .S2     _pdf_representation,B5 ; |297| 
           MVKH    .S2     _dspRectangle,B4

           MVKH    .S2     _pdf_representation,B5 ; |297| 
||         MVKL    .S1     _dspColor,A3

$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$120, DW_AT_TI_call

           CALL    .S2     B5                ; |297| 
||         MVKH    .S1     _dspColor,A3

           LDW     .D2T2   *B4,B4            ; |297| 
||         LDW     .D1T1   *A3,A4            ; |297| 

           ADDKPC  .S2     $C$RL13,B3,3      ; |297| 
$C$RL13:   ; CALL OCCURS {_pdf_representation} {0}  ; |297| 
           MVKL    .S1     _CalcWeight,A3    ; |298| 

           MVKH    .S1     _CalcWeight,A3    ; |298| 
||         MVKL    .S2     _dspColor,B4

           MVKL    .S1     _dspRectangle,A4
||         MVKH    .S2     _dspColor,B4

$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$121, DW_AT_TI_call

           CALL    .S2X    A3                ; |298| 
||         MVKH    .S1     _dspRectangle,A4

           LDW     .D1T1   *A4,A6            ; |298| 
||         LDW     .D2T2   *B4,B4            ; |298| 

           ADDKPC  .S2     $C$RL14,B3,2      ; |298| 

           MVK     .L1     0x1,A4            ; |298| 
||         MV      .L2     B11,B6            ; |298| 

$C$RL14:   ; CALL OCCURS {_CalcWeight} {0}   ; |298| 
           MVC     .S2     TSCL,B10          ; |299| 
           MVKL    .S1     _initTarget,A3    ; |301| 
           MVKH    .S1     _initTarget,A3    ; |301| 
           MVK     .L1     0x2,A4            ; |301| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_initTarget")
	.dwattr $C$DW$122, DW_AT_TI_call
           CALL    .S2X    A3                ; |301| 
           ADDKPC  .S2     $C$RL15,B3,4      ; |301| 
$C$RL15:   ; CALL OCCURS {_initTarget} {0}   ; |301| 
$C$DW$L$_Task_execute$10$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$11$B:
;          EXCLUSIVE CPU CYCLES: 2
           SUB     .L2     B10,B12,B4        ; |300| 
           ADD     .L2     B13,B4,B10        ; |300| 
$C$DW$L$_Task_execute$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$12$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 

           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
||         MVKL    .S2     _MPCSXFER_BufferSize,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _MPCSXFER_BufferSize,B4

$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$123, DW_AT_TI_call

           CALL    .S2X    A3                ; |353| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D2T2   *B4,B4            ; |353| 
||         LDW     .D1T1   *A4,A4            ; |353| 

           ADDKPC  .S2     $C$RL16,B3,2      ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$RL16:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$13$B:
;          EXCLUSIVE CPU CYCLES: 30
           MVC     .S2     TSCL,B12          ; |303| 
           MVKL    .S1     _pdf_representation,A3 ; |304| 

           MVKH    .S1     _pdf_representation,A3 ; |304| 
||         MVKL    .S2     _dspRectangle,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B4

$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$124, DW_AT_TI_call

           CALL    .S2X    A3                ; |304| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D1T1   *A4,A4            ; |304| 
||         LDW     .D2T2   *B4,B4            ; |304| 

           ADDKPC  .S2     $C$RL17,B3,3      ; |304| 
$C$RL17:   ; CALL OCCURS {_pdf_representation} {0}  ; |304| 
           MVKL    .S2     _dspRectangle,B5

           MVKL    .S1     _CalcWeight,A3    ; |305| 
||         MVKL    .S2     _dspColor,B4

           MVKH    .S1     _CalcWeight,A3    ; |305| 
||         MVKH    .S2     _dspRectangle,B5

           MVKH    .S2     _dspColor,B4
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$125, DW_AT_TI_call

           CALL    .S2X    A3                ; |305| 
||         LDW     .D2T2   *B4,B4            ; |305| 

           LDW     .D2T1   *B5,A6            ; |305| 
           ADDKPC  .S2     $C$RL18,B3,2      ; |305| 

           MV      .L2     B11,B6            ; |305| 
||         MVK     .L1     0x2,A4            ; |305| 

$C$RL18:   ; CALL OCCURS {_CalcWeight} {0}   ; |305| 
           MVC     .S2     TSCL,B13          ; |306| 
           MVKL    .S1     _BCACHE_wb,A3     ; |363| 
           MVKH    .S1     _BCACHE_wb,A3     ; |363| 
           MVKL    .S1     _dspResFrame,A4
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$126, DW_AT_TI_call

           CALL    .S2X    A3                ; |363| 
||         MVKH    .S1     _dspResFrame,A4

           LDW     .D1T1   *A4,A4            ; |363| 
           MVK     .S2     0x4df0,B4         ; |363| 
           ADDKPC  .S2     $C$RL19,B3,1      ; |363| 
           MVK     .L1     0x1,A6            ; |363| 
$C$RL19:   ; CALL OCCURS {_BCACHE_wb} {0}    ; |363| 
$C$DW$L$_Task_execute$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$14$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S1     $C$L16            ; |310| 
||         MVKL    .S2     _function,B5
||         MVK     .L2     1,B6              ; |309| 
||         SUB     .D2     B13,B12,B4        ; |308| 

           ADD     .L2     B10,B4,B10        ; |308| 
           MVKH    .S2     _function,B5
           STB     .D2T2   B6,*B5            ; |309| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           ; BRANCH OCCURS {$C$L16}          ; |310| 
$C$DW$L$_Task_execute$14$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_Task_execute$15$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 
           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$127, DW_AT_TI_call
           CALL    .S2X    A3                ; |353| 
           ADDKPC  .S2     $C$RL20,B3,4      ; |353| 
$C$RL20:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$16$B:
;          EXCLUSIVE CPU CYCLES: 30
           MVC     .S2     TSCL,B12          ; |275| 
           MVKL    .S1     _pdf_representation,A3 ; |276| 

           MVKH    .S1     _pdf_representation,A3 ; |276| 
||         MVKL    .S2     _dspRectangle,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B4

$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$128, DW_AT_TI_call

           CALL    .S2X    A3                ; |276| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D1T1   *A4,A4            ; |276| 
||         LDW     .D2T2   *B4,B4            ; |276| 

           ADDKPC  .S2     $C$RL21,B3,3      ; |276| 
$C$RL21:   ; CALL OCCURS {_pdf_representation} {0}  ; |276| 
           MVKL    .S2     _dspRectangle,B5

           MVKL    .S1     _CalcWeight,A3    ; |277| 
||         MVKL    .S2     _dspColor,B4

           MVKH    .S1     _CalcWeight,A3    ; |277| 
||         MVKH    .S2     _dspRectangle,B5

           MVKH    .S2     _dspColor,B4
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$129, DW_AT_TI_call

           CALL    .S2X    A3                ; |277| 
||         LDW     .D2T2   *B4,B4            ; |277| 

           LDW     .D2T1   *B5,A6            ; |277| 
           ADDKPC  .S2     $C$RL22,B3,2      ; |277| 

           MV      .L2     B11,B6            ; |277| 
||         MVK     .L1     0x2,A4            ; |277| 

$C$RL22:   ; CALL OCCURS {_CalcWeight} {0}   ; |277| 
           MVC     .S2     TSCL,B13          ; |278| 
           MVKL    .S1     _BCACHE_wb,A3     ; |363| 
           MVKH    .S1     _BCACHE_wb,A3     ; |363| 
           MVKL    .S1     _dspResFrame,A4
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$130, DW_AT_TI_call

           CALL    .S2X    A3                ; |363| 
||         MVKH    .S1     _dspResFrame,A4

           LDW     .D1T1   *A4,A4            ; |363| 
           MVK     .S2     0x4df0,B4         ; |363| 
           ADDKPC  .S2     $C$RL23,B3,1      ; |363| 
           MVK     .L1     0x1,A6            ; |363| 
$C$RL23:   ; CALL OCCURS {_BCACHE_wb} {0}    ; |363| 
$C$DW$L$_Task_execute$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$17$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S1     $C$L16            ; |282| 
||         MVKL    .S2     _function,B5
||         MVK     .L2     1,B6              ; |281| 
||         SUB     .D2     B13,B12,B4        ; |280| 

           ADD     .L2     B10,B4,B10        ; |280| 
           MVKH    .S2     _function,B5
           STB     .D2T2   B6,*B5            ; |281| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           ; BRANCH OCCURS {$C$L16}          ; |282| 
$C$DW$L$_Task_execute$17$E:
;** --------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_Task_execute$18$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 
           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$131, DW_AT_TI_call
           CALL    .S2X    A3                ; |353| 
           ADDKPC  .S2     $C$RL24,B3,4      ; |353| 
$C$RL24:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$19$B:
;          EXCLUSIVE CPU CYCLES: 20
           MVC     .S2     TSCL,B12          ; |263| 
           MVKL    .S1     _pdf_representation,A3 ; |264| 

           MVKH    .S1     _pdf_representation,A3 ; |264| 
||         MVKL    .S2     _dspRectangle,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B4

$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$132, DW_AT_TI_call

           CALL    .S2X    A3                ; |264| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D1T1   *A4,A4            ; |264| 
||         LDW     .D2T2   *B4,B4            ; |264| 

           ADDKPC  .S2     $C$RL25,B3,3      ; |264| 
$C$RL25:   ; CALL OCCURS {_pdf_representation} {0}  ; |264| 
           MVKL    .S2     _CalcWeight,B5    ; |265| 
           MVKL    .S2     _dspColor,B4
           MVKH    .S2     _CalcWeight,B5    ; |265| 

           MVKL    .S1     _dspRectangle,A3
||         MVKH    .S2     _dspColor,B4

$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$133, DW_AT_TI_call

           CALL    .S2     B5                ; |265| 
||         MVKH    .S1     _dspRectangle,A3

           LDW     .D1T1   *A3,A6            ; |265| 
||         LDW     .D2T2   *B4,B4            ; |265| 

           ADDKPC  .S2     $C$RL26,B3,2      ; |265| 

           MV      .L2     B11,B6            ; |265| 
||         MVK     .L1     0x1,A4            ; |265| 

$C$RL26:   ; CALL OCCURS {_CalcWeight} {0}   ; |265| 
$C$DW$L$_Task_execute$19$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$20$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |266| 

           B       .S2     $C$L16            ; |270| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |269| 
||         SUB     .L2     B4,B12,B4         ; |268| 

           ADD     .L2     B10,B4,B10        ; |268| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S1     _function,A4
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           STB     .D1T1   A3,*A4            ; |269| 
           ; BRANCH OCCURS {$C$L16}          ; |270| 
$C$DW$L$_Task_execute$20$E:
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_Task_execute$21$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 
           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$134, DW_AT_TI_call
           CALL    .S2X    A3                ; |353| 
           ADDKPC  .S2     $C$RL27,B3,4      ; |353| 
$C$RL27:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$22$B:
;          EXCLUSIVE CPU CYCLES: 36
           MVKL    .S1     _BCACHE_inv,A3    ; |358| 
           MVKH    .S1     _BCACHE_inv,A3    ; |358| 
           MVKL    .S1     _dspRectangle,A4
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$135, DW_AT_TI_call

           CALL    .S2X    A3                ; |358| 
||         MVKH    .S1     _dspRectangle,A4

           LDW     .D1T1   *A4,A4            ; |358| 
           ADDKPC  .S2     $C$RL28,B3,2      ; |358| 

           MVK     .L2     0x8,B4            ; |358| 
||         ZERO    .L1     A6                ; |358| 

$C$RL28:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |358| 
           MVKL    .S2     _initWeight,B4    ; |248| 
           MVKH    .S2     _initWeight,B4    ; |248| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_initWeight")
	.dwattr $C$DW$136, DW_AT_TI_call
           CALL    .S2     B4                ; |248| 
           ADDKPC  .S2     $C$RL29,B3,3      ; |248| 
           MV      .L1X    B11,A4            ; |248| 
$C$RL29:   ; CALL OCCURS {_initWeight} {0}   ; |248| 
           MVC     .S2     TSCL,B12          ; |249| 
           MVKL    .S1     _pdf_representation,A3 ; |250| 

           MVKH    .S1     _pdf_representation,A3 ; |250| 
||         MVKL    .S2     _dspRectangle,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B4

$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$137, DW_AT_TI_call

           CALL    .S2X    A3                ; |250| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D2T2   *B4,B4            ; |250| 
||         LDW     .D1T1   *A4,A4            ; |250| 

           ADDKPC  .S2     $C$RL30,B3,3      ; |250| 
$C$RL30:   ; CALL OCCURS {_pdf_representation} {0}  ; |250| 
           MVKL    .S1     _CalcWeight,A3    ; |251| 

           MVKH    .S1     _CalcWeight,A3    ; |251| 
||         MVKL    .S2     _dspColor,B4

           MVKL    .S1     _dspRectangle,A4
||         MVKH    .S2     _dspColor,B4

$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$138, DW_AT_TI_call

           CALL    .S2X    A3                ; |251| 
||         MVKH    .S1     _dspRectangle,A4

           LDW     .D1T1   *A4,A6            ; |251| 
||         LDW     .D2T2   *B4,B4            ; |251| 

           ADDKPC  .S2     $C$RL31,B3,2      ; |251| 

           ZERO    .L1     A4                ; |251| 
||         MV      .L2     B11,B6            ; |251| 

$C$RL31:   ; CALL OCCURS {_CalcWeight} {0}   ; |251| 
$C$DW$L$_Task_execute$22$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$23$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |252| 

           B       .S1     $C$L16            ; |257| 
||         MVKL    .S2     _function,B5
||         MVK     .L2     1,B6              ; |256| 
||         SUB     .D2     B4,B12,B4         ; |254| 

           ADD     .L2     B10,B4,B10        ; |254| 
           MVKH    .S2     _function,B5
           STB     .D2T2   B6,*B5            ; |256| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           ; BRANCH OCCURS {$C$L16}          ; |257| 
$C$DW$L$_Task_execute$23$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_Task_execute$24$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |358| 
           MVKH    .S1     _BCACHE_inv,A3    ; |358| 
           MVK     .L2     0x8,B4            ; |358| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$139, DW_AT_TI_call
           CALL    .S2X    A3                ; |358| 
           ZERO    .L1     A6                ; |358| 
           MV      .L1X    B5,A4             ; |358| 
           ADDKPC  .S2     $C$RL32,B3,2      ; |358| 
$C$RL32:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |358| 
$C$DW$L$_Task_execute$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$25$B:
;          EXCLUSIVE CPU CYCLES: 37
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 

           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
||         MVKL    .S2     _MPCSXFER_BufferSize,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _MPCSXFER_BufferSize,B4

$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$140, DW_AT_TI_call

           CALL    .S2X    A3                ; |353| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D1T1   *A4,A4            ; |353| 
||         LDW     .D2T2   *B4,B4            ; |353| 

           ADDKPC  .S2     $C$RL33,B3,2      ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$RL33:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
           MVC     .S2     TSCL,B13          ; |235| 
           MVKL    .S1     _pdf_representation,A3 ; |236| 

           MVKH    .S1     _pdf_representation,A3 ; |236| 
||         MVKL    .S2     _dspRectangle,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B4

$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$141, DW_AT_TI_call

           CALL    .S2X    A3                ; |236| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D1T1   *A4,A4            ; |236| 
||         LDW     .D2T2   *B4,B4            ; |236| 

           ADDKPC  .S2     $C$RL34,B3,3      ; |236| 
$C$RL34:   ; CALL OCCURS {_pdf_representation} {0}  ; |236| 
           MVC     .S2     TSCL,B12          ; |237| 
           MVKL    .S2     _retCandidate,B4  ; |239| 
           MVKH    .S2     _retCandidate,B4  ; |239| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_retCandidate")
	.dwattr $C$DW$142, DW_AT_TI_call
           CALL    .S2     B4                ; |239| 
           ADDKPC  .S2     $C$RL35,B3,3      ; |239| 
           MV      .L1X    B11,A4            ; |239| 
$C$RL35:   ; CALL OCCURS {_retCandidate} {0}  ; |239| 
           MVKL    .S1     _BCACHE_wb,A3     ; |363| 
           MVKH    .S1     _BCACHE_wb,A3     ; |363| 
           MVKL    .S1     _dspResFrame,A4
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$143, DW_AT_TI_call

           CALL    .S2X    A3                ; |363| 
||         MVKH    .S1     _dspResFrame,A4

           LDW     .D1T1   *A4,A4            ; |363| 
           MVK     .S2     0x4df0,B4         ; |363| 
           ADDKPC  .S2     $C$RL36,B3,1      ; |363| 
           MVK     .L1     0x1,A6            ; |363| 
$C$RL36:   ; CALL OCCURS {_BCACHE_wb} {0}    ; |363| 
$C$DW$L$_Task_execute$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$26$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S1     $C$L16            ; |242| 
||         MVKL    .S2     _function,B5
||         MVK     .L2     1,B6              ; |241| 
||         SUB     .D2     B12,B13,B4        ; |238| 

           ADD     .L2     B10,B4,B10        ; |238| 
           MVKH    .S2     _function,B5
           STB     .D2T2   B6,*B5            ; |241| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           ; BRANCH OCCURS {$C$L16}          ; |242| 
$C$DW$L$_Task_execute$26$E:
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_Task_execute$27$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 
           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$144, DW_AT_TI_call
           CALL    .S2X    A3                ; |353| 
           ADDKPC  .S2     $C$RL37,B3,4      ; |353| 
$C$RL37:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$28$B:
;          EXCLUSIVE CPU CYCLES: 11
           MVC     .S2     TSCL,B4           ; |208| 
           MVKL    .S2     _HC_pdf_representation_target,B5 ; |209| 
           MVKL    .S2     _dspColor,B4
           MVKH    .S2     _HC_pdf_representation_target,B5 ; |209| 
           MVKH    .S2     _dspColor,B4
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$145, DW_AT_TI_call
           CALL    .S2     B5                ; |209| 
           LDW     .D2T2   *B4,B4            ; |209| 
           ADDKPC  .S2     $C$RL38,B3,2      ; |209| 
           MVK     .L1     0x2,A4            ; |209| 
$C$RL38:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |209| 
$C$DW$L$_Task_execute$28$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$29$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |210| 

           BNOP    .S2     $C$L16,1          ; |215| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |214| 

           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S1     _function,A4
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           STB     .D1T1   A3,*A4            ; |214| 
           ; BRANCH OCCURS {$C$L16}          ; |215| 
$C$DW$L$_Task_execute$29$E:
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_Task_execute$30$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 
           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$146, DW_AT_TI_call
           CALL    .S2X    A3                ; |353| 
           ADDKPC  .S2     $C$RL39,B3,4      ; |353| 
$C$RL39:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$30$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$31$B:
;          EXCLUSIVE CPU CYCLES: 11
           MVC     .S2     TSCL,B4           ; |199| 
           MVKL    .S2     _HC_pdf_representation_target,B5 ; |200| 
           MVKL    .S2     _dspColor,B4
           MVKH    .S2     _HC_pdf_representation_target,B5 ; |200| 
           MVKH    .S2     _dspColor,B4
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$147, DW_AT_TI_call
           CALL    .S2     B5                ; |200| 
           LDW     .D2T2   *B4,B4            ; |200| 
           ADDKPC  .S2     $C$RL40,B3,2      ; |200| 
           MVK     .L1     0x1,A4            ; |200| 
$C$RL40:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |200| 
$C$DW$L$_Task_execute$31$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$32$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |201| 

           BNOP    .S2     $C$L16,1          ; |204| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |203| 

           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S1     _function,A4
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           STB     .D1T1   A3,*A4            ; |203| 
           ; BRANCH OCCURS {$C$L16}          ; |204| 
$C$DW$L$_Task_execute$32$E:
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_Task_execute$33$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 
           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$148, DW_AT_TI_call
           CALL    .S2X    A3                ; |353| 
           ADDKPC  .S2     $C$RL41,B3,4      ; |353| 
$C$RL41:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$33$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$34$B:
;          EXCLUSIVE CPU CYCLES: 11
           MVC     .S2     TSCL,B4           ; |189| 
           MVKL    .S2     _HC_pdf_representation_target,B5 ; |191| 
           MVKL    .S2     _dspColor,B4
           MVKH    .S2     _HC_pdf_representation_target,B5 ; |191| 
           MVKH    .S2     _dspColor,B4
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$149, DW_AT_TI_call
           CALL    .S2     B5                ; |191| 
           LDW     .D2T2   *B4,B4            ; |191| 
           ADDKPC  .S2     $C$RL42,B3,2      ; |191| 
           ZERO    .L1     A4                ; |191| 
$C$RL42:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |191| 
$C$DW$L$_Task_execute$34$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$35$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |192| 

           BNOP    .S2     $C$L16,1          ; |195| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |194| 

           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S1     _function,A4
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           STB     .D1T1   A3,*A4            ; |194| 
           ; BRANCH OCCURS {$C$L16}          ; |195| 
$C$DW$L$_Task_execute$35$E:
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$_Task_execute$36$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _BCACHE_inv,B5    ; |353| 
           MVKH    .S2     _BCACHE_inv,B5    ; |353| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$150, DW_AT_TI_call
           CALL    .S2     B5                ; |353| 
           ADDKPC  .S2     $C$RL43,B3,3      ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$RL43:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$36$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$37$B:
;          EXCLUSIVE CPU CYCLES: 48
           MVKL    .S1     _BCACHE_inv,A3    ; |358| 
           MVKH    .S1     _BCACHE_inv,A3    ; |358| 
           MVKL    .S1     _dspRectangle,A4
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$151, DW_AT_TI_call

           CALL    .S2X    A3                ; |358| 
||         MVKH    .S1     _dspRectangle,A4

           LDW     .D1T1   *A4,A4            ; |358| 
           ADDKPC  .S2     $C$RL44,B3,2      ; |358| 

           MVK     .L2     0x8,B4            ; |358| 
||         ZERO    .L1     A6                ; |358| 

$C$RL44:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |358| 
           MVKL    .S1     _initWeight,A3    ; |221| 
           MVKH    .S1     _initWeight,A3    ; |221| 
           MV      .L1X    B11,A4            ; |221| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_initWeight")
	.dwattr $C$DW$152, DW_AT_TI_call
           CALL    .S2X    A3                ; |221| 
           ADDKPC  .S2     $C$RL45,B3,4      ; |221| 
$C$RL45:   ; CALL OCCURS {_initWeight} {0}   ; |221| 
           MVC     .S2     TSCL,B13          ; |222| 
           MVKL    .S1     _pdf_representation,A3 ; |223| 

           MVKH    .S1     _pdf_representation,A3 ; |223| 
||         MVKL    .S2     _dspRectangle,B4

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B4

$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$153, DW_AT_TI_call

           CALL    .S2X    A3                ; |223| 
||         MVKH    .S1     _dspColor,A4

           LDW     .D1T1   *A4,A4            ; |223| 
||         LDW     .D2T2   *B4,B4            ; |223| 

           ADDKPC  .S2     $C$RL46,B3,3      ; |223| 
$C$RL46:   ; CALL OCCURS {_pdf_representation} {0}  ; |223| 
           MVKL    .S2     _dspColor,B4

           MVKL    .S1     _CalcWeight,A3    ; |224| 
||         MVKL    .S2     _dspRectangle,B5

           MVKH    .S1     _CalcWeight,A3    ; |224| 
||         MVKH    .S2     _dspColor,B4

           MVKH    .S2     _dspRectangle,B5
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$154, DW_AT_TI_call

           CALL    .S2X    A3                ; |224| 
||         LDW     .D2T2   *B4,B4            ; |224| 

           LDW     .D2T1   *B5,A6            ; |224| 
           ADDKPC  .S2     $C$RL47,B3,2      ; |224| 

           MV      .L2     B11,B6            ; |224| 
||         ZERO    .L1     A4                ; |224| 

$C$RL47:   ; CALL OCCURS {_CalcWeight} {0}   ; |224| 
           MVC     .S2     TSCL,B12          ; |225| 
           MVKL    .S1     _BCACHE_wb,A3     ; |363| 
           MVKH    .S1     _BCACHE_wb,A3     ; |363| 
           MVKL    .S1     _dspResFrame,A4
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$155, DW_AT_TI_call

           CALL    .S2X    A3                ; |363| 
||         MVKH    .S1     _dspResFrame,A4

           LDW     .D1T1   *A4,A4            ; |363| 
           MVK     .S2     0x4df0,B4         ; |363| 
           ADDKPC  .S2     $C$RL48,B3,1      ; |363| 
           MVK     .L1     0x1,A6            ; |363| 
$C$RL48:   ; CALL OCCURS {_BCACHE_wb} {0}    ; |363| 
$C$DW$L$_Task_execute$37$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$38$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S1     $C$L16            ; |230| 
||         MVKL    .S2     _function,B5
||         MVK     .L2     1,B4              ; |229| 
||         SUB     .D2     B12,B13,B6        ; |227| 

           ADD     .L2     B10,B6,B10        ; |227| 
           MVKH    .S2     _function,B5
           STB     .D2T2   B4,*B5            ; |229| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           ; BRANCH OCCURS {$C$L16}          ; |230| 
$C$DW$L$_Task_execute$38$E:
;** --------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$_Task_execute$39$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _BCACHE_inv,A3    ; |353| 
           MVKH    .S1     _BCACHE_inv,A3    ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$156, DW_AT_TI_call
           CALL    .S2X    A3                ; |353| 
           ADDKPC  .S2     $C$RL49,B3,4      ; |353| 
$C$RL49:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$39$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$40$B:
;          EXCLUSIVE CPU CYCLES: 50
           MVKL    .S1     _BCACHE_inv,A3    ; |358| 

           MVKH    .S1     _BCACHE_inv,A3    ; |358| 
||         MVKL    .S2     _dspRectangle,B4

           MVKH    .S2     _dspRectangle,B4
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$157, DW_AT_TI_call
           CALL    .S2X    A3                ; |358| 
           LDW     .D2T1   *B4,A4            ; |358| 
           ADDKPC  .S2     $C$RL50,B3,2      ; |358| 

           MVK     .L2     0x8,B4            ; |358| 
||         ZERO    .L1     A6                ; |358| 

$C$RL50:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |358| 
           MVKL    .S1     _dspRectangle,A3
           MVKH    .S1     _dspRectangle,A3
           LDW     .D1T1   *A3,A3            ; |178| 
           MVKL    .S2     _MPCSXFER_BufferSize,B4
           MVKH    .S2     _MPCSXFER_BufferSize,B4
           LDW     .D2T2   *B4,B4            ; |178| 
           MVKL    .S2     _memcpy,B5        ; |182| 
           LDHU    .D1T1   *A3,A5            ; |178| 
           MVKL    .S2     _dspColor,B6
           MVKH    .S2     _memcpy,B5        ; |182| 
           SHRU    .S1X    B4,1,A4           ; |178| 
           SUB     .L1     A4,4,A6           ; |178| 
           STH     .D1T1   A5,*+A3[A6]       ; |178| 
           LDHU    .D1T1   *+A3(2),A5        ; |179| 
           SUB     .L1     A4,3,A31          ; |179| 
           SUB     .L1     A4,2,A30          ; |180| 
           SUB     .D2     B4,16,B4          ; |182| 
           MVKL    .S1     _dspResFrame,A29
           STH     .D1T1   A5,*+A3[A31]      ; |179| 
           LDHU    .D1T1   *+A3(4),A5        ; |180| 
           MVKH    .S2     _dspColor,B6
           MVKH    .S1     _dspResFrame,A29
           MV      .L1X    B4,A6             ; |182| 
           LDW     .D2T2   *B6,B4            ; |182| 
           STH     .D1T1   A5,*+A3[A30]      ; |180| 
           LDHU    .D1T1   *+A3(6),A5        ; |181| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x04)
	.dwattr $C$DW$158, DW_AT_name("_memcpy")
	.dwattr $C$DW$158, DW_AT_TI_call

           ADDAH   .D1     A3,A4,A3          ; |181| 
||         CALL    .S2     B5                ; |182| 

           LDW     .D1T1   *A29,A4           ; |182| 
           ADDKPC  .S2     $C$RL51,B3,2      ; |182| 
           STH     .D1T1   A5,*-A3(2)        ; |181| 
$C$RL51:   ; CALL OCCURS {_memcpy} {0}       ; |182| 
           MVKL    .S1     _BCACHE_wb,A3     ; |363| 
           MVKH    .S1     _BCACHE_wb,A3     ; |363| 
           MVKL    .S1     _dspResFrame,A4
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$159, DW_AT_TI_call

           CALL    .S2X    A3                ; |363| 
||         MVKH    .S1     _dspResFrame,A4

           LDW     .D1T1   *A4,A4            ; |363| 
           MVK     .S2     0x4df0,B4         ; |363| 
           ADDKPC  .S2     $C$RL52,B3,1      ; |363| 
           MVK     .L1     0x1,A6            ; |363| 
$C$RL52:   ; CALL OCCURS {_BCACHE_wb} {0}    ; |363| 
$C$DW$L$_Task_execute$40$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$41$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L16,1          ; |185| 
||         MVKL    .S2     _function,B5
||         MVK     .L2     1,B4              ; |184| 

           MVKH    .S2     _function,B5
           STB     .D2T2   B4,*B5            ; |184| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
           ; BRANCH OCCURS {$C$L16}          ; |185| 
$C$DW$L$_Task_execute$41$E:
;** --------------------------------------------------------------------------*
$C$L14:    
$C$DW$L$_Task_execute$42$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _BCACHE_inv,B5    ; |353| 
           MVKH    .S2     _BCACHE_inv,B5    ; |353| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$160, DW_AT_TI_call
           CALL    .S2     B5                ; |353| 
           ADDKPC  .S2     $C$RL53,B3,3      ; |353| 
           MVK     .L1     0x1,A6            ; |353| 
$C$RL53:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |353| 
$C$DW$L$_Task_execute$42$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$43$B:
;          EXCLUSIVE CPU CYCLES: 3
           MVKL    .S1     _function,A4

           MVKH    .S1     _function,A4
||         MVK     .L1     1,A3              ; |172| 

           STB     .D1T1   A3,*A4            ; |172| 
$C$DW$L$_Task_execute$43$E:
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_Task_execute$44$B:
;          EXCLUSIVE CPU CYCLES: 2
           MVKL    .S2     _NOTIFY_notify,B5 ; |156| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |156| 
$C$DW$L$_Task_execute$44$E:
;** --------------------------------------------------------------------------*
$C$L16:    
$C$DW$L$_Task_execute$45$B:
;          EXCLUSIVE CPU CYCLES: 2
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$161, DW_AT_TI_call
           CALL    .S2     B5                ; |156| 
           NOP             1
$C$DW$L$_Task_execute$45$E:
;** --------------------------------------------------------------------------*
$C$L17:    
$C$DW$L$_Task_execute$46$B:
;          EXCLUSIVE CPU CYCLES: 4
           MVK     .L1     0x1,A4            ; |156| 
           MVK     .L2     0x2,B6            ; |156| 
           ZERO    .L2     B4                ; |156| 

           MVK     .L1     0x5,A6            ; |156| 
||         ADDKPC  .S2     $C$RL54,B3,0      ; |156| 

$C$RL54:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |156| 
$C$DW$L$_Task_execute$46$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$47$B:
;          EXCLUSIVE CPU CYCLES: 13
           MVKL    .S1     _function,A3
           MVKH    .S1     _function,A3
           LDBU    .D1T1   *A3,A0            ; |156| 
           MVKL    .S1     _initTarget,A3    ; |158| 
           MVKH    .S1     _initTarget,A3    ; |158| 
           NOP             2
   [ A0]   B       .S1     $C$L3             ; |156| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_initTarget")
	.dwattr $C$DW$162, DW_AT_TI_call
   [ A0]   CALL    .S2X    A3                ; |158| 
   [ A0]   MVK     .L1     0x2,A4            ; |158| 
	.dwpsn	file "task.c",line 314,column 0,is_stmt
           NOP             3
           ; BRANCHCC OCCURS {$C$L3}         ; |156| 
$C$DW$L$_Task_execute$47$E:
;** --------------------------------------------------------------------------*
$C$L18:    
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _NOTIFY_notify,A3 ; |368| 
           MVKH    .S1     _NOTIFY_notify,A3 ; |368| 
           MVK     .L1     0x1,A4            ; |368| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$163, DW_AT_TI_call
           CALL    .S2X    A3                ; |368| 
           ZERO    .L2     B4                ; |368| 
           MVK     .L1     0x5,A6            ; |368| 
           MV      .L2     B10,B6            ; |368| 
           ADDKPC  .S2     $C$RL55,B3,1      ; |368| 
$C$RL55:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |368| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           LDW     .D2T1   *++SP(8),A10      ; |320| 

           LDDW    .D2T2   *++SP,B11:B10     ; |320| 
||         MV      .L2X    A11,B3            ; |320| 

$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x04)
	.dwattr $C$DW$164, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B13:B12     ; |320| 
||         RET     .S2     B3                ; |320| 

           LDW     .D2T1   *++SP(8),A11      ; |320| 
           ZERO    .L1     A4                ; |319| 
	.dwpsn	file "task.c",line 320,column 1,is_stmt
           NOP             3
           ; BRANCH OCCURS {B3}              ; |320| 

$C$DW$165	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$165, DW_AT_name("/home/constantinos/embLab/merge/dsp/task.asm:$C$L3:1:1496836248")
	.dwattr $C$DW$165, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x9c)
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x13a)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$_Task_execute$5$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$_Task_execute$5$E)
$C$DW$167	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$167, DW_AT_low_pc($C$DW$L$_Task_execute$42$B)
	.dwattr $C$DW$167, DW_AT_high_pc($C$DW$L$_Task_execute$42$E)
$C$DW$168	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$168, DW_AT_low_pc($C$DW$L$_Task_execute$43$B)
	.dwattr $C$DW$168, DW_AT_high_pc($C$DW$L$_Task_execute$43$E)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_Task_execute$39$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_Task_execute$39$E)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_Task_execute$40$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_Task_execute$40$E)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_Task_execute$36$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_Task_execute$36$E)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$_Task_execute$37$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$_Task_execute$37$E)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_Task_execute$33$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_Task_execute$33$E)
$C$DW$174	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$174, DW_AT_low_pc($C$DW$L$_Task_execute$34$B)
	.dwattr $C$DW$174, DW_AT_high_pc($C$DW$L$_Task_execute$34$E)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$_Task_execute$30$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$_Task_execute$30$E)
$C$DW$176	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$176, DW_AT_low_pc($C$DW$L$_Task_execute$31$B)
	.dwattr $C$DW$176, DW_AT_high_pc($C$DW$L$_Task_execute$31$E)
$C$DW$177	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$177, DW_AT_low_pc($C$DW$L$_Task_execute$27$B)
	.dwattr $C$DW$177, DW_AT_high_pc($C$DW$L$_Task_execute$27$E)
$C$DW$178	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$178, DW_AT_low_pc($C$DW$L$_Task_execute$28$B)
	.dwattr $C$DW$178, DW_AT_high_pc($C$DW$L$_Task_execute$28$E)
$C$DW$179	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$179, DW_AT_low_pc($C$DW$L$_Task_execute$24$B)
	.dwattr $C$DW$179, DW_AT_high_pc($C$DW$L$_Task_execute$24$E)
$C$DW$180	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$180, DW_AT_low_pc($C$DW$L$_Task_execute$25$B)
	.dwattr $C$DW$180, DW_AT_high_pc($C$DW$L$_Task_execute$25$E)
$C$DW$181	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$181, DW_AT_low_pc($C$DW$L$_Task_execute$21$B)
	.dwattr $C$DW$181, DW_AT_high_pc($C$DW$L$_Task_execute$21$E)
$C$DW$182	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$182, DW_AT_low_pc($C$DW$L$_Task_execute$22$B)
	.dwattr $C$DW$182, DW_AT_high_pc($C$DW$L$_Task_execute$22$E)
$C$DW$183	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$183, DW_AT_low_pc($C$DW$L$_Task_execute$18$B)
	.dwattr $C$DW$183, DW_AT_high_pc($C$DW$L$_Task_execute$18$E)
$C$DW$184	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$184, DW_AT_low_pc($C$DW$L$_Task_execute$19$B)
	.dwattr $C$DW$184, DW_AT_high_pc($C$DW$L$_Task_execute$19$E)
$C$DW$185	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$185, DW_AT_low_pc($C$DW$L$_Task_execute$15$B)
	.dwattr $C$DW$185, DW_AT_high_pc($C$DW$L$_Task_execute$15$E)
$C$DW$186	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$186, DW_AT_low_pc($C$DW$L$_Task_execute$16$B)
	.dwattr $C$DW$186, DW_AT_high_pc($C$DW$L$_Task_execute$16$E)
$C$DW$187	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$187, DW_AT_low_pc($C$DW$L$_Task_execute$8$B)
	.dwattr $C$DW$187, DW_AT_high_pc($C$DW$L$_Task_execute$8$E)
$C$DW$188	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$188, DW_AT_low_pc($C$DW$L$_Task_execute$9$B)
	.dwattr $C$DW$188, DW_AT_high_pc($C$DW$L$_Task_execute$9$E)
$C$DW$189	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$189, DW_AT_low_pc($C$DW$L$_Task_execute$10$B)
	.dwattr $C$DW$189, DW_AT_high_pc($C$DW$L$_Task_execute$10$E)
$C$DW$190	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$190, DW_AT_low_pc($C$DW$L$_Task_execute$11$B)
	.dwattr $C$DW$190, DW_AT_high_pc($C$DW$L$_Task_execute$11$E)
$C$DW$191	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$191, DW_AT_low_pc($C$DW$L$_Task_execute$12$B)
	.dwattr $C$DW$191, DW_AT_high_pc($C$DW$L$_Task_execute$12$E)
$C$DW$192	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$192, DW_AT_low_pc($C$DW$L$_Task_execute$13$B)
	.dwattr $C$DW$192, DW_AT_high_pc($C$DW$L$_Task_execute$13$E)
$C$DW$193	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$193, DW_AT_low_pc($C$DW$L$_Task_execute$14$B)
	.dwattr $C$DW$193, DW_AT_high_pc($C$DW$L$_Task_execute$14$E)
$C$DW$194	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$194, DW_AT_low_pc($C$DW$L$_Task_execute$17$B)
	.dwattr $C$DW$194, DW_AT_high_pc($C$DW$L$_Task_execute$17$E)
$C$DW$195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$195, DW_AT_low_pc($C$DW$L$_Task_execute$20$B)
	.dwattr $C$DW$195, DW_AT_high_pc($C$DW$L$_Task_execute$20$E)
$C$DW$196	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$196, DW_AT_low_pc($C$DW$L$_Task_execute$23$B)
	.dwattr $C$DW$196, DW_AT_high_pc($C$DW$L$_Task_execute$23$E)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_Task_execute$26$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_Task_execute$26$E)
$C$DW$198	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$198, DW_AT_low_pc($C$DW$L$_Task_execute$29$B)
	.dwattr $C$DW$198, DW_AT_high_pc($C$DW$L$_Task_execute$29$E)
$C$DW$199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$199, DW_AT_low_pc($C$DW$L$_Task_execute$32$B)
	.dwattr $C$DW$199, DW_AT_high_pc($C$DW$L$_Task_execute$32$E)
$C$DW$200	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$200, DW_AT_low_pc($C$DW$L$_Task_execute$35$B)
	.dwattr $C$DW$200, DW_AT_high_pc($C$DW$L$_Task_execute$35$E)
$C$DW$201	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$201, DW_AT_low_pc($C$DW$L$_Task_execute$38$B)
	.dwattr $C$DW$201, DW_AT_high_pc($C$DW$L$_Task_execute$38$E)
$C$DW$202	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$202, DW_AT_low_pc($C$DW$L$_Task_execute$41$B)
	.dwattr $C$DW$202, DW_AT_high_pc($C$DW$L$_Task_execute$41$E)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_Task_execute$44$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_Task_execute$44$E)
$C$DW$204	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$204, DW_AT_low_pc($C$DW$L$_Task_execute$6$B)
	.dwattr $C$DW$204, DW_AT_high_pc($C$DW$L$_Task_execute$6$E)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_Task_execute$7$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_Task_execute$7$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_Task_execute$45$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_Task_execute$45$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_Task_execute$46$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_Task_execute$46$E)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_Task_execute$47$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_Task_execute$47$E)
	.dwendtag $C$DW$165

	.dwattr $C$DW$104, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x140)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$104

	.sect	".text"
	.clink
	.global	_Task_delete

$C$DW$209	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_delete")
	.dwattr $C$DW$209, DW_AT_low_pc(_Task_delete)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_Task_delete")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$209, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x142)
	.dwattr $C$DW$209, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$209, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$209, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 323,column 1,is_stmt,address _Task_delete
$C$DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_delete                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_Task_delete:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _NOTIFY_unregister,A3 ; |329| 
           MVKH    .S1     _NOTIFY_unregister,A3 ; |329| 
           MVKL    .S2     _Init_notify,B6   ; |329| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$211, DW_AT_TI_call
           CALL    .S2X    A3                ; |329| 
           STW     .D2T2   B13,*SP--(8)      ; |323| 
           MVKH    .S2     _Init_notify,B6   ; |329| 
           MV      .L1     A4,A8             ; |323| 
           ZERO    .L2     B4                ; |329| 

           STDW    .D2T1   A11:A10,*SP--     ; |323| 
||         MV      .L1     A4,A10            ; |323| 
||         MV      .L2     B3,B13            ; |323| 
||         ADDKPC  .S2     $C$RL56,B3,0      ; |329| 
||         MVK     .S1     0x5,A6            ; |329| 
||         MVK     .D1     0x1,A4            ; |329| 

$C$RL56:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |329| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 17
           MVKL    .S1     _NOTIFY_unregister,A3 ; |335| 
           MVKH    .S1     _NOTIFY_unregister,A3 ; |335| 
           MVKL    .S2     _Command_notify,B6 ; |335| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$212, DW_AT_TI_call
           CALL    .S2X    A3                ; |335| 
           MVKH    .S2     _Command_notify,B6 ; |335| 
           ADDKPC  .S2     $C$RL57,B3,2      ; |335| 

           MVK     .L1     0x1,A4            ; |335| 
||         ZERO    .L2     B4                ; |335| 
||         MVK     .S1     0x6,A6            ; |335| 
||         MV      .D1     A10,A8            ; |335| 

$C$RL57:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |335| 
           MVKL    .S2     _MEM_free,B5      ; |342| 

           MVKH    .S2     _MEM_free,B5      ; |342| 
||         MVKL    .S1     _DDR2,A3

$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_MEM_free")
	.dwattr $C$DW$213, DW_AT_TI_call

           CALL    .S2     B5                ; |342| 
||         MVKH    .S1     _DDR2,A3

           MV      .L1     A4,A11            ; |335| 
||         LDW     .D1T1   *A3,A4            ; |342| 

           ADDKPC  .S2     $C$RL58,B3,2      ; |342| 

           MV      .L2X    A10,B4            ; |342| 
||         MVK     .S1     0x28,A6           ; |342| 

$C$RL58:   ; CALL OCCURS {_MEM_free} {0}     ; |342| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L2     B13,B3            ; |348| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_TI_return

           RET     .S2     B3                ; |348| 
||         MV      .L1     A11,A4            ; |347| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |348| 

           LDW     .D2T2   *++SP(8),B13      ; |348| 
	.dwpsn	file "task.c",line 348,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |348| 
	.dwattr $C$DW$209, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x15c)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$209

	.sect	".text"
	.clink
	.global	_Task_create

$C$DW$215	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_create")
	.dwattr $C$DW$215, DW_AT_low_pc(_Task_create)
	.dwattr $C$DW$215, DW_AT_high_pc(0x00)
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_Task_create")
	.dwattr $C$DW$215, DW_AT_external
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$215, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$215, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$215, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$215, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$215, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 48,column 1,is_stmt,address _Task_create
$C$DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_name("infoPtr")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_create                                                 *
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
_Task_create:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           STW     .D2T1   A11,*SP--(8)      ; |48| 
||         MVKL    .S2     _MEM_valloc,B5    ; |56| 

           STDW    .D2T2   B11:B10,*SP--     ; |48| 
||         MVKH    .S2     _MEM_valloc,B5    ; |56| 
||         MVKL    .S1     _DDR2,A3

$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x04)
	.dwattr $C$DW$217, DW_AT_name("_MEM_valloc")
	.dwattr $C$DW$217, DW_AT_TI_call

           STW     .D2T1   A10,*SP--(8)      ; |48| 
||         CALL    .S2     B5                ; |56| 
||         MVKH    .S1     _DDR2,A3

           MV      .L2X    A4,B10            ; |48| 
||         LDW     .D1T1   *A3,A4            ; |56| 

           MVK     .S2     0x28,B4           ; |56| 
           MV      .L2     B3,B11            ; |48| 
           ADDKPC  .S2     $C$RL59,B3,0      ; |56| 

           ZERO    .L1     A6                ; |56| 
||         ZERO    .L2     B6                ; |56| 

$C$RL59:   ; CALL OCCURS {_MEM_valloc} {0}   ; |56| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12

           MVK     .L2     0x1,B4            ; |59| 
||         MV      .L1     A4,A0             ; |57| 
||         ZERO    .D1     A10               ; |50| 
||         MVKL    .S1     _NOTIFY_register,A7 ; |82| 
||         MVKL    .S2     _Init_notify,B6   ; |82| 
||         STW     .D2T1   A4,*B10           ; |56| 

   [ A0]   MV      .L1     A0,A10            ; |63| 
||         MVKH    .S2     _Init_notify,B6   ; |82| 
||         MVK     .D1     0x1,A4            ; |82| 
||         ZERO    .L2     B7                ; |82| 
||         ZERO    .D2     B5                ; |82| 
||         MVKL    .S1     __SEM_dopost,A5

           MV      .L1X    B4,A11            ; |63| 
||         ADD     .D1     A10,24,A3         ; |87| 
||         ZERO    .L2     B4                ; |82| 
||         MVK     .S1     0x5,A6            ; |82| 

   [ A0]   ZERO    .L1     A11               ; |49| 
||         MVKH    .S1     _NOTIFY_register,A7 ; |82| 
||         MV      .D1     A10,A8            ; |82| 

           MV      .L1     A11,A0            ; |82| 
||         MVKH    .S1     __SEM_dopost,A5

   [ A0]   MVKL    .S1     _NOTIFY_notify,A3 ; |109| 
|| [ A0]   MVK     .L1     0x5,A6            ; |109| 
|| [ A0]   MVK     .D1     0x1,A4            ; |109| 
|| [ A0]   ZERO    .L2     B4                ; |109| 
|| [ A0]   MVK     .S2     0x2,B6            ; |109| 

   [ A0]   B       .S2     $C$L19            ; |68| 
|| [ A0]   MVKH    .S1     _NOTIFY_notify,A3 ; |109| 
|| [!A0]   STW     .D1T2   B5,*+A10(36)      ; |72| 

   [ A0]   BNOP    .S1     $C$L21,3          ; |107| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$218, DW_AT_TI_call

   [!A0]   CALL    .S2X    A7                ; |82| 
|| [!A0]   STW     .D1T2   B7,*A10           ; |70| 

           ; BRANCHCC OCCURS {$C$L19}        ; |68| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           STW     .D1T1   A5,*+A10(16)      ; |89| 
           STW     .D1T2   B5,*+A10(12)      ; |88| 
           STW     .D1T1   A3,*+A10(24)      ; |87| 
           STW     .D1T1   A3,*+A10(28)      ; |87| 

           STW     .D1T2   B5,*+A10(20)      ; |86| 
||         ADDKPC  .S2     $C$RL60,B3,0      ; |82| 

$C$RL60:   ; CALL OCCURS {_NOTIFY_register} {0}  ; |82| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A4,A0             ; |82| 
||         MVKL    .S2     _Command_notify,B6 ; |92| 
||         MV      .S1     A10,A8            ; |92| 
||         MVK     .D1     0x6,A6            ; |92| 
||         ZERO    .L2     B4                ; |92| 

   [ A0]   BNOP    .S1     $C$L23,1          ; |89| 
||         MVKL    .S2     _NOTIFY_register,B5 ; |92| 
||         MV      .L1     A4,A3             ; |82| 

           MVKH    .S2     _NOTIFY_register,B5 ; |92| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$219, DW_AT_TI_call
   [!A0]   CALL    .S2     B5                ; |92| 
           MVK     .L1     0x1,A4            ; |92| 
           MVKH    .S2     _Command_notify,B6 ; |92| 
           ; BRANCHCC OCCURS {$C$L23}        ; |89| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
           ADDKPC  .S2     $C$RL61,B3,2      ; |92| 
$C$RL61:   ; CALL OCCURS {_NOTIFY_register} {0}  ; |92| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A4,A0             ; |92| 
||         MV      .S1     A4,A11            ; |92| 

   [ A0]   BNOP    .S2     $C$L20,4          ; |92| 
|| [!A0]   MVKL    .S1     _NOTIFY_notify,A3 ; |109| 
|| [!A0]   MVK     .L1     0x1,A4            ; |109| 
|| [!A0]   MVK     .L2     0x2,B6            ; |109| 
|| [!A0]   MVK     .D1     0x5,A6            ; |109| 
|| [!A0]   ZERO    .D2     B4                ; |109| 

   [!A0]   MVKH    .S1     _NOTIFY_notify,A3 ; |109| 
           ; BRANCHCC OCCURS {$C$L20}        ; |92| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
   [ A0]   BNOP    .S1     $C$L21,4          ; |107| 
;** --------------------------------------------------------------------------*
$C$L19:    
;          EXCLUSIVE CPU CYCLES: 1
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$220, DW_AT_TI_call
   [!A0]   CALL    .S2X    A3                ; |109| 
           ; BRANCHCC OCCURS {$C$L21}        ; |107| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           ADDKPC  .S2     $C$RL62,B3,4      ; |109| 
$C$RL62:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |109| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MVKL    .S1     _SEM_pend,A3      ; |123| 
||         MV      .L1     A4,A0             ; |109| 

   [!A0]   BNOP    .S2     $C$L22,1          ; |109| 
||         MVKH    .S1     _SEM_pend,A3      ; |123| 

$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$221, DW_AT_TI_call
   [!A0]   CALL    .S2X    A3                ; |123| 
           MV      .L1     A4,A11            ; |109| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L22}        ; |109| 
;** --------------------------------------------------------------------------*
$C$L20:    
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T1   *++SP(8),A10      ; |127| 
||         MV      .L2     B11,B3            ; |127| 

$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x04)
	.dwattr $C$DW$222, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B11:B10     ; |127| 
||         RET     .S2     B3                ; |127| 

           LDW     .D2T1   *++SP(8),A11      ; |127| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |127| 
;** --------------------------------------------------------------------------*
$C$L21:    
;          EXCLUSIVE CPU CYCLES: 7
           MVKL    .S1     _SEM_pend,A3      ; |123| 
           MVKH    .S1     _SEM_pend,A3      ; |123| 
           NOP             1
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$223, DW_AT_TI_call
           CALL    .S2X    A3                ; |123| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L22:    
;          EXCLUSIVE CPU CYCLES: 2
           ADD     .L1     4,A10,A4          ; |123| 

           ADD     .L1     4,A10,A10         ; |123| 
||         MVK     .L2     0xffffffff,B4     ; |123| 
||         ADDKPC  .S2     $C$RL63,B3,0      ; |123| 

$C$RL63:   ; CALL OCCURS {_SEM_pend} {0}     ; |123| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _SEM_pend,B5      ; |124| 
           MVKH    .S2     _SEM_pend,B5      ; |124| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$224, DW_AT_TI_call
           CALL    .S2     B5                ; |124| 
           ADDKPC  .S2     $C$RL64,B3,3      ; |124| 

           MV      .L1     A10,A4            ; |124| 
||         MVK     .L2     0xffffffff,B4     ; |124| 

$C$RL64:   ; CALL OCCURS {_SEM_pend} {0}     ; |124| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
           MV      .L1     A11,A3            ; |124| 
;** --------------------------------------------------------------------------*
$C$L23:    
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T1   *++SP(8),A10      ; |127| 
||         MV      .L2     B11,B3            ; |127| 

$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x04)
	.dwattr $C$DW$225, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B11:B10     ; |127| 
||         RET     .S2     B3                ; |127| 

           LDW     .D2T1   *++SP(8),A11      ; |127| 
           MV      .L1     A3,A4             ; |126| 
	.dwpsn	file "task.c",line 127,column 1,is_stmt
           NOP             3
           ; BRANCH OCCURS {B3}              ; |127| 
	.dwattr $C$DW$215, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$215, DW_AT_TI_end_line(0x7f)
	.dwattr $C$DW$215, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$215

	.sect	".text"
	.clink

$C$DW$226	.dwtag  DW_TAG_subprogram, DW_AT_name("Init_notify")
	.dwattr $C$DW$226, DW_AT_low_pc(_Init_notify)
	.dwattr $C$DW$226, DW_AT_high_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_Init_notify")
	.dwattr $C$DW$226, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$226, DW_AT_TI_begin_line(0x173)
	.dwattr $C$DW$226, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$226, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$226, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 372,column 1,is_stmt,address _Init_notify
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg4]
$C$DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg20]
$C$DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: Init_notify                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_Init_notify:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 17
           MVKL    .S1     _count$1,A5
           MVKH    .S1     _count$1,A5
           LDW     .D1T1   *A5,A3            ; |378| 
           MVKL    .S2     _dspResFrame,B6
           MVKH    .S2     _dspResFrame,B6
           ADD     .L1     8,A6,A4           ; |384| 
           MVKL    .S2     _dspRectangle,B7
           ADD     .L1     1,A3,A3           ; |378| 
           CMPEQ   .L1     A3,2,A0           ; |382| 

   [ A0]   STW     .D2T1   A4,*B6            ; |384| 
||         MVKL    .S2     _SEM_post,B6      ; |387| 

           MVKH    .S2     _SEM_post,B6      ; |387| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_SEM_post")
	.dwattr $C$DW$230, DW_AT_TI_call
	.dwattr $C$DW$230, DW_AT_TI_return
           CALLRET .S2     B6                ; |387| 
           MVKL    .S2     _dspColor,B8
           MVKH    .S2     _dspRectangle,B7
           MV      .L2X    A6,B5             ; |372| 

           CMPEQ   .L2X    A3,1,B0           ; |379| 
||         MVKH    .S2     _dspColor,B8
|| [ A0]   STW     .D2T2   B5,*B7            ; |383| 

	.dwpsn	file "task.c",line 388,column 1,is_stmt

   [ B0]   STW     .D2T2   B5,*B8            ; |380| 
||         ADD     .L1X    4,B4,A4           ; |387| 
||         STW     .D1T1   A3,*A5            ; |378| 

$C$RL65:   ; CALL-RETURN OCCURS {_SEM_post} {0}  ; |387| 
	.dwattr $C$DW$226, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$226, DW_AT_TI_end_line(0x184)
	.dwattr $C$DW$226, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$226

	.sect	".text"
	.clink

$C$DW$231	.dwtag  DW_TAG_subprogram, DW_AT_name("Command_notify")
	.dwattr $C$DW$231, DW_AT_low_pc(_Command_notify)
	.dwattr $C$DW$231, DW_AT_high_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_Command_notify")
	.dwattr $C$DW$231, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$231, DW_AT_TI_begin_line(0x186)
	.dwattr $C$DW$231, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$231, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$231, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 391,column 1,is_stmt,address _Command_notify
$C$DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg4]
$C$DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg20]
$C$DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: Command_notify                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_Command_notify:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _SEM_post,B5      ; |395| 
           MVKH    .S2     _SEM_post,B5      ; |395| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_SEM_post")
	.dwattr $C$DW$235, DW_AT_TI_call
	.dwattr $C$DW$235, DW_AT_TI_return
           CALLRET .S2     B5                ; |395| 
           MVKL    .S1     _function,A3
           MVKH    .S1     _function,A3
           STB     .D1T1   A6,*A3            ; |393| 
           ADD     .L1X    4,B4,A4           ; |395| 
	.dwpsn	file "task.c",line 397,column 1,is_stmt
           NOP             1
$C$RL66:   ; CALL-RETURN OCCURS {_SEM_post} {0}  ; |395| 
	.dwattr $C$DW$231, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$231, DW_AT_TI_end_line(0x18d)
	.dwattr $C$DW$231, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$231

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_MEM_free
	.global	_MEM_valloc
	.global	_SEM_pend
	.global	_SEM_post
	.global	__SEM_dopost
	.global	_NOTIFY_register
	.global	_NOTIFY_unregister
	.global	_NOTIFY_notify
	.global	_BCACHE_inv
	.global	_BCACHE_wb
	.global	_initTarget
	.global	_initWeight
	.global	_HC_Epanechnikov_kernel
	.global	_HC_pdf_representation_target
	.global	_pdf_representation
	.global	_CalcWeight
	.global	_retCandidate
	.global	_DDR2
	.global	_MPCSXFER_BufferSize
	.global	_memcpy

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$236	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$39	.dwtag  DW_TAG_const_type
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)

$C$DW$T$58	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$237	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$37)
$C$DW$238	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$42)
$C$DW$239	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$42)
	.dwendtag $C$DW$T$58

$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x20)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("FnNotifyCbck")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
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
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x20)
$C$DW$T$81	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$64)
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
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
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
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$67	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$67, DW_AT_address_class(0x20)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("next")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("prev")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x10)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$242, DW_AT_name("wListElem")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$243, DW_AT_name("wCount")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$244, DW_AT_name("fxn")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$30, DW_AT_name("signed char")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x20)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$245, DW_AT_name("job")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$246, DW_AT_name("count")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$247, DW_AT_name("pendQ")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$248, DW_AT_name("name")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x20)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("Task_TransferInfo_tag")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x28)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$249, DW_AT_name("dataBuf")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_dataBuf")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$250, DW_AT_name("notifySemObj")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_notifySemObj")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$251, DW_AT_name("bufferSize")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_bufferSize")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("Task_TransferInfo")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
$C$DW$T$100	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_address_class(0x20)
$C$DW$T$101	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_address_class(0x20)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg0]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg1]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg2]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg3]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg4]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg5]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg6]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg7]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg8]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg9]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg10]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg11]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg12]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg13]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg14]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg15]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg16]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg17]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg18]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg19]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg20]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg21]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg22]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg23]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg24]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg25]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg26]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg27]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg28]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg29]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg30]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg31]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x20]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x21]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x22]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x23]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x24]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x25]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x26]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x27]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x28]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x29]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x30]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x31]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x32]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x33]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x34]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x35]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x36]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x37]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x38]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x39]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x40]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x41]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x42]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x43]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x44]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x45]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x46]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x47]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x48]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x49]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x50]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x51]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x52]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x53]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x54]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x55]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x56]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x57]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x58]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x59]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x60]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x61]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x62]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x63]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x64]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x65]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x66]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x67]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x68]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x69]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x70]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x71]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x72]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x73]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x74]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x75]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x76]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x77]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_regx 0x78]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_regx 0x79]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

