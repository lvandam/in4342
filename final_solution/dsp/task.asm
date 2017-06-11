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
	.dwattr $C$DW$CU, DW_AT_name("task.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen Unix v6.1.17 Copyright (c) 1996-2010 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/constantinos/embLab/danielle/dsp")
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
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$57)
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
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$50)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$85)
	.dwendtag $C$DW$10


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_post")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_SEM_post")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$13


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("_SEM_dopost")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("__SEM_dopost")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$50)
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
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$56)
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
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$56)
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
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$57)
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
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$57)
	.dwendtag $C$DW$38


$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("initTarget")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_initTarget")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$42


$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("initWeight")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_initWeight")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$63)
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
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$60)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$68)
	.dwendtag $C$DW$47


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("pdf_representation")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_pdf_representation")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$68)
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$50


$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("CalcWeight")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_CalcWeight")
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$60)
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$68)
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$35)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$63)
	.dwendtag $C$DW$53

$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("DDR2")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_DDR2")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_external
	.global	_dspColor
	.bss	_dspColor,4,4
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("dspColor")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_dspColor")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr _dspColor]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$59, DW_AT_external
	.global	_dspResFrame
	.bss	_dspResFrame,4,4
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("dspResFrame")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_dspResFrame")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr _dspResFrame]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$60, DW_AT_external
	.global	_dspRectangle
	.bss	_dspRectangle,4,4
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("dspRectangle")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_dspRectangle")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr _dspRectangle]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$61, DW_AT_external
	.global	_function
	.bss	_function,1,1
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("function")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_function")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr _function]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$62, DW_AT_external
	.bss	_count$1,4,4
;	/opt/bbToolChain/usr/local/share/c6000/bin/opt6x /tmp/02670NigMS0 /tmp/02670pZt7OH 
	.sect	".text"
	.clink

$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("Get_Color")
	.dwattr $C$DW$63, DW_AT_low_pc(_Get_Color)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_Get_Color")
	.dwattr $C$DW$63, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x148)
	.dwattr $C$DW$63, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$63, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$63, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 329,column 1,is_stmt,address _Get_Color

;******************************************************************************
;* FUNCTION NAME: Get_Color                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_Get_Color:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
           LDW     .D2T2   *+DP(_dspRectangle),B4 ; |334| 
           LDW     .D2T2   *+DP(_dspColor),B8 ; |334| 
           MVK     .L1     0x1,A6            ; |334| 
           NOP             2
           LDHU    .D2T2   *+B4(2),B5        ; |334| 
           LDHU    .D2T2   *+B4(4),B7        ; |334| 
           LDHU    .D2T2   *+B4(6),B6        ; |334| 
           LDHU    .D2T2   *B4,B9            ; |334| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$64, DW_AT_TI_call
	.dwattr $C$DW$64, DW_AT_TI_return
           CALLRET .S1     _BCACHE_inv       ; |334| 
           SHL     .S2     B5,9,B4           ; |334| 
           SHL     .S1X    B5,7,A3           ; |334| 
           ADD     .L1X    A3,B4,A3          ; |334| 

           ADD     .L1X    B8,A3,A3          ; |334| 
||         MPYU    .M2     B7,B6,B4          ; |334| 

	.dwpsn	file "task.c",line 335,column 1,is_stmt
           ADD     .L1X    B9,A3,A4          ; |334| 
$C$RL0:    ; CALL-RETURN OCCURS {_BCACHE_inv} {0}  ; |334| 
	.dwattr $C$DW$63, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$63

	.sect	".text"
	.clink
	.global	_Task_execute

$C$DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_execute")
	.dwattr $C$DW$65, DW_AT_low_pc(_Task_execute)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_Task_execute")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$65, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0xa7)
	.dwattr $C$DW$65, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$65, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr $C$DW$65, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 168,column 1,is_stmt,address _Task_execute
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_execute                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A14,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17, *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A14,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_Task_execute:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 16
           STW     .D2T1   A14,*SP--(8)      ; |168| 
           STDW    .D2T2   B13:B12,*SP--     ; |168| 
           STDW    .D2T2   B11:B10,*SP--     ; |168| 
           STDW    .D2T1   A11:A10,*SP--     ; |168| 
           LDW     .D2T1   *+DP(_dspResFrame),A11 ; |171| 
           ZERO    .L2     B4                ; |174| 
           MV      .L1     A4,A10            ; |168| 
           MV      .L1X    B3,A14            ; |168| 
           MVC     .S2     B4,TSCL           ; |174| 
           MVC     .S2     TSCL,B11          ; |176| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_HC_Epanechnikov_kernel")
	.dwattr $C$DW$67, DW_AT_TI_call
           CALLP   .S2     _HC_Epanechnikov_kernel,B3
$C$RL1:    ; CALL OCCURS {_HC_Epanechnikov_kernel} {0}  ; |178| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 15
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_initTarget")
	.dwattr $C$DW$68, DW_AT_TI_call

           CALLP   .S2     _initTarget,B3
||         MVK     .L1     0x1,A4            ; |179| 

$C$RL2:    ; CALL OCCURS {_initTarget} {0}   ; |179| 
           MVC     .S2     TSCL,B10          ; |180| 
           MVK     .L1     0x1,A4            ; |355| 
           ZERO    .L2     B4                ; |355| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x04)
	.dwattr $C$DW$69, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$69, DW_AT_TI_call

           MVK     .L1     0x5,A6            ; |355| 
||         CALLP   .S2     _NOTIFY_notify,B3
||         MV      .L2X    A4,B6             ; |355| 

$C$RL3:    ; CALL OCCURS {_NOTIFY_notify} {0}  ; |355| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
           LDBU    .D2T2   *+DP(_function),B0 ; |185| 
           SUB     .L2     B10,B11,B11       ; |181| 
           ZERO    .L2     B10               ; |173| 
           ADD     .L1     4,A10,A10
           NOP             1
   [!B0]   BNOP    .S1     $C$L12,5          ; |185| 
           ; BRANCHCC OCCURS {$C$L12}        ; |185| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_Task_execute$4$B:
	.dwpsn	file "task.c",line 186,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B13          ; |187| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_initWeight")
	.dwattr $C$DW$70, DW_AT_TI_call
           CALL    .S1     _initWeight       ; |189| 
           ADDKPC  .S2     $C$RL4,B3,3       ; |189| 
           MV      .L1     A11,A4            ; |189| 
$C$RL4:    ; CALL OCCURS {_initWeight} {0}   ; |189| 
$C$DW$L$_Task_execute$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$5$B:
;          EXCLUSIVE CPU CYCLES: 13
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_initTarget")
	.dwattr $C$DW$71, DW_AT_TI_call

           CALLP   .S2     _initTarget,B3
||         MVK     .L1     0x2,A4            ; |190| 

$C$RL5:    ; CALL OCCURS {_initTarget} {0}   ; |190| 
           MVC     .S2     TSCL,B12          ; |191| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$72, DW_AT_TI_call

           CALLP   .S2     _SEM_pend,B3
||         MVK     .L2     0xffffffff,B4
||         MV      .L1     A10,A4            ; |194| 

$C$RL6:    ; CALL OCCURS {_SEM_pend} {0}     ; |194| 
$C$DW$L$_Task_execute$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$6$B:
;          EXCLUSIVE CPU CYCLES: 13
           LDBU    .D2T2   *+DP(_function),B5 ; |196| 
           SUB     .L2     B12,B13,B6        ; |192| 
           ADD     .L2     B10,B6,B10        ; |192| 
           NOP             2

           SUB     .L2     B5,2,B4           ; |196| 
||         SHL     .S2     B5,2,B5           ; |196| 

           CMPGTU  .L2     B4,8,B0           ; |196| 
||         SUB     .S2     B5,8,B5           ; |196| 
||         LDW     .D2T2   *+DP(_dspRectangle),B4 ; |196| 

   [ B0]   B       .S2     $C$L11            ; |196| 
|| [!B0]   MVKL    .S1     $C$SW1,A3

   [!B0]   MVKH    .S1     $C$SW1,A3
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$73, DW_AT_TI_call

   [ B0]   CALL    .S1     _NOTIFY_notify    ; |185| 
||         ADD     .L1X    A3,B5,A3          ; |196| 

   [!B0]   LDW     .D1T1   *A3,A3            ; |196| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L11} {-9}   ; |196| 
$C$DW$L$_Task_execute$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$7$B:
;          EXCLUSIVE CPU CYCLES: 8
           NOP             2
           BNOP    .S2X    A3,5              ; |196| 
           ; BRANCH OCCURS {A3}              ; |196| 
	.sect	".switch"
	.clink
$C$SW1:	.word	$C$L9	; 2
	.word	$C$L10	; 0
	.word	$C$L8	; 4
	.word	$C$L7	; 5
	.word	$C$L6	; 6
	.word	$C$L5	; 7
	.word	$C$L4	; 8
	.word	$C$L3	; 9
	.word	$C$L2	; 10
	.sect	".text"
$C$DW$L$_Task_execute$7$E:
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_Task_execute$8$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$74, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         MV      .L1X    B4,A4             ; |341| 
||         MVK     .L2     0x8,B4            ; |341| 
||         MVK     .S1     0x1,A6            ; |341| 

$C$RL7:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |341| 
$C$DW$L$_Task_execute$8$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$9$B:
;          EXCLUSIVE CPU CYCLES: 29
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_Get_Color")
	.dwattr $C$DW$75, DW_AT_TI_call
           CALLP   .S2     _Get_Color,B3
$C$RL8:    ; CALL OCCURS {_Get_Color} {0}    ; |276| 
           MVC     .S2     TSCL,B13          ; |277| 
           LDW     .D2T1   *+DP(_dspColor),A4 ; |278| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$76, DW_AT_TI_call

           CALLP   .S2     _pdf_representation,B3
||         LDW     .D2T2   *+DP(_dspRectangle),B4 ; |278| 

$C$RL9:    ; CALL OCCURS {_pdf_representation} {0}  ; |278| 
           LDW     .D2T1   *+DP(_dspRectangle),A6 ; |279| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$77, DW_AT_TI_call

           CALLP   .S2     _CalcWeight,B3
||         LDW     .D2T2   *+DP(_dspColor),B4 ; |279| 
||         MV      .L2X    A11,B6            ; |279| 
||         MVK     .L1     0x2,A4            ; |279| 

$C$RL10:   ; CALL OCCURS {_CalcWeight} {0}   ; |279| 
           MVC     .S2     TSCL,B12          ; |280| 
           MVK     .S2     0x4df0,B4         ; |348| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$78, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wb,B3
||         LDW     .D2T1   *+DP(_dspResFrame),A4 ; |348| 
||         MVK     .L1     0x1,A6            ; |348| 

$C$RL11:   ; CALL OCCURS {_BCACHE_wb} {0}    ; |348| 
$C$DW$L$_Task_execute$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$10$B:
;          EXCLUSIVE CPU CYCLES: 6
           BNOP    .S1     $C$L10,3          ; |284| 

           SUB     .L2     B12,B13,B4        ; |282| 
||         MVK     .L1     1,A3              ; |283| 

           ADD     .L2     B10,B4,B10        ; |282| 
||         STB     .D2T1   A3,*+DP(_function) ; |283| 

           ; BRANCH OCCURS {$C$L10}          ; |284| 
$C$DW$L$_Task_execute$10$E:
;** --------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$_Task_execute$11$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$79, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         MV      .L1X    B4,A4             ; |341| 
||         MVK     .L2     0x8,B4            ; |341| 
||         MVK     .S1     0x1,A6            ; |341| 

$C$RL12:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |341| 
$C$DW$L$_Task_execute$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$12$B:
;          EXCLUSIVE CPU CYCLES: 21
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_Get_Color")
	.dwattr $C$DW$80, DW_AT_TI_call
           CALLP   .S2     _Get_Color,B3
$C$RL13:   ; CALL OCCURS {_Get_Color} {0}    ; |265| 
           MVC     .S2     TSCL,B12          ; |266| 
           LDW     .D2T1   *+DP(_dspColor),A4 ; |267| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$81, DW_AT_TI_call

           CALLP   .S2     _pdf_representation,B3
||         LDW     .D2T2   *+DP(_dspRectangle),B4 ; |267| 

$C$RL14:   ; CALL OCCURS {_pdf_representation} {0}  ; |267| 
           LDW     .D2T1   *+DP(_dspRectangle),A6 ; |268| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$82, DW_AT_TI_call

           CALLP   .S2     _CalcWeight,B3
||         LDW     .D2T2   *+DP(_dspColor),B4 ; |268| 
||         MV      .L2X    A11,B6            ; |268| 
||         MVK     .L1     0x1,A4            ; |268| 

$C$RL15:   ; CALL OCCURS {_CalcWeight} {0}   ; |268| 
$C$DW$L$_Task_execute$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$13$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |269| 
           BNOP    .S1     $C$L10,3          ; |272| 

           MVK     .L1     1,A3              ; |271| 
||         SUB     .L2     B4,B12,B4         ; |270| 

           ADD     .L2     B10,B4,B10        ; |270| 
||         STB     .D2T1   A3,*+DP(_function) ; |271| 

           ; BRANCH OCCURS {$C$L10}          ; |272| 
$C$DW$L$_Task_execute$13$E:
;** --------------------------------------------------------------------------*
$C$L4:    
$C$DW$L$_Task_execute$14$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_initWeight")
	.dwattr $C$DW$83, DW_AT_TI_call

           CALLP   .S2     _initWeight,B3
||         MV      .L1     A11,A4            ; |252| 

$C$RL16:   ; CALL OCCURS {_initWeight} {0}   ; |252| 
$C$DW$L$_Task_execute$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$15$B:
;          EXCLUSIVE CPU CYCLES: 27
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$84, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T1   *+DP(_dspRectangle),A4 ; |341| 
||         MVK     .L2     0x8,B4            ; |341| 
||         MVK     .L1     0x1,A6            ; |341| 

$C$RL17:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |341| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_Get_Color")
	.dwattr $C$DW$85, DW_AT_TI_call
           CALLP   .S2     _Get_Color,B3
$C$RL18:   ; CALL OCCURS {_Get_Color} {0}    ; |254| 
           MVC     .S2     TSCL,B12          ; |255| 
           LDW     .D2T1   *+DP(_dspColor),A4 ; |256| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$86, DW_AT_TI_call

           CALLP   .S2     _pdf_representation,B3
||         LDW     .D2T2   *+DP(_dspRectangle),B4 ; |256| 

$C$RL19:   ; CALL OCCURS {_pdf_representation} {0}  ; |256| 
           LDW     .D2T2   *+DP(_dspColor),B4 ; |257| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$87, DW_AT_TI_call

           CALLP   .S2     _CalcWeight,B3
||         LDW     .D2T1   *+DP(_dspRectangle),A6 ; |257| 
||         MV      .L2X    A11,B6            ; |257| 
||         ZERO    .L1     A4                ; |257| 

$C$RL20:   ; CALL OCCURS {_CalcWeight} {0}   ; |257| 
$C$DW$L$_Task_execute$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$16$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |258| 
           BNOP    .S1     $C$L10,3          ; |261| 

           MVK     .L1     1,A3              ; |260| 
||         SUB     .L2     B4,B12,B4         ; |259| 

           ADD     .L2     B10,B4,B10        ; |259| 
||         STB     .D2T1   A3,*+DP(_function) ; |260| 

           ; BRANCH OCCURS {$C$L10}          ; |261| 
$C$DW$L$_Task_execute$16$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_Task_execute$17$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$88, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         MV      .L1X    B4,A4             ; |341| 
||         MVK     .L2     0x8,B4            ; |341| 
||         MVK     .S1     0x1,A6            ; |341| 

$C$RL21:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |341| 
$C$DW$L$_Task_execute$17$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$18$B:
;          EXCLUSIVE CPU CYCLES: 13
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_Get_Color")
	.dwattr $C$DW$89, DW_AT_TI_call
           CALLP   .S2     _Get_Color,B3
$C$RL22:   ; CALL OCCURS {_Get_Color} {0}    ; |231| 
           MVC     .S2     TSCL,B12          ; |232| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$90, DW_AT_TI_call

           CALLP   .S2     _HC_pdf_representation_target,B3
||         LDW     .D2T2   *+DP(_dspColor),B4 ; |233| 
||         MVK     .L1     0x2,A4            ; |233| 

$C$RL23:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |233| 
$C$DW$L$_Task_execute$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$19$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |234| 
           BNOP    .S1     $C$L10,3          ; |237| 

           MVK     .L2     1,B5              ; |236| 
||         SUB     .S2     B4,B12,B4         ; |235| 

           ADD     .L2     B11,B4,B11        ; |235| 
||         STB     .D2T2   B5,*+DP(_function) ; |236| 

           ; BRANCH OCCURS {$C$L10}          ; |237| 
$C$DW$L$_Task_execute$19$E:
;** --------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_Task_execute$20$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$91, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         MV      .L1X    B4,A4             ; |341| 
||         MVK     .L2     0x8,B4            ; |341| 
||         MVK     .S1     0x1,A6            ; |341| 

$C$RL24:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |341| 
$C$DW$L$_Task_execute$20$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$21$B:
;          EXCLUSIVE CPU CYCLES: 27
           LDW     .D2T2   *+DP(_dspRectangle),B7 ; |334| 
           LDW     .D2T2   *+DP(_dspColor),B8 ; |334| 
           MVK     .L1     0x1,A6            ; |334| 
           NOP             2
           LDHU    .D2T2   *+B7(2),B6        ; |334| 
           LDHU    .D2T2   *+B7(4),B5        ; |334| 
           LDHU    .D2T2   *+B7(6),B4        ; |334| 
           LDHU    .D2T2   *B7,B7            ; |334| 
           NOP             1
           SHL     .S2     B6,9,B9           ; |334| 
           SHL     .S1X    B6,7,A3           ; |334| 
           ADD     .L1X    A3,B9,A3          ; |334| 
           ADD     .L1X    B8,A3,A3          ; |334| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$92, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         MPYU    .M2     B5,B4,B4          ; |334| 
||         ADD     .L1X    B7,A3,A4          ; |334| 

$C$RL25:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |334| 
           MVC     .S2     TSCL,B12          ; |222| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$93, DW_AT_TI_call

           CALLP   .S2     _HC_pdf_representation_target,B3
||         LDW     .D2T2   *+DP(_dspColor),B4 ; |223| 
||         MVK     .L1     0x1,A4            ; |223| 

$C$RL26:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |223| 
$C$DW$L$_Task_execute$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$22$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |224| 
           BNOP    .S1     $C$L10,3          ; |227| 

           MVK     .L2     1,B5              ; |226| 
||         SUB     .S2     B4,B12,B4         ; |225| 

           ADD     .L2     B11,B4,B11        ; |225| 
||         STB     .D2T2   B5,*+DP(_function) ; |226| 

           ; BRANCH OCCURS {$C$L10}          ; |227| 
$C$DW$L$_Task_execute$22$E:
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_Task_execute$23$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$94, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         MV      .L1X    B4,A4             ; |341| 
||         MVK     .L2     0x8,B4            ; |341| 
||         MVK     .S1     0x1,A6            ; |341| 

$C$RL27:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |341| 
$C$DW$L$_Task_execute$23$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$24$B:
;          EXCLUSIVE CPU CYCLES: 27
           LDW     .D2T2   *+DP(_dspRectangle),B7 ; |334| 
           LDW     .D2T2   *+DP(_dspColor),B8 ; |334| 
           MVK     .L1     0x1,A6            ; |334| 
           NOP             2
           LDHU    .D2T2   *+B7(2),B4        ; |334| 
           LDHU    .D2T2   *+B7(4),B6        ; |334| 
           LDHU    .D2T2   *+B7(6),B5        ; |334| 
           LDHU    .D2T2   *B7,B9            ; |334| 
           NOP             1
           SHL     .S2     B4,9,B7           ; |334| 
           SHL     .S1X    B4,7,A3           ; |334| 
           ADD     .L1X    A3,B7,A3          ; |334| 
           ADD     .L1X    B8,A3,A3          ; |334| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$95, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         MPYU    .M2     B6,B5,B4          ; |334| 
||         ADD     .L1X    B9,A3,A4          ; |334| 

$C$RL28:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |334| 
           MVC     .S2     TSCL,B12          ; |212| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_HC_pdf_representation_target")
	.dwattr $C$DW$96, DW_AT_TI_call

           CALLP   .S2     _HC_pdf_representation_target,B3
||         LDW     .D2T2   *+DP(_dspColor),B4 ; |213| 
||         ZERO    .L1     A4                ; |213| 

$C$RL29:   ; CALL OCCURS {_HC_pdf_representation_target} {0}  ; |213| 
$C$DW$L$_Task_execute$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$25$B:
;          EXCLUSIVE CPU CYCLES: 7
           MVC     .S2     TSCL,B4           ; |214| 
           BNOP    .S1     $C$L10,3          ; |217| 

           MVK     .L2     1,B5              ; |216| 
||         SUB     .S2     B4,B12,B4         ; |215| 

           ADD     .L2     B11,B4,B11        ; |215| 
||         STB     .D2T2   B5,*+DP(_function) ; |216| 

           ; BRANCH OCCURS {$C$L10}          ; |217| 
$C$DW$L$_Task_execute$25$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_Task_execute$26$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$97, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         MV      .L1X    B4,A4             ; |341| 
||         MVK     .L2     0x8,B4            ; |341| 
||         MVK     .S1     0x1,A6            ; |341| 

$C$RL30:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |341| 
$C$DW$L$_Task_execute$26$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$27$B:
;          EXCLUSIVE CPU CYCLES: 29
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_Get_Color")
	.dwattr $C$DW$98, DW_AT_TI_call
           CALLP   .S2     _Get_Color,B3
$C$RL31:   ; CALL OCCURS {_Get_Color} {0}    ; |241| 
           MVC     .S2     TSCL,B13          ; |242| 
           LDW     .D2T1   *+DP(_dspColor),A4 ; |243| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_pdf_representation")
	.dwattr $C$DW$99, DW_AT_TI_call

           CALLP   .S2     _pdf_representation,B3
||         LDW     .D2T2   *+DP(_dspRectangle),B4 ; |243| 

$C$RL32:   ; CALL OCCURS {_pdf_representation} {0}  ; |243| 
           LDW     .D2T1   *+DP(_dspRectangle),A6 ; |244| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_CalcWeight")
	.dwattr $C$DW$100, DW_AT_TI_call

           CALLP   .S2     _CalcWeight,B3
||         LDW     .D2T2   *+DP(_dspColor),B4 ; |244| 
||         MV      .L2X    A11,B6            ; |244| 
||         ZERO    .L1     A4                ; |244| 

$C$RL33:   ; CALL OCCURS {_CalcWeight} {0}   ; |244| 
           MVC     .S2     TSCL,B12          ; |245| 
           MVK     .S2     0x4df0,B4         ; |348| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$101, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wb,B3
||         LDW     .D2T1   *+DP(_dspResFrame),A4 ; |348| 
||         MVK     .L1     0x1,A6            ; |348| 

$C$RL34:   ; CALL OCCURS {_BCACHE_wb} {0}    ; |348| 
$C$DW$L$_Task_execute$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$28$B:
;          EXCLUSIVE CPU CYCLES: 6
           BNOP    .S1     $C$L10,3          ; |249| 

           SUB     .L2     B12,B13,B4        ; |247| 
||         MVK     .L1     1,A3              ; |248| 

           ADD     .L2     B10,B4,B10        ; |247| 
||         STB     .D2T1   A3,*+DP(_function) ; |248| 

           ; BRANCH OCCURS {$C$L10}          ; |249| 
$C$DW$L$_Task_execute$28$E:
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_Task_execute$29$B:
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_Get_Color")
	.dwattr $C$DW$102, DW_AT_TI_call
           CALLP   .S2     _Get_Color,B3
$C$RL35:   ; CALL OCCURS {_Get_Color} {0}    ; |205| 
$C$DW$L$_Task_execute$29$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$30$B:
;          EXCLUSIVE CPU CYCLES: 2
           MVK     .L2     1,B4              ; |206| 
           STB     .D2T2   B4,*+DP(_function) ; |206| 
$C$DW$L$_Task_execute$30$E:
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_Task_execute$31$B:
;          EXCLUSIVE CPU CYCLES: 4
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$103, DW_AT_TI_call
           CALL    .S1     _NOTIFY_notify    ; |185| 
           NOP             3
$C$DW$L$_Task_execute$31$E:
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_Task_execute$32$B:
;          EXCLUSIVE CPU CYCLES: 2
           ZERO    .L2     B4                ; |185| 

           MVK     .L1     0x5,A6            ; |185| 
||         MVK     .L2     0x2,B6            ; |185| 
||         MVK     .S1     0x1,A4            ; |185| 
||         ADDKPC  .S2     $C$RL36,B3,0      ; |185| 

$C$RL36:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |185| 
$C$DW$L$_Task_execute$32$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Task_execute$33$B:
;          EXCLUSIVE CPU CYCLES: 11
           LDBU    .D2T2   *+DP(_function),B0 ; |185| 
           NOP             4
	.dwpsn	file "task.c",line 288,column 0,is_stmt
   [ B0]   BNOP    .S1     $C$L1,5           ; |185| 
           ; BRANCHCC OCCURS {$C$L1}         ; |185| 
$C$DW$L$_Task_execute$33$E:
;** --------------------------------------------------------------------------*
$C$L12:    
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$104, DW_AT_TI_call

           CALLP   .S2     _NOTIFY_notify,B3
||         MVK     .L1     0x1,A4            ; |355| 
||         ZERO    .L2     B4                ; |355| 
||         MVK     .S1     0x5,A6            ; |355| 
||         MV      .D2     B11,B6            ; |355| 

$C$RL37:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |355| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$105, DW_AT_TI_call

           CALLP   .S2     _NOTIFY_notify,B3
||         MVK     .L1     0x1,A4            ; |355| 
||         ZERO    .L2     B4                ; |355| 
||         MVK     .S1     0x5,A6            ; |355| 
||         MV      .D2     B10,B6            ; |355| 

$C$RL38:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |355| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           LDDW    .D2T1   *++SP,A11:A10     ; |294| 

           LDDW    .D2T2   *++SP,B11:B10     ; |294| 
||         MV      .L2X    A14,B3            ; |294| 

$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x04)
	.dwattr $C$DW$106, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B13:B12     ; |294| 
||         RET     .S2     B3                ; |294| 

           LDW     .D2T1   *++SP(8),A14      ; |294| 
           ZERO    .L1     A4                ; |293| 
	.dwpsn	file "task.c",line 294,column 1,is_stmt
           NOP             3
           ; BRANCH OCCURS {B3}              ; |294| 

$C$DW$107	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$107, DW_AT_name("/home/constantinos/embLab/danielle/dsp/task.asm:$C$L1:1:1497183058")
	.dwattr $C$DW$107, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0xb9)
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x120)
$C$DW$108	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$108, DW_AT_low_pc($C$DW$L$_Task_execute$4$B)
	.dwattr $C$DW$108, DW_AT_high_pc($C$DW$L$_Task_execute$4$E)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_Task_execute$29$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_Task_execute$29$E)
$C$DW$110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$110, DW_AT_low_pc($C$DW$L$_Task_execute$26$B)
	.dwattr $C$DW$110, DW_AT_high_pc($C$DW$L$_Task_execute$26$E)
$C$DW$111	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$111, DW_AT_low_pc($C$DW$L$_Task_execute$27$B)
	.dwattr $C$DW$111, DW_AT_high_pc($C$DW$L$_Task_execute$27$E)
$C$DW$112	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$112, DW_AT_low_pc($C$DW$L$_Task_execute$23$B)
	.dwattr $C$DW$112, DW_AT_high_pc($C$DW$L$_Task_execute$23$E)
$C$DW$113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$113, DW_AT_low_pc($C$DW$L$_Task_execute$24$B)
	.dwattr $C$DW$113, DW_AT_high_pc($C$DW$L$_Task_execute$24$E)
$C$DW$114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$114, DW_AT_low_pc($C$DW$L$_Task_execute$20$B)
	.dwattr $C$DW$114, DW_AT_high_pc($C$DW$L$_Task_execute$20$E)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$_Task_execute$21$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$_Task_execute$21$E)
$C$DW$116	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$116, DW_AT_low_pc($C$DW$L$_Task_execute$17$B)
	.dwattr $C$DW$116, DW_AT_high_pc($C$DW$L$_Task_execute$17$E)
$C$DW$117	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$117, DW_AT_low_pc($C$DW$L$_Task_execute$18$B)
	.dwattr $C$DW$117, DW_AT_high_pc($C$DW$L$_Task_execute$18$E)
$C$DW$118	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$118, DW_AT_low_pc($C$DW$L$_Task_execute$14$B)
	.dwattr $C$DW$118, DW_AT_high_pc($C$DW$L$_Task_execute$14$E)
$C$DW$119	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$119, DW_AT_low_pc($C$DW$L$_Task_execute$15$B)
	.dwattr $C$DW$119, DW_AT_high_pc($C$DW$L$_Task_execute$15$E)
$C$DW$120	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$120, DW_AT_low_pc($C$DW$L$_Task_execute$11$B)
	.dwattr $C$DW$120, DW_AT_high_pc($C$DW$L$_Task_execute$11$E)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_Task_execute$12$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_Task_execute$12$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_Task_execute$8$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_Task_execute$8$E)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_Task_execute$9$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_Task_execute$9$E)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_Task_execute$7$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_Task_execute$7$E)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$_Task_execute$10$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$_Task_execute$10$E)
$C$DW$126	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$126, DW_AT_low_pc($C$DW$L$_Task_execute$13$B)
	.dwattr $C$DW$126, DW_AT_high_pc($C$DW$L$_Task_execute$13$E)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$_Task_execute$16$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$_Task_execute$16$E)
$C$DW$128	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$128, DW_AT_low_pc($C$DW$L$_Task_execute$19$B)
	.dwattr $C$DW$128, DW_AT_high_pc($C$DW$L$_Task_execute$19$E)
$C$DW$129	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$129, DW_AT_low_pc($C$DW$L$_Task_execute$22$B)
	.dwattr $C$DW$129, DW_AT_high_pc($C$DW$L$_Task_execute$22$E)
$C$DW$130	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$130, DW_AT_low_pc($C$DW$L$_Task_execute$25$B)
	.dwattr $C$DW$130, DW_AT_high_pc($C$DW$L$_Task_execute$25$E)
$C$DW$131	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$131, DW_AT_low_pc($C$DW$L$_Task_execute$28$B)
	.dwattr $C$DW$131, DW_AT_high_pc($C$DW$L$_Task_execute$28$E)
$C$DW$132	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$132, DW_AT_low_pc($C$DW$L$_Task_execute$30$B)
	.dwattr $C$DW$132, DW_AT_high_pc($C$DW$L$_Task_execute$30$E)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$_Task_execute$5$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$_Task_execute$5$E)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$_Task_execute$6$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$_Task_execute$6$E)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_Task_execute$31$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_Task_execute$31$E)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$_Task_execute$32$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$_Task_execute$32$E)
$C$DW$137	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$137, DW_AT_low_pc($C$DW$L$_Task_execute$33$B)
	.dwattr $C$DW$137, DW_AT_high_pc($C$DW$L$_Task_execute$33$E)
	.dwendtag $C$DW$107

	.dwattr $C$DW$65, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x126)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$65

	.sect	".text"
	.clink
	.global	_Task_delete

$C$DW$138	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_delete")
	.dwattr $C$DW$138, DW_AT_low_pc(_Task_delete)
	.dwattr $C$DW$138, DW_AT_high_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_Task_delete")
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$138, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0x12a)
	.dwattr $C$DW$138, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$138, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$138, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 299,column 1,is_stmt,address _Task_delete
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_delete                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,*
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
_Task_delete:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _Init_notify,B6   ; |305| 

           STW     .D2T1   A11,*SP--(8)      ; |299| 
||         MVKH    .S2     _Init_notify,B6   ; |305| 
||         MV      .L1     A4,A8             ; |299| 
||         MVK     .S1     0x5,A6            ; |305| 

$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x04)
	.dwattr $C$DW$140, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$140, DW_AT_TI_call

           MV      .L1X    B3,A11            ; |299| 
||         CALLP   .S2     _NOTIFY_unregister,B3
||         STW     .D2T1   A10,*+SP(4)       ; |299| 
||         MV      .S1     A4,A10            ; |299| 
||         ZERO    .L2     B4                ; |305| 
||         MVK     .D1     0x1,A4            ; |305| 

$C$RL39:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |305| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
           MVKL    .S2     _Command_notify,B6 ; |311| 
           MVKH    .S2     _Command_notify,B6 ; |311| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$141, DW_AT_TI_call

           CALLP   .S2     _NOTIFY_unregister,B3
||         MVK     .L1     0x1,A4            ; |311| 
||         ZERO    .L2     B4                ; |311| 
||         MVK     .S1     0x6,A6            ; |311| 
||         MV      .D1     A10,A8            ; |311| 

$C$RL40:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |311| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_MEM_free")
	.dwattr $C$DW$142, DW_AT_TI_call

           CALLP   .S2     _MEM_free,B3
||         MV      .L2X    A10,B4            ; |318| 
||         MV      .L1     A4,A10            ; |311| 
||         LDW     .D2T1   *+DP(_DDR2),A4    ; |318| 
||         MVK     .S1     0x28,A6           ; |318| 

$C$RL41:   ; CALL OCCURS {_MEM_free} {0}     ; |318| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L2X    A11,B3            ; |324| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return

           RET     .S2     B3                ; |324| 
||         MV      .L1     A10,A4            ; |323| 
||         LDW     .D2T1   *+SP(4),A10       ; |324| 

           LDW     .D2T1   *++SP(8),A11      ; |324| 
	.dwpsn	file "task.c",line 324,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |324| 
	.dwattr $C$DW$138, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$138, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$138

	.sect	".text"
	.clink
	.global	_Task_create

$C$DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_create")
	.dwattr $C$DW$144, DW_AT_low_pc(_Task_create)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_Task_create")
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$144, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0x50)
	.dwattr $C$DW$144, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$144, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$144, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 81,column 1,is_stmt,address _Task_create
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("infoPtr")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_create                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,A20,A21,*
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_Task_create:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           STW     .D2T2   B13,*SP--(8)      ; |81| 

           STDW    .D2T1   A11:A10,*SP--     ; |81| 
||         ZERO    .L2     B6                ; |89| 
||         MVK     .S2     0x28,B4           ; |89| 

$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x04)
	.dwattr $C$DW$146, DW_AT_name("_MEM_valloc")
	.dwattr $C$DW$146, DW_AT_TI_call

           MV      .L2     B3,B13            ; |81| 
||         CALLP   .S2     _MEM_valloc,B3
||         MV      .L1     A4,A11            ; |81| 
||         LDW     .D2T1   *+DP(_DDR2),A4    ; |89| 
||         ZERO    .S1     A6                ; |89| 

$C$RL42:   ; CALL OCCURS {_MEM_valloc} {0}   ; |89| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12

           MVK     .L2     0x1,B4            ; |92| 
||         STW     .D1T1   A4,*A11           ; |89| 
||         MV      .L1     A4,A0             ; |90| 
||         ZERO    .S1     A10               ; |83| 
||         MVKL    .S2     _Init_notify,B6   ; |115| 
||         ZERO    .D2     B5                ; |115| 

   [ A0]   MV      .L1     A0,A10            ; |96| 
||         MVKH    .S2     _Init_notify,B6   ; |115| 
||         MVK     .D1     0x1,A4            ; |115| 
||         ZERO    .L2     B7                ; |115| 
||         MVKL    .S1     __SEM_dopost,A3

           MV      .L1X    B4,A11            ; |89| 
||         ZERO    .L2     B4                ; |115| 
||         MVK     .S1     0x5,A6            ; |115| 
||         ADD     .D1     A10,24,A5         ; |87| 

   [ A0]   ZERO    .L1     A11               ; |82| 
||         MV      .D1     A10,A8            ; |115| 
||         MVKH    .S1     __SEM_dopost,A3

           MV      .L1     A11,A0            ; |115| 

   [ A0]   MVK     .L1     0x5,A6            ; |147| 
|| [ A0]   MVK     .S1     0x1,A4            ; |147| 
|| [!A0]   STW     .D1T2   B5,*+A10(36)      ; |105| 
|| [ A0]   ZERO    .L2     B4                ; |147| 
|| [ A0]   MVK     .S2     0x2,B6            ; |147| 

   [ A0]   B       .S1     $C$L13            ; |101| 
   [ A0]   BNOP    .S1     $C$L15,3          ; |145| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$147, DW_AT_TI_call

   [!A0]   CALL    .S1     _NOTIFY_register  ; |115| 
|| [!A0]   STW     .D1T2   B7,*A10           ; |103| 

           ; BRANCHCC OCCURS {$C$L13}        ; |101| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           STW     .D1T1   A3,*+A10(16)      ; |89| 
           STW     .D1T2   B5,*+A10(12)      ; |88| 
           STW     .D1T1   A5,*+A10(24)      ; |87| 
           STW     .D1T1   A5,*+A10(28)      ; |87| 

           STW     .D1T2   B5,*+A10(20)      ; |86| 
||         ADDKPC  .S2     $C$RL43,B3,0      ; |115| 

$C$RL43:   ; CALL OCCURS {_NOTIFY_register} {0}  ; |115| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A10,A8            ; |130| 
||         MVK     .S1     0x6,A6            ; |130| 
||         ZERO    .L2     B4                ; |130| 
||         MV      .D1     A4,A0             ; |115| 

   [ A0]   B       .S1     $C$L17            ; |122| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$148, DW_AT_TI_call
   [!A0]   CALL    .S1     _NOTIFY_register  ; |130| 
           MVKL    .S2     _Command_notify,B6 ; |130| 
           MV      .L1     A4,A11            ; |115| 
           MVK     .L1     0x1,A4            ; |130| 
           MVKH    .S2     _Command_notify,B6 ; |130| 
           ; BRANCHCC OCCURS {$C$L17}        ; |122| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
           ADDKPC  .S2     $C$RL44,B3,0      ; |130| 
$C$RL44:   ; CALL OCCURS {_NOTIFY_register} {0}  ; |130| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A4,A0             ; |130| 
||         MV      .S1     A4,A11            ; |130| 

   [ A0]   BNOP    .S1     $C$L14,5          ; |130| 
|| [!A0]   MVK     .L1     0x1,A4            ; |147| 
|| [!A0]   MVK     .L2     0x2,B6            ; |147| 
|| [!A0]   MVK     .D1     0x5,A6            ; |147| 
|| [!A0]   ZERO    .S2     B4                ; |147| 

           ; BRANCHCC OCCURS {$C$L14}        ; |130| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
   [ A0]   BNOP    .S1     $C$L15,4          ; |145| 
;** --------------------------------------------------------------------------*
$C$L13:    
;          EXCLUSIVE CPU CYCLES: 1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$149, DW_AT_TI_call
   [!A0]   CALL    .S1     _NOTIFY_notify    ; |147| 
           ; BRANCHCC OCCURS {$C$L15}        ; |145| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           ADDKPC  .S2     $C$RL45,B3,4      ; |147| 
$C$RL45:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |147| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |147| 
   [!A0]   B       .S1     $C$L16            ; |147| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$150, DW_AT_TI_call
   [!A0]   CALL    .S1     _SEM_pend         ; |161| 
           MV      .L1     A4,A11            ; |147| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L16}        ; |147| 
;** --------------------------------------------------------------------------*
$C$L14:    
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L2     B13,B3            ; |165| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return

           RET     .S2     B3                ; |165| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |165| 

           LDW     .D2T2   *++SP(8),B13      ; |165| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |165| 
;** --------------------------------------------------------------------------*
$C$L15:    
;          EXCLUSIVE CPU CYCLES: 5
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$152, DW_AT_TI_call
           CALL    .S1     _SEM_pend         ; |161| 
           NOP             4
;** --------------------------------------------------------------------------*
$C$L16:    
;          EXCLUSIVE CPU CYCLES: 1

           ADD     .L1     4,A10,A4          ; |161| 
||         ADD     .S1     4,A10,A10         ; |161| 
||         MVK     .L2     0xffffffff,B4     ; |161| 
||         ADDKPC  .S2     $C$RL46,B3,0      ; |161| 

$C$RL46:   ; CALL OCCURS {_SEM_pend} {0}     ; |161| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$153, DW_AT_TI_call

           CALLP   .S2     _SEM_pend,B3
||         MV      .L1     A10,A4            ; |162| 
||         MVK     .L2     0xffffffff,B4     ; |162| 

$C$RL47:   ; CALL OCCURS {_SEM_pend} {0}     ; |162| 
;** --------------------------------------------------------------------------*
$C$L17:    
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L2     B13,B3            ; |165| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_return

           RET     .S2     B3                ; |165| 
||         MV      .L1     A11,A4            ; |164| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |165| 

           LDW     .D2T2   *++SP(8),B13      ; |165| 
	.dwpsn	file "task.c",line 165,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |165| 
	.dwattr $C$DW$144, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0xa5)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$144

	.sect	".text"
	.clink

$C$DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("Init_notify")
	.dwattr $C$DW$155, DW_AT_low_pc(_Init_notify)
	.dwattr $C$DW$155, DW_AT_high_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_Init_notify")
	.dwattr $C$DW$155, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0x169)
	.dwattr $C$DW$155, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$155, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$155, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 362,column 1,is_stmt,address _Init_notify
$C$DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg4]
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg20]
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: Init_notify                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_Init_notify:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10
           LDW     .D2T2   *+DP(_count$1),B5 ; |368| 
           ADD     .L1     8,A6,A4           ; |374| 
           MV      .L1     A6,A3             ; |362| 
           NOP             1
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_SEM_post")
	.dwattr $C$DW$159, DW_AT_TI_call
	.dwattr $C$DW$159, DW_AT_TI_return
           CALLRET .S1     _SEM_post         ; |377| 
           ADD     .L2     1,B5,B5           ; |368| 

           STW     .D2T2   B5,*+DP(_count$1) ; |368| 
||         CMPEQ   .L2     B5,2,B0           ; |372| 

   [ B0]   STW     .D2T1   A4,*+DP(_dspResFrame) ; |374| 

           CMPEQ   .L1X    B5,1,A0           ; |369| 
|| [ B0]   STW     .D2T1   A3,*+DP(_dspRectangle) ; |373| 

	.dwpsn	file "task.c",line 378,column 1,is_stmt

   [ A0]   STW     .D2T1   A3,*+DP(_dspColor) ; |370| 
||         ADD     .L1X    4,B4,A4           ; |377| 

$C$RL48:   ; CALL-RETURN OCCURS {_SEM_post} {0}  ; |377| 
	.dwattr $C$DW$155, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x17a)
	.dwattr $C$DW$155, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$155

	.sect	".text"
	.clink

$C$DW$160	.dwtag  DW_TAG_subprogram, DW_AT_name("Command_notify")
	.dwattr $C$DW$160, DW_AT_low_pc(_Command_notify)
	.dwattr $C$DW$160, DW_AT_high_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_Command_notify")
	.dwattr $C$DW$160, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$160, DW_AT_TI_begin_line(0x17f)
	.dwattr $C$DW$160, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$160, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$160, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 384,column 1,is_stmt,address _Command_notify
$C$DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg4]
$C$DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg20]
$C$DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: Command_notify                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_Command_notify:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_SEM_post")
	.dwattr $C$DW$164, DW_AT_TI_call
	.dwattr $C$DW$164, DW_AT_TI_return
           CALLRET .S1     _SEM_post         ; |389| 
           ADD     .L1X    4,B4,A4           ; |389| 
           STB     .D2T1   A6,*+DP(_function) ; |387| 
	.dwpsn	file "task.c",line 391,column 1,is_stmt
           NOP             3
$C$RL49:   ; CALL-RETURN OCCURS {_SEM_post} {0}  ; |389| 
	.dwattr $C$DW$160, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$160, DW_AT_TI_end_line(0x187)
	.dwattr $C$DW$160, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$160

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
$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$54	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$37)
$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$39)
$C$DW$168	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$54

$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x20)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("FnNotifyCbck")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
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
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x20)
$C$DW$T$76	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$60)
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
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
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
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
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
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x20)
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
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("next")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("prev")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$171, DW_AT_name("wListElem")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$172, DW_AT_name("wCount")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$173, DW_AT_name("fxn")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$174, DW_AT_name("job")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$175, DW_AT_name("count")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$176, DW_AT_name("pendQ")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$177, DW_AT_name("name")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x20)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("Task_TransferInfo_tag")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x28)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$178, DW_AT_name("dataBuf")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_dataBuf")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$179, DW_AT_name("notifySemObj")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_notifySemObj")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$180, DW_AT_name("bufferSize")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_bufferSize")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("Task_TransferInfo")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x20)
$C$DW$T$96	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_address_class(0x20)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg0]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg1]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg2]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg3]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg4]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg5]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg6]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg7]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg8]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg9]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg10]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg11]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg12]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg13]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg14]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg15]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg16]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg17]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg18]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg19]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg20]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg21]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg22]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg23]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg24]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg25]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg26]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg27]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg28]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg29]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg30]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg31]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x20]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x21]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x22]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x23]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x24]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x25]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x26]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x27]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x28]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x29]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x30]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x31]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x32]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x33]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x34]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x35]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x36]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x37]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x38]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x39]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x40]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x41]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x42]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x43]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x44]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x45]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x46]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x47]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x48]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x49]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x50]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x51]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x52]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x53]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x54]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x55]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x56]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x57]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x58]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x59]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x60]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x61]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x62]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x63]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x64]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x65]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x66]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x67]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x68]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x69]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x70]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x71]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x72]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x73]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x74]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x75]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x76]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x77]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x78]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x79]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

