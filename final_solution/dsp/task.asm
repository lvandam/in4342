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
	.dwattr $C$DW$CU, DW_AT_name("task.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen Unix v6.1.17 Copyright (c) 1996-2010 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/constantinos/embLab/handing/dsp")
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
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("MPCSXFER_BufferSize")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_MPCSXFER_BufferSize")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$59, DW_AT_declaration
	.dwattr $C$DW$59, DW_AT_external
	.global	_dspColor
_dspColor:	.usect	".far",4,4
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("dspColor")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_dspColor")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr _dspColor]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$60, DW_AT_external
	.global	_dspResFrame
_dspResFrame:	.usect	".far",4,4
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("dspResFrame")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_dspResFrame")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr _dspResFrame]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$61, DW_AT_external
	.global	_dspRectangle
_dspRectangle:	.usect	".far",4,4
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("dspRectangle")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_dspRectangle")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr _dspRectangle]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$62, DW_AT_external
	.global	_function
_function:	.usect	".far",1,1
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("function")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_function")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr _function]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$63, DW_AT_external
_count$1:	.usect	".far",4,4
;	/opt/bbToolChain/usr/local/share/c6000/bin/acp6x -@/tmp/280158GADUK 
	.sect	".text"
	.clink

$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_new")
	.dwattr $C$DW$64, DW_AT_low_pc(_SEM_new)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_SEM_new")
	.dwattr $C$DW$64, DW_AT_TI_begin_file("/opt/bbToolChain/usr/local/share/tidspbios/bios_5_41_00_06/packages/ti/bios/include/sem.h")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$64, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$64, DW_AT_TI_skeletal
	.dwpsn	file "/opt/bbToolChain/usr/local/share/tidspbios/bios_5_41_00_06/packages/ti/bios/include/sem.h",line 85,column 1,is_stmt,address _SEM_new
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sem")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_sem")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg4]
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg20]

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
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

           RETNOP  .S2     B3,2              ; |90| 
||         LDW     .D2T1   *+SP(4),A3        ; |89| 

           MVKL    .S1     __SEM_dopost,A4
           MVKH    .S1     __SEM_dopost,A4
	.dwpsn	file "/opt/bbToolChain/usr/local/share/tidspbios/bios_5_41_00_06/packages/ti/bios/include/sem.h",line 90,column 1,is_stmt

           STW     .D1T1   A4,*+A3(12)       ; |89| 
||         ADD     .L2     8,SP,SP           ; |90| 

           ; BRANCH OCCURS {B3}              ; |90| 
	.dwattr $C$DW$64, DW_AT_TI_end_file("/opt/bbToolChain/usr/local/share/tidspbios/bios_5_41_00_06/packages/ti/bios/include/sem.h")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$64

	.sect	".text"
	.clink
	.global	_Task_create

$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_create")
	.dwattr $C$DW$68, DW_AT_low_pc(_Task_create)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_Task_create")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$68, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$68, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$68, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$68, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 48,column 1,is_stmt,address _Task_create
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("infoPtr")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg4]

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
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_MEM_valloc")
	.dwattr $C$DW$70, DW_AT_TI_call

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
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x04)
	.dwattr $C$DW$71, DW_AT_name("_SEM_new")
	.dwattr $C$DW$71, DW_AT_TI_call

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
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$72, DW_AT_TI_call
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
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$73, DW_AT_TI_call
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
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$74, DW_AT_TI_call
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

$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return
   [ B0]   RET     .S2     B3                ; |127| 
           ; BRANCHCC OCCURS {$C$L6}         ; |115| 
;** --------------------------------------------------------------------------*
$C$L4:    
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _SEM_pend,B5      ; |123| 
           MVKH    .S2     _SEM_pend,B5      ; |123| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$76, DW_AT_TI_call

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
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$77, DW_AT_TI_call
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
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

           RET     .S2     B3                ; |127| 
||         MV      .L1     A3,A4             ; |126| 

;** --------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 5
	.dwpsn	file "task.c",line 127,column 1,is_stmt
           NOP             5
           ; BRANCH OCCURS {B3}              ; |127| 
	.dwattr $C$DW$68, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x7f)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$68

	.sect	".text"
	.clink
	.global	_Task_execute

$C$DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_execute")
	.dwattr $C$DW$79, DW_AT_low_pc(_Task_execute)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_Task_execute")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$79, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$79, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr $C$DW$79, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 130,column 1,is_stmt,address _Task_execute
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg4]

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
           MVKL    .S1     _initTarget,A3    ; |139| 
           MVKH    .S1     _initTarget,A3    ; |139| 
           STW     .D2T2   B4,*+SP(8)        ; |138| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_initTarget")
	.dwattr $C$DW$81, DW_AT_TI_call
           CALL    .S2X    A3                ; |139| 
           MVK     .L1     0x1,A4            ; |139| 
           ADDKPC  .S2     $C$RL7,B3,3       ; |139| 
$C$RL7:    ; CALL OCCURS {_initTarget} {0}   ; |139| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 26
           MVKL    .S1     _HC_Epanechnikov_kernel,A3 ; |140| 
           MVKH    .S1     _HC_Epanechnikov_kernel,A3 ; |140| 
           NOP             1
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$82, DW_AT_TI_call
           CALL    .S2X    A3                ; |140| 
           ADDKPC  .S2     $C$RL8,B3,4       ; |140| 
$C$RL8:    ; CALL OCCURS {_HC_Epanechnikov_kernel} {0}  ; |140| 
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
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_Update_State")
	.dwattr $C$DW$83, DW_AT_TI_call
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
   [!A0]   BNOP    .S1     $C$L17,5          ; |145| 
           ; BRANCHCC OCCURS {$C$L17}        ; |145| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_Task_execute$4$B:
	.dwpsn	file "task.c",line 146,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 10
           MVC     .S2     TSCL,B4           ; |147| 
           MVKL    .S1     _initTarget,A3    ; |148| 
           MVKH    .S1     _initTarget,A3    ; |148| 
           STW     .D2T2   B4,*+SP(8)        ; |147| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_initTarget")
	.dwattr $C$DW$84, DW_AT_TI_call
           CALL    .S2X    A3                ; |148| 
           ADDKPC  .S2     $C$RL10,B3,3      ; |148| 
           MVK     .L1     0x2,A4            ; |148| 
$C$RL10:   ; CALL OCCURS {_initTarget} {0}   ; |148| 
$C$DW$L$_Task_execute$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$5$B:
;          EXCLUSIVE CPU CYCLES: 19
           MVKL    .S2     _initWeight,B4    ; |149| 
           MVKH    .S2     _initWeight,B4    ; |149| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_initWeight")
	.dwattr $C$DW$85, DW_AT_TI_call
           CALL    .S2     B4                ; |149| 
           LDW     .D2T1   *+SP(24),A4       ; |149| 
           ADDKPC  .S2     $C$RL11,B3,3      ; |149| 
$C$RL11:   ; CALL OCCURS {_initWeight} {0}   ; |149| 
           MVC     .S2     TSCL,B4           ; |150| 
           STW     .D2T2   B4,*+SP(12)       ; |150| 

           MVKL    .S1     _SEM_pend,A3      ; |152| 
||         LDW     .D2T2   *+SP(8),B4        ; |151| 

           LDW     .D2T2   *+SP(12),B5       ; |151| 
||         MVKH    .S1     _SEM_pend,A3      ; |152| 

           LDW     .D2T2   *+SP(16),B6       ; |151| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$86, DW_AT_TI_call

           CALL    .S2X    A3                ; |152| 
||         LDW     .D2T2   *+SP(4),B7        ; |152| 

           ADDKPC  .S2     $C$RL12,B3,1      ; |152| 
           SUB     .L2     B5,B4,B4          ; |151| 
           ADD     .L2     B6,B4,B5          ; |151| 

           STW     .D2T2   B5,*+SP(16)       ; |151| 
||         MVK     .L2     0xffffffff,B4     ; |152| 
||         ADD     .L1X    4,B7,A4           ; |152| 

$C$RL12:   ; CALL OCCURS {_SEM_pend} {0}     ; |152| 
$C$DW$L$_Task_execute$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$6$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S2     $C$L13            ; |154| 
||         MVKL    .S1     _function,A3

           MVKH    .S1     _function,A3
           LDBU    .D1T1   *A3,A3            ; |154| 
           NOP             3
           ; BRANCH OCCURS {$C$L13}          ; |154| 
$C$DW$L$_Task_execute$6$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_Task_execute$7$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _Get_Color,B4     ; |163| 
           MVKH    .S2     _Get_Color,B4     ; |163| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_Get_Color")
	.dwattr $C$DW$87, DW_AT_TI_call
           CALL    .S2     B4                ; |163| 
           ADDKPC  .S2     $C$RL13,B3,4      ; |163| 
$C$RL13:   ; CALL OCCURS {_Get_Color} {0}    ; |163| 
$C$DW$L$_Task_execute$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$8$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S2     $C$L15,1          ; |165| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |164| 

           MVKL    .S2     _Update_State,B4  ; |206| 
           MVKH    .S1     _function,A4
           MVKH    .S2     _Update_State,B4  ; |206| 
           STB     .D1T1   A3,*A4            ; |164| 
           ; BRANCH OCCURS {$C$L15}          ; |165| 
$C$DW$L$_Task_execute$8$E:
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_Task_execute$9$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _Get_Color,B4     ; |168| 
           MVKH    .S2     _Get_Color,B4     ; |168| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_Get_Color")
	.dwattr $C$DW$88, DW_AT_TI_call
           CALL    .S2     B4                ; |168| 
           ADDKPC  .S2     $C$RL14,B3,4      ; |168| 
$C$RL14:   ; CALL OCCURS {_Get_Color} {0}    ; |168| 
$C$DW$L$_Task_execute$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$10$B:
;          EXCLUSIVE CPU CYCLES: 10
           MVC     .S2     TSCL,B4           ; |169| 
           MVKL    .S1     _HC_pdf_representation_target,A3 ; |170| 

           MVKH    .S1     _HC_pdf_representation_target,A3 ; |170| 
||         MVKL    .S2     _dspColor,B5

           MVKH    .S2     _dspColor,B5
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$89, DW_AT_TI_call

           CALL    .S2X    A3                ; |170| 
||         STW     .D2T2   B4,*+SP(8)        ; |169| 

           LDW     .D2T2   *B5,B4            ; |170| 
           ADDKPC  .S2     $C$RL15,B3,2      ; |170| 
           ZERO    .L1     A4                ; |170| 
$C$RL15:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |170| 
$C$DW$L$_Task_execute$10$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$11$B:
;          EXCLUSIVE CPU CYCLES: 12
           MVC     .S2     TSCL,B4           ; |171| 

           STW     .D2T2   B4,*+SP(12)       ; |171| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |173| 

           LDW     .D2T2   *+SP(12),B5       ; |172| 
           LDW     .D2T2   *+SP(8),B4        ; |172| 
           LDW     .D2T2   *+SP(20),B6       ; |172| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L15,1          ; |174| 
           SUB     .L2     B5,B4,B4          ; |172| 
           ADD     .L2     B6,B4,B4          ; |172| 

           STW     .D2T2   B4,*+SP(20)       ; |172| 
||         MVKL    .S2     _Update_State,B4  ; |206| 

           STB     .D1T1   A3,*A4            ; |173| 
||         MVKH    .S2     _Update_State,B4  ; |206| 

           ; BRANCH OCCURS {$C$L15}          ; |174| 
$C$DW$L$_Task_execute$11$E:
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_Task_execute$12$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _Get_Color,B4     ; |177| 
           MVKH    .S2     _Get_Color,B4     ; |177| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_Get_Color")
	.dwattr $C$DW$90, DW_AT_TI_call
           CALL    .S2     B4                ; |177| 
           ADDKPC  .S2     $C$RL16,B3,4      ; |177| 
$C$RL16:   ; CALL OCCURS {_Get_Color} {0}    ; |177| 
$C$DW$L$_Task_execute$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$13$B:
;          EXCLUSIVE CPU CYCLES: 10
           MVC     .S2     TSCL,B4           ; |178| 
           MVKL    .S1     _HC_pdf_representation_target,A3 ; |179| 

           MVKH    .S1     _HC_pdf_representation_target,A3 ; |179| 
||         MVKL    .S2     _dspColor,B5

           MVKH    .S2     _dspColor,B5
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$91, DW_AT_TI_call

           CALL    .S2X    A3                ; |179| 
||         STW     .D2T2   B4,*+SP(8)        ; |178| 

           LDW     .D2T2   *B5,B4            ; |179| 
           ADDKPC  .S2     $C$RL17,B3,2      ; |179| 
           MVK     .L1     0x1,A4            ; |179| 
$C$RL17:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |179| 
$C$DW$L$_Task_execute$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$14$B:
;          EXCLUSIVE CPU CYCLES: 12
           MVC     .S2     TSCL,B4           ; |180| 

           STW     .D2T2   B4,*+SP(12)       ; |180| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |182| 

           LDW     .D2T2   *+SP(12),B5       ; |181| 
           LDW     .D2T2   *+SP(8),B4        ; |181| 
           LDW     .D2T2   *+SP(20),B6       ; |181| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L15,1          ; |183| 
           SUB     .L2     B5,B4,B4          ; |181| 
           ADD     .L2     B6,B4,B4          ; |181| 

           STW     .D2T2   B4,*+SP(20)       ; |181| 
||         MVKL    .S2     _Update_State,B4  ; |206| 

           STB     .D1T1   A3,*A4            ; |182| 
||         MVKH    .S2     _Update_State,B4  ; |206| 

           ; BRANCH OCCURS {$C$L15}          ; |183| 
$C$DW$L$_Task_execute$14$E:
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_Task_execute$15$B:
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _Get_Color,B4     ; |186| 
           MVKH    .S2     _Get_Color,B4     ; |186| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_Get_Color")
	.dwattr $C$DW$92, DW_AT_TI_call
           CALL    .S2     B4                ; |186| 
           ADDKPC  .S2     $C$RL18,B3,4      ; |186| 
$C$RL18:   ; CALL OCCURS {_Get_Color} {0}    ; |186| 
$C$DW$L$_Task_execute$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$16$B:
;          EXCLUSIVE CPU CYCLES: 10
           MVC     .S2     TSCL,B4           ; |187| 
           MVKL    .S1     _HC_pdf_representation_target,A3 ; |188| 

           MVKH    .S1     _HC_pdf_representation_target,A3 ; |188| 
||         MVKL    .S2     _dspColor,B5

           MVKH    .S2     _dspColor,B5
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$93, DW_AT_TI_call

           CALL    .S2X    A3                ; |188| 
||         STW     .D2T2   B4,*+SP(8)        ; |187| 

           LDW     .D2T2   *B5,B4            ; |188| 
           ADDKPC  .S2     $C$RL19,B3,2      ; |188| 
           MVK     .L1     0x2,A4            ; |188| 
$C$RL19:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |188| 
$C$DW$L$_Task_execute$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$17$B:
;          EXCLUSIVE CPU CYCLES: 12
           MVC     .S2     TSCL,B4           ; |189| 

           STW     .D2T2   B4,*+SP(12)       ; |189| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |191| 

           LDW     .D2T2   *+SP(12),B6       ; |190| 
           LDW     .D2T2   *+SP(8),B4        ; |190| 
           LDW     .D2T2   *+SP(20),B5       ; |190| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L15,1          ; |192| 
           SUB     .L2     B6,B4,B4          ; |190| 
           ADD     .L2     B5,B4,B4          ; |190| 

           STW     .D2T2   B4,*+SP(20)       ; |190| 
||         MVKL    .S2     _Update_State,B4  ; |206| 

           STB     .D1T1   A3,*A4            ; |191| 
||         MVKH    .S2     _Update_State,B4  ; |206| 

           ; BRANCH OCCURS {$C$L15}          ; |192| 
$C$DW$L$_Task_execute$17$E:
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$_Task_execute$18$B:
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Get_Color,A3     ; |195| 
           MVKH    .S1     _Get_Color,A3     ; |195| 
           NOP             1
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_Get_Color")
	.dwattr $C$DW$94, DW_AT_TI_call
           CALL    .S2X    A3                ; |195| 
           ADDKPC  .S2     $C$RL20,B3,4      ; |195| 
$C$RL20:   ; CALL OCCURS {_Get_Color} {0}    ; |195| 
$C$DW$L$_Task_execute$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$19$B:
;          EXCLUSIVE CPU CYCLES: 38
           MVKL    .S1     _Get_Rectangle,A3 ; |196| 
           MVKH    .S1     _Get_Rectangle,A3 ; |196| 
           NOP             1
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_Get_Rectangle")
	.dwattr $C$DW$95, DW_AT_TI_call
           CALL    .S2X    A3                ; |196| 
           ADDKPC  .S2     $C$RL21,B3,4      ; |196| 
$C$RL21:   ; CALL OCCURS {_Get_Rectangle} {0}  ; |196| 
           MVC     .S2     TSCL,B4           ; |197| 
           MVKL    .S2     _pdf_representation,B5 ; |198| 
           MVKL    .S2     _dspRectangle,B6
           MVKH    .S2     _pdf_representation,B5 ; |198| 

           MVKL    .S1     _dspColor,A3
||         MVKH    .S2     _dspRectangle,B6

$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$96, DW_AT_TI_call

           CALL    .S2     B5                ; |198| 
||         MVKH    .S1     _dspColor,A3
||         STW     .D2T2   B4,*+SP(8)        ; |197| 

           LDW     .D1T1   *A3,A4            ; |198| 
||         LDW     .D2T2   *B6,B4            ; |198| 

           ADDKPC  .S2     $C$RL22,B3,3      ; |198| 
$C$RL22:   ; CALL OCCURS {_pdf_representation} {0}  ; |198| 
           MVKL    .S1     _CalcWeight,A3    ; |199| 

           MVKH    .S1     _CalcWeight,A3    ; |199| 
||         MVKL    .S2     _dspColor,B4

           MVKL    .S1     _dspRectangle,A4
||         MVKH    .S2     _dspColor,B4

$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$97, DW_AT_TI_call

           CALL    .S2X    A3                ; |199| 
||         MVKH    .S1     _dspRectangle,A4
||         LDW     .D2T2   *+SP(24),B6       ; |199| 

           LDW     .D1T1   *A4,A6            ; |199| 
||         LDW     .D2T2   *B4,B4            ; |199| 

           ADDKPC  .S2     $C$RL23,B3,2      ; |199| 
           ZERO    .L1     A4                ; |199| 
$C$RL23:   ; CALL OCCURS {_CalcWeight} {0}   ; |199| 
           MVC     .S2     TSCL,B5           ; |200| 
           MVKL    .S2     _Return_Result,B4 ; |201| 
           MVKH    .S2     _Return_Result,B4 ; |201| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_Return_Result")
	.dwattr $C$DW$98, DW_AT_TI_call
           CALL    .S2     B4                ; |201| 
           ADDKPC  .S2     $C$RL24,B3,3      ; |201| 
           STW     .D2T2   B5,*+SP(12)       ; |200| 
$C$RL24:   ; CALL OCCURS {_Return_Result} {0}  ; |201| 
$C$DW$L$_Task_execute$19$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$20$B:
;          EXCLUSIVE CPU CYCLES: 10

           LDW     .D2T2   *+SP(12),B6       ; |202| 
||         MVKL    .S1     _function,A4
||         MVK     .L1     1,A3              ; |203| 

           LDW     .D2T2   *+SP(8),B4        ; |202| 
           LDW     .D2T2   *+SP(16),B5       ; |202| 
           MVKH    .S1     _function,A4
           BNOP    .S1     $C$L15,1          ; |204| 
           SUB     .L2     B6,B4,B4          ; |202| 
           ADD     .L2     B5,B4,B4          ; |202| 

           STW     .D2T2   B4,*+SP(16)       ; |202| 
||         MVKL    .S2     _Update_State,B4  ; |206| 

           STB     .D1T1   A3,*A4            ; |203| 
||         MVKH    .S2     _Update_State,B4  ; |206| 

           ; BRANCH OCCURS {$C$L15}          ; |204| 
$C$DW$L$_Task_execute$20$E:
;** --------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$_Task_execute$21$B:
;          EXCLUSIVE CPU CYCLES: 8

           MVKL    .S1     $C$SW1,A4
||         MVKL    .S2     _Update_State,B4  ; |206| 

           CMPGTU  .L1     A3,7,A0           ; |154| 
||         MVKH    .S1     $C$SW1,A4
||         MVKH    .S2     _Update_State,B4  ; |206| 

   [!A0]   LDW     .D1T1   *+A4[A3],A3       ; |154| 
|| [ A0]   B       .S1     $C$L16            ; |154| 

$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_Update_State")
	.dwattr $C$DW$99, DW_AT_TI_call
   [ A0]   CALL    .S2     B4                ; |206| 
           NOP             3
   [!A0]   B       .S2X    A3                ; |154| 
           ; BRANCHCC OCCURS {$C$L16} {-8}   ; |154| 
$C$DW$L$_Task_execute$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$22$B:
;          EXCLUSIVE CPU CYCLES: 5
           NOP             5
           ; BRANCH OCCURS {A3}              ; |154| 
	.sect	".switch"
	.clink
$C$SW1:	.word	$C$L14	; 0
	.word	$C$L14	; 1
	.word	$C$L8	; 2
	.word	$C$L14	; 0
	.word	$C$L12	; 4
	.word	$C$L9	; 5
	.word	$C$L10	; 6
	.word	$C$L11	; 7
	.sect	".text"
$C$DW$L$_Task_execute$22$E:
;** --------------------------------------------------------------------------*
$C$L14:    
$C$DW$L$_Task_execute$23$B:
;          EXCLUSIVE CPU CYCLES: 2
           MVKL    .S2     _Update_State,B4  ; |206| 
           MVKH    .S2     _Update_State,B4  ; |206| 
$C$DW$L$_Task_execute$23$E:
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_Task_execute$24$B:
;          EXCLUSIVE CPU CYCLES: 5
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_Update_State")
	.dwattr $C$DW$100, DW_AT_TI_call
           CALL    .S2     B4                ; |206| 
           NOP             4
$C$DW$L$_Task_execute$24$E:
;** --------------------------------------------------------------------------*
$C$L16:    
$C$DW$L$_Task_execute$25$B:
;          EXCLUSIVE CPU CYCLES: 1

           MVK     .L1     0x2,A4            ; |206| 
||         ADDKPC  .S2     $C$RL25,B3,0      ; |206| 

$C$RL25:   ; CALL OCCURS {_Update_State} {0}  ; |206| 
$C$DW$L$_Task_execute$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$26$B:
;          EXCLUSIVE CPU CYCLES: 13
           MVKL    .S1     _function,A3
           MVKH    .S1     _function,A3
           LDBU    .D1T1   *A3,A0            ; |145| 
           NOP             4
	.dwpsn	file "task.c",line 207,column 0,is_stmt
   [ A0]   BNOP    .S1     $C$L7,5           ; |145| 
           ; BRANCHCC OCCURS {$C$L7}         ; |145| 
$C$DW$L$_Task_execute$26$E:
;** --------------------------------------------------------------------------*
$C$L17:    
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _Update_State,B4  ; |209| 
           MVKH    .S2     _Update_State,B4  ; |209| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_Update_State")
	.dwattr $C$DW$101, DW_AT_TI_call
           CALL    .S2     B4                ; |209| 
           LDW     .D2T1   *+SP(20),A4       ; |209| 
           ADDKPC  .S2     $C$RL26,B3,3      ; |209| 
$C$RL26:   ; CALL OCCURS {_Update_State} {0}  ; |209| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _Update_State,A3  ; |210| 
           MVKH    .S1     _Update_State,A3  ; |210| 
           LDW     .D2T1   *+SP(16),A4       ; |210| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_Update_State")
	.dwattr $C$DW$102, DW_AT_TI_call
           CALL    .S2X    A3                ; |210| 
           ADDKPC  .S2     $C$RL27,B3,4      ; |210| 
$C$RL27:   ; CALL OCCURS {_Update_State} {0}  ; |210| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(32),B3      ; |213| 
           ZERO    .L1     A4                ; |212| 
           NOP             3
	.dwpsn	file "task.c",line 213,column 1,is_stmt
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |213| 
           ; BRANCH OCCURS {B3}              ; |213| 

$C$DW$104	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$104, DW_AT_name("/home/constantinos/embLab/handing/dsp/task.asm:$C$L7:1:1496942308")
	.dwattr $C$DW$104, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x91)
	.dwattr $C$DW$104, DW_AT_TI_end_line(0xcf)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_Task_execute$4$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_Task_execute$4$E)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_Task_execute$18$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_Task_execute$18$E)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_Task_execute$19$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_Task_execute$19$E)
$C$DW$108	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$108, DW_AT_low_pc($C$DW$L$_Task_execute$15$B)
	.dwattr $C$DW$108, DW_AT_high_pc($C$DW$L$_Task_execute$15$E)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_Task_execute$16$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_Task_execute$16$E)
$C$DW$110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$110, DW_AT_low_pc($C$DW$L$_Task_execute$12$B)
	.dwattr $C$DW$110, DW_AT_high_pc($C$DW$L$_Task_execute$12$E)
$C$DW$111	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$111, DW_AT_low_pc($C$DW$L$_Task_execute$13$B)
	.dwattr $C$DW$111, DW_AT_high_pc($C$DW$L$_Task_execute$13$E)
$C$DW$112	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$112, DW_AT_low_pc($C$DW$L$_Task_execute$9$B)
	.dwattr $C$DW$112, DW_AT_high_pc($C$DW$L$_Task_execute$9$E)
$C$DW$113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$113, DW_AT_low_pc($C$DW$L$_Task_execute$10$B)
	.dwattr $C$DW$113, DW_AT_high_pc($C$DW$L$_Task_execute$10$E)
$C$DW$114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$114, DW_AT_low_pc($C$DW$L$_Task_execute$22$B)
	.dwattr $C$DW$114, DW_AT_high_pc($C$DW$L$_Task_execute$22$E)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$_Task_execute$7$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$_Task_execute$7$E)
$C$DW$116	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$116, DW_AT_low_pc($C$DW$L$_Task_execute$8$B)
	.dwattr $C$DW$116, DW_AT_high_pc($C$DW$L$_Task_execute$8$E)
$C$DW$117	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$117, DW_AT_low_pc($C$DW$L$_Task_execute$11$B)
	.dwattr $C$DW$117, DW_AT_high_pc($C$DW$L$_Task_execute$11$E)
$C$DW$118	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$118, DW_AT_low_pc($C$DW$L$_Task_execute$14$B)
	.dwattr $C$DW$118, DW_AT_high_pc($C$DW$L$_Task_execute$14$E)
$C$DW$119	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$119, DW_AT_low_pc($C$DW$L$_Task_execute$17$B)
	.dwattr $C$DW$119, DW_AT_high_pc($C$DW$L$_Task_execute$17$E)
$C$DW$120	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$120, DW_AT_low_pc($C$DW$L$_Task_execute$20$B)
	.dwattr $C$DW$120, DW_AT_high_pc($C$DW$L$_Task_execute$20$E)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_Task_execute$23$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_Task_execute$23$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_Task_execute$5$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_Task_execute$5$E)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_Task_execute$6$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_Task_execute$6$E)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_Task_execute$21$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_Task_execute$21$E)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$_Task_execute$24$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$_Task_execute$24$E)
$C$DW$126	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$126, DW_AT_low_pc($C$DW$L$_Task_execute$25$B)
	.dwattr $C$DW$126, DW_AT_high_pc($C$DW$L$_Task_execute$25$E)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$_Task_execute$26$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$_Task_execute$26$E)
	.dwendtag $C$DW$104

	.dwattr $C$DW$79, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0xd5)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$79

	.sect	".text"
	.clink
	.global	_Task_delete

$C$DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_delete")
	.dwattr $C$DW$128, DW_AT_low_pc(_Task_delete)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_Task_delete")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$128, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0xd7)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$128, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$128, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 216,column 1,is_stmt,address _Task_delete
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg4]

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
           MVKL    .S1     _NOTIFY_unregister,A3 ; |222| 
           MVKH    .S1     _NOTIFY_unregister,A3 ; |222| 
           MVKL    .S2     _Init_notify,B6   ; |222| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$130, DW_AT_TI_call
           CALL    .S2X    A3                ; |222| 
           STW     .D2T2   B3,*SP--(16)      ; |216| 
           ZERO    .L2     B4                ; |217| 
           MVKH    .S2     _Init_notify,B6   ; |222| 
           STW     .D2T1   A4,*+SP(4)        ; |216| 

           ADDKPC  .S2     $C$RL28,B3,0      ; |222| 
||         STW     .D2T2   B4,*+SP(8)        ; |217| 
||         MV      .L1     A4,A8             ; |222| 
||         MVK     .S1     0x1,A4            ; |222| 
||         MVK     .D1     0x5,A6            ; |222| 

$C$RL28:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |222| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 17
           MVKL    .S2     _NOTIFY_unregister,B5 ; |228| 
           MVKH    .S2     _NOTIFY_unregister,B5 ; |228| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$131, DW_AT_TI_call
           CALL    .S2     B5                ; |228| 
           LDW     .D2T1   *+SP(4),A8        ; |228| 
           MVKL    .S2     _Command_notify,B6 ; |228| 
           MVKH    .S2     _Command_notify,B6 ; |228| 
           ADDKPC  .S2     $C$RL29,B3,0      ; |228| 

           ZERO    .L2     B4                ; |228| 
||         MVK     .L1     0x6,A6            ; |228| 
||         STW     .D2T1   A4,*+SP(8)        ; |222| 
||         MVK     .S1     0x1,A4            ; |228| 

$C$RL29:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |228| 
           MVKL    .S1     _MEM_free,A3      ; |235| 
           MVKH    .S1     _MEM_free,A3      ; |235| 
           MVKL    .S1     _DDR2,A5
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_MEM_free")
	.dwattr $C$DW$132, DW_AT_TI_call

           CALL    .S2X    A3                ; |235| 
||         MVKH    .S1     _DDR2,A5
||         STW     .D2T1   A4,*+SP(8)        ; |228| 

           LDW     .D1T1   *A5,A4            ; |235| 
||         LDW     .D2T2   *+SP(4),B4        ; |235| 

           ADDKPC  .S2     $C$RL30,B3,2      ; |235| 
           MVK     .S1     0x28,A6           ; |235| 
$C$RL30:   ; CALL OCCURS {_MEM_free} {0}     ; |235| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 13

           ZERO    .L2     B4                ; |238| 
||         LDW     .D2T1   *+SP(8),A4        ; |240| 

           STW     .D2T2   B4,*+SP(4)        ; |238| 
           LDW     .D2T2   *++SP(16),B3      ; |241| 
           NOP             4
	.dwpsn	file "task.c",line 241,column 1,is_stmt
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |241| 
           ; BRANCH OCCURS {B3}              ; |241| 
	.dwattr $C$DW$128, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$128

	.sect	".text"
	.clink

$C$DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("Get_Color")
	.dwattr $C$DW$134, DW_AT_low_pc(_Get_Color)
	.dwattr $C$DW$134, DW_AT_high_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_Get_Color")
	.dwattr $C$DW$134, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0xf4)
	.dwattr $C$DW$134, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$134, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$134, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 245,column 1,is_stmt,address _Get_Color

;******************************************************************************
;* FUNCTION NAME: Get_Color                                                   *
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
_Get_Color:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10
           MVKL    .S2     _BCACHE_inv,B5    ; |246| 
           MVKL    .S2     _MPCSXFER_BufferSize,B4
           MVKH    .S2     _BCACHE_inv,B5    ; |246| 

           MVKL    .S1     _dspColor,A3
||         MVKH    .S2     _MPCSXFER_BufferSize,B4

$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$135, DW_AT_TI_call
	.dwattr $C$DW$135, DW_AT_TI_return

           CALLRET .S2     B5                ; |246| 
||         MVKH    .S1     _dspColor,A3

           LDW     .D1T1   *A3,A4            ; |246| 
||         LDW     .D2T2   *B4,B4            ; |246| 

           MVK     .L1     0x1,A6            ; |246| 
	.dwpsn	file "task.c",line 247,column 1,is_stmt
           NOP             3
$C$RL31:   ; CALL-RETURN OCCURS {_BCACHE_inv} {0}  ; |246| 
	.dwattr $C$DW$134, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$134, DW_AT_TI_end_line(0xf7)
	.dwattr $C$DW$134, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$134

	.sect	".text"
	.clink

$C$DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("Get_Rectangle")
	.dwattr $C$DW$136, DW_AT_low_pc(_Get_Rectangle)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_Get_Rectangle")
	.dwattr $C$DW$136, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0xf9)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$136, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$136, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 250,column 1,is_stmt,address _Get_Rectangle

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
           MVKL    .S2     _BCACHE_inv,B5    ; |251| 

           MVKH    .S2     _BCACHE_inv,B5    ; |251| 
||         MVKL    .S1     _dspRectangle,A3

$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$137, DW_AT_TI_call
	.dwattr $C$DW$137, DW_AT_TI_return

           CALLRET .S2     B5                ; |251| 
||         MVKH    .S1     _dspRectangle,A3

           LDW     .D1T1   *A3,A4            ; |251| 
           MVK     .L1     0x1,A6            ; |251| 
           MVK     .L2     0x8,B4            ; |251| 
	.dwpsn	file "task.c",line 252,column 1,is_stmt
           NOP             2
$C$RL32:   ; CALL-RETURN OCCURS {_BCACHE_inv} {0}  ; |251| 
	.dwattr $C$DW$136, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0xfc)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$136

	.sect	".text"
	.clink

$C$DW$138	.dwtag  DW_TAG_subprogram, DW_AT_name("Return_Result")
	.dwattr $C$DW$138, DW_AT_low_pc(_Return_Result)
	.dwattr $C$DW$138, DW_AT_high_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_Return_Result")
	.dwattr $C$DW$138, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0xfe)
	.dwattr $C$DW$138, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$138, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$138, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 255,column 1,is_stmt,address _Return_Result

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
           MVKL    .S2     _BCACHE_wb,B5     ; |256| 

           MVKH    .S2     _BCACHE_wb,B5     ; |256| 
||         MVKL    .S1     _dspResFrame,A3

$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$139, DW_AT_TI_call
	.dwattr $C$DW$139, DW_AT_TI_return

           CALLRET .S2     B5                ; |256| 
||         MVKH    .S1     _dspResFrame,A3

           LDW     .D1T1   *A3,A4            ; |256| 
           MVK     .L1     0x1,A6            ; |256| 
           MVK     .S2     0x4df0,B4         ; |256| 
	.dwpsn	file "task.c",line 257,column 1,is_stmt
           NOP             2
$C$RL33:   ; CALL-RETURN OCCURS {_BCACHE_wb} {0}  ; |256| 
	.dwattr $C$DW$138, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x101)
	.dwattr $C$DW$138, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$138

	.sect	".text"
	.clink

$C$DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("Update_State")
	.dwattr $C$DW$140, DW_AT_low_pc(_Update_State)
	.dwattr $C$DW$140, DW_AT_high_pc(0x00)
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_Update_State")
	.dwattr $C$DW$140, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$140, DW_AT_TI_begin_line(0x103)
	.dwattr $C$DW$140, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$140, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$140, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 260,column 1,is_stmt,address _Update_State
$C$DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("state")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg4]

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
           MVKL    .S1     _NOTIFY_notify,A3 ; |261| 
           MVKH    .S1     _NOTIFY_notify,A3 ; |261| 
           STW     .D2T2   B3,*SP--(8)       ; |260| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$142, DW_AT_TI_call

           CALL    .S2X    A3                ; |261| 
||         STW     .D2T1   A4,*+SP(4)        ; |260| 

           LDW     .D2T2   *+SP(4),B6        ; |261| 
           ADDKPC  .S2     $C$RL34,B3,2      ; |261| 

           MVK     .L1     0x1,A4            ; |261| 
||         ZERO    .L2     B4                ; |261| 
||         MVK     .S1     0x5,A6            ; |261| 

$C$RL34:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |261| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(8),B3       ; |262| 
           NOP             4
	.dwpsn	file "task.c",line 262,column 1,is_stmt
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |262| 
           ; BRANCH OCCURS {B3}              ; |262| 
	.dwattr $C$DW$140, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$140, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$140, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$140

	.sect	".text"
	.clink

$C$DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("Init_notify")
	.dwattr $C$DW$144, DW_AT_low_pc(_Init_notify)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_Init_notify")
	.dwattr $C$DW$144, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0x108)
	.dwattr $C$DW$144, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$144, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$144, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 265,column 1,is_stmt,address _Init_notify
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg4]
$C$DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg20]
$C$DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg6]

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
           STW     .D2T2   B3,*SP--(24)      ; |265| 
           STW     .D2T1   A4,*+SP(4)        ; |265| 
           STW     .D2T2   B4,*+SP(8)        ; |265| 

           MVKL    .S1     _count$1,A3
||         STW     .D2T1   A6,*+SP(12)       ; |265| 

           MVKH    .S1     _count$1,A3
||         STW     .D2T2   B4,*+SP(16)       ; |267| 

           LDW     .D1T1   *A3,A4            ; |271| 
           MV      .L1     A3,A5             ; |271| 
           MV      .L2X    A3,B5             ; |271| 
           MVKL    .S2     _dspColor,B6
           MVKH    .S2     _dspColor,B6
           ADD     .L1     1,A4,A4           ; |271| 
           STW     .D1T1   A4,*A3            ; |271| 
           LDW     .D1T1   *A5,A3            ; |272| 
           LDW     .D2T2   *+SP(12),B4       ; |273| 
           NOP             3
           CMPEQ   .L1     A3,1,A0           ; |272| 
   [ A0]   STW     .D2T2   B4,*B6            ; |273| 
           LDW     .D2T2   *B5,B5            ; |275| 
           LDW     .D2T2   *+SP(12),B4       ; |276| 
           MVKL    .S2     _dspRectangle,B6
           MVKH    .S2     _dspRectangle,B6
           MVKL    .S1     _SEM_post,A3      ; |280| 
           CMPEQ   .L2     B5,2,B0           ; |275| 
   [ B0]   STW     .D2T2   B4,*B6            ; |276| 
   [ B0]   LDW     .D2T2   *+SP(12),B4       ; |277| 
           MVKL    .S2     _dspResFrame,B5
           MVKH    .S2     _dspResFrame,B5
           MVKH    .S1     _SEM_post,A3      ; |280| 
           NOP             1
   [ B0]   ADD     .L2     8,B4,B4           ; |277| 
   [ B0]   STW     .D2T2   B4,*B5            ; |277| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x04)
	.dwattr $C$DW$148, DW_AT_name("_SEM_post")
	.dwattr $C$DW$148, DW_AT_TI_call

           LDW     .D2T2   *+SP(16),B4       ; |280| 
||         CALL    .S2X    A3                ; |280| 

           ADDKPC  .S2     $C$RL35,B3,3      ; |280| 
           ADD     .L1X    4,B4,A4           ; |280| 
$C$RL35:   ; CALL OCCURS {_SEM_post} {0}     ; |280| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(24),B3      ; |281| 
           NOP             4
	.dwpsn	file "task.c",line 281,column 1,is_stmt
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |281| 
           ; BRANCH OCCURS {B3}              ; |281| 
	.dwattr $C$DW$144, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0x119)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$144

	.sect	".text"
	.clink

$C$DW$150	.dwtag  DW_TAG_subprogram, DW_AT_name("Command_notify")
	.dwattr $C$DW$150, DW_AT_low_pc(_Command_notify)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_Command_notify")
	.dwattr $C$DW$150, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x11b)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$150, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$150, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 284,column 1,is_stmt,address _Command_notify
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg4]
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg20]
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg6]

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
           STW     .D2T2   B3,*SP--(24)      ; |284| 
           STW     .D2T2   B4,*+SP(8)        ; |284| 
           STW     .D2T1   A6,*+SP(12)       ; |284| 

           MV      .L2     B4,B5             ; |284| 
||         LDBU    .D2T2   *+SP(12),B4       ; |287| 

           MVKL    .S1     _SEM_post,A3      ; |289| 
           MVKL    .S2     _function,B6
           STW     .D2T1   A4,*+SP(4)        ; |284| 

           STW     .D2T2   B5,*+SP(16)       ; |285| 
||         MVKH    .S1     _SEM_post,A3      ; |289| 
||         MVKH    .S2     _function,B6

           STB     .D2T2   B4,*B6            ; |287| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x04)
	.dwattr $C$DW$154, DW_AT_name("_SEM_post")
	.dwattr $C$DW$154, DW_AT_TI_call

           LDW     .D2T2   *+SP(16),B4       ; |289| 
||         CALL    .S2X    A3                ; |289| 

           ADDKPC  .S2     $C$RL36,B3,3      ; |289| 
           ADD     .L1X    4,B4,A4           ; |289| 
$C$RL36:   ; CALL OCCURS {_SEM_post} {0}     ; |289| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(24),B3      ; |291| 
           NOP             4
	.dwpsn	file "task.c",line 291,column 1,is_stmt
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |291| 
           ; BRANCH OCCURS {B3}              ; |291| 
	.dwattr $C$DW$150, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x123)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$150

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
	.global	_MPCSXFER_BufferSize

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
$C$DW$156	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$157	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$37)
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$39)
$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$39)
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
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("next")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("prev")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$162, DW_AT_name("wListElem")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$163, DW_AT_name("wCount")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$164, DW_AT_name("fxn")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$165, DW_AT_name("job")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$166, DW_AT_name("count")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$167, DW_AT_name("pendQ")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$168, DW_AT_name("name")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$169, DW_AT_name("dataBuf")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_dataBuf")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$170, DW_AT_name("notifySemObj")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_notifySemObj")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$171, DW_AT_name("bufferSize")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_bufferSize")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
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

$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg0]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg1]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg2]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg3]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg4]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg5]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg6]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg7]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg8]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg9]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg10]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg11]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg12]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg13]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg14]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg15]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg16]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg17]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg18]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg19]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg20]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg21]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg22]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg23]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg24]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg25]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg26]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg27]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg28]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg29]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg30]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg31]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x20]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x21]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x22]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x23]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x24]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x25]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x26]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x27]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x28]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x29]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x30]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x31]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x32]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x33]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x34]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x35]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x36]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x37]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x38]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x39]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x40]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x41]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x42]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x43]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x44]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x45]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x46]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x47]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x48]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x49]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x50]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x51]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x52]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x53]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x54]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x55]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x56]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x57]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x58]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x59]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x60]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x61]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x62]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x63]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x64]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x65]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x66]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x67]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x68]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x69]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x70]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x71]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x72]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x73]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x74]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x75]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x76]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x77]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x78]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x79]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

