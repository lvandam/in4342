;******************************************************************************
;* TMS320C6x C/C++ Codegen                                       Unix v6.1.17 *
;* Date/Time created: Sat Jun 10 18:12:07 2017                                *
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
	.dwattr $C$DW$CU, DW_AT_name("task.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen Unix v6.1.17 Copyright (c) 1996-2010 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/constantinos/embLab/neon_handing/dsp")
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


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_free")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_MEM_free")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$39)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_valloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_MEM_valloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$40)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$40)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$5


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_pend")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_SEM_pend")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$45)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$76)
	.dwendtag $C$DW$10


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_post")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_SEM_post")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$45)
	.dwendtag $C$DW$13


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("_SEM_dopost")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("__SEM_dopost")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$45)
	.dwendtag $C$DW$15


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_register")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_NOTIFY_register")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$37)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$37)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$37)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$52)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$17


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_unregister")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_NOTIFY_unregister")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$37)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$37)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$37)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$52)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$23


$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_notify")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_NOTIFY_notify")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$37)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$37)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$37)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$29


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_inv")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_BCACHE_inv")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$39)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$40)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$53)
	.dwendtag $C$DW$34


$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_wb")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_BCACHE_wb")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$39)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$40)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$53)
	.dwendtag $C$DW$38


$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("initTarget")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_initTarget")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$56)
	.dwendtag $C$DW$42


$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("initWeight")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_initWeight")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$59)
	.dwendtag $C$DW$44


$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_Epanechnikov_kernel")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external

$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("HC_pdf_representation_target")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_HC_pdf_representation_target")
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$56)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$47


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("pdf_representation")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_pdf_representation")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$64)
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$50


$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcWeight")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_CalcWeight")
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$56)
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$64)
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$35)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$59)
	.dwendtag $C$DW$53

$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("DDR2")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_DDR2")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_external
	.global	_dspColor
_dspColor:	.usect	".far",4,4
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("dspColor")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_dspColor")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr _dspColor]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$59, DW_AT_external
	.global	_dspResFrame
_dspResFrame:	.usect	".far",4,4
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("dspResFrame")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_dspResFrame")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr _dspResFrame]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$60, DW_AT_external
	.global	_dspRectangle
_dspRectangle:	.usect	".far",4,4
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("dspRectangle")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_dspRectangle")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr _dspRectangle]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$61, DW_AT_external
	.global	_function
_function:	.usect	".far",1,1
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("function")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_function")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr _function]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$62, DW_AT_external
_count$1:	.usect	".far",4,4
;	/opt/bbToolChain/usr/local/share/c6000/bin/acp6x -@/tmp/30573KV74Oe 
	.sect	".text"
	.clink

$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_new")
	.dwattr $C$DW$63, DW_AT_low_pc(_SEM_new)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_SEM_new")
	.dwattr $C$DW$63, DW_AT_TI_begin_file("/opt/bbToolChain/usr/local/share/tidspbios/bios_5_41_00_06/packages/ti/bios/include/sem.h")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$63, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$63, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$63, DW_AT_TI_skeletal
	.dwpsn	file "/opt/bbToolChain/usr/local/share/tidspbios/bios_5_41_00_06/packages/ti/bios/include/sem.h",line 85,column 1,is_stmt,address _SEM_new
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sem")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_sem")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg4]
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: SEM_new                                                     *
;*                                                                            *
;*   Regs Modified     : A3,A4,B4,B5,SP                                       *
;*   Regs Used         : A3,A4,B3,B4,B5,SP                                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
_SEM_new:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 34
           SUB     .L2     SP,8,SP           ; |85| 

           STW     .D2T2   B4,*+SP(8)        ; |85| 
||         MV      .L2X    A4,B4             ; |85| 

           STW     .D2T2   B4,*+SP(4)        ; |85| 
           LDW     .D2T2   *+SP(8),B4        ; |86| 
           MV      .L1     A4,A3             ; |86| 
           ZERO    .L1     A4                ; |88| 
           NOP             2
           STW     .D1T2   B4,*+A3(16)       ; |86| 
           LDW     .D2T2   *+SP(4),B4        ; |87| 
           NOP             4

           MV      .L2     B4,B5             ; |87| 
||         ADD     .D2     B4,20,B4          ; |87| 

           STW     .D2T2   B4,*+B5(24)       ; |87| 
           LDW     .D2T2   *+SP(4),B5        ; |87| 
           NOP             4
           STW     .D2T2   B4,*+B5(20)       ; |87| 
           LDW     .D2T1   *+SP(4),A3        ; |88| 
           NOP             4
           STW     .D1T1   A4,*+A3(8)        ; |88| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

           RETNOP  .S2     B3,2              ; |90| 
||         LDW     .D2T1   *+SP(4),A3        ; |89| 

           MVKL    .S1     __SEM_dopost,A4
           MVKH    .S1     __SEM_dopost,A4
	.dwpsn	file "/opt/bbToolChain/usr/local/share/tidspbios/bios_5_41_00_06/packages/ti/bios/include/sem.h",line 90,column 1,is_stmt

           STW     .D1T1   A4,*+A3(12)       ; |89| 
||         ADD     .L2     8,SP,SP           ; |90| 

           ; BRANCH OCCURS {B3}              ; |90| 
	.dwattr $C$DW$63, DW_AT_TI_end_file("/opt/bbToolChain/usr/local/share/tidspbios/bios_5_41_00_06/packages/ti/bios/include/sem.h")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$63

	.sect	".text"
	.clink
	.global	_Task_create

$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_create")
	.dwattr $C$DW$67, DW_AT_low_pc(_Task_create)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_Task_create")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$67, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$67, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$67, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 48,column 1,is_stmt,address _Task_create
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("infoPtr")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_create                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                  *
;******************************************************************************
_Task_create:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           ZERO    .L2     B0                ; |49| 
||         STW     .D2T2   B3,*SP--(16)      ; |48| 
||         MVKL    .S1     _MEM_valloc,A3    ; |56| 
||         ZERO    .S2     B4                ; |49| 
||         ZERO    .L1     A6                ; |49| 

   [ B0]   B       .S2     $C$L1             ; |54| 
||         STW     .D2T1   A4,*+SP(4)        ; |48| 
||         MVKH    .S1     _MEM_valloc,A3    ; |56| 
||         ZERO    .L2     B6                ; |49| 

           MVKL    .S1     _DDR2,A4
||         STW     .D2T2   B4,*+SP(12)       ; |50| 

           MVKH    .S1     _DDR2,A4
||         STW     .D2T2   B4,*+SP(8)        ; |49| 

   [!B0]   LDW     .D1T1   *A4,A4            ; |56| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_MEM_valloc")
	.dwattr $C$DW$69, DW_AT_TI_call

   [!B0]   CALL    .S2X    A3                ; |56| 
|| [ B0]   LDW     .D2T2   *+SP(8),B0        ; |68| 

           MVK     .S2     0x28,B4           ; |56| 
           ; BRANCHCC OCCURS {$C$L1}         ; |54| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 4
           ADDKPC  .S2     $C$RL0,B3,3       ; |56| 
$C$RL0:    ; CALL OCCURS {_MEM_valloc} {0}   ; |56| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 24
           LDW     .D2T2   *+SP(4),B4        ; |56| 
           MVK     .L2     1,B5              ; |59| 
           NOP             3
           STW     .D2T1   A4,*B4            ; |56| 
           LDW     .D2T1   *+SP(4),A3        ; |57| 
           NOP             4
           LDW     .D1T2   *A3,B0            ; |57| 
           MV      .L2X    A3,B4             ; |57| 
           NOP             3
   [ B0]   LDW     .D2T2   *B4,B4            ; |63| 
   [!B0]   STW     .D2T2   B5,*+SP(8)        ; |59| 
           NOP             3
   [ B0]   STW     .D2T2   B4,*+SP(12)       ; |63| 
           LDW     .D2T2   *+SP(8),B0        ; |68| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L1:    
;          EXCLUSIVE CPU CYCLES: 9

           ZERO    .L1     A4                ; |73| 
||         ZERO    .L2     B4                ; |73| 
||         LDW     .D2T2   *+SP(12),B5       ; |70| 

           MVKL    .S1     _SEM_new,A3       ; |73| 
           ZERO    .L1     A5                ; |73| 

   [ B0]   BNOP    .S1     $C$L2,1           ; |68| 
|| [ B0]   MVKL    .S2     _Init_notify,B6   ; |82| 

   [!B0]   STW     .D2T1   A5,*B5            ; |70| 
           LDW     .D2T2   *+SP(12),B5       ; |72| 
   [ B0]   LDW     .D2T2   *+SP(8),B0        ; |80| 
           MVKH    .S1     _SEM_new,A3       ; |73| 
           ; BRANCHCC OCCURS {$C$L2}         ; |68| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           MVKL    .S2     _Init_notify,B6   ; |82| 
           NOP             1
           STW     .D2T1   A4,*+B5(36)       ; |72| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x04)
	.dwattr $C$DW$70, DW_AT_name("_SEM_new")
	.dwattr $C$DW$70, DW_AT_TI_call

           LDW     .D2T2   *+SP(12),B5       ; |73| 
||         CALL    .S2X    A3                ; |73| 

           ADDKPC  .S2     $C$RL1,B3,3       ; |73| 
           ADD     .L1X    4,B5,A4           ; |73| 
$C$RL1:    ; CALL OCCURS {_SEM_new} {0}      ; |73| 
           LDW     .D2T2   *+SP(8),B0        ; |80| 
           NOP             1
;** --------------------------------------------------------------------------*
$C$L2:    
;          EXCLUSIVE CPU CYCLES: 9

           LDW     .D2T1   *+SP(12),A8       ; |82| 
||         MVK     .L1     0x5,A6            ; |82| 
||         MV      .L2X    A5,B4             ; |82| 
||         MVKH    .S2     _Init_notify,B6   ; |82| 
||         MVK     .S1     0x1,A4            ; |82| 

           MVKL    .S1     _NOTIFY_register,A3 ; |82| 
           MVKH    .S1     _NOTIFY_register,A3 ; |82| 

   [ B0]   ZERO    .L2     B4                ; |109| 
|| [ B0]   MVK     .L1     0x1,A4            ; |109| 
|| [ B0]   MVK     .S1     0x5,A6            ; |109| 
|| [ B0]   B       .S2     $C$L3             ; |80| 

   [ B0]   B       .S1     $C$L4             ; |107| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$71, DW_AT_TI_call
   [!B0]   CALL    .S2X    A3                ; |82| 
   [ B0]   MVK     .L2     0x2,B6            ; |109| 
   [ B0]   MVKL    .S1     _NOTIFY_notify,A3 ; |109| 
   [ B0]   MVKH    .S1     _NOTIFY_notify,A3 ; |109| 
           ; BRANCHCC OCCURS {$C$L3}         ; |80| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
           ADDKPC  .S2     $C$RL2,B3,1       ; |82| 
$C$RL2:    ; CALL OCCURS {_NOTIFY_register} {0}  ; |82| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L2X    A4,B0             ; |82| 
||         LDW     .D2T1   *+SP(12),A8       ; |92| 
||         MVKL    .S2     _Command_notify,B6 ; |92| 
||         MVK     .L1     0x6,A6            ; |92| 
||         MV      .S1     A4,A3             ; |92| 

   [ B0]   BNOP    .S1     $C$L5,1           ; |89| 
||         STW     .D2T1   A4,*+SP(8)        ; |82| 
||         MVK     .L1     0x1,A4            ; |92| 
||         MVKL    .S2     _NOTIFY_register,B5 ; |92| 

           MVKH    .S2     _NOTIFY_register,B5 ; |92| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$72, DW_AT_TI_call
   [!B0]   CALL    .S2     B5                ; |92| 
           ZERO    .L2     B4                ; |92| 
           MVKH    .S2     _Command_notify,B6 ; |92| 
           ; BRANCHCC OCCURS {$C$L5}         ; |89| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
           ADDKPC  .S2     $C$RL3,B3,2       ; |92| 
$C$RL3:    ; CALL OCCURS {_NOTIFY_register} {0}  ; |92| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L2X    A4,B0             ; |92| 
||         MV      .L1     A4,A3             ; |92| 
||         STW     .D2T1   A4,*+SP(8)        ; |92| 

   [ B0]   BNOP    .S2     $C$L5,4           ; |99| 
|| [!B0]   MVKL    .S1     _NOTIFY_notify,A3 ; |109| 
|| [!B0]   MVK     .L1     0x1,A4            ; |109| 
|| [!B0]   MVK     .L2     0x2,B6            ; |109| 
|| [!B0]   MVK     .D1     0x5,A6            ; |109| 
|| [!B0]   ZERO    .D2     B4                ; |109| 

   [!B0]   MVKH    .S1     _NOTIFY_notify,A3 ; |109| 
           ; BRANCHCC OCCURS {$C$L5}         ; |99| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
   [ B0]   BNOP    .S1     $C$L4,4           ; |107| 
;** --------------------------------------------------------------------------*
$C$L3:    
;          EXCLUSIVE CPU CYCLES: 1
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$73, DW_AT_TI_call
   [!B0]   CALL    .S2X    A3                ; |109| 
           ; BRANCHCC OCCURS {$C$L4}         ; |107| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           ADDKPC  .S2     $C$RL4,B3,4       ; |109| 
$C$RL4:    ; CALL OCCURS {_NOTIFY_notify} {0}  ; |109| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           STW     .D2T1   A4,*+SP(8)        ; |109| 
||         MV      .L2X    A4,B0             ; |109| 
||         MV      .L1     A4,A3             ; |109| 

   [ B0]   BNOP    .S1     $C$L6,4           ; |115| 
|| [ B0]   LDW     .D2T2   *++SP(16),B3      ; |127| 
|| [ B0]   MV      .L1     A3,A4             ; |126| 

$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return
   [ B0]   RET     .S2     B3                ; |127| 
           ; BRANCHCC OCCURS {$C$L6}         ; |115| 
;** --------------------------------------------------------------------------*
$C$L4:    
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _SEM_pend,B5      ; |123| 
           MVKH    .S2     _SEM_pend,B5      ; |123| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$75, DW_AT_TI_call

           CALL    .S2     B5                ; |123| 
||         LDW     .D2T2   *+SP(12),B4       ; |123| 

           ADDKPC  .S2     $C$RL5,B3,3       ; |123| 

           ADD     .L1X    4,B4,A4           ; |123| 
||         MVK     .L2     0xffffffff,B4     ; |123| 

$C$RL5:    ; CALL OCCURS {_SEM_pend} {0}     ; |123| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _SEM_pend,A3      ; |124| 
           MVKH    .S1     _SEM_pend,A3      ; |124| 
           LDW     .D2T2   *+SP(12),B4       ; |124| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$76, DW_AT_TI_call
           CALL    .S2X    A3                ; |124| 
           ADDKPC  .S2     $C$RL6,B3,3       ; |124| 

           ADD     .L1X    4,B4,A4           ; |124| 
||         MVK     .L2     0xffffffff,B4     ; |124| 

$C$RL6:    ; CALL OCCURS {_SEM_pend} {0}     ; |124| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
           LDW     .D2T1   *+SP(8),A3        ; |126| 
;** --------------------------------------------------------------------------*
$C$L5:    
;          EXCLUSIVE CPU CYCLES: 6
           LDW     .D2T2   *++SP(16),B3      ; |127| 
           NOP             4
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_return

           RET     .S2     B3                ; |127| 
||         MV      .L1     A3,A4             ; |126| 

;** --------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 5
	.dwpsn	file "task.c",line 127,column 1,is_stmt
           NOP             5
           ; BRANCH OCCURS {B3}              ; |127| 
	.dwattr $C$DW$67, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x7f)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$67

	.sect	".text"
	.clink
	.global	_Task_execute

$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_execute")
	.dwattr $C$DW$78, DW_AT_low_pc(_Task_execute)
	.dwattr $C$DW$78, DW_AT_high_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_Task_execute")
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$78, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$78, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$78, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr $C$DW$78, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 130,column 1,is_stmt,address _Task_execute
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_execute                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 24 Auto + 4 Save = 28 byte                  *
;******************************************************************************
_Task_execute:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 18

           MVKL    .S1     _dspResFrame,A3
||         STW     .D2T2   B3,*SP--(32)      ; |130| 

           MVKH    .S1     _dspResFrame,A3
||         STW     .D2T1   A4,*+SP(4)        ; |130| 

           LDW     .D1T1   *A3,A3            ; |133| 
           ZERO    .L1     A4                ; |135| 
           ZERO    .L2     B4                ; |135| 
           STW     .D2T1   A4,*+SP(20)       ; |134| 
           STW     .D2T2   B4,*+SP(16)       ; |135| 

           STW     .D2T1   A3,*+SP(24)       ; |133| 
||         MVC     .S2     B4,TSCL           ; |136| 

           MVC     .S2     TSCL,B4           ; |138| 
           MVKL    .S1     _HC_Epanechnikov_kernel,A3 ; |139| 
           MVKH    .S1     _HC_Epanechnikov_kernel,A3 ; |139| 
           STW     .D2T2   B4,*+SP(8)        ; |138| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$80, DW_AT_TI_call
           CALL    .S2X    A3                ; |139| 
           ADDKPC  .S2     $C$RL7,B3,4       ; |139| 
$C$RL7:    ; CALL OCCURS {_HC_Epanechnikov_kernel} {0}  ; |139| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 26
           MVKL    .S1     _initTarget,A3    ; |140| 
           MVKH    .S1     _initTarget,A3    ; |140| 
           MVK     .L1     0x1,A4            ; |140| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_initTarget")
	.dwattr $C$DW$81, DW_AT_TI_call
           CALL    .S2X    A3                ; |140| 
           ADDKPC  .S2     $C$RL8,B3,4       ; |140| 
$C$RL8:    ; CALL OCCURS {_initTarget} {0}   ; |140| 
           MVC     .S2     TSCL,B4           ; |141| 
           STW     .D2T2   B4,*+SP(12)       ; |141| 
           LDW     .D2T2   *+SP(8),B4        ; |142| 
           LDW     .D2T2   *+SP(12),B5       ; |142| 
           LDW     .D2T2   *+SP(20),B6       ; |142| 
           MVK     .L1     0x1,A4            ; |143| 
           NOP             2
           SUB     .L2     B5,B4,B4          ; |142| 

           ADD     .L2     B6,B4,B5          ; |142| 
||         MVKL    .S2     _Update_State,B4  ; |143| 

           MVKH    .S2     _Update_State,B4  ; |143| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_Update_State")
	.dwattr $C$DW$82, DW_AT_TI_call
           CALL    .S2     B4                ; |143| 
           ADDKPC  .S2     $C$RL9,B3,3       ; |143| 
           STW     .D2T2   B5,*+SP(20)       ; |142| 
$C$RL9:    ; CALL OCCURS {_Update_State} {0}  ; |143| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 13
           MVKL    .S1     _function,A3
           MVKH    .S1     _function,A3
           LDBU    .D1T1   *A3,A0            ; |145| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L20,5          ; |145| 
           ; BRANCHCC OCCURS {$C$L20}        ; |145| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_Task_execute$4$B:
	.dwpsn	file "task.c",line 146,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 10
           MVC     .S2     TSCL,B4           ; |147| 
           MVKL    .S1     _initWeight,A3    ; |148| 
           MVKH    .S1     _initWeight,A3    ; |148| 
           LDW     .D2T1   *+SP(24),A4       ; |148| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_initWeight")
	.dwattr $C$DW$83, DW_AT_TI_call
           CALL    .S2X    A3                ; |148| 
           STW     .D2T2   B4,*+SP(8)        ; |147| 
           ADDKPC  .S2     $C$RL10,B3,3      ; |148| 
$C$RL10:   ; CALL OCCURS {_initWeight} {0}   ; |148| 
$C$DW$L$_Task_execute$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$5$B:
;          EXCLUSIVE CPU CYCLES: 19
           MVKL    .S2     _initTarget,B4    ; |149| 
           MVKH    .S2     _initTarget,B4    ; |149| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_initTarget")
	.dwattr $C$DW$84, DW_AT_TI_call
           CALL    .S2     B4                ; |149| 
           ADDKPC  .S2     $C$RL11,B3,3      ; |149| 
           MVK     .L1     0x2,A4            ; |149| 
$C$RL11:   ; CALL OCCURS {_initTarget} {0}   ; |149| 
           MVC     .S2     TSCL,B4           ; |150| 
           STW     .D2T2   B4,*+SP(12)       ; |150| 

           MVKL    .S1     _SEM_pend,A3      ; |152| 
||         LDW     .D2T2   *+SP(8),B5        ; |151| 

           LDW     .D2T2   *+SP(12),B6       ; |151| 
||         MVKH    .S1     _SEM_pend,A3      ; |152| 

           LDW     .D2T2   *+SP(16),B7       ; |151| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$85, DW_AT_TI_call

           CALL    .S2X    A3                ; |152| 
||         LDW     .D2T2   *+SP(4),B4        ; |152| 

           ADDKPC  .S2     $C$RL12,B3,1      ; |152| 
           SUB     .L2     B6,B5,B5          ; |151| 
           ADD     .L2     B7,B5,B5          ; |151| 

           STW     .D2T2   B5,*+SP(16)       ; |151| 
||         ADD     .L1X    4,B4,A4           ; |152| 
||         MVK     .L2     0xffffffff,B4     ; |152| 

$C$RL12:   ; CALL OCCURS {_SEM_pend} {0}     ; |152| 
$C$DW$L$_Task_execute$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$6$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S2     $C$L16            ; |154| 
||         MVKL    .S1     _function,A3

           MVKH    .S1     _function,A3
           LDBU    .D1T1   *A3,A3            ; |154| 
           NOP             3
           ; BRANCH OCCURS {$C$L16}          ; |154| 
$C$DW$L$_Task_execute$6$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_Task_execute$7$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _Get_Color,B4     ; |163| 
           MVKH    .S2     _Get_Color,B4     ; |163| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_Get_Color")
	.dwattr $C$DW$86, DW_AT_TI_call
           CALL    .S2     B4                ; |163| 
           ADDKPC  .S2     $C$RL13,B3,4      ; |163| 
$C$RL13:   ; CALL OCCURS {_Get_Color} {0}    ; |163| 
$C$DW$L$_Task_execute$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$8$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S2     $C$L18,1          ; |165| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |164| 

           MVKL    .S2     _Update_State,B4  ; |246| 
           MVKH    .S1     _function,A4
           MVKH    .S2     _Update_State,B4  ; |246| 
           STB     .D1T1   A3,*A4            ; |164| 
           ; BRANCH OCCURS {$C$L18}          ; |165| 
$C$DW$L$_Task_execute$8$E:
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_Task_execute$9$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Get_Rectangle,A3 ; |168| 
           MVKH    .S1     _Get_Rectangle,A3 ; |168| 
           NOP             1
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_Get_Rectangle")
	.dwattr $C$DW$87, DW_AT_TI_call
           CALL    .S2X    A3                ; |168| 
           ADDKPC  .S2     $C$RL14,B3,4      ; |168| 
$C$RL14:   ; CALL OCCURS {_Get_Rectangle} {0}  ; |168| 
$C$DW$L$_Task_execute$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$10$B:
;          EXCLUSIVE CPU CYCLES: 18
           MVKL    .S2     _Get_Color,B4     ; |169| 
           MVKH    .S2     _Get_Color,B4     ; |169| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_Get_Color")
	.dwattr $C$DW$88, DW_AT_TI_call
           CALL    .S2     B4                ; |169| 
           ADDKPC  .S2     $C$RL15,B3,4      ; |169| 
$C$RL15:   ; CALL OCCURS {_Get_Color} {0}    ; |169| 
           MVC     .S2     TSCL,B4           ; |170| 
           MVKL    .S1     _HC_pdf_representation_target,A3 ; |171| 

           MVKH    .S1     _HC_pdf_representation_target,A3 ; |171| 
||         MVKL    .S2     _dspColor,B5

           MVKH    .S2     _dspColor,B5
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$89, DW_AT_TI_call

           CALL    .S2X    A3                ; |171| 
||         STW     .D2T2   B4,*+SP(8)        ; |170| 

           LDW     .D2T2   *B5,B4            ; |171| 
           ADDKPC  .S2     $C$RL16,B3,2      ; |171| 
           ZERO    .L1     A4                ; |171| 
$C$RL16:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |171| 
$C$DW$L$_Task_execute$10$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$11$B:
;          EXCLUSIVE CPU CYCLES: 12
           MVC     .S2     TSCL,B4           ; |172| 

           STW     .D2T2   B4,*+SP(12)       ; |172| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |174| 

           LDW     .D2T2   *+SP(12),B5       ; |173| 
           LDW     .D2T2   *+SP(8),B4        ; |173| 
           LDW     .D2T2   *+SP(20),B6       ; |173| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L18,1          ; |175| 
           SUB     .L2     B5,B4,B4          ; |173| 
           ADD     .L2     B6,B4,B4          ; |173| 

           STW     .D2T2   B4,*+SP(20)       ; |173| 
||         MVKL    .S2     _Update_State,B4  ; |246| 

           STB     .D1T1   A3,*A4            ; |174| 
||         MVKH    .S2     _Update_State,B4  ; |246| 

           ; BRANCH OCCURS {$C$L18}          ; |175| 
$C$DW$L$_Task_execute$11$E:
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_Task_execute$12$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Get_Rectangle,A3 ; |178| 
           MVKH    .S1     _Get_Rectangle,A3 ; |178| 
           NOP             1
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_Get_Rectangle")
	.dwattr $C$DW$90, DW_AT_TI_call
           CALL    .S2X    A3                ; |178| 
           ADDKPC  .S2     $C$RL17,B3,4      ; |178| 
$C$RL17:   ; CALL OCCURS {_Get_Rectangle} {0}  ; |178| 
$C$DW$L$_Task_execute$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$13$B:
;          EXCLUSIVE CPU CYCLES: 18
           MVKL    .S2     _Get_Color,B4     ; |179| 
           MVKH    .S2     _Get_Color,B4     ; |179| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_Get_Color")
	.dwattr $C$DW$91, DW_AT_TI_call
           CALL    .S2     B4                ; |179| 
           ADDKPC  .S2     $C$RL18,B3,4      ; |179| 
$C$RL18:   ; CALL OCCURS {_Get_Color} {0}    ; |179| 
           MVC     .S2     TSCL,B4           ; |180| 
           MVKL    .S1     _HC_pdf_representation_target,A3 ; |181| 

           MVKH    .S1     _HC_pdf_representation_target,A3 ; |181| 
||         MVKL    .S2     _dspColor,B5

           MVKH    .S2     _dspColor,B5
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$92, DW_AT_TI_call

           CALL    .S2X    A3                ; |181| 
||         STW     .D2T2   B4,*+SP(8)        ; |180| 

           LDW     .D2T2   *B5,B4            ; |181| 
           ADDKPC  .S2     $C$RL19,B3,2      ; |181| 
           MVK     .L1     0x1,A4            ; |181| 
$C$RL19:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |181| 
$C$DW$L$_Task_execute$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$14$B:
;          EXCLUSIVE CPU CYCLES: 12
           MVC     .S2     TSCL,B4           ; |182| 

           STW     .D2T2   B4,*+SP(12)       ; |182| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |184| 

           LDW     .D2T2   *+SP(12),B5       ; |183| 
           LDW     .D2T2   *+SP(8),B4        ; |183| 
           LDW     .D2T2   *+SP(20),B6       ; |183| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L18,1          ; |185| 
           SUB     .L2     B5,B4,B4          ; |183| 
           ADD     .L2     B6,B4,B4          ; |183| 

           STW     .D2T2   B4,*+SP(20)       ; |183| 
||         MVKL    .S2     _Update_State,B4  ; |246| 

           STB     .D1T1   A3,*A4            ; |184| 
||         MVKH    .S2     _Update_State,B4  ; |246| 

           ; BRANCH OCCURS {$C$L18}          ; |185| 
$C$DW$L$_Task_execute$14$E:
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_Task_execute$15$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Get_Rectangle,A3 ; |188| 
           MVKH    .S1     _Get_Rectangle,A3 ; |188| 
           NOP             1
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_Get_Rectangle")
	.dwattr $C$DW$93, DW_AT_TI_call
           CALL    .S2X    A3                ; |188| 
           ADDKPC  .S2     $C$RL20,B3,4      ; |188| 
$C$RL20:   ; CALL OCCURS {_Get_Rectangle} {0}  ; |188| 
$C$DW$L$_Task_execute$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$16$B:
;          EXCLUSIVE CPU CYCLES: 18
           MVKL    .S2     _Get_Color,B4     ; |189| 
           MVKH    .S2     _Get_Color,B4     ; |189| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_Get_Color")
	.dwattr $C$DW$94, DW_AT_TI_call
           CALL    .S2     B4                ; |189| 
           ADDKPC  .S2     $C$RL21,B3,4      ; |189| 
$C$RL21:   ; CALL OCCURS {_Get_Color} {0}    ; |189| 
           MVC     .S2     TSCL,B4           ; |190| 
           MVKL    .S1     _HC_pdf_representation_target,A3 ; |191| 

           MVKH    .S1     _HC_pdf_representation_target,A3 ; |191| 
||         MVKL    .S2     _dspColor,B5

           MVKH    .S2     _dspColor,B5
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$95, DW_AT_TI_call

           CALL    .S2X    A3                ; |191| 
||         STW     .D2T2   B4,*+SP(8)        ; |190| 

           LDW     .D2T2   *B5,B4            ; |191| 
           ADDKPC  .S2     $C$RL22,B3,2      ; |191| 
           MVK     .L1     0x2,A4            ; |191| 
$C$RL22:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |191| 
$C$DW$L$_Task_execute$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$17$B:
;          EXCLUSIVE CPU CYCLES: 12
           MVC     .S2     TSCL,B4           ; |192| 

           STW     .D2T2   B4,*+SP(12)       ; |192| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |194| 

           LDW     .D2T2   *+SP(12),B5       ; |193| 
           LDW     .D2T2   *+SP(8),B4        ; |193| 
           LDW     .D2T2   *+SP(20),B6       ; |193| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L18,1          ; |195| 
           SUB     .L2     B5,B4,B4          ; |193| 
           ADD     .L2     B6,B4,B4          ; |193| 

           STW     .D2T2   B4,*+SP(20)       ; |193| 
||         MVKL    .S2     _Update_State,B4  ; |246| 

           STB     .D1T1   A3,*A4            ; |194| 
||         MVKH    .S2     _Update_State,B4  ; |246| 

           ; BRANCH OCCURS {$C$L18}          ; |195| 
$C$DW$L$_Task_execute$17$E:
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$_Task_execute$18$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Get_Rectangle,A3 ; |198| 
           MVKH    .S1     _Get_Rectangle,A3 ; |198| 
           NOP             1
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_Get_Rectangle")
	.dwattr $C$DW$96, DW_AT_TI_call
           CALL    .S2X    A3                ; |198| 
           ADDKPC  .S2     $C$RL23,B3,4      ; |198| 
$C$RL23:   ; CALL OCCURS {_Get_Rectangle} {0}  ; |198| 
$C$DW$L$_Task_execute$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$19$B:
;          EXCLUSIVE CPU CYCLES: 38
           MVKL    .S1     _Get_Color,A3     ; |199| 
           MVKH    .S1     _Get_Color,A3     ; |199| 
           NOP             1
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_Get_Color")
	.dwattr $C$DW$97, DW_AT_TI_call
           CALL    .S2X    A3                ; |199| 
           ADDKPC  .S2     $C$RL24,B3,4      ; |199| 
$C$RL24:   ; CALL OCCURS {_Get_Color} {0}    ; |199| 
           MVC     .S2     TSCL,B4           ; |200| 
           MVKL    .S2     _pdf_representation,B5 ; |201| 
           MVKL    .S2     _dspRectangle,B6
           MVKH    .S2     _pdf_representation,B5 ; |201| 

           MVKL    .S1     _dspColor,A3
||         MVKH    .S2     _dspRectangle,B6

$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$98, DW_AT_TI_call

           CALL    .S2     B5                ; |201| 
||         MVKH    .S1     _dspColor,A3
||         STW     .D2T2   B4,*+SP(8)        ; |200| 

           LDW     .D1T1   *A3,A4            ; |201| 
||         LDW     .D2T2   *B6,B4            ; |201| 

           ADDKPC  .S2     $C$RL25,B3,3      ; |201| 
$C$RL25:   ; CALL OCCURS {_pdf_representation} {0}  ; |201| 
           MVKL    .S1     _CalcWeight,A3    ; |202| 

           MVKH    .S1     _CalcWeight,A3    ; |202| 
||         MVKL    .S2     _dspColor,B4

           MVKL    .S1     _dspRectangle,A4
||         MVKH    .S2     _dspColor,B4

$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$99, DW_AT_TI_call

           CALL    .S2X    A3                ; |202| 
||         MVKH    .S1     _dspRectangle,A4
||         LDW     .D2T2   *+SP(24),B6       ; |202| 

           LDW     .D1T1   *A4,A6            ; |202| 
||         LDW     .D2T2   *B4,B4            ; |202| 

           ADDKPC  .S2     $C$RL26,B3,2      ; |202| 
           ZERO    .L1     A4                ; |202| 
$C$RL26:   ; CALL OCCURS {_CalcWeight} {0}   ; |202| 
           MVC     .S2     TSCL,B5           ; |203| 
           MVKL    .S2     _Return_Result,B4 ; |204| 
           MVKH    .S2     _Return_Result,B4 ; |204| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_Return_Result")
	.dwattr $C$DW$100, DW_AT_TI_call
           CALL    .S2     B4                ; |204| 
           ADDKPC  .S2     $C$RL27,B3,3      ; |204| 
           STW     .D2T2   B5,*+SP(12)       ; |203| 
$C$RL27:   ; CALL OCCURS {_Return_Result} {0}  ; |204| 
$C$DW$L$_Task_execute$19$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$20$B:
;          EXCLUSIVE CPU CYCLES: 10

           LDW     .D2T2   *+SP(12),B5       ; |205| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |206| 

           LDW     .D2T2   *+SP(8),B4        ; |205| 
           LDW     .D2T2   *+SP(16),B6       ; |205| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L18,1          ; |207| 
           SUB     .L2     B5,B4,B4          ; |205| 
           ADD     .L2     B6,B4,B4          ; |205| 

           STW     .D2T2   B4,*+SP(16)       ; |205| 
||         MVKL    .S2     _Update_State,B4  ; |246| 

           STB     .D1T1   A3,*A4            ; |206| 
||         MVKH    .S2     _Update_State,B4  ; |246| 

           ; BRANCH OCCURS {$C$L18}          ; |207| 
$C$DW$L$_Task_execute$20$E:
;** --------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$_Task_execute$21$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _initWeight,A3    ; |210| 
           MVKH    .S1     _initWeight,A3    ; |210| 
           LDW     .D2T1   *+SP(24),A4       ; |210| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_initWeight")
	.dwattr $C$DW$101, DW_AT_TI_call
           CALL    .S2X    A3                ; |210| 
           ADDKPC  .S2     $C$RL28,B3,4      ; |210| 
$C$RL28:   ; CALL OCCURS {_initWeight} {0}   ; |210| 
$C$DW$L$_Task_execute$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$22$B:
;          EXCLUSIVE CPU CYCLES: 37
           MVKL    .S1     _Get_Rectangle,A3 ; |211| 
           MVKH    .S1     _Get_Rectangle,A3 ; |211| 
           NOP             1
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_Get_Rectangle")
	.dwattr $C$DW$102, DW_AT_TI_call
           CALL    .S2X    A3                ; |211| 
           ADDKPC  .S2     $C$RL29,B3,4      ; |211| 
$C$RL29:   ; CALL OCCURS {_Get_Rectangle} {0}  ; |211| 
           MVKL    .S2     _Get_Color,B4     ; |212| 
           MVKH    .S2     _Get_Color,B4     ; |212| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_Get_Color")
	.dwattr $C$DW$103, DW_AT_TI_call
           CALL    .S2     B4                ; |212| 
           ADDKPC  .S2     $C$RL30,B3,4      ; |212| 
$C$RL30:   ; CALL OCCURS {_Get_Color} {0}    ; |212| 
           MVC     .S2     TSCL,B4           ; |213| 
           MVKL    .S1     _pdf_representation,A3 ; |214| 

           MVKH    .S1     _pdf_representation,A3 ; |214| 
||         MVKL    .S2     _dspRectangle,B5

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B5

$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$104, DW_AT_TI_call

           CALL    .S2X    A3                ; |214| 
||         MVKH    .S1     _dspColor,A4
||         STW     .D2T2   B4,*+SP(8)        ; |213| 

           LDW     .D1T1   *A4,A4            ; |214| 
||         LDW     .D2T2   *B5,B4            ; |214| 

           ADDKPC  .S2     $C$RL31,B3,3      ; |214| 
$C$RL31:   ; CALL OCCURS {_pdf_representation} {0}  ; |214| 
           MVKL    .S2     _CalcWeight,B5    ; |215| 
           MVKL    .S2     _dspColor,B4
           MVKH    .S2     _CalcWeight,B5    ; |215| 

           MVKL    .S1     _dspRectangle,A3
||         MVKH    .S2     _dspColor,B4

$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$105, DW_AT_TI_call

           CALL    .S2     B5                ; |215| 
||         MVKH    .S1     _dspRectangle,A3
||         LDW     .D2T2   *+SP(24),B6       ; |215| 

           LDW     .D1T1   *A3,A6            ; |215| 
||         LDW     .D2T2   *B4,B4            ; |215| 

           ADDKPC  .S2     $C$RL32,B3,2      ; |215| 
           ZERO    .L1     A4                ; |215| 
$C$RL32:   ; CALL OCCURS {_CalcWeight} {0}   ; |215| 
$C$DW$L$_Task_execute$22$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$23$B:
;          EXCLUSIVE CPU CYCLES: 12
           MVC     .S2     TSCL,B4           ; |216| 

           STW     .D2T2   B4,*+SP(12)       ; |216| 
||         MVKL    .S1     _function,A3
||         MVK     .L2     1,B31             ; |219| 

           LDW     .D2T2   *+SP(12),B5       ; |218| 
           LDW     .D2T2   *+SP(8),B4        ; |218| 
           LDW     .D2T2   *+SP(16),B6       ; |218| 
           MVKH    .S1     _function,A3
           BNOP    .S1     $C$L18,1          ; |220| 
           SUB     .L2     B5,B4,B4          ; |218| 
           ADD     .L2     B6,B4,B4          ; |218| 

           STW     .D2T2   B4,*+SP(16)       ; |218| 
||         MVKL    .S2     _Update_State,B4  ; |246| 

           STB     .D1T2   B31,*A3           ; |219| 
||         MVKH    .S2     _Update_State,B4  ; |246| 

           ; BRANCH OCCURS {$C$L18}          ; |220| 
$C$DW$L$_Task_execute$23$E:
;** --------------------------------------------------------------------------*
$C$L14:    
$C$DW$L$_Task_execute$24$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Get_Rectangle,A3 ; |223| 
           MVKH    .S1     _Get_Rectangle,A3 ; |223| 
           NOP             1
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_Get_Rectangle")
	.dwattr $C$DW$106, DW_AT_TI_call
           CALL    .S2X    A3                ; |223| 
           ADDKPC  .S2     $C$RL33,B3,4      ; |223| 
$C$RL33:   ; CALL OCCURS {_Get_Rectangle} {0}  ; |223| 
$C$DW$L$_Task_execute$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$25$B:
;          EXCLUSIVE CPU CYCLES: 28
           MVKL    .S2     _Get_Color,B4     ; |224| 
           MVKH    .S2     _Get_Color,B4     ; |224| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_Get_Color")
	.dwattr $C$DW$107, DW_AT_TI_call
           CALL    .S2     B4                ; |224| 
           ADDKPC  .S2     $C$RL34,B3,4      ; |224| 
$C$RL34:   ; CALL OCCURS {_Get_Color} {0}    ; |224| 
           MVC     .S2     TSCL,B4           ; |225| 
           MVKL    .S1     _pdf_representation,A3 ; |226| 

           MVKH    .S1     _pdf_representation,A3 ; |226| 
||         MVKL    .S2     _dspRectangle,B5

           MVKL    .S1     _dspColor,A4
||         MVKH    .S2     _dspRectangle,B5

$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$108, DW_AT_TI_call

           CALL    .S2X    A3                ; |226| 
||         MVKH    .S1     _dspColor,A4
||         STW     .D2T2   B4,*+SP(8)        ; |225| 

           LDW     .D1T1   *A4,A4            ; |226| 
||         LDW     .D2T2   *B5,B4            ; |226| 

           ADDKPC  .S2     $C$RL35,B3,3      ; |226| 
$C$RL35:   ; CALL OCCURS {_pdf_representation} {0}  ; |226| 
           MVKL    .S2     _CalcWeight,B5    ; |227| 
           MVKL    .S2     _dspColor,B4
           MVKH    .S2     _CalcWeight,B5    ; |227| 

           MVKL    .S1     _dspRectangle,A3
||         MVKH    .S2     _dspColor,B4

$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$109, DW_AT_TI_call

           CALL    .S2     B5                ; |227| 
||         MVKH    .S1     _dspRectangle,A3
||         LDW     .D2T2   *+SP(24),B6       ; |227| 

           LDW     .D1T1   *A3,A6            ; |227| 
||         LDW     .D2T2   *B4,B4            ; |227| 

           ADDKPC  .S2     $C$RL36,B3,2      ; |227| 
           MVK     .L1     0x1,A4            ; |227| 
$C$RL36:   ; CALL OCCURS {_CalcWeight} {0}   ; |227| 
$C$DW$L$_Task_execute$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$26$B:
;          EXCLUSIVE CPU CYCLES: 12
           MVC     .S2     TSCL,B4           ; |228| 

           STW     .D2T2   B4,*+SP(12)       ; |228| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |231| 

           LDW     .D2T2   *+SP(12),B6       ; |230| 
           LDW     .D2T2   *+SP(8),B4        ; |230| 
           LDW     .D2T2   *+SP(16),B5       ; |230| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L18,1          ; |232| 
           SUB     .L2     B6,B4,B4          ; |230| 
           ADD     .L2     B5,B4,B4          ; |230| 

           STW     .D2T2   B4,*+SP(16)       ; |230| 
||         MVKL    .S2     _Update_State,B4  ; |246| 

           STB     .D1T1   A3,*A4            ; |231| 
||         MVKH    .S2     _Update_State,B4  ; |246| 

           ; BRANCH OCCURS {$C$L18}          ; |232| 
$C$DW$L$_Task_execute$26$E:
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_Task_execute$27$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Get_Rectangle,A3 ; |235| 
           MVKH    .S1     _Get_Rectangle,A3 ; |235| 
           NOP             1
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_Get_Rectangle")
	.dwattr $C$DW$110, DW_AT_TI_call
           CALL    .S2X    A3                ; |235| 
           ADDKPC  .S2     $C$RL37,B3,4      ; |235| 
$C$RL37:   ; CALL OCCURS {_Get_Rectangle} {0}  ; |235| 
$C$DW$L$_Task_execute$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$28$B:
;          EXCLUSIVE CPU CYCLES: 38
           MVKL    .S1     _Get_Color,A3     ; |236| 
           MVKH    .S1     _Get_Color,A3     ; |236| 
           NOP             1
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_Get_Color")
	.dwattr $C$DW$111, DW_AT_TI_call
           CALL    .S2X    A3                ; |236| 
           ADDKPC  .S2     $C$RL38,B3,4      ; |236| 
$C$RL38:   ; CALL OCCURS {_Get_Color} {0}    ; |236| 
           MVC     .S2     TSCL,B4           ; |237| 
           MVKL    .S2     _pdf_representation,B5 ; |238| 
           MVKL    .S2     _dspRectangle,B6
           MVKH    .S2     _pdf_representation,B5 ; |238| 

           MVKL    .S1     _dspColor,A3
||         MVKH    .S2     _dspRectangle,B6

$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$112, DW_AT_TI_call

           CALL    .S2     B5                ; |238| 
||         MVKH    .S1     _dspColor,A3
||         STW     .D2T2   B4,*+SP(8)        ; |237| 

           LDW     .D1T1   *A3,A4            ; |238| 
||         LDW     .D2T2   *B6,B4            ; |238| 

           ADDKPC  .S2     $C$RL39,B3,3      ; |238| 
$C$RL39:   ; CALL OCCURS {_pdf_representation} {0}  ; |238| 
           MVKL    .S1     _CalcWeight,A3    ; |239| 

           MVKH    .S1     _CalcWeight,A3    ; |239| 
||         MVKL    .S2     _dspColor,B4

           MVKL    .S1     _dspRectangle,A4
||         MVKH    .S2     _dspColor,B4

$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$113, DW_AT_TI_call

           CALL    .S2X    A3                ; |239| 
||         MVKH    .S1     _dspRectangle,A4
||         LDW     .D2T2   *+SP(24),B6       ; |239| 

           LDW     .D1T1   *A4,A6            ; |239| 
||         LDW     .D2T2   *B4,B4            ; |239| 

           ADDKPC  .S2     $C$RL40,B3,2      ; |239| 
           MVK     .L1     0x2,A4            ; |239| 
$C$RL40:   ; CALL OCCURS {_CalcWeight} {0}   ; |239| 
           MVC     .S2     TSCL,B5           ; |240| 
           MVKL    .S2     _Return_Result,B4 ; |241| 
           MVKH    .S2     _Return_Result,B4 ; |241| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_Return_Result")
	.dwattr $C$DW$114, DW_AT_TI_call
           CALL    .S2     B4                ; |241| 
           ADDKPC  .S2     $C$RL41,B3,3      ; |241| 
           STW     .D2T2   B5,*+SP(12)       ; |240| 
$C$RL41:   ; CALL OCCURS {_Return_Result} {0}  ; |241| 
$C$DW$L$_Task_execute$28$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$29$B:
;          EXCLUSIVE CPU CYCLES: 10

           LDW     .D2T2   *+SP(12),B6       ; |242| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |243| 

           LDW     .D2T2   *+SP(8),B4        ; |242| 
           LDW     .D2T2   *+SP(16),B5       ; |242| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L18,1          ; |244| 
           SUB     .L2     B6,B4,B4          ; |242| 
           ADD     .L2     B5,B4,B4          ; |242| 

           STW     .D2T2   B4,*+SP(16)       ; |242| 
||         MVKL    .S2     _Update_State,B4  ; |246| 

           STB     .D1T1   A3,*A4            ; |243| 
||         MVKH    .S2     _Update_State,B4  ; |246| 

           ; BRANCH OCCURS {$C$L18}          ; |244| 
$C$DW$L$_Task_execute$29$E:
;** --------------------------------------------------------------------------*
$C$L16:    
$C$DW$L$_Task_execute$30$B:
;          EXCLUSIVE CPU CYCLES: 8

           MVKL    .S1     $C$SW1,A4
||         MVKL    .S2     _Update_State,B4  ; |246| 

           CMPGTU  .L1     A3,10,A0          ; |154| 
||         MVKH    .S1     $C$SW1,A4
||         MVKH    .S2     _Update_State,B4  ; |246| 

   [!A0]   LDW     .D1T1   *+A4[A3],A3       ; |154| 
|| [ A0]   B       .S1     $C$L19            ; |154| 

$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_Update_State")
	.dwattr $C$DW$115, DW_AT_TI_call
   [ A0]   CALL    .S2     B4                ; |246| 
           NOP             3
   [!A0]   B       .S2X    A3                ; |154| 
           ; BRANCHCC OCCURS {$C$L19} {-11}  ; |154| 
$C$DW$L$_Task_execute$30$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$31$B:
;          EXCLUSIVE CPU CYCLES: 5
           NOP             5
           ; BRANCH OCCURS {A3}              ; |154| 
	.sect	".switch"
	.clink
$C$SW1:	.word	$C$L17	; 0
	.word	$C$L17	; 1
	.word	$C$L8	; 2
	.word	$C$L17	; 0
	.word	$C$L12	; 4
	.word	$C$L9	; 5
	.word	$C$L10	; 6
	.word	$C$L11	; 7
	.word	$C$L13	; 8
	.word	$C$L14	; 9
	.word	$C$L15	; 10
	.sect	".text"
$C$DW$L$_Task_execute$31$E:
;** --------------------------------------------------------------------------*
$C$L17:    
$C$DW$L$_Task_execute$32$B:
;          EXCLUSIVE CPU CYCLES: 2
           MVKL    .S2     _Update_State,B4  ; |246| 
           MVKH    .S2     _Update_State,B4  ; |246| 
$C$DW$L$_Task_execute$32$E:
;** --------------------------------------------------------------------------*
$C$L18:    
$C$DW$L$_Task_execute$33$B:
;          EXCLUSIVE CPU CYCLES: 5
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_Update_State")
	.dwattr $C$DW$116, DW_AT_TI_call
           CALL    .S2     B4                ; |246| 
           NOP             4
$C$DW$L$_Task_execute$33$E:
;** --------------------------------------------------------------------------*
$C$L19:    
$C$DW$L$_Task_execute$34$B:
;          EXCLUSIVE CPU CYCLES: 1

           MVK     .L1     0x2,A4            ; |246| 
||         ADDKPC  .S2     $C$RL42,B3,0      ; |246| 

$C$RL42:   ; CALL OCCURS {_Update_State} {0}  ; |246| 
$C$DW$L$_Task_execute$34$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$35$B:
;          EXCLUSIVE CPU CYCLES: 13
           MVKL    .S1     _function,A3
           MVKH    .S1     _function,A3
           LDBU    .D1T1   *A3,A0            ; |145| 
           NOP             4
	.dwpsn	file "task.c",line 247,column 0,is_stmt
   [ A0]   BNOP    .S1     $C$L7,5           ; |145| 
           ; BRANCHCC OCCURS {$C$L7}         ; |145| 
$C$DW$L$_Task_execute$35$E:
;** --------------------------------------------------------------------------*
$C$L20:    
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _Update_State,B4  ; |249| 
           MVKH    .S2     _Update_State,B4  ; |249| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_Update_State")
	.dwattr $C$DW$117, DW_AT_TI_call
           CALL    .S2     B4                ; |249| 
           LDW     .D2T1   *+SP(20),A4       ; |249| 
           ADDKPC  .S2     $C$RL43,B3,3      ; |249| 
$C$RL43:   ; CALL OCCURS {_Update_State} {0}  ; |249| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Update_State,A3  ; |250| 
           MVKH    .S1     _Update_State,A3  ; |250| 
           LDW     .D2T1   *+SP(16),A4       ; |250| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_Update_State")
	.dwattr $C$DW$118, DW_AT_TI_call
           CALL    .S2X    A3                ; |250| 
           ADDKPC  .S2     $C$RL44,B3,4      ; |250| 
$C$RL44:   ; CALL OCCURS {_Update_State} {0}  ; |250| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(32),B3      ; |253| 
           ZERO    .L1     A4                ; |252| 
           NOP             3
	.dwpsn	file "task.c",line 253,column 1,is_stmt
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |253| 
           ; BRANCH OCCURS {B3}              ; |253| 

$C$DW$120	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$120, DW_AT_name("/home/constantinos/embLab/neon_handing/dsp/task.asm:$C$L7:1:1497111127")
	.dwattr $C$DW$120, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x91)
	.dwattr $C$DW$120, DW_AT_TI_end_line(0xf7)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_Task_execute$4$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_Task_execute$4$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_Task_execute$27$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_Task_execute$27$E)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_Task_execute$28$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_Task_execute$28$E)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_Task_execute$24$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_Task_execute$24$E)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$_Task_execute$25$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$_Task_execute$25$E)
$C$DW$126	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$126, DW_AT_low_pc($C$DW$L$_Task_execute$21$B)
	.dwattr $C$DW$126, DW_AT_high_pc($C$DW$L$_Task_execute$21$E)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$_Task_execute$22$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$_Task_execute$22$E)
$C$DW$128	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$128, DW_AT_low_pc($C$DW$L$_Task_execute$18$B)
	.dwattr $C$DW$128, DW_AT_high_pc($C$DW$L$_Task_execute$18$E)
$C$DW$129	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$129, DW_AT_low_pc($C$DW$L$_Task_execute$19$B)
	.dwattr $C$DW$129, DW_AT_high_pc($C$DW$L$_Task_execute$19$E)
$C$DW$130	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$130, DW_AT_low_pc($C$DW$L$_Task_execute$15$B)
	.dwattr $C$DW$130, DW_AT_high_pc($C$DW$L$_Task_execute$15$E)
$C$DW$131	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$131, DW_AT_low_pc($C$DW$L$_Task_execute$16$B)
	.dwattr $C$DW$131, DW_AT_high_pc($C$DW$L$_Task_execute$16$E)
$C$DW$132	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$132, DW_AT_low_pc($C$DW$L$_Task_execute$12$B)
	.dwattr $C$DW$132, DW_AT_high_pc($C$DW$L$_Task_execute$12$E)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$_Task_execute$13$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$_Task_execute$13$E)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$_Task_execute$9$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$_Task_execute$9$E)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_Task_execute$10$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_Task_execute$10$E)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$_Task_execute$31$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$_Task_execute$31$E)
$C$DW$137	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$137, DW_AT_low_pc($C$DW$L$_Task_execute$7$B)
	.dwattr $C$DW$137, DW_AT_high_pc($C$DW$L$_Task_execute$7$E)
$C$DW$138	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$138, DW_AT_low_pc($C$DW$L$_Task_execute$8$B)
	.dwattr $C$DW$138, DW_AT_high_pc($C$DW$L$_Task_execute$8$E)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$_Task_execute$11$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$_Task_execute$11$E)
$C$DW$140	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$140, DW_AT_low_pc($C$DW$L$_Task_execute$14$B)
	.dwattr $C$DW$140, DW_AT_high_pc($C$DW$L$_Task_execute$14$E)
$C$DW$141	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$141, DW_AT_low_pc($C$DW$L$_Task_execute$17$B)
	.dwattr $C$DW$141, DW_AT_high_pc($C$DW$L$_Task_execute$17$E)
$C$DW$142	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$142, DW_AT_low_pc($C$DW$L$_Task_execute$20$B)
	.dwattr $C$DW$142, DW_AT_high_pc($C$DW$L$_Task_execute$20$E)
$C$DW$143	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$143, DW_AT_low_pc($C$DW$L$_Task_execute$23$B)
	.dwattr $C$DW$143, DW_AT_high_pc($C$DW$L$_Task_execute$23$E)
$C$DW$144	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$144, DW_AT_low_pc($C$DW$L$_Task_execute$26$B)
	.dwattr $C$DW$144, DW_AT_high_pc($C$DW$L$_Task_execute$26$E)
$C$DW$145	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$145, DW_AT_low_pc($C$DW$L$_Task_execute$29$B)
	.dwattr $C$DW$145, DW_AT_high_pc($C$DW$L$_Task_execute$29$E)
$C$DW$146	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$146, DW_AT_low_pc($C$DW$L$_Task_execute$32$B)
	.dwattr $C$DW$146, DW_AT_high_pc($C$DW$L$_Task_execute$32$E)
$C$DW$147	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$147, DW_AT_low_pc($C$DW$L$_Task_execute$5$B)
	.dwattr $C$DW$147, DW_AT_high_pc($C$DW$L$_Task_execute$5$E)
$C$DW$148	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$148, DW_AT_low_pc($C$DW$L$_Task_execute$6$B)
	.dwattr $C$DW$148, DW_AT_high_pc($C$DW$L$_Task_execute$6$E)
$C$DW$149	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$149, DW_AT_low_pc($C$DW$L$_Task_execute$30$B)
	.dwattr $C$DW$149, DW_AT_high_pc($C$DW$L$_Task_execute$30$E)
$C$DW$150	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$150, DW_AT_low_pc($C$DW$L$_Task_execute$33$B)
	.dwattr $C$DW$150, DW_AT_high_pc($C$DW$L$_Task_execute$33$E)
$C$DW$151	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$151, DW_AT_low_pc($C$DW$L$_Task_execute$34$B)
	.dwattr $C$DW$151, DW_AT_high_pc($C$DW$L$_Task_execute$34$E)
$C$DW$152	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$152, DW_AT_low_pc($C$DW$L$_Task_execute$35$B)
	.dwattr $C$DW$152, DW_AT_high_pc($C$DW$L$_Task_execute$35$E)
	.dwendtag $C$DW$120

	.dwattr $C$DW$78, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$78, DW_AT_TI_end_line(0xfd)
	.dwattr $C$DW$78, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$78

	.sect	".text"
	.clink
	.global	_Task_delete

$C$DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_delete")
	.dwattr $C$DW$153, DW_AT_low_pc(_Task_delete)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_Task_delete")
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$153, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$153, DW_AT_TI_begin_line(0xff)
	.dwattr $C$DW$153, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$153, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$153, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 256,column 1,is_stmt,address _Task_delete
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_delete                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                   *
;******************************************************************************
_Task_delete:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _NOTIFY_unregister,A3 ; |262| 
           MVKH    .S1     _NOTIFY_unregister,A3 ; |262| 
           MVKL    .S2     _Init_notify,B6   ; |262| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$155, DW_AT_TI_call
           CALL    .S2X    A3                ; |262| 
           STW     .D2T2   B3,*SP--(16)      ; |256| 
           ZERO    .L2     B4                ; |257| 
           MVKH    .S2     _Init_notify,B6   ; |262| 
           STW     .D2T1   A4,*+SP(4)        ; |256| 

           ADDKPC  .S2     $C$RL45,B3,0      ; |262| 
||         STW     .D2T2   B4,*+SP(8)        ; |257| 
||         MV      .L1     A4,A8             ; |262| 
||         MVK     .S1     0x1,A4            ; |262| 
||         MVK     .D1     0x5,A6            ; |262| 

$C$RL45:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |262| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 17
           MVKL    .S2     _NOTIFY_unregister,B5 ; |268| 
           MVKH    .S2     _NOTIFY_unregister,B5 ; |268| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$156, DW_AT_TI_call
           CALL    .S2     B5                ; |268| 
           LDW     .D2T1   *+SP(4),A8        ; |268| 
           MVKL    .S2     _Command_notify,B6 ; |268| 
           MVKH    .S2     _Command_notify,B6 ; |268| 
           ADDKPC  .S2     $C$RL46,B3,0      ; |268| 

           ZERO    .L2     B4                ; |268| 
||         MVK     .L1     0x6,A6            ; |268| 
||         STW     .D2T1   A4,*+SP(8)        ; |262| 
||         MVK     .S1     0x1,A4            ; |268| 

$C$RL46:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |268| 
           MVKL    .S1     _MEM_free,A3      ; |275| 
           MVKH    .S1     _MEM_free,A3      ; |275| 
           MVKL    .S1     _DDR2,A5
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_MEM_free")
	.dwattr $C$DW$157, DW_AT_TI_call

           CALL    .S2X    A3                ; |275| 
||         MVKH    .S1     _DDR2,A5
||         STW     .D2T1   A4,*+SP(8)        ; |268| 

           LDW     .D1T1   *A5,A4            ; |275| 
||         LDW     .D2T2   *+SP(4),B4        ; |275| 

           ADDKPC  .S2     $C$RL47,B3,2      ; |275| 
           MVK     .S1     0x28,A6           ; |275| 
$C$RL47:   ; CALL OCCURS {_MEM_free} {0}     ; |275| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 13

           ZERO    .L2     B4                ; |278| 
||         LDW     .D2T1   *+SP(8),A4        ; |280| 

           STW     .D2T2   B4,*+SP(4)        ; |278| 
           LDW     .D2T2   *++SP(16),B3      ; |281| 
           NOP             4
	.dwpsn	file "task.c",line 281,column 1,is_stmt
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |281| 
           ; BRANCH OCCURS {B3}              ; |281| 
	.dwattr $C$DW$153, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x119)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$153

	.sect	".text"
	.clink

$C$DW$159	.dwtag  DW_TAG_subprogram, DW_AT_name("Get_Color")
	.dwattr $C$DW$159, DW_AT_low_pc(_Get_Color)
	.dwattr $C$DW$159, DW_AT_high_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_Get_Color")
	.dwattr $C$DW$159, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$159, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$159, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$159, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$159, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 285,column 1,is_stmt,address _Get_Color

;******************************************************************************
;* FUNCTION NAME: Get_Color                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                   *
;******************************************************************************
_Get_Color:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 59
           MVKL    .S2     _dspRectangle,B4

           MVKH    .S2     _dspRectangle,B4
||         STW     .D2T2   B3,*SP--(16)      ; |285| 

           LDW     .D2T2   *B4,B4            ; |286| 
           MVKL    .S1     _dspRectangle,A3
           MVKH    .S1     _dspRectangle,A3
           MVKL    .S1     _dspColor,A4
           MVKH    .S1     _dspColor,A4
           LDHU    .D2T2   *B4,B4            ; |286| 
           MVK     .L1     0x1,A6            ; |290| 
           NOP             3
           STH     .D2T2   B4,*+SP(4)        ; |286| 
           LDW     .D1T1   *A3,A3            ; |287| 
           MVKL    .S2     _dspRectangle,B4
           MVKH    .S2     _dspRectangle,B4
           LDHU    .D2T2   *+SP(4),B8        ; |290| 
           NOP             1
           LDHU    .D1T1   *+A3(2),A3        ; |287| 
           NOP             4
           STH     .D2T1   A3,*+SP(6)        ; |287| 
           LDW     .D2T2   *B4,B4            ; |288| 
           MVKL    .S1     _dspRectangle,A3
           MVKH    .S1     _dspRectangle,A3
           LDHU    .D2T2   *+SP(6),B7        ; |290| 
           NOP             1
           LDHU    .D2T2   *+B4(4),B4        ; |288| 
           NOP             4
           STH     .D2T2   B4,*+SP(8)        ; |288| 
           LDW     .D1T1   *A3,A3            ; |289| 
           LDHU    .D2T2   *+SP(8),B4        ; |290| 
           SHL     .S2     B7,9,B6           ; |290| 
           SHL     .S2     B7,7,B7           ; |290| 
           ADD     .L2     B7,B6,B6          ; |290| 
           LDHU    .D1T1   *+A3(6),A3        ; |289| 
           NOP             4
           STH     .D2T1   A3,*+SP(10)       ; |289| 
           LDHU    .D2T2   *+SP(10),B5       ; |290| 
           LDW     .D1T1   *A4,A3            ; |290| 
           NOP             3

           MPYU    .M2     B5,B4,B4          ; |290| 
||         MVKL    .S2     _BCACHE_inv,B5    ; |290| 

           MVKH    .S2     _BCACHE_inv,B5    ; |290| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$160, DW_AT_TI_call
           CALL    .S2     B5                ; |290| 
           ADD     .L1X    B6,A3,A3          ; |290| 
           ADDKPC  .S2     $C$RL48,B3,2      ; |290| 
           ADD     .L1X    B8,A3,A4          ; |290| 
$C$RL48:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |290| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(16),B3      ; |291| 
           NOP             4
	.dwpsn	file "task.c",line 291,column 1,is_stmt
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |291| 
           ; BRANCH OCCURS {B3}              ; |291| 
	.dwattr $C$DW$159, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x123)
	.dwattr $C$DW$159, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$159

	.sect	".text"
	.clink

$C$DW$162	.dwtag  DW_TAG_subprogram, DW_AT_name("Get_Rectangle")
	.dwattr $C$DW$162, DW_AT_low_pc(_Get_Rectangle)
	.dwattr $C$DW$162, DW_AT_high_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_Get_Rectangle")
	.dwattr $C$DW$162, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$162, DW_AT_TI_begin_line(0x125)
	.dwattr $C$DW$162, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$162, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$162, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 294,column 1,is_stmt,address _Get_Rectangle

;******************************************************************************
;* FUNCTION NAME: Get_Rectangle                                               *
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
_Get_Rectangle:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _BCACHE_inv,B5    ; |295| 

           MVKH    .S2     _BCACHE_inv,B5    ; |295| 
||         MVKL    .S1     _dspRectangle,A3

$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$163, DW_AT_TI_call
	.dwattr $C$DW$163, DW_AT_TI_return

           CALLRET .S2     B5                ; |295| 
||         MVKH    .S1     _dspRectangle,A3

           LDW     .D1T1   *A3,A4            ; |295| 
           MVK     .L1     0x1,A6            ; |295| 
           MVK     .L2     0x8,B4            ; |295| 
	.dwpsn	file "task.c",line 296,column 1,is_stmt
           NOP             2
$C$RL49:   ; CALL-RETURN OCCURS {_BCACHE_inv} {0}  ; |295| 
	.dwattr $C$DW$162, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$162, DW_AT_TI_end_line(0x128)
	.dwattr $C$DW$162, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$162

	.sect	".text"
	.clink

$C$DW$164	.dwtag  DW_TAG_subprogram, DW_AT_name("Return_Result")
	.dwattr $C$DW$164, DW_AT_low_pc(_Return_Result)
	.dwattr $C$DW$164, DW_AT_high_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_Return_Result")
	.dwattr $C$DW$164, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$164, DW_AT_TI_begin_line(0x12a)
	.dwattr $C$DW$164, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$164, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$164, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 299,column 1,is_stmt,address _Return_Result

;******************************************************************************
;* FUNCTION NAME: Return_Result                                               *
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
_Return_Result:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _BCACHE_wb,B5     ; |300| 

           MVKH    .S2     _BCACHE_wb,B5     ; |300| 
||         MVKL    .S1     _dspResFrame,A3

$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$165, DW_AT_TI_call
	.dwattr $C$DW$165, DW_AT_TI_return

           CALLRET .S2     B5                ; |300| 
||         MVKH    .S1     _dspResFrame,A3

           LDW     .D1T1   *A3,A4            ; |300| 
           MVK     .L1     0x1,A6            ; |300| 
           MVK     .S2     0x4df0,B4         ; |300| 
	.dwpsn	file "task.c",line 301,column 1,is_stmt
           NOP             2
$C$RL50:   ; CALL-RETURN OCCURS {_BCACHE_wb} {0}  ; |300| 
	.dwattr $C$DW$164, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$164, DW_AT_TI_end_line(0x12d)
	.dwattr $C$DW$164, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$164

	.sect	".text"
	.clink

$C$DW$166	.dwtag  DW_TAG_subprogram, DW_AT_name("Update_State")
	.dwattr $C$DW$166, DW_AT_low_pc(_Update_State)
	.dwattr $C$DW$166, DW_AT_high_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_Update_State")
	.dwattr $C$DW$166, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$166, DW_AT_TI_begin_line(0x12f)
	.dwattr $C$DW$166, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$166, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$166, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 304,column 1,is_stmt,address _Update_State
$C$DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_name("state")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Update_State                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                    *
;******************************************************************************
_Update_State:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _NOTIFY_notify,A3 ; |305| 
           MVKH    .S1     _NOTIFY_notify,A3 ; |305| 
           STW     .D2T2   B3,*SP--(8)       ; |304| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$168, DW_AT_TI_call

           CALL    .S2X    A3                ; |305| 
||         STW     .D2T1   A4,*+SP(4)        ; |304| 

           LDW     .D2T2   *+SP(4),B6        ; |305| 
           ADDKPC  .S2     $C$RL51,B3,2      ; |305| 

           MVK     .L1     0x1,A4            ; |305| 
||         ZERO    .L2     B4                ; |305| 
||         MVK     .S1     0x5,A6            ; |305| 

$C$RL51:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |305| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(8),B3       ; |306| 
           NOP             4
	.dwpsn	file "task.c",line 306,column 1,is_stmt
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |306| 
           ; BRANCH OCCURS {B3}              ; |306| 
	.dwattr $C$DW$166, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$166, DW_AT_TI_end_line(0x132)
	.dwattr $C$DW$166, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$166

	.sect	".text"
	.clink

$C$DW$170	.dwtag  DW_TAG_subprogram, DW_AT_name("Init_notify")
	.dwattr $C$DW$170, DW_AT_low_pc(_Init_notify)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_Init_notify")
	.dwattr $C$DW$170, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0x134)
	.dwattr $C$DW$170, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$170, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$170, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 309,column 1,is_stmt,address _Init_notify
$C$DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg4]
$C$DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg20]
$C$DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: Init_notify                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 16 Auto + 4 Save = 20 byte                  *
;******************************************************************************
_Init_notify:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 39
           STW     .D2T2   B3,*SP--(24)      ; |309| 
           STW     .D2T1   A4,*+SP(4)        ; |309| 
           STW     .D2T2   B4,*+SP(8)        ; |309| 

           MVKL    .S1     _count$1,A3
||         STW     .D2T1   A6,*+SP(12)       ; |309| 

           MVKH    .S1     _count$1,A3
||         STW     .D2T2   B4,*+SP(16)       ; |311| 

           LDW     .D1T1   *A3,A4            ; |315| 
           MV      .L1     A3,A5             ; |315| 
           MV      .L2X    A3,B5             ; |315| 
           MVKL    .S2     _dspColor,B6
           MVKH    .S2     _dspColor,B6
           ADD     .L1     1,A4,A4           ; |315| 
           STW     .D1T1   A4,*A3            ; |315| 
           LDW     .D1T1   *A5,A3            ; |316| 
           LDW     .D2T2   *+SP(12),B4       ; |317| 
           NOP             3
           CMPEQ   .L1     A3,1,A0           ; |316| 
   [ A0]   STW     .D2T2   B4,*B6            ; |317| 
           LDW     .D2T2   *B5,B5            ; |319| 
           LDW     .D2T2   *+SP(12),B4       ; |320| 
           MVKL    .S2     _dspRectangle,B6
           MVKH    .S2     _dspRectangle,B6
           MVKL    .S1     _SEM_post,A3      ; |324| 
           CMPEQ   .L2     B5,2,B0           ; |319| 
   [ B0]   STW     .D2T2   B4,*B6            ; |320| 
   [ B0]   LDW     .D2T2   *+SP(12),B4       ; |321| 
           MVKL    .S2     _dspResFrame,B5
           MVKH    .S2     _dspResFrame,B5
           MVKH    .S1     _SEM_post,A3      ; |324| 
           NOP             1
   [ B0]   ADD     .L2     8,B4,B4           ; |321| 
   [ B0]   STW     .D2T2   B4,*B5            ; |321| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x04)
	.dwattr $C$DW$174, DW_AT_name("_SEM_post")
	.dwattr $C$DW$174, DW_AT_TI_call

           LDW     .D2T2   *+SP(16),B4       ; |324| 
||         CALL    .S2X    A3                ; |324| 

           ADDKPC  .S2     $C$RL52,B3,3      ; |324| 
           ADD     .L1X    4,B4,A4           ; |324| 
$C$RL52:   ; CALL OCCURS {_SEM_post} {0}     ; |324| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(24),B3      ; |325| 
           NOP             4
	.dwpsn	file "task.c",line 325,column 1,is_stmt
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |325| 
           ; BRANCH OCCURS {B3}              ; |325| 
	.dwattr $C$DW$170, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x145)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$170

	.sect	".text"
	.clink

$C$DW$176	.dwtag  DW_TAG_subprogram, DW_AT_name("Command_notify")
	.dwattr $C$DW$176, DW_AT_low_pc(_Command_notify)
	.dwattr $C$DW$176, DW_AT_high_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_Command_notify")
	.dwattr $C$DW$176, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$176, DW_AT_TI_begin_line(0x147)
	.dwattr $C$DW$176, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$176, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$176, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 328,column 1,is_stmt,address _Command_notify
$C$DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg4]
$C$DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg20]
$C$DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: Command_notify                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 16 Auto + 4 Save = 20 byte                  *
;******************************************************************************
_Command_notify:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
           STW     .D2T2   B3,*SP--(24)      ; |328| 
           STW     .D2T2   B4,*+SP(8)        ; |328| 
           STW     .D2T1   A6,*+SP(12)       ; |328| 

           MV      .L2     B4,B5             ; |328| 
||         LDBU    .D2T2   *+SP(12),B4       ; |331| 

           MVKL    .S1     _SEM_post,A3      ; |333| 
           MVKL    .S2     _function,B6
           STW     .D2T1   A4,*+SP(4)        ; |328| 

           STW     .D2T2   B5,*+SP(16)       ; |329| 
||         MVKH    .S1     _SEM_post,A3      ; |333| 
||         MVKH    .S2     _function,B6

           STB     .D2T2   B4,*B6            ; |331| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x04)
	.dwattr $C$DW$180, DW_AT_name("_SEM_post")
	.dwattr $C$DW$180, DW_AT_TI_call

           LDW     .D2T2   *+SP(16),B4       ; |333| 
||         CALL    .S2X    A3                ; |333| 

           ADDKPC  .S2     $C$RL53,B3,3      ; |333| 
           ADD     .L1X    4,B4,A4           ; |333| 
$C$RL53:   ; CALL OCCURS {_SEM_post} {0}     ; |333| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(24),B3      ; |335| 
           NOP             4
	.dwpsn	file "task.c",line 335,column 1,is_stmt
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |335| 
           ; BRANCH OCCURS {B3}              ; |335| 
	.dwattr $C$DW$176, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$176, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$176, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$176

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
	.global	_DDR2

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$37)
$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$39)
$C$DW$185	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$50

$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x20)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("FnNotifyCbck")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
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
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x20)
$C$DW$T$73	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$56)
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
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
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
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
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
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x20)
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
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("next")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("prev")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$188, DW_AT_name("wListElem")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$189, DW_AT_name("wCount")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$190, DW_AT_name("fxn")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x20)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$191, DW_AT_name("job")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$192, DW_AT_name("count")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$193, DW_AT_name("pendQ")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$194, DW_AT_name("name")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x20)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("Task_TransferInfo_tag")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x28)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$195, DW_AT_name("dataBuf")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_dataBuf")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$196, DW_AT_name("notifySemObj")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_notifySemObj")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$197, DW_AT_name("bufferSize")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_bufferSize")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("Task_TransferInfo")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
$C$DW$T$86	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_address_class(0x20)
$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x20)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg0]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg1]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg2]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg3]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg4]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg5]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg6]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg7]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg8]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg9]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg10]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg11]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg12]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg13]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg14]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg15]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg16]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg17]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg18]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg19]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg20]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg21]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg22]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg23]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg24]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg25]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg26]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg27]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg28]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg29]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg30]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg31]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x20]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x21]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x22]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x23]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x24]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x25]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x26]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x27]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x28]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x29]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x30]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x31]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x32]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x33]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x34]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x35]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x36]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x37]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x38]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x39]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x40]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x41]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x42]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x43]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x44]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x45]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x46]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x47]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x48]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x49]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x50]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x51]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x52]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x53]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x54]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x55]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x56]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x57]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x58]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x59]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x60]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x61]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x62]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x63]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x64]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x65]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x66]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x67]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x68]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x69]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x70]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x71]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x72]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x73]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x74]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x75]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x76]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x77]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x78]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x79]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

