	.syntax unified
	.eabi_attribute 6, 10
	.eabi_attribute 7, 65
	.eabi_attribute 8, 1
	.eabi_attribute 9, 2
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.file	"/home/lynn/coreutils-6.11/obj-llvm/src/fmt_opt.bc"
	.section	.debug_info,"",%progbits
.Lsection_info:
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",%progbits
	.section	.debug_macinfo,"",%progbits
	.section	.debug_line,"",%progbits
.Lsection_line:
	.section	.debug_loc,"",%progbits
	.section	.debug_pubtypes,"",%progbits
	.section	.debug_str,"MS",%progbits,1
.Linfo_string:
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
	.section	.debug_loc,"",%progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.file	1 "../../src/fmt.c"
	.file	2 "/usr/arm-linux-gnueabi/include/getopt.h"
	.file	3 "../../src/system.h"
	.file	4 "/usr/arm-linux-gnueabi/include/bits/locale.h"
	.file	5 "../../lib/xstrtol.h"
	.file	6 "/usr/arm-linux-gnueabi/include/ctype.h"
	.file	7 "../../lib/version-etc.c"
	.file	8 "../../lib/version-etc-fsf.c"
	.file	9 "../../lib/closeout.c"
	.file	10 "../../lib/exitfail.c"
	.file	11 "../../lib/quote.c"
	.file	12 "../../lib/quotearg.h"
	.file	13 "../../lib/quotearg.c"
	.file	14 "../../lib/vfprintf.c"
	.file	15 "../../lib/xmalloc.c"
	.file	16 "../../lib/xalloc.h"
	.file	17 "../../lib/xstrtoul.c"
	.file	18 "../../lib/xstrtol.c"
	.file	19 "../../lib/fseterr.c"
	.file	20 "../../lib/xalloc-die.c"
	.file	21 "../../lib/close-stream.c"
	.file	22 "../../lib/vasnprintf.c"
	.file	23 "../../lib/xsize.h"
	.file	24 "../../lib/printf-args.h"
	.file	25 "../../lib/isnanl.c"
	.file	26 "../../lib/isnan.c"
	.file	27 "../../lib/printf-args.c"
	.file	28 "../../lib/printf-parse.c"
	.file	29 "../../lib/printf-parse.h"
	.text
	.align	2
	.type	usage,%function
usage:                                  @ @usage
.Lfunc_begin0:
	.file	30 "/home/lynn/coreutils-6.11/obj-llvm/src/../../src/fmt.c"
	.loc	30 266 0                @ ../../src/fmt.c:266:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	str	r0, [sp]
	.loc	30 267 0 prologue_end   @ ../../src/fmt.c:267:0
.Ltmp0:
	cmp	r0, #0
	beq	.LBB0_2
@ BB#1:                                 @ %if.then
	.loc	30 268 0                @ ../../src/fmt.c:268:0
	ldr	r0, .LCPI0_0
	ldr	r1, .LCPI0_11
	ldr	r2, [r0, #8]
	ldr	r0, .LCPI0_10
	ldr	r0, [r0]
	bl	fprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB0_3
.LBB0_2:                                @ %if.else
	.loc	30 272 0                @ ../../src/fmt.c:272:0
.Ltmp1:
	ldr	r0, .LCPI0_0
	ldr	r1, [r0, #8]
	ldr	r0, .LCPI0_1
	bl	printf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 273 0                @ ../../src/fmt.c:273:0
	ldr	r4, .LCPI0_2
	ldr	r0, .LCPI0_3
	ldr	r1, [r4]
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 278 0                @ ../../src/fmt.c:278:0
	ldr	r1, [r4]
	ldr	r0, .LCPI0_4
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 281 0                @ ../../src/fmt.c:281:0
	ldr	r1, [r4]
	ldr	r0, .LCPI0_5
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 288 0                @ ../../src/fmt.c:288:0
	ldr	r1, [r4]
	ldr	r0, .LCPI0_6
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 293 0                @ ../../src/fmt.c:293:0
	ldr	r1, [r4]
	ldr	r0, .LCPI0_7
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 294 0                @ ../../src/fmt.c:294:0
	ldr	r1, [r4]
	ldr	r0, .LCPI0_8
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 295 0                @ ../../src/fmt.c:295:0
	ldr	r1, [r4]
	ldr	r0, .LCPI0_9
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 299 0                @ ../../src/fmt.c:299:0
	bl	emit_bug_reporting_address
.Ltmp2:
.LBB0_3:                                @ %if.end
	.loc	30 301 0                @ ../../src/fmt.c:301:0
	ldr	r0, [sp]
	bl	exit
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp3:
	.align	2
@ BB#4:
.LCPI0_0:
	.long	_MergedGlobals1
.LCPI0_1:
	.long	.L.str1
.LCPI0_2:
	.long	stdout
.LCPI0_3:
	.long	.L.str2
.LCPI0_4:
	.long	.L.str3
.LCPI0_5:
	.long	.L.str4
.LCPI0_6:
	.long	.L.str5
.LCPI0_7:
	.long	.L.str6
.LCPI0_8:
	.long	.L.str7
.LCPI0_9:
	.long	.L.str8
.LCPI0_10:
	.long	stderr
.LCPI0_11:
	.long	.L.str
.Ltmp4:
	.size	usage, .Ltmp4-usage
.Lfunc_end0:

	.align	2
	.type	emit_bug_reporting_address,%function
emit_bug_reporting_address:             @ @emit_bug_reporting_address
.Lfunc_begin1:
	.file	31 "/home/lynn/coreutils-6.11/obj-llvm/src/../../src/system.h"
	.loc	31 606 0                @ ../../src/system.h:606:0
@ BB#0:                                 @ %entry
	.loc	31 611 0 prologue_end   @ ../../src/system.h:611:0
	push	{r11, lr}
	mov	r11, sp
	ldr	r0, .LCPI1_0
	ldr	r1, .LCPI1_1
	bl	printf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	31 612 0                @ ../../src/system.h:612:0
	pop	{r11, lr}
	mov	pc, lr
.Ltmp5:
	.align	2
@ BB#1:
.LCPI1_0:
	.long	.L.str32
.LCPI1_1:
	.long	.L.str33
.Ltmp6:
	.size	emit_bug_reporting_address, .Ltmp6-emit_bug_reporting_address
.Lfunc_end1:

	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
.Lfunc_begin2:
	.loc	30 321 0                @ ../../src/fmt.c:321:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #44
	str	r0, [sp, #36]
	mov	r0, #1
	str	r1, [sp, #32]
	mov	r6, #0
	.loc	30 328 0 prologue_end   @ ../../src/fmt.c:328:0
.Ltmp7:
	ldr	r4, .LCPI2_1
	.loc	30 327 0                @ ../../src/fmt.c:327:0
	ldr	r5, .LCPI2_0
	.loc	30 323 0                @ ../../src/fmt.c:323:0
	strb	r0, [sp, #27]
	.loc	30 327 0                @ ../../src/fmt.c:327:0
	ldr	r0, [sp, #32]
	str	r6, [r11, #-32]
	.loc	30 324 0                @ ../../src/fmt.c:324:0
	str	r6, [sp, #20]
	.loc	30 328 0                @ ../../src/fmt.c:328:0
	mov	r1, r4
	.loc	30 327 0                @ ../../src/fmt.c:327:0
	ldr	r0, [r0]
	str	r0, [r5, #8]
	mov	r0, #6
	.loc	30 328 0                @ ../../src/fmt.c:328:0
	bl	setlocale
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 332 0                @ ../../src/fmt.c:332:0
	ldr	r0, .LCPI2_2
	bl	atexit
	mov	r0, #75
	.loc	30 335 0                @ ../../src/fmt.c:335:0
	add	r1, r5, #12
	.loc	30 334 0                @ ../../src/fmt.c:334:0
	strb	r6, [r5]
	strb	r6, [r5, #1]
	strb	r6, [r5, #2]
	strb	r6, [r5, #3]
	.loc	30 335 0                @ ../../src/fmt.c:335:0
	stm	r1, {r0, r4, r6}
	.loc	30 337 0                @ ../../src/fmt.c:337:0
	str	r6, [r5, #24]
	str	r6, [r5, #28]
	.loc	30 339 0                @ ../../src/fmt.c:339:0
	ldr	r0, [sp, #36]
	cmp	r0, #2
	blt	.LBB2_5
@ BB#1:                                 @ %land.lhs.true
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #4]
	ldrb	r0, [r0]
	cmp	r0, #45
	bne	.LBB2_5
@ BB#2:                                 @ %land.lhs.true6
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #4]
	ldrb	r0, [r0, #1]
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB2_5
@ BB#3:                                 @ %if.then
	.loc	30 342 0                @ ../../src/fmt.c:342:0
.Ltmp8:
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #4]
	add	r0, r0, #1
	str	r0, [sp, #20]
	.loc	30 345 0                @ ../../src/fmt.c:345:0
	ldr	r0, [sp, #32]
	ldr	r1, [r0]
	str	r1, [r0, #4]
	.loc	30 346 0                @ ../../src/fmt.c:346:0
	ldr	r0, [sp, #32]
	add	r0, r0, #4
	str	r0, [sp, #32]
	.loc	30 347 0                @ ../../src/fmt.c:347:0
	ldr	r0, [sp, #36]
	sub	r0, r0, #1
	str	r0, [sp, #36]
	b	.LBB2_5
.Ltmp9:
.LBB2_4:                                @ %sw.bb28
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r0, #0
	.loc	30 386 0                @ ../../src/fmt.c:386:0
.Ltmp10:
	bl	usage
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB2_5
.Ltmp11:
.LBB2_5:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 350 0                @ ../../src/fmt.c:350:0
	ldr	r1, [sp, #32]
	ldr	r0, [sp, #36]
	ldr	r2, .LCPI2_3
	ldr	r3, .LCPI2_4
	str	r6, [sp]
	bl	getopt_long
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #28]
	cmn	r0, #1
	beq	.LBB2_22
@ BB#6:                                 @ %while.body
                                        @   in Loop: Header=BB2_5 Depth=1
	.loc	30 353 0                @ ../../src/fmt.c:353:0
	ldr	r0, [sp, #28]
	cmn	r0, #4
	bhi	.LBB2_9
@ BB#7:                                 @ %while.body
                                        @   in Loop: Header=BB2_5 Depth=1
	cmp	r0, #111
	bhi	.LBB2_11
@ BB#8:                                 @ %while.body
                                        @   in Loop: Header=BB2_5 Depth=1
	cmp	r0, #99
	bne	.LBB2_12
	b	.LBB2_15
.LBB2_9:                                @ %while.body
                                        @   in Loop: Header=BB2_5 Depth=1
	cmn	r0, #2
	beq	.LBB2_4
@ BB#10:                                @ %while.body
                                        @   in Loop: Header=BB2_5 Depth=1
	cmn	r0, #3
	beq	.LBB2_38
	b	.LBB2_12
.LBB2_11:                               @ %while.body
                                        @   in Loop: Header=BB2_5 Depth=1
	sub	r0, r0, #112
	cmp	r0, #7
	bls	.LBB2_16
.LBB2_12:                               @ %sw.default
                                        @   in Loop: Header=BB2_5 Depth=1
	.loc	30 356 0                @ ../../src/fmt.c:356:0
.Ltmp12:
	ldr	r0, [sp, #28]
	sub	r0, r0, #48
	cmp	r0, #9
	bhi	.LBB2_14
@ BB#13:                                @ %if.then21
                                        @   in Loop: Header=BB2_5 Depth=1
	.loc	30 357 0                @ ../../src/fmt.c:357:0
	ldr	r3, [sp, #28]
	ldr	r2, .LCPI2_19
	mov	r0, #0
	mov	r1, #0
	bl	error
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB2_14:                               @ %if.end22
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r0, #1
	.loc	30 360 0                @ ../../src/fmt.c:360:0
	bl	usage
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB2_15:                               @ %sw.bb
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r0, #1
	.loc	30 363 0                @ ../../src/fmt.c:363:0
	strb	r0, [r5, #3]
	b	.LBB2_5
.LBB2_16:                               @ %while.body
                                        @   in Loop: Header=BB2_5 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI2_0_0
	ldr	pc, [r0, r1]
.LJTI2_0_0:
	.long	.LBB2_17
	.long	.LBB2_12
	.long	.LBB2_12
	.long	.LBB2_18
	.long	.LBB2_19
	.long	.LBB2_20
	.long	.LBB2_12
	.long	.LBB2_21
.LBB2_17:                               @ %sw.bb27
                                        @   in Loop: Header=BB2_5 Depth=1
	.loc	30 383 0                @ ../../src/fmt.c:383:0
	ldr	r0, .LCPI2_18
	ldr	r0, [r0]
	bl	set_prefix
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 384 0                @ ../../src/fmt.c:384:0
	b	.LBB2_5
.LBB2_18:                               @ %sw.bb23
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r0, #1
	.loc	30 367 0                @ ../../src/fmt.c:367:0
	strb	r0, [r5, #1]
	b	.LBB2_5
.LBB2_19:                               @ %sw.bb24
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r0, #1
	.loc	30 371 0                @ ../../src/fmt.c:371:0
	strb	r0, [r5, #2]
	b	.LBB2_5
.LBB2_20:                               @ %sw.bb25
                                        @   in Loop: Header=BB2_5 Depth=1
	mov	r0, #1
	.loc	30 375 0                @ ../../src/fmt.c:375:0
	strb	r0, [r5]
	b	.LBB2_5
.LBB2_21:                               @ %sw.bb26
                                        @   in Loop: Header=BB2_5 Depth=1
	.loc	30 379 0                @ ../../src/fmt.c:379:0
	ldr	r0, .LCPI2_18
	ldr	r0, [r0]
	str	r0, [sp, #20]
	b	.LBB2_5
.Ltmp13:
.LBB2_22:                               @ %while.end
	.loc	30 392 0                @ ../../src/fmt.c:392:0
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.LBB2_27
@ BB#23:                                @ %if.then30
.Ltmp14:
	@DEBUG_VALUE: tmp <- [sp+#16]+#0
	.loc	30 397 0                @ ../../src/fmt.c:397:0
	ldr	r0, [sp, #20]
	add	r3, sp, #16
	mov	r1, #0
	mov	r2, #10
	str	r4, [sp]
	bl	xstrtoul
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	bne	.LBB2_25
@ BB#24:                                @ %land.lhs.true34
	ldr	r1, [sp, #16]
	mov	r0, #197
	orr	r0, r0, #2304
	cmp	r1, r0
	blo	.LBB2_26
.LBB2_25:                               @ %if.then37
	.loc	30 400 0                @ ../../src/fmt.c:400:0
	ldr	r0, [sp, #20]
	bl	quote
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r3, r0
	ldr	r2, .LCPI2_5
	mov	r0, #1
	mov	r1, #0
	bl	error
.LBB2_26:                               @ %if.end39
	.loc	30 401 0                @ ../../src/fmt.c:401:0
	ldr	r0, [sp, #16]
	str	r0, [r5, #12]
.Ltmp15:
.LBB2_27:                               @ %if.end40
	.loc	30 404 0                @ ../../src/fmt.c:404:0
	ldr	r1, [r5, #12]
	mov	r2, #187
	mul	r0, r1, r2
	ldr	r2, .LCPI2_6
	smull	r3, r1, r0, r2
	asr	r0, r1, #6
	add	r0, r0, r1, lsr #31
	.loc	30 406 0                @ ../../src/fmt.c:406:0
	ldr	r1, [sp, #36]
	.loc	30 404 0                @ ../../src/fmt.c:404:0
	str	r0, [r5, #32]
	.loc	30 406 0                @ ../../src/fmt.c:406:0
	ldr	r5, .LCPI2_7
	ldr	r0, [r5]
	cmp	r0, r1
	beq	.LBB2_39
@ BB#28:
	.loc	30 413 0                @ ../../src/fmt.c:413:0
.Ltmp16:
	ldr	r8, .LCPI2_8
	.loc	30 418 0                @ ../../src/fmt.c:418:0
.Ltmp17:
	ldr	r9, .LCPI2_9
	.loc	30 424 0                @ ../../src/fmt.c:424:0
.Ltmp18:
	ldr	r6, .LCPI2_11
.Ltmp19:
	.loc	30 431 0                @ ../../src/fmt.c:431:0
	ldr	r7, .LCPI2_10
	mov	r10, #0
	b	.LBB2_30
.Ltmp20:
.LBB2_29:                               @ %for.inc
                                        @   in Loop: Header=BB2_30 Depth=1
	.loc	30 410 0                @ ../../src/fmt.c:410:0
	ldr	r0, [r5]
	add	r0, r0, #1
	str	r0, [r5]
.LBB2_30:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5]
	ldr	r1, [sp, #36]
	cmp	r0, r1
	bge	.LBB2_40
@ BB#31:                                @ %for.body
                                        @   in Loop: Header=BB2_30 Depth=1
.Ltmp21:
	@DEBUG_VALUE: file <- [sp+#12]+#0
	.loc	30 412 0                @ ../../src/fmt.c:412:0
	ldr	r0, [r5]
	ldr	r1, [sp, #32]
	ldr	r0, [r1, r0, lsl #2]
	.loc	30 413 0                @ ../../src/fmt.c:413:0
	mov	r1, r8
	.loc	30 412 0                @ ../../src/fmt.c:412:0
	str	r0, [sp, #12]
	.loc	30 413 0                @ ../../src/fmt.c:413:0
	bl	strcmp
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	bne	.LBB2_33
@ BB#32:                                @ %if.then51
                                        @   in Loop: Header=BB2_30 Depth=1
	.loc	30 414 0                @ ../../src/fmt.c:414:0
	ldr	r0, .LCPI2_12
	ldr	r0, [r0]
	bl	fmt
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB2_29
.LBB2_33:                               @ %if.else52
                                        @   in Loop: Header=BB2_30 Depth=1
.Ltmp22:
	@DEBUG_VALUE: in_stream <- [sp+#8]+#0
	.loc	30 418 0                @ ../../src/fmt.c:418:0
	ldr	r0, [sp, #12]
	mov	r1, r9
	bl	fopen
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #8]
	.loc	30 419 0                @ ../../src/fmt.c:419:0
	cmp	r0, #0
	beq	.LBB2_36
@ BB#34:                                @ %if.then57
                                        @   in Loop: Header=BB2_30 Depth=1
	.loc	30 421 0                @ ../../src/fmt.c:421:0
.Ltmp23:
	ldr	r0, [sp, #8]
	bl	fmt
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 422 0                @ ../../src/fmt.c:422:0
	ldr	r0, [sp, #8]
	bl	fclose
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmn	r0, #1
	bne	.LBB2_29
@ BB#35:                                @ %if.then61
                                        @   in Loop: Header=BB2_30 Depth=1
	.loc	30 424 0                @ ../../src/fmt.c:424:0
.Ltmp24:
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [r0]
	ldr	r3, [sp, #12]
	mov	r0, #0
	mov	r2, r6
	bl	error
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 425 0                @ ../../src/fmt.c:425:0
	b	.LBB2_37
.Ltmp25:
.LBB2_36:                               @ %if.else64
                                        @   in Loop: Header=BB2_30 Depth=1
	.loc	30 430 0                @ ../../src/fmt.c:430:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r4, [r0]
	.loc	30 431 0                @ ../../src/fmt.c:431:0
	ldr	r0, [sp, #12]
	bl	quote
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r3, r0
	mov	r0, #0
	mov	r1, r4
	mov	r2, r7
	bl	error
.LBB2_37:                               @ %if.else64
                                        @   in Loop: Header=BB2_30 Depth=1
	.loc	30 432 0                @ ../../src/fmt.c:432:0
	strb	r10, [sp, #27]
	b	.LBB2_29
.Ltmp26:
.LBB2_38:                               @ %sw.bb29
	mov	r1, #0
	.loc	30 388 0                @ ../../src/fmt.c:388:0
.Ltmp27:
	ldr	r0, .LCPI2_13
	ldr	r2, .LCPI2_16
	ldr	r3, .LCPI2_17
	str	r1, [sp, #4]
	ldr	r1, .LCPI2_14
	ldr	r0, [r0]
	str	r1, [sp]
	ldr	r1, .LCPI2_15
	bl	version_etc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r0, #0
	bl	exit
.Ltmp28:
.LBB2_39:                               @ %if.then43
	.loc	30 407 0                @ ../../src/fmt.c:407:0
	ldr	r0, .LCPI2_12
	ldr	r0, [r0]
	bl	fmt
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB2_40
.LBB2_40:                               @ %if.end69
	.loc	30 438 0                @ ../../src/fmt.c:438:0
	ldrb	r0, [sp, #27]
	mov	r1, #1
	bic	r0, r1, r0
	bl	exit
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp29:
	.align	2
@ BB#41:
.LCPI2_0:
	.long	_MergedGlobals1
.LCPI2_1:
	.long	.L.str9
.LCPI2_2:
	.long	close_stdout
.LCPI2_3:
	.long	.L.str10
.LCPI2_4:
	.long	long_options
.LCPI2_5:
	.long	.L.str16
.LCPI2_6:
	.long	1374389535              @ 0x51eb851f
.LCPI2_7:
	.long	optind
.LCPI2_8:
	.long	.L.str17
.LCPI2_9:
	.long	.L.str18
.LCPI2_10:
	.long	.L.str20
.LCPI2_11:
	.long	.L.str19
.LCPI2_12:
	.long	stdin
.LCPI2_13:
	.long	stdout
.LCPI2_14:
	.long	.L.str15
.LCPI2_15:
	.long	.L.str12
.LCPI2_16:
	.long	.L.str13
.LCPI2_17:
	.long	.L.str14
.LCPI2_18:
	.long	optarg
.LCPI2_19:
	.long	.L.str11
.Ltmp30:
	.size	main, .Ltmp30-main
.Lfunc_end2:
	.file	32 "/usr/arm-linux-gnueabi/include/libio.h"

	.align	2
	.type	set_prefix,%function
set_prefix:                             @ @set_prefix
.Lfunc_begin3:
	.loc	30 446 0                @ ../../src/fmt.c:446:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	.loc	30 449 0 prologue_end   @ ../../src/fmt.c:449:0
.Ltmp31:
	ldr	r4, .LCPI3_0
	str	r0, [sp, #8]
	mov	r0, #0
	str	r0, [r4, #24]
	b	.LBB3_2
.LBB3_1:                                @ %while.body
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	30 452 0                @ ../../src/fmt.c:452:0
.Ltmp32:
	ldr	r0, [r4, #24]
	add	r0, r0, #1
	str	r0, [r4, #24]
	.loc	30 453 0                @ ../../src/fmt.c:453:0
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
.Ltmp33:
.LBB3_2:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 450 0                @ ../../src/fmt.c:450:0
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	cmp	r0, #32
	beq	.LBB3_1
@ BB#3:                                 @ %while.end
	.loc	30 455 0                @ ../../src/fmt.c:455:0
	ldr	r0, [sp, #8]
	str	r0, [r4, #16]
	.loc	30 456 0                @ ../../src/fmt.c:456:0
	ldr	r0, [sp, #8]
	bl	strlen
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 457 0                @ ../../src/fmt.c:457:0
	ldr	r1, [sp, #8]
	.loc	30 456 0                @ ../../src/fmt.c:456:0
	str	r0, [r4, #20]
	.loc	30 457 0                @ ../../src/fmt.c:457:0
	add	r0, r1, r0
	b	.LBB3_5
.LBB3_4:                                @ %while.body8
                                        @   in Loop: Header=BB3_5 Depth=1
	.loc	30 459 0                @ ../../src/fmt.c:459:0
	ldr	r0, [sp, #4]
	sub	r0, r0, #1
.LBB3_5:                                @ %while.end
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 457 0                @ ../../src/fmt.c:457:0
	str	r0, [sp, #4]
	.loc	30 458 0                @ ../../src/fmt.c:458:0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r1, r0
	mov	r0, #0
	bls	.LBB3_7
@ BB#6:                                 @ %land.rhs
                                        @   in Loop: Header=BB3_5 Depth=1
	ldr	r0, [sp, #4]
	sub	r0, r0, #1
	ldrb	r0, [r0]
	cmp	r0, #32
	mov	r0, #0
	moveq	r0, #1
.LBB3_7:                                @ %land.end
                                        @   in Loop: Header=BB3_5 Depth=1
	cmp	r0, #1
	beq	.LBB3_4
@ BB#8:                                 @ %while.end10
	.loc	30 460 0                @ ../../src/fmt.c:460:0
	ldr	r0, [sp, #4]
	mov	r1, #0
	strb	r1, [r0]
	.loc	30 461 0                @ ../../src/fmt.c:461:0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	sub	r0, r1, r0
	str	r0, [r4, #28]
	.loc	30 462 0                @ ../../src/fmt.c:462:0
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp34:
	.align	2
@ BB#9:
.LCPI3_0:
	.long	_MergedGlobals1
.Ltmp35:
	.size	set_prefix, .Ltmp35-set_prefix
.Lfunc_end3:

	.align	2
	.type	fmt,%function
fmt:                                    @ @fmt
.Lfunc_begin4:
	.loc	30 468 0                @ ../../src/fmt.c:468:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	.loc	30 469 0 prologue_end   @ ../../src/fmt.c:469:0
.Ltmp36:
	ldr	r4, .LCPI4_0
	str	r0, [sp]
	mov	r0, #0
	strb	r0, [r4, #4]
	.loc	30 470 0                @ ../../src/fmt.c:470:0
	str	r0, [r4, #36]
	.loc	30 471 0                @ ../../src/fmt.c:471:0
	ldr	r0, [sp]
	bl	get_prefix
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r4, #40]
	b	.LBB4_2
.LBB4_1:                                @ %while.body
                                        @   in Loop: Header=BB4_2 Depth=1
	.loc	30 474 0                @ ../../src/fmt.c:474:0
.Ltmp37:
	bl	fmt_paragraph
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 475 0                @ ../../src/fmt.c:475:0
	ldr	r0, [r4, #44]
	bl	put_paragraph
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 476 0                @ ../../src/fmt.c:476:0
	b	.LBB4_2
.Ltmp38:
.LBB4_2:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 472 0                @ ../../src/fmt.c:472:0
	ldr	r0, [sp]
	bl	get_paragraph
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #1
	beq	.LBB4_1
@ BB#3:                                 @ %while.end
	.loc	30 477 0                @ ../../src/fmt.c:477:0
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp39:
	.align	2
@ BB#4:
.LCPI4_0:
	.long	_MergedGlobals1
.Ltmp40:
	.size	fmt, .Ltmp40-fmt
.Lfunc_end4:

	.align	2
	.type	get_prefix,%function
get_prefix:                             @ @get_prefix
.Lfunc_begin5:
	.loc	30 703 0                @ ../../src/fmt.c:703:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
	str	r0, [sp, #16]
	.loc	30 706 0 prologue_end   @ ../../src/fmt.c:706:0
.Ltmp41:
	ldr	r5, .LCPI5_0
	mov	r0, #0
	.loc	30 707 0                @ ../../src/fmt.c:707:0
	ldr	r4, [sp, #16]
	.loc	30 706 0                @ ../../src/fmt.c:706:0
	str	r0, [r5, #68]
	.loc	30 707 0                @ ../../src/fmt.c:707:0
	mov	r0, r4
	bl	getc_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, r0
	mov	r0, r4
	bl	get_space
	.loc	30 708 0                @ ../../src/fmt.c:708:0
	ldr	r1, [r5, #28]
	.loc	30 707 0                @ ../../src/fmt.c:707:0
	str	r0, [sp, #12]
	.loc	30 708 0                @ ../../src/fmt.c:708:0
	cmp	r1, #0
	beq	.LBB5_5
@ BB#1:                                 @ %if.else
.Ltmp42:
	@DEBUG_VALUE: p <- [sp+#8]+#0
	.loc	30 714 0                @ ../../src/fmt.c:714:0
	ldr	r0, [r5, #68]
	str	r0, [r5, #64]
	.loc	30 715 0                @ ../../src/fmt.c:715:0
.Ltmp43:
	ldr	r0, [r5, #16]
	b	.LBB5_3
.LBB5_2:                                @ %if.end
                                        @   in Loop: Header=BB5_3 Depth=1
	.loc	30 720 0                @ ../../src/fmt.c:720:0
.Ltmp44:
	ldr	r0, [r5, #68]
	add	r0, r0, #1
	str	r0, [r5, #68]
	.loc	30 721 0                @ ../../src/fmt.c:721:0
	ldr	r0, [sp, #16]
	bl	getc_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #12]
.Ltmp45:
	.loc	30 715 0                @ ../../src/fmt.c:715:0
	ldr	r0, [sp, #8]
	add	r0, r0, #1
.LBB5_3:                                @ %if.else
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB5_6
@ BB#4:                                 @ %for.body
                                        @   in Loop: Header=BB5_3 Depth=1
.Ltmp46:
	@DEBUG_VALUE: pc <- [sp+#7]+#0
	.loc	30 717 0                @ ../../src/fmt.c:717:0
	ldr	r0, [sp, #8]
	.loc	30 718 0                @ ../../src/fmt.c:718:0
	ldr	r1, [sp, #12]
	.loc	30 717 0                @ ../../src/fmt.c:717:0
	ldrb	r0, [r0]
	strb	r0, [sp, #7]
	.loc	30 718 0                @ ../../src/fmt.c:718:0
	ldrb	r0, [sp, #7]
	cmp	r1, r0
	bne	.LBB5_7
	b	.LBB5_2
.Ltmp47:
.LBB5_5:                                @ %if.then
	.loc	30 709 0                @ ../../src/fmt.c:709:0
	ldr	r0, [r5, #24]
	ldr	r1, [r5, #68]
	cmp	r0, r1
	ldrge	r0, [r5, #68]
	ldrlt	r0, [r5, #24]
	str	r0, [r5, #64]
	b	.LBB5_7
.LBB5_6:                                @ %for.end
	.loc	30 723 0                @ ../../src/fmt.c:723:0
.Ltmp48:
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #16]
	bl	get_space
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #12]
.Ltmp49:
.LBB5_7:                                @ %if.end11
	.loc	30 725 0                @ ../../src/fmt.c:725:0
	ldr	r0, [sp, #12]
	str	r0, [r11, #-12]
	.loc	30 726 0                @ ../../src/fmt.c:726:0
	ldr	r0, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp50:
	.align	2
@ BB#8:
.LCPI5_0:
	.long	_MergedGlobals1
.Ltmp51:
	.size	get_prefix, .Ltmp51-get_prefix
.Lfunc_end5:

	.align	2
	.type	get_paragraph,%function
get_paragraph:                          @ @get_paragraph
.Lfunc_begin6:
	.loc	30 529 0                @ ../../src/fmt.c:529:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	.loc	30 532 0 prologue_end   @ ../../src/fmt.c:532:0
.Ltmp52:
	ldr	r4, .LCPI6_0
	str	r0, [sp, #4]
	mov	r0, #0
	str	r0, [r4, #60]
	.loc	30 533 0                @ ../../src/fmt.c:533:0
	ldr	r0, [r4, #40]
	b	.LBB6_2
.LBB6_1:                                @ %if.end
                                        @   in Loop: Header=BB6_2 Depth=1
	mov	r0, #10
	.loc	30 547 0                @ ../../src/fmt.c:547:0
.Ltmp53:
	bl	putchar_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 548 0                @ ../../src/fmt.c:548:0
	ldr	r0, [sp, #4]
	bl	get_prefix
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB6_2
.Ltmp54:
.LBB6_2:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 533 0                @ ../../src/fmt.c:533:0
	str	r0, [sp]
	mov	r0, #1
	.loc	30 537 0                @ ../../src/fmt.c:537:0
	ldr	r1, [sp]
	cmp	r1, #10
	ldrne	r1, [sp]
	cmnne	r1, #1
	beq	.LBB6_5
@ BB#3:                                 @ %lor.lhs.false2
                                        @   in Loop: Header=BB6_2 Depth=1
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #64]
	cmp	r2, r1
	blt	.LBB6_5
@ BB#4:                                 @ %lor.rhs
                                        @   in Loop: Header=BB6_2 Depth=1
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #64]
	ldr	r2, [r4, #68]
	add	r0, r1, r0
	cmp	r2, r0
	mov	r0, #0
	movlt	r0, #1
.LBB6_5:                                @ %lor.end
                                        @   in Loop: Header=BB6_2 Depth=1
	cmp	r0, #1
	bne	.LBB6_8
@ BB#6:                                 @ %while.body
                                        @   in Loop: Header=BB6_2 Depth=1
	.loc	30 541 0                @ ../../src/fmt.c:541:0
.Ltmp55:
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	copy_rest
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp]
	.loc	30 542 0                @ ../../src/fmt.c:542:0
	cmn	r0, #1
	bne	.LBB6_1
@ BB#7:                                 @ %if.then
	mvn	r0, #0
	.loc	30 544 0                @ ../../src/fmt.c:544:0
.Ltmp56:
	str	r0, [r4, #40]
	mov	r0, #0
	b	.LBB6_25
.Ltmp57:
.LBB6_8:                                @ %while.end
	.loc	30 553 0                @ ../../src/fmt.c:553:0
	ldr	r0, [r4, #64]
	.loc	30 557 0                @ ../../src/fmt.c:557:0
	ldr	r1, [sp]
	.loc	30 553 0                @ ../../src/fmt.c:553:0
	str	r0, [r4, #56]
	.loc	30 554 0                @ ../../src/fmt.c:554:0
	ldr	r0, [r4, #68]
	str	r0, [r4, #48]
	.loc	30 555 0                @ ../../src/fmt.c:555:0
	ldr	r0, .LCPI6_1
	str	r0, [r4, #72]
	.loc	30 556 0                @ ../../src/fmt.c:556:0
	ldr	r0, .LCPI6_2
	str	r0, [r4, #44]
	.loc	30 557 0                @ ../../src/fmt.c:557:0
	ldr	r0, [sp, #4]
	bl	get_line
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp]
	.loc	30 558 0                @ ../../src/fmt.c:558:0
	bl	same_para
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	bl	set_other_indent
	.loc	30 562 0                @ ../../src/fmt.c:562:0
	ldrb	r0, [r4, #1]
	tst	r0, #1
	bne	.LBB6_24
@ BB#9:                                 @ %if.else
	.loc	30 566 0                @ ../../src/fmt.c:566:0
	ldrb	r0, [r4, #3]
	tst	r0, #1
	beq	.LBB6_14
@ BB#10:                                @ %if.then12
	.loc	30 568 0                @ ../../src/fmt.c:568:0
.Ltmp58:
	ldr	r0, [sp]
	bl	same_para
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #1
	bne	.LBB6_24
.LBB6_11:                               @ %do.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 572 0                @ ../../src/fmt.c:572:0
.Ltmp59:
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	get_line
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp]
.Ltmp60:
	.loc	30 574 0                @ ../../src/fmt.c:574:0
	bl	same_para
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #1
	mov	r0, #0
	bne	.LBB6_13
@ BB#12:                                @ %land.rhs
                                        @   in Loop: Header=BB6_11 Depth=1
	ldr	r0, [r4, #36]
	ldr	r1, [r4, #68]
	cmp	r1, r0
	mov	r0, #0
	moveq	r0, #1
.Ltmp61:
.LBB6_13:                               @ %land.end
                                        @   in Loop: Header=BB6_11 Depth=1
	cmp	r0, #0
	bne	.LBB6_11
	b	.LBB6_24
.LBB6_14:                               @ %if.else19
	.loc	30 577 0                @ ../../src/fmt.c:577:0
	ldrb	r0, [r4, #2]
	tst	r0, #1
	beq	.LBB6_21
@ BB#15:                                @ %if.then21
	.loc	30 579 0                @ ../../src/fmt.c:579:0
.Ltmp62:
	ldr	r0, [sp]
	bl	same_para
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #1
	bne	.LBB6_24
@ BB#16:                                @ %land.lhs.true
	ldr	r0, [r4, #48]
	ldr	r1, [r4, #68]
	cmp	r1, r0
	beq	.LBB6_24
.LBB6_17:                               @ %do.cond27
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 583 0                @ ../../src/fmt.c:583:0
.Ltmp63:
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	get_line
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp]
.Ltmp64:
	.loc	30 585 0                @ ../../src/fmt.c:585:0
	bl	same_para
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #1
	mov	r0, #0
	bne	.LBB6_19
@ BB#18:                                @ %land.rhs29
                                        @   in Loop: Header=BB6_17 Depth=1
	ldr	r0, [r4, #36]
	ldr	r1, [r4, #68]
	cmp	r1, r0
	mov	r0, #0
	moveq	r0, #1
.Ltmp65:
.LBB6_19:                               @ %land.end31
                                        @   in Loop: Header=BB6_17 Depth=1
	cmp	r0, #0
	bne	.LBB6_17
	b	.LBB6_24
.LBB6_20:                               @ %while.body40
                                        @   in Loop: Header=BB6_21 Depth=1
	.loc	30 591 0                @ ../../src/fmt.c:591:0
.Ltmp66:
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	get_line
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp]
.LBB6_21:                               @ %while.cond35
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 590 0                @ ../../src/fmt.c:590:0
	ldr	r0, [sp]
	bl	same_para
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #1
	mov	r0, #0
	bne	.LBB6_23
@ BB#22:                                @ %land.rhs37
                                        @   in Loop: Header=BB6_21 Depth=1
	ldr	r0, [r4, #36]
	ldr	r1, [r4, #68]
	cmp	r1, r0
	mov	r0, #0
	moveq	r0, #1
.Ltmp67:
.LBB6_23:                               @ %land.end39
                                        @   in Loop: Header=BB6_21 Depth=1
	cmp	r0, #1
	beq	.LBB6_20
.LBB6_24:                               @ %if.end45
	.loc	30 593 0                @ ../../src/fmt.c:593:0
	ldr	r0, [r4, #44]
	sub	r0, r0, #16
	ldrb	r1, [r0]
	orr	r1, r1, #8
	strb	r1, [r0]
	ldr	r0, [r4, #44]
	sub	r0, r0, #16
	ldrb	r1, [r0]
	orr	r1, r1, #2
	strb	r1, [r0]
	.loc	30 594 0                @ ../../src/fmt.c:594:0
	ldr	r0, [sp]
	str	r0, [r4, #40]
	mov	r0, #1
.LBB6_25:                               @ %if.end45
	.loc	30 595 0                @ ../../src/fmt.c:595:0
	strb	r0, [r11, #-5]
	ldrb	r0, [r11, #-5]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp68:
	.align	2
@ BB#26:
.LCPI6_0:
	.long	_MergedGlobals1
.LCPI6_1:
	.long	parabuf
.LCPI6_2:
	.long	unused_word_type
.Ltmp69:
	.size	get_paragraph, .Ltmp69-get_paragraph
.Lfunc_end6:

	.align	2
	.type	fmt_paragraph,%function
fmt_paragraph:                          @ @fmt_paragraph
.Lfunc_begin7:
	.loc	30 834 0                @ ../../src/fmt.c:834:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #24
	.loc	30 840 0 prologue_end   @ ../../src/fmt.c:840:0
.Ltmp70:
	ldr	r4, .LCPI7_0
	mov	r1, #0
	.loc	30 844 0                @ ../../src/fmt.c:844:0
.Ltmp71:
	ldr	r5, .LCPI7_1
	mvn	r6, #-2147483648
.Ltmp72:
	.loc	30 840 0                @ ../../src/fmt.c:840:0
	ldr	r0, [r4, #44]
	str	r1, [r0, #20]
	.loc	30 841 0                @ ../../src/fmt.c:841:0
	ldr	r0, [r4, #44]
	.loc	30 842 0                @ ../../src/fmt.c:842:0
	ldr	r1, [r4, #44]
	.loc	30 841 0                @ ../../src/fmt.c:841:0
	ldr	r0, [r0, #4]
	str	r0, [sp]
	.loc	30 842 0                @ ../../src/fmt.c:842:0
	ldr	r0, [r4, #12]
	str	r0, [r1, #4]
	.loc	30 844 0                @ ../../src/fmt.c:844:0
.Ltmp73:
	ldr	r0, [r4, #44]
	sub	r0, r0, #28
	str	r0, [sp, #20]
	b	.LBB7_2
.LBB7_1:                                @ %for.inc
                                        @   in Loop: Header=BB7_2 Depth=1
	.loc	30 879 0                @ ../../src/fmt.c:879:0
.Ltmp74:
	ldr	r0, [sp, #20]
	ldr	r7, [sp, #4]
	bl	base_cost
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	add	r0, r7, r0
	ldr	r1, [sp, #20]
	str	r0, [r1, #20]
.Ltmp75:
	.loc	30 844 0                @ ../../src/fmt.c:844:0
	ldr	r0, [sp, #20]
	sub	r0, r0, #28
	str	r0, [sp, #20]
.LBB7_2:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB7_4 Depth 2
	ldr	r0, [sp, #20]
	cmp	r0, r5
	blo	.LBB7_11
@ BB#3:                                 @ %for.body
                                        @   in Loop: Header=BB7_2 Depth=1
	.loc	30 847 0                @ ../../src/fmt.c:847:0
.Ltmp76:
	ldr	r0, [sp, #20]
	.loc	30 846 0                @ ../../src/fmt.c:846:0
	str	r6, [sp, #4]
	.loc	30 847 0                @ ../../src/fmt.c:847:0
	cmp	r0, r5
	ldrne	r0, [r4, #36]
	ldreq	r0, [r4, #48]
	str	r0, [sp, #12]
	.loc	30 851 0                @ ../../src/fmt.c:851:0
	ldr	r0, [sp, #20]
	.loc	30 852 0                @ ../../src/fmt.c:852:0
	ldr	r1, [sp, #12]
	.loc	30 851 0                @ ../../src/fmt.c:851:0
	str	r0, [sp, #16]
	.loc	30 852 0                @ ../../src/fmt.c:852:0
	ldr	r0, [r0, #4]
	add	r0, r1, r0
	str	r0, [sp, #12]
.LBB7_4:                                @ %do.body
                                        @   Parent Loop BB7_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	30 855 0                @ ../../src/fmt.c:855:0
.Ltmp77:
	ldr	r0, [sp, #16]
	.loc	30 859 0                @ ../../src/fmt.c:859:0
	ldr	r1, [sp, #12]
	.loc	30 855 0                @ ../../src/fmt.c:855:0
	add	r0, r0, #28
	str	r0, [sp, #16]
	.loc	30 859 0                @ ../../src/fmt.c:859:0
	bl	line_cost
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [sp, #16]
	ldr	r1, [r1, #20]
	add	r0, r0, r1
	.loc	30 860 0                @ ../../src/fmt.c:860:0
	ldr	r1, [sp, #20]
	.loc	30 859 0                @ ../../src/fmt.c:859:0
	str	r0, [sp, #8]
	.loc	30 860 0                @ ../../src/fmt.c:860:0
	cmp	r1, r5
	bne	.LBB7_7
@ BB#5:                                 @ %land.lhs.true
                                        @   in Loop: Header=BB7_4 Depth=2
	ldr	r0, [r4, #60]
	cmp	r0, #1
	blt	.LBB7_7
@ BB#6:                                 @ %if.then
                                        @   in Loop: Header=BB7_4 Depth=2
	.loc	30 861 0                @ ../../src/fmt.c:861:0
	ldr	r0, [r4, #60]
	ldr	r1, [sp, #12]
	sub	r0, r1, r0
	add	r0, r0, r0, lsl #2
	lsl	r1, r0, #1
	mul	r0, r1, r1
	ldr	r1, [sp, #8]
	add	r0, r1, r0, asr #1
	str	r0, [sp, #8]
.LBB7_7:                                @ %if.end
                                        @   in Loop: Header=BB7_4 Depth=2
	.loc	30 862 0                @ ../../src/fmt.c:862:0
	ldmib	sp, {r0, r1}
	cmp	r1, r0
	bge	.LBB7_9
@ BB#8:                                 @ %if.then13
                                        @   in Loop: Header=BB7_4 Depth=2
	.loc	30 864 0                @ ../../src/fmt.c:864:0
.Ltmp78:
	ldr	r0, [sp, #8]
	.loc	30 865 0                @ ../../src/fmt.c:865:0
	ldr	r1, [sp, #16]
	.loc	30 864 0                @ ../../src/fmt.c:864:0
	str	r0, [sp, #4]
	.loc	30 865 0                @ ../../src/fmt.c:865:0
	ldr	r0, [sp, #20]
	str	r1, [r0, #24]
	.loc	30 866 0                @ ../../src/fmt.c:866:0
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #12]
	str	r1, [r0, #16]
.Ltmp79:
.LBB7_9:                                @ %if.end14
                                        @   in Loop: Header=BB7_4 Depth=2
	.loc	30 873 0                @ ../../src/fmt.c:873:0
	ldr	r0, [r4, #44]
	ldr	r1, [sp, #16]
	cmp	r1, r0
	beq	.LBB7_1
@ BB#10:                                @ %do.cond
                                        @   in Loop: Header=BB7_4 Depth=2
	.loc	30 876 0                @ ../../src/fmt.c:876:0
	ldr	r1, [sp, #16]
	.loc	30 877 0                @ ../../src/fmt.c:877:0
	ldr	r2, [r4, #12]
	.loc	30 876 0                @ ../../src/fmt.c:876:0
	ldr	r0, [r1, #4]
	sub	r1, r1, #20
	ldr	r1, [r1]
	add	r0, r1, r0
	ldr	r1, [sp, #12]
	add	r0, r1, r0
	str	r0, [sp, #12]
	.loc	30 877 0                @ ../../src/fmt.c:877:0
	cmp	r0, r2
	blt	.LBB7_4
	b	.LBB7_1
.Ltmp80:
.LBB7_11:                               @ %for.end
	.loc	30 882 0                @ ../../src/fmt.c:882:0
	ldr	r0, [r4, #44]
	ldr	r1, [sp]
	str	r1, [r0, #4]
	.loc	30 883 0                @ ../../src/fmt.c:883:0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp81:
	.align	2
@ BB#12:
.LCPI7_0:
	.long	_MergedGlobals1
.LCPI7_1:
	.long	unused_word_type
.Ltmp82:
	.size	fmt_paragraph, .Ltmp82-fmt_paragraph
.Lfunc_end7:

	.align	2
	.type	put_paragraph,%function
put_paragraph:                          @ @put_paragraph
.Lfunc_begin8:
	.loc	30 944 0                @ ../../src/fmt.c:944:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #8
	.loc	30 947 0 prologue_end   @ ../../src/fmt.c:947:0
.Ltmp83:
	ldr	r5, .LCPI8_0
	ldr	r4, .LCPI8_1
	str	r0, [sp, #4]
	ldr	r1, [r5, #48]
	mov	r0, r4
	bl	put_line
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 948 0                @ ../../src/fmt.c:948:0
.Ltmp84:
	ldr	r0, [r4, #24]
	b	.LBB8_3
.LBB8_1:                                @ %for.body
                                        @   in Loop: Header=BB8_3 Depth=1
	.loc	30 949 0                @ ../../src/fmt.c:949:0
	ldr	r1, [r5, #36]
	ldr	r0, [sp]
	bl	put_line
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB8_2:                                @ %for.inc
                                        @   in Loop: Header=BB8_3 Depth=1
	.loc	30 948 0                @ ../../src/fmt.c:948:0
	ldr	r0, [sp]
	ldr	r0, [r0, #24]
.LBB8_3:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	cmp	r1, r0
	bne	.LBB8_1
.Ltmp85:
@ BB#4:                                 @ %for.end
	.loc	30 950 0                @ ../../src/fmt.c:950:0
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp86:
	.align	2
@ BB#5:
.LCPI8_0:
	.long	_MergedGlobals1
.LCPI8_1:
	.long	unused_word_type
.Ltmp87:
	.size	put_paragraph, .Ltmp87-put_paragraph
.Lfunc_end8:

	.align	2
	.type	put_line,%function
put_line:                               @ @put_line
.Lfunc_begin9:
	.loc	30 957 0                @ ../../src/fmt.c:957:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	.loc	30 960 0 prologue_end   @ ../../src/fmt.c:960:0
.Ltmp88:
	ldr	r4, .LCPI9_0
	str	r0, [sp, #8]
	mov	r0, #0
	str	r1, [sp, #4]
	str	r0, [r4, #52]
	.loc	30 961 0                @ ../../src/fmt.c:961:0
	ldr	r0, [r4, #56]
	bl	put_space
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 962 0                @ ../../src/fmt.c:962:0
	ldr	r0, .LCPI9_1
	ldr	r1, [r0]
	ldr	r0, [r4, #16]
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 963 0                @ ../../src/fmt.c:963:0
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #52]
	add	r0, r1, r0
	.loc	30 964 0                @ ../../src/fmt.c:964:0
	ldr	r1, [sp, #4]
	.loc	30 963 0                @ ../../src/fmt.c:963:0
	str	r0, [r4, #52]
	.loc	30 964 0                @ ../../src/fmt.c:964:0
	sub	r0, r1, r0
	bl	put_space
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 966 0                @ ../../src/fmt.c:966:0
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #24]
	sub	r0, r0, #28
	str	r0, [sp]
	b	.LBB9_3
.LBB9_1:                                @ %for.body
                                        @   in Loop: Header=BB9_3 Depth=1
	.loc	30 969 0                @ ../../src/fmt.c:969:0
.Ltmp89:
	ldr	r0, [sp, #8]
	bl	put_word
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 970 0                @ ../../src/fmt.c:970:0
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #8]
	bl	put_space
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 971 0                @ ../../src/fmt.c:971:0
.Ltmp90:
.LBB9_2:                                @ %for.inc
                                        @   in Loop: Header=BB9_3 Depth=1
	.loc	30 967 0                @ ../../src/fmt.c:967:0
	ldr	r0, [sp, #8]
	add	r0, r0, #28
	str	r0, [sp, #8]
.LBB9_3:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #8]
	cmp	r1, r0
	bne	.LBB9_1
.Ltmp91:
@ BB#4:                                 @ %for.end
	.loc	30 972 0                @ ../../src/fmt.c:972:0
	ldr	r0, [sp, #8]
	bl	put_word
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 973 0                @ ../../src/fmt.c:973:0
	ldr	r0, [r4, #52]
	str	r0, [r4, #60]
	mov	r0, #10
	.loc	30 974 0                @ ../../src/fmt.c:974:0
	bl	putchar_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 975 0                @ ../../src/fmt.c:975:0
	pop	{r4, r11, lr}
	sub	sp, r11, #4
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp92:
	.align	2
@ BB#5:
.LCPI9_0:
	.long	_MergedGlobals1
.LCPI9_1:
	.long	stdout
.Ltmp93:
	.size	put_line, .Ltmp93-put_line
.Lfunc_end9:

	.align	2
	.type	put_space,%function
put_space:                              @ @put_space
.Lfunc_begin10:
	.loc	30 995 0                @ ../../src/fmt.c:995:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
	.loc	30 998 0 prologue_end   @ ../../src/fmt.c:998:0
.Ltmp94:
	ldr	r4, .LCPI10_0
	str	r0, [sp, #12]
	ldr	r1, [r4, #52]
	add	r0, r1, r0
	str	r0, [sp, #8]
	.loc	30 999 0                @ ../../src/fmt.c:999:0
	ldrb	r0, [r4, #4]
	tst	r0, #1
	beq	.LBB10_6
@ BB#1:                                 @ %if.then
	.loc	30 1001 0               @ ../../src/fmt.c:1001:0
.Ltmp95:
	ldr	r0, [sp, #8]
	asr	r1, r0, #31
	add	r0, r0, r1, lsr #29
	.loc	30 1002 0               @ ../../src/fmt.c:1002:0
	ldr	r1, [r4, #52]
	.loc	30 1001 0               @ ../../src/fmt.c:1001:0
	bic	r0, r0, #7
	str	r0, [sp, #4]
	.loc	30 1002 0               @ ../../src/fmt.c:1002:0
	add	r1, r1, #1
	cmp	r1, r0
	bge	.LBB10_6
@ BB#2:
	mov	r5, #8
	b	.LBB10_4
.LBB10_3:                               @ %while.body
                                        @   in Loop: Header=BB10_4 Depth=1
	mov	r0, #9
	.loc	30 1005 0               @ ../../src/fmt.c:1005:0
.Ltmp96:
	bl	putchar_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 1006 0               @ ../../src/fmt.c:1006:0
	ldr	r0, [r4, #52]
	asr	r1, r0, #31
	add	r0, r0, r1, lsr #29
	lsr	r0, r0, #3
	add	r0, r5, r0, lsl #3
	str	r0, [r4, #52]
.Ltmp97:
.LBB10_4:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 1003 0               @ ../../src/fmt.c:1003:0
	ldr	r0, [r4, #52]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bge	.LBB10_6
	b	.LBB10_3
.Ltmp98:
.LBB10_5:                               @ %while.body10
                                        @   in Loop: Header=BB10_6 Depth=1
	mov	r0, #32
	.loc	30 1011 0               @ ../../src/fmt.c:1011:0
.Ltmp99:
	bl	putchar_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 1012 0               @ ../../src/fmt.c:1012:0
	ldr	r0, [r4, #52]
	add	r0, r0, #1
	str	r0, [r4, #52]
.Ltmp100:
.LBB10_6:                               @ %while.cond8
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 1009 0               @ ../../src/fmt.c:1009:0
	ldr	r0, [r4, #52]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	blt	.LBB10_5
@ BB#7:                                 @ %while.end12
	.loc	30 1014 0               @ ../../src/fmt.c:1014:0
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp101:
	.align	2
@ BB#8:
.LCPI10_0:
	.long	_MergedGlobals1
.Ltmp102:
	.size	put_space, .Ltmp102-put_space
.Lfunc_end10:

	.align	2
	.type	put_word,%function
put_word:                               @ @put_word
.Lfunc_begin11:
	.loc	30 981 0                @ ../../src/fmt.c:981:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	.loc	30 985 0 prologue_end   @ ../../src/fmt.c:985:0
.Ltmp103:
	ldr	r0, [r0]
	str	r0, [sp, #8]
	.loc	30 986 0                @ ../../src/fmt.c:986:0
.Ltmp104:
	ldr	r0, [r11, #-4]
	ldr	r0, [r0, #4]
	b	.LBB11_2
.LBB11_1:                               @ %for.inc
                                        @   in Loop: Header=BB11_2 Depth=1
	.loc	30 987 0                @ ../../src/fmt.c:987:0
	ldr	r0, [sp, #8]
	add	r1, r0, #1
	str	r1, [sp, #8]
	ldrb	r0, [r0]
	bl	putchar_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 986 0                @ ../../src/fmt.c:986:0
	ldr	r0, [sp, #4]
	sub	r0, r0, #1
.LBB11_2:                               @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.LBB11_1
.Ltmp105:
@ BB#3:                                 @ %for.end
	.loc	30 988 0                @ ../../src/fmt.c:988:0
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI11_0
	ldr	r0, [r0, #4]
	ldr	r2, [r1, #52]
	add	r0, r2, r0
	str	r0, [r1, #52]
	.loc	30 989 0                @ ../../src/fmt.c:989:0
	mov	sp, r11
	pop	{r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp106:
	.align	2
@ BB#4:
.LCPI11_0:
	.long	_MergedGlobals1
.Ltmp107:
	.size	put_word, .Ltmp107-put_word
.Lfunc_end11:

	.align	2
	.type	line_cost,%function
line_cost:                              @ @line_cost
.Lfunc_begin12:
	.loc	30 923 0                @ ../../src/fmt.c:923:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #20
	str	r0, [sp, #12]
	.loc	30 927 0 prologue_end   @ ../../src/fmt.c:927:0
.Ltmp108:
	ldr	r0, .LCPI12_0
	str	r1, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [r0, #44]
	cmp	r2, r1
	beq	.LBB12_4
@ BB#1:                                 @ %if.end
	.loc	30 929 0                @ ../../src/fmt.c:929:0
	ldr	r1, [r0, #32]
	ldr	r2, [sp, #8]
	.loc	30 931 0                @ ../../src/fmt.c:931:0
	ldr	r0, [r0, #44]
	.loc	30 929 0                @ ../../src/fmt.c:929:0
	sub	r1, r1, r2
	str	r1, [sp, #4]
	.loc	30 930 0                @ ../../src/fmt.c:930:0
	add	r1, r1, r1, lsl #2
	lsl	r2, r1, #1
	mul	r1, r2, r2
	str	r1, [sp]
	.loc	30 931 0                @ ../../src/fmt.c:931:0
	ldr	r1, [sp, #12]
	ldr	r1, [r1, #24]
	cmp	r1, r0
	beq	.LBB12_3
@ BB#2:                                 @ %if.then4
	.loc	30 933 0                @ ../../src/fmt.c:933:0
.Ltmp109:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	ldr	r0, [r0, #16]
	sub	r0, r1, r0
	str	r0, [sp, #4]
	.loc	30 934 0                @ ../../src/fmt.c:934:0
	add	r0, r0, r0, lsl #2
	lsl	r1, r0, #1
	mul	r0, r1, r1
	ldr	r1, [sp]
	add	r0, r1, r0, asr #1
	str	r0, [sp]
.Ltmp110:
.LBB12_3:                               @ %if.end9
	.loc	30 936 0                @ ../../src/fmt.c:936:0
	ldr	r0, [sp]
	b	.LBB12_5
.LBB12_4:                               @ %if.then
	mov	r0, #0
.LBB12_5:                               @ %if.end9
	str	r0, [sp, #16]
	.loc	30 937 0                @ ../../src/fmt.c:937:0
	ldr	r0, [sp, #16]
	add	sp, sp, #20
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp111:
	.align	2
@ BB#6:
.LCPI12_0:
	.long	_MergedGlobals1
.Ltmp112:
	.size	line_cost, .Ltmp112-line_cost
.Lfunc_end12:

	.align	2
	.type	base_cost,%function
base_cost:                              @ @base_cost
.Lfunc_begin13:
	.loc	30 890 0                @ ../../src/fmt.c:890:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mov	r0, #804
	orr	r0, r0, #4096
	.loc	30 895 0 prologue_end   @ ../../src/fmt.c:895:0
.Ltmp113:
	ldr	r1, [sp, #4]
	.loc	30 893 0                @ ../../src/fmt.c:893:0
	str	r0, [sp]
	.loc	30 895 0                @ ../../src/fmt.c:895:0
	ldr	r0, .LCPI13_0
	cmp	r1, r0
	bls	.LBB13_9
@ BB#1:                                 @ %if.then
	.loc	30 897 0                @ ../../src/fmt.c:897:0
.Ltmp114:
	ldr	r1, [sp, #4]
	sub	r1, r1, #16
	ldrb	r2, [r1]
	mov	r1, #1
	tst	r1, r2, lsr #1
	beq	.LBB13_5
@ BB#2:                                 @ %if.then1
	.loc	30 899 0                @ ../../src/fmt.c:899:0
.Ltmp115:
	ldr	r0, [sp, #4]
	sub	r0, r0, #16
	ldrb	r0, [r0]
	tst	r1, r0, lsr #3
	beq	.LBB13_7
.Ltmp116:
@ BB#3:                                 @ %if.then8
	ldr	r0, .LCPI13_1
.LBB13_4:                               @ %if.then27
	.loc	30 907 0                @ ../../src/fmt.c:907:0
	ldr	r1, [sp]
	add	r0, r1, r0
	b	.LBB13_8
.LBB13_5:                               @ %if.else9
	.loc	30 904 0                @ ../../src/fmt.c:904:0
	ldr	r2, [sp, #4]
	sub	r2, r2, #16
	ldrb	r2, [r2]
	tst	r1, r2, lsr #2
	beq	.LBB13_15
@ BB#6:                                 @ %if.then16
	.loc	30 905 0                @ ../../src/fmt.c:905:0
	ldr	r0, [sp]
	sub	r0, r0, #1600
	b	.LBB13_8
.LBB13_7:                               @ %if.else
	.loc	30 902 0                @ ../../src/fmt.c:902:0
.Ltmp117:
	ldr	r0, [sp]
	add	r0, r0, #15936
	add	r0, r0, #344064
.Ltmp118:
.LBB13_8:                               @ %if.then27
	.loc	30 907 0                @ ../../src/fmt.c:907:0
	str	r0, [sp]
.Ltmp119:
.LBB13_9:                               @ %if.end34
	.loc	30 910 0                @ ../../src/fmt.c:910:0
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #12]
	tst	r0, #1
	beq	.LBB13_11
@ BB#10:                                @ %if.then39
	.loc	30 911 0                @ ../../src/fmt.c:911:0
	ldr	r0, [sp]
	sub	r0, r0, #1600
	b	.LBB13_13
.LBB13_11:                              @ %if.else41
	.loc	30 912 0                @ ../../src/fmt.c:912:0
	ldr	r0, [sp, #4]
	mov	r1, #1
	ldrb	r0, [r0, #12]
	tst	r1, r0, lsr #3
	beq	.LBB13_14
@ BB#12:                                @ %if.then48
	.loc	30 913 0                @ ../../src/fmt.c:913:0
	ldr	r0, [sp, #4]
	ldr	r0, [r0, #4]
	add	r1, r0, #2
	mov	r0, #996
	orr	r0, r0, #21504
	bl	__aeabi_idiv
	ldr	r1, [sp]
	add	r0, r1, r0
.LBB13_13:                              @ %if.then48
	str	r0, [sp]
.LBB13_14:                              @ %if.end54
	.loc	30 915 0                @ ../../src/fmt.c:915:0
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB13_15:                              @ %if.else18
	.loc	30 906 0                @ ../../src/fmt.c:906:0
.Ltmp120:
	ldr	r1, [sp, #4]
	add	r0, r0, #28
	cmp	r1, r0
	bls	.LBB13_9
@ BB#16:                                @ %land.lhs.true
	ldr	r0, [sp, #4]
	mov	r1, #1
	sub	r0, r0, #44
	ldrb	r0, [r0]
	tst	r1, r0, lsr #3
	beq	.LBB13_9
@ BB#17:                                @ %if.then27
	.loc	30 907 0                @ ../../src/fmt.c:907:0
	ldr	r0, [sp, #4]
	sub	r0, r0, #24
	ldr	r0, [r0]
	add	r1, r0, #2
	mov	r0, #7232
	orr	r0, r0, #32768
	bl	__aeabi_idiv
	b	.LBB13_4
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp121:
	.align	2
@ BB#18:
.LCPI13_0:
	.long	unused_word_type
.LCPI13_1:
	.long	4294964796              @ 0xfffff63c
.Ltmp122:
	.size	base_cost, .Ltmp122-base_cost
.Lfunc_end13:

	.align	2
	.type	copy_rest,%function
copy_rest:                              @ @copy_rest
.Lfunc_begin14:
	.loc	30 605 0                @ ../../src/fmt.c:605:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	.loc	30 608 0 prologue_end   @ ../../src/fmt.c:608:0
.Ltmp123:
	ldr	r4, .LCPI14_0
	str	r0, [sp, #8]
	mov	r0, #0
	str	r1, [sp, #4]
	str	r0, [r4, #52]
	.loc	30 609 0                @ ../../src/fmt.c:609:0
	ldr	r0, [r4, #64]
	ldr	r1, [r4, #68]
	cmp	r1, r0
	bgt	.LBB14_2
@ BB#1:                                 @ %lor.lhs.false
	ldr	r0, [sp, #4]
	cmp	r0, #10
	ldrne	r0, [sp, #4]
	cmnne	r0, #1
	beq	.LBB14_12
.LBB14_2:                               @ %if.then
	.loc	30 611 0                @ ../../src/fmt.c:611:0
.Ltmp124:
	ldr	r0, [r4, #64]
	bl	put_space
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 612 0                @ ../../src/fmt.c:612:0
.Ltmp125:
	ldr	r0, [r4, #16]
	str	r0, [sp]
	b	.LBB14_4
.LBB14_3:                               @ %for.inc
                                        @   in Loop: Header=BB14_4 Depth=1
	.loc	30 613 0                @ ../../src/fmt.c:613:0
	ldr	r0, [sp]
	add	r1, r0, #1
	str	r1, [sp]
	ldrb	r0, [r0]
	bl	putchar_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 612 0                @ ../../src/fmt.c:612:0
	ldr	r0, [r4, #52]
	add	r0, r0, #1
	str	r0, [r4, #52]
.LBB14_4:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r4, #52]
	ldr	r2, [r4, #68]
	mov	r0, #0
	cmp	r1, r2
	beq	.LBB14_6
@ BB#5:                                 @ %land.rhs
                                        @   in Loop: Header=BB14_4 Depth=1
	ldr	r0, [sp]
	ldrb	r0, [r0]
	cmp	r0, #0
	movne	r0, #1
.Ltmp126:
.LBB14_6:                               @ %land.end
                                        @   in Loop: Header=BB14_4 Depth=1
	cmp	r0, #1
	beq	.LBB14_3
@ BB#7:                                 @ %for.end
	.loc	30 614 0                @ ../../src/fmt.c:614:0
	ldr	r0, [sp, #4]
	cmn	r0, #1
	ldrne	r0, [sp, #4]
	cmpne	r0, #10
	beq	.LBB14_9
@ BB#8:                                 @ %if.then10
	.loc	30 615 0                @ ../../src/fmt.c:615:0
	ldr	r0, [r4, #52]
	ldr	r1, [r4, #68]
	sub	r0, r1, r0
	bl	put_space
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB14_9:                               @ %if.end
	.loc	30 616 0                @ ../../src/fmt.c:616:0
	ldr	r0, [sp, #4]
	cmn	r0, #1
	bne	.LBB14_12
@ BB#10:                                @ %land.lhs.true13
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #64]
	ldr	r2, [r4, #68]
	add	r0, r1, r0
	cmp	r2, r0
	blt	.LBB14_12
@ BB#11:                                @ %if.then16
	mov	r0, #10
	.loc	30 617 0                @ ../../src/fmt.c:617:0
	bl	putchar_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp127:
.LBB14_12:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 619 0                @ ../../src/fmt.c:619:0
	ldr	r1, [sp, #4]
	mov	r0, #0
	cmp	r1, #10
	beq	.LBB14_14
@ BB#13:                                @ %land.rhs22
                                        @   in Loop: Header=BB14_12 Depth=1
	ldr	r1, [sp, #4]
	mov	r0, #0
	cmn	r1, #1
	movne	r0, #1
.LBB14_14:                              @ %land.end25
                                        @   in Loop: Header=BB14_12 Depth=1
	cmp	r0, #1
	bne	.LBB14_16
@ BB#15:                                @ %while.body
                                        @   in Loop: Header=BB14_12 Depth=1
	.loc	30 621 0                @ ../../src/fmt.c:621:0
.Ltmp128:
	ldr	r0, [sp, #4]
	bl	putchar_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 622 0                @ ../../src/fmt.c:622:0
	ldr	r0, [sp, #8]
	bl	getc_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #4]
	b	.LBB14_12
.Ltmp129:
.LBB14_16:                              @ %while.end
	.loc	30 624 0                @ ../../src/fmt.c:624:0
	ldr	r0, [sp, #4]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp130:
	.align	2
@ BB#17:
.LCPI14_0:
	.long	_MergedGlobals1
.Ltmp131:
	.size	copy_rest, .Ltmp131-copy_rest
.Lfunc_end14:

	.align	2
	.type	get_line,%function
get_line:                               @ @get_line
.Lfunc_begin15:
	.loc	30 649 0                @ ../../src/fmt.c:649:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #20
	str	r0, [sp, #16]
	.loc	30 654 0 prologue_end   @ ../../src/fmt.c:654:0
.Ltmp132:
	ldr	r0, .LCPI15_0
	.loc	30 662 0                @ ../../src/fmt.c:662:0
.Ltmp133:
	ldr	r4, .LCPI15_2
	mov	r5, #1
	str	r1, [sp, #12]
.Ltmp134:
	.loc	30 654 0                @ ../../src/fmt.c:654:0
	add	r0, r0, #904
	add	r0, r0, #4096
	str	r0, [sp, #4]
	.loc	30 655 0                @ ../../src/fmt.c:655:0
	ldr	r0, .LCPI15_1
	add	r0, r0, #296
	add	r0, r0, #27648
	str	r0, [sp]
.LBB15_1:                               @ %do.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB15_2 Depth 2
	.loc	30 662 0                @ ../../src/fmt.c:662:0
.Ltmp135:
	ldr	r0, [r4, #44]
	ldr	r1, [r4, #72]
	str	r1, [r0]
.LBB15_2:                               @ %do.body1
                                        @   Parent Loop BB15_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	30 665 0                @ ../../src/fmt.c:665:0
.Ltmp136:
	ldr	r0, [r4, #72]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bne	.LBB15_4
@ BB#3:                                 @ %if.then
                                        @   in Loop: Header=BB15_2 Depth=2
	mov	r0, #1
	.loc	30 667 0                @ ../../src/fmt.c:667:0
.Ltmp137:
	bl	set_other_indent
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 668 0                @ ../../src/fmt.c:668:0
	bl	flush_paragraph
.Ltmp138:
.LBB15_4:                               @ %do.cond
                                        @   in Loop: Header=BB15_2 Depth=2
	.loc	30 670 0                @ ../../src/fmt.c:670:0
	ldr	r0, [r4, #72]
	ldr	r2, [sp, #12]
	add	r1, r0, #1
	str	r1, [r4, #72]
	strb	r2, [r0]
	.loc	30 671 0                @ ../../src/fmt.c:671:0
	ldr	r0, [sp, #16]
	bl	getc_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #0
	str	r0, [sp, #12]
	.loc	30 672 0                @ ../../src/fmt.c:672:0
	cmn	r0, #1
	beq	.LBB15_6
@ BB#5:                                 @ %land.rhs
                                        @   in Loop: Header=BB15_2 Depth=2
	ldr	r6, [sp, #12]
.Ltmp139:
	.loc	30 673 0                @ ../../src/fmt.c:673:0
	bl	__ctype_b_loc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	mov	r1, #0
	add	r0, r0, r6, lsl #1
	ldrb	r0, [r0, #1]
	tst	r0, #32
	moveq	r1, #1
.LBB15_6:                               @ %land.end
                                        @   in Loop: Header=BB15_2 Depth=2
	cmp	r1, #0
	bne	.LBB15_2
@ BB#7:                                 @ %do.end
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	30 674 0                @ ../../src/fmt.c:674:0
	ldr	r0, [r4, #44]
	ldr	r1, [r4, #72]
	ldr	r2, [r0]
	sub	r1, r1, r2
	str	r1, [r0, #4]
	ldr	r0, [r4, #68]
	add	r0, r0, r1
	str	r0, [r4, #68]
	.loc	30 675 0                @ ../../src/fmt.c:675:0
	ldr	r0, [r4, #44]
	bl	check_punctuation
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 679 0                @ ../../src/fmt.c:679:0
	ldr	r0, [r4, #68]
	.loc	30 680 0                @ ../../src/fmt.c:680:0
	ldr	r1, [sp, #12]
	.loc	30 679 0                @ ../../src/fmt.c:679:0
	str	r0, [sp, #8]
	.loc	30 680 0                @ ../../src/fmt.c:680:0
	ldr	r0, [sp, #16]
	bl	get_space
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 681 0                @ ../../src/fmt.c:681:0
	ldr	r1, [r4, #68]
	ldr	r2, [sp, #8]
	.loc	30 680 0                @ ../../src/fmt.c:680:0
	str	r0, [sp, #12]
	.loc	30 681 0                @ ../../src/fmt.c:681:0
	ldr	r0, [r4, #44]
	sub	r1, r1, r2
	str	r1, [r0, #8]
	mov	r0, #1
	.loc	30 682 0                @ ../../src/fmt.c:682:0
	ldr	r1, [sp, #12]
	cmn	r1, #1
	beq	.LBB15_11
@ BB#8:                                 @ %lor.rhs
                                        @   in Loop: Header=BB15_1 Depth=1
	ldr	r0, [r4, #44]
	ldrb	r1, [r0, #12]
	mov	r0, #0
	tst	r5, r1, lsr #1
	beq	.LBB15_11
@ BB#9:                                 @ %land.rhs11
                                        @   in Loop: Header=BB15_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #10
	mov	r0, #1
	beq	.LBB15_11
@ BB#10:                                @ %lor.rhs14
                                        @   in Loop: Header=BB15_1 Depth=1
	ldr	r0, [r4, #44]
	ldr	r0, [r0, #8]
	cmp	r0, #1
	mov	r0, #0
	movgt	r0, #1
.LBB15_11:                              @ %lor.end19
                                        @   in Loop: Header=BB15_1 Depth=1
	ldr	r1, [r4, #44]
	ldrb	r2, [r1, #12]
	and	r2, r2, #247
	orr	r0, r2, r0, lsl #3
	strb	r0, [r1, #12]
	.loc	30 685 0                @ ../../src/fmt.c:685:0
	ldr	r0, [sp, #12]
	cmp	r0, #10
	ldrne	r0, [sp, #12]
	cmnne	r0, #1
	beq	.LBB15_13
@ BB#12:                                @ %lor.lhs.false26
                                        @   in Loop: Header=BB15_1 Depth=1
	ldrb	r0, [r4]
	tst	r0, #1
	beq	.LBB15_14
.LBB15_13:                              @ %if.then29
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	30 686 0                @ ../../src/fmt.c:686:0
	ldr	r0, [r4, #44]
	mov	r2, #1
	ldrb	r1, [r0, #12]
	tst	r5, r1, lsr #3
	movne	r2, #2
	str	r2, [r0, #8]
.LBB15_14:                              @ %if.end37
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	30 687 0                @ ../../src/fmt.c:687:0
	ldr	r0, [r4, #44]
	ldr	r1, [sp]
	cmp	r0, r1
	bne	.LBB15_16
@ BB#15:                                @ %if.then40
                                        @   in Loop: Header=BB15_1 Depth=1
	mov	r0, #1
	.loc	30 689 0                @ ../../src/fmt.c:689:0
.Ltmp140:
	bl	set_other_indent
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 690 0                @ ../../src/fmt.c:690:0
	bl	flush_paragraph
.Ltmp141:
.LBB15_16:                              @ %do.cond43
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	30 692 0                @ ../../src/fmt.c:692:0
	ldr	r0, [r4, #44]
	.loc	30 693 0                @ ../../src/fmt.c:693:0
	ldr	r1, [sp, #12]
	.loc	30 692 0                @ ../../src/fmt.c:692:0
	add	r0, r0, #28
	.loc	30 693 0                @ ../../src/fmt.c:693:0
	cmp	r1, #10
	.loc	30 692 0                @ ../../src/fmt.c:692:0
	str	r0, [r4, #44]
	mov	r0, #0
	beq	.LBB15_18
@ BB#17:                                @ %land.rhs46
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	30 693 0                @ ../../src/fmt.c:693:0
	ldr	r0, [sp, #12]
	cmn	r0, #1
	mov	r0, #0
	movne	r0, #1
.Ltmp142:
.LBB15_18:                              @ %land.end49
                                        @   in Loop: Header=BB15_1 Depth=1
	cmp	r0, #0
	bne	.LBB15_1
@ BB#19:                                @ %do.end50
	.loc	30 695 0                @ ../../src/fmt.c:695:0
	ldr	r0, [sp, #16]
	bl	get_prefix
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r4, r5, r6, r11, lr}
	sub	sp, r11, #12
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp143:
	.align	2
@ BB#20:
.LCPI15_0:
	.long	parabuf
.LCPI15_1:
	.long	unused_word_type
.LCPI15_2:
	.long	_MergedGlobals1
.Ltmp144:
	.size	get_line, .Ltmp144-get_line
.Lfunc_end15:

	.align	2
	.type	set_other_indent,%function
set_other_indent:                       @ @set_other_indent
.Lfunc_begin16:
	.loc	30 484 0                @ ../../src/fmt.c:484:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #4
	strb	r0, [sp, #3]
	.loc	30 485 0 prologue_end   @ ../../src/fmt.c:485:0
.Ltmp145:
	ldr	r0, .LCPI16_0
	ldrb	r1, [r0, #1]
	tst	r1, #1
	bne	.LBB16_8
@ BB#1:                                 @ %if.else
	.loc	30 487 0                @ ../../src/fmt.c:487:0
	ldrb	r1, [r0, #3]
	tst	r1, #1
	beq	.LBB16_4
@ BB#2:                                 @ %if.then2
	.loc	30 489 0                @ ../../src/fmt.c:489:0
.Ltmp146:
	ldrb	r1, [sp, #3]
	tst	r1, #1
	beq	.LBB16_8
@ BB#3:                                 @ %cond.true
	ldr	r1, [r0, #68]
	b	.LBB16_9
.Ltmp147:
.LBB16_4:                               @ %if.else4
	.loc	30 491 0                @ ../../src/fmt.c:491:0
	ldrb	r1, [r0, #2]
	tst	r1, #1
	beq	.LBB16_8
@ BB#5:                                 @ %if.then6
	.loc	30 493 0                @ ../../src/fmt.c:493:0
.Ltmp148:
	ldrb	r1, [sp, #3]
	tst	r1, #1
	beq	.LBB16_11
@ BB#6:                                 @ %land.lhs.true
	ldr	r1, [r0, #48]
	ldr	r2, [r0, #68]
	cmp	r2, r1
	beq	.LBB16_11
@ BB#7:                                 @ %if.then8
	.loc	30 495 0                @ ../../src/fmt.c:495:0
.Ltmp149:
	ldr	r1, [r0, #68]
	b	.LBB16_9
.Ltmp150:
.LBB16_8:                               @ %if.else15
	.loc	30 508 0                @ ../../src/fmt.c:508:0
	ldr	r1, [r0, #48]
.LBB16_9:                               @ %if.else15
	str	r1, [r0, #36]
.Ltmp151:
.LBB16_10:                              @ %if.end18
	.loc	30 510 0                @ ../../src/fmt.c:510:0
	add	sp, sp, #4
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB16_11:                              @ %if.else9
	.loc	30 503 0                @ ../../src/fmt.c:503:0
.Ltmp152:
	ldr	r1, [r0, #36]
	ldr	r2, [r0, #48]
	cmp	r1, r2
	bne	.LBB16_10
@ BB#12:                                @ %if.then11
	.loc	30 504 0                @ ../../src/fmt.c:504:0
	ldr	r2, [r0, #48]
	mov	r1, #0
	cmp	r2, #0
	moveq	r1, #3
	b	.LBB16_9
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp153:
	.align	2
@ BB#13:
.LCPI16_0:
	.long	_MergedGlobals1
.Ltmp154:
	.size	set_other_indent, .Ltmp154-set_other_indent
.Lfunc_end16:

	.align	2
	.type	same_para,%function
same_para:                              @ @same_para
.Lfunc_begin17:
	.loc	30 633 0                @ ../../src/fmt.c:633:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #4
	.loc	30 634 0 prologue_end   @ ../../src/fmt.c:634:0
.Ltmp155:
	ldr	r1, .LCPI17_0
	str	r0, [sp]
	mov	r0, #0
	ldr	r2, [r1, #56]
	ldr	r3, [r1, #64]
	cmp	r3, r2
	bne	.LBB17_4
@ BB#1:                                 @ %land.lhs.true
	ldr	r2, [r1, #20]
	ldr	r3, [r1, #64]
	ldr	r1, [r1, #68]
	add	r2, r3, r2
	cmp	r1, r2
	blt	.LBB17_4
@ BB#2:                                 @ %land.lhs.true2
	ldr	r1, [sp]
	cmp	r1, #10
	beq	.LBB17_4
@ BB#3:                                 @ %land.rhs
	ldr	r1, [sp]
	mov	r0, #0
	cmn	r1, #1
	movne	r0, #1
.LBB17_4:                               @ %land.end
	.loc	30 637 0                @ ../../src/fmt.c:637:0
	add	sp, sp, #4
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp156:
	.align	2
@ BB#5:
.LCPI17_0:
	.long	_MergedGlobals1
.Ltmp157:
	.size	same_para, .Ltmp157-same_para
.Lfunc_end17:

	.align	2
	.type	flush_paragraph,%function
flush_paragraph:                        @ @flush_paragraph
.Lfunc_begin18:
	.loc	30 770 0                @ ../../src/fmt.c:770:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #20
	.loc	30 778 0 prologue_end   @ ../../src/fmt.c:778:0
.Ltmp158:
	ldr	r6, .LCPI18_0
	ldr	r4, .LCPI18_1
	ldr	r0, [r6, #44]
	cmp	r0, r4
	beq	.LBB18_10
@ BB#1:                                 @ %if.end
	.loc	30 791 0                @ ../../src/fmt.c:791:0
	bl	fmt_paragraph
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 795 0                @ ../../src/fmt.c:795:0
	ldr	r0, [r6, #44]
	str	r0, [sp, #16]
	mvn	r0, #-2147483648
	.loc	30 796 0                @ ../../src/fmt.c:796:0
	str	r0, [sp, #4]
	.loc	30 797 0                @ ../../src/fmt.c:797:0
.Ltmp159:
	ldr	r0, [r4, #24]
	b	.LBB18_3
.LBB18_2:                               @ %if.end9
                                        @   in Loop: Header=BB18_3 Depth=1
	.loc	30 804 0                @ ../../src/fmt.c:804:0
.Ltmp160:
	ldr	r0, [sp, #4]
	cmn	r0, #-2147483638
	.loc	30 805 0                @ ../../src/fmt.c:805:0
	ldrle	r0, [sp, #4]
	addle	r0, r0, #9
	strle	r0, [sp, #4]
.Ltmp161:
	.loc	30 797 0                @ ../../src/fmt.c:797:0
	ldr	r0, [sp, #12]
	ldr	r0, [r0, #24]
.LBB18_3:                               @ %if.end
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp, #12]
	ldr	r0, [r6, #44]
	ldr	r1, [sp, #12]
	cmp	r1, r0
	beq	.LBB18_6
@ BB#4:                                 @ %for.body
                                        @   in Loop: Header=BB18_3 Depth=1
	.loc	30 799 0                @ ../../src/fmt.c:799:0
.Ltmp162:
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r0, [r1, #20]
	ldr	r1, [r1, #24]
	ldr	r1, [r1, #20]
	sub	r0, r0, r1
	cmp	r0, r2
	bge	.LBB18_2
@ BB#5:                                 @ %if.then4
                                        @   in Loop: Header=BB18_3 Depth=1
	.loc	30 801 0                @ ../../src/fmt.c:801:0
.Ltmp163:
	ldr	r0, [sp, #12]
	.loc	30 802 0                @ ../../src/fmt.c:802:0
	ldr	r1, [sp, #12]
	.loc	30 801 0                @ ../../src/fmt.c:801:0
	str	r0, [sp, #16]
	.loc	30 802 0                @ ../../src/fmt.c:802:0
	ldr	r0, [r1, #20]
	ldr	r1, [r1, #24]
	ldr	r1, [r1, #20]
	sub	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB18_2
.Ltmp164:
.LBB18_6:                               @ %for.end
	.loc	30 807 0                @ ../../src/fmt.c:807:0
	ldr	r0, [sp, #16]
	bl	put_paragraph
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 812 0                @ ../../src/fmt.c:812:0
	ldr	r1, [sp, #16]
	ldr	r0, [r6, #72]
	ldr	r5, .LCPI18_2
	ldr	r1, [r1]
	sub	r2, r0, r1
	mov	r0, r5
	bl	__aeabi_memmove
	.loc	30 813 0                @ ../../src/fmt.c:813:0
	ldr	r0, [sp, #16]
	.loc	30 814 0                @ ../../src/fmt.c:814:0
	ldr	r1, [r6, #72]
	.loc	30 813 0                @ ../../src/fmt.c:813:0
	ldr	r0, [r0]
	sub	r0, r0, r5
	str	r0, [sp, #8]
	.loc	30 814 0                @ ../../src/fmt.c:814:0
	sub	r0, r1, r0
	str	r0, [r6, #72]
	.loc	30 818 0                @ ../../src/fmt.c:818:0
.Ltmp165:
	ldr	r0, [sp, #16]
	b	.LBB18_8
.LBB18_7:                               @ %for.inc26
                                        @   in Loop: Header=BB18_8 Depth=1
	.loc	30 819 0                @ ../../src/fmt.c:819:0
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #8]
	ldr	r1, [r0]
	sub	r1, r1, r2
	str	r1, [r0]
	.loc	30 818 0                @ ../../src/fmt.c:818:0
	ldr	r0, [sp, #12]
	add	r0, r0, #28
.LBB18_8:                               @ %for.end
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp, #12]
	ldr	r0, [r6, #44]
	ldr	r1, [sp, #12]
	cmp	r1, r0
	bls	.LBB18_7
.Ltmp166:
@ BB#9:                                 @ %for.end27
	.loc	30 824 0                @ ../../src/fmt.c:824:0
	ldr	r0, [r6, #44]
	ldr	r1, [sp, #16]
	sub	r0, r0, r1
	bic	r0, r0, #3
	add	r2, r0, #28
	mov	r0, r4
	bl	__aeabi_memmove
	.loc	30 825 0                @ ../../src/fmt.c:825:0
	ldr	r0, [sp, #16]
	ldr	r2, .LCPI18_3
	sub	r0, r0, r4
	asr	r0, r0, #2
	mul	r1, r0, r2
	rsb	r0, r1, #0
	ldr	r1, [r6, #44]
	rsb	r0, r0, r0, lsl #3
	add	r0, r1, r0, lsl #2
	str	r0, [r6, #44]
	b	.LBB18_11
.LBB18_10:                              @ %if.then
	.loc	30 780 0                @ ../../src/fmt.c:780:0
.Ltmp167:
	ldr	r0, [r6, #72]
	ldr	r4, .LCPI18_2
	mov	r1, #1
	sub	r2, r0, r4
	ldr	r0, .LCPI18_4
	ldr	r3, [r0]
	mov	r0, r4
	bl	fwrite_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	30 781 0                @ ../../src/fmt.c:781:0
	str	r4, [r6, #72]
.Ltmp168:
.LBB18_11:                              @ %return
	.loc	30 825 0                @ ../../src/fmt.c:825:0
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp169:
	.align	2
@ BB#12:
.LCPI18_0:
	.long	_MergedGlobals1
.LCPI18_1:
	.long	unused_word_type
.LCPI18_2:
	.long	parabuf
.LCPI18_3:
	.long	3067833783              @ 0xb6db6db7
.LCPI18_4:
	.long	stdout
.Ltmp170:
	.size	flush_paragraph, .Ltmp170-flush_paragraph
.Lfunc_end18:

	.align	2
	.type	check_punctuation,%function
check_punctuation:                      @ @check_punctuation
.Lfunc_begin19:
	.loc	30 753 0                @ ../../src/fmt.c:753:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	str	r0, [r11, #-8]
	.loc	30 754 0 prologue_end   @ ../../src/fmt.c:754:0
.Ltmp171:
	ldr	r0, [r0]
	.loc	30 755 0                @ ../../src/fmt.c:755:0
	ldr	r1, [r11, #-8]
	.loc	30 754 0                @ ../../src/fmt.c:754:0
	str	r0, [sp, #12]
	.loc	30 755 0                @ ../../src/fmt.c:755:0
	ldr	r1, [r1, #4]
	add	r0, r1, r0
	sub	r0, r0, #1
	str	r0, [sp, #8]
	.loc	30 756 0                @ ../../src/fmt.c:756:0
	ldrb	r0, [r0]
	strb	r0, [sp, #7]
	.loc	30 758 0                @ ../../src/fmt.c:758:0
	ldr	r0, [sp, #12]
	ldrb	r1, [r0]
	ldr	r0, .LCPI19_0
	bl	strchr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	movne	r0, #1
	ldr	r1, [r11, #-8]
	ldrb	r2, [r1, #12]
	and	r2, r2, #254
	orr	r0, r2, r0
	strb	r0, [r1, #12]
	.loc	30 759 0                @ ../../src/fmt.c:759:0
	ldrb	r4, [sp, #7]
	bl	__ctype_b_loc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	add	r0, r0, r4, lsl #1
	ldrb	r2, [r1, #12]
	.loc	30 760 0                @ ../../src/fmt.c:760:0
	ldr	r4, .LCPI19_1
	.loc	30 759 0                @ ../../src/fmt.c:759:0
	ldrh	r0, [r0]
	and	r2, r2, #251
	and	r0, r0, #4
	orr	r0, r2, r0
	strb	r0, [r1, #12]
	b	.LBB19_2
.LBB19_1:                               @ %while.body
                                        @   in Loop: Header=BB19_2 Depth=1
	.loc	30 761 0                @ ../../src/fmt.c:761:0
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
.LBB19_2:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 760 0                @ ../../src/fmt.c:760:0
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #12]
	mov	r0, #0
	cmp	r2, r1
	bhs	.LBB19_4
@ BB#3:                                 @ %land.rhs
                                        @   in Loop: Header=BB19_2 Depth=1
	ldr	r0, [sp, #8]
	ldrb	r1, [r0]
	mov	r0, r4
	bl	strchr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	movne	r0, #1
.LBB19_4:                               @ %land.end
                                        @   in Loop: Header=BB19_2 Depth=1
	cmp	r0, #1
	beq	.LBB19_1
@ BB#5:                                 @ %while.end
	.loc	30 762 0                @ ../../src/fmt.c:762:0
	ldr	r0, [sp, #8]
	ldrb	r1, [r0]
	ldr	r0, .LCPI19_2
	bl	strchr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	movne	r0, #1
	ldr	r1, [r11, #-8]
	ldrb	r2, [r1, #12]
	and	r2, r2, #253
	orr	r0, r2, r0, lsl #1
	strb	r0, [r1, #12]
	.loc	30 763 0                @ ../../src/fmt.c:763:0
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp172:
	.align	2
@ BB#6:
.LCPI19_0:
	.long	.L.str21
.LCPI19_1:
	.long	.L.str22
.LCPI19_2:
	.long	.L.str23
.Ltmp173:
	.size	check_punctuation, .Ltmp173-check_punctuation
.Lfunc_end19:

	.align	2
	.type	get_space,%function
get_space:                              @ @get_space
.Lfunc_begin20:
	.loc	30 733 0                @ ../../src/fmt.c:733:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #8
	.loc	30 737 0 prologue_end   @ ../../src/fmt.c:737:0
.Ltmp174:
	ldr	r4, .LCPI20_0
	mov	r5, #1
	str	r0, [sp, #4]
	str	r1, [sp]
	b	.LBB20_2
.LBB20_1:                               @ %if.then2
                                        @   in Loop: Header=BB20_2 Depth=1
	.loc	30 741 0                @ ../../src/fmt.c:741:0
.Ltmp175:
	str	r0, [r4, #68]
.Ltmp176:
	.loc	30 745 0                @ ../../src/fmt.c:745:0
	ldr	r0, [sp, #4]
	bl	getc_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp]
.LBB20_2:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	30 736 0                @ ../../src/fmt.c:736:0
	ldr	r0, [sp]
	cmp	r0, #32
	bne	.LBB20_4
@ BB#3:                                 @ %if.then
                                        @   in Loop: Header=BB20_2 Depth=1
	.loc	30 737 0                @ ../../src/fmt.c:737:0
	ldr	r0, [r4, #68]
	add	r0, r0, #1
	b	.LBB20_1
.LBB20_4:                               @ %if.else
                                        @   in Loop: Header=BB20_2 Depth=1
	.loc	30 738 0                @ ../../src/fmt.c:738:0
	ldr	r0, [sp]
	cmp	r0, #9
	bne	.LBB20_6
@ BB#5:                                 @ %if.then2
                                        @   in Loop: Header=BB20_2 Depth=1
	.loc	30 740 0                @ ../../src/fmt.c:740:0
.Ltmp177:
	strb	r5, [r4, #4]
	.loc	30 741 0                @ ../../src/fmt.c:741:0
	ldr	r0, [r4, #68]
	asr	r1, r0, #31
	add	r0, r0, r1, lsr #29
	bic	r0, r0, #7
	add	r0, r0, #8
	b	.LBB20_1
.Ltmp178:
.LBB20_6:                               @ %if.else3
	.loc	30 744 0                @ ../../src/fmt.c:744:0
	ldr	r0, [sp]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp179:
	.align	2
@ BB#7:
.LCPI20_0:
	.long	_MergedGlobals1
.Ltmp180:
	.size	get_space, .Ltmp180-get_space
.Lfunc_end20:

	.align	2
	.type	version_etc_va,%function
version_etc_va:                         @ @version_etc_va
.Lfunc_begin21:
	.loc	7 43 0                  @ ../../lib/version-etc.c:43:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	str	r0, [r11, #-4]
	ldr	r0, [r11, #8]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	str	r0, [sp, #16]
	.loc	7 50 0 prologue_end     @ ../../lib/version-etc.c:50:0
.Ltmp181:
	str	r0, [sp, #8]
	mov	r0, #0
	b	.LBB21_2
.LBB21_1:                               @ %while.body
                                        @   in Loop: Header=BB21_2 Depth=1
	.loc	7 54 0                  @ ../../lib/version-etc.c:54:0
	ldr	r0, [sp, #12]
	add	r0, r0, #1
.LBB21_2:                               @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	.loc	7 52 0                  @ ../../lib/version-etc.c:52:0
	str	r0, [sp, #12]
	.loc	7 53 0                  @ ../../lib/version-etc.c:53:0
	ldr	r0, [sp, #8]
	add	r1, r0, #4
	str	r1, [sp, #8]
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LBB21_1
.Ltmp182:
@ BB#3:                                 @ %while.end
	.loc	7 57 0                  @ ../../lib/version-etc.c:57:0
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB21_5
@ BB#4:                                 @ %if.then
	.loc	7 58 0                  @ ../../lib/version-etc.c:58:0
	ldr	r1, [r11, #-16]
	ldr	r3, [r11, #-12]
	ldr	r2, [r11, #-8]
	ldr	r0, [r11, #-4]
	str	r1, [sp]
	ldr	r1, .LCPI21_1
	bl	fprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB21_6
.LBB21_5:                               @ %if.else
	.loc	7 60 0                  @ ../../lib/version-etc.c:60:0
	ldr	r3, [r11, #-16]
	ldr	r2, [r11, #-12]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_0
	bl	fprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB21_6:                               @ %if.end
	.loc	7 65 0                  @ ../../lib/version-etc.c:65:0
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_2
	ldr	r2, .LCPI21_3
	mov	r3, #984
	orr	r3, r3, #1024
	bl	fprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 67 0                  @ ../../lib/version-etc.c:67:0
	ldr	r1, [r11, #-4]
	ldr	r0, .LCPI21_4
	bl	fputs_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 76 0                  @ ../../lib/version-etc.c:76:0
	ldr	r0, [sp, #12]
	cmp	r0, #9
	bls	.LBB21_9
@ BB#7:                                 @ %sw.default
	.loc	7 141 0                 @ ../../lib/version-etc.c:141:0
.Ltmp183:
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_14
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 144 0                 @ ../../lib/version-etc.c:144:0
.Ltmp184:
.LBB21_8:                               @ %sw.epilog
	.loc	7 147 0                 @ ../../lib/version-etc.c:147:0
	mov	sp, r11
	pop	{r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB21_9:                               @ %if.end
	lsl	r0, r0, #2
	adr	r1, .LJTI21_0_0
	ldr	pc, [r0, r1]
.LJTI21_0_0:
	.long	.LBB21_11
	.long	.LBB21_10
	.long	.LBB21_12
	.long	.LBB21_13
	.long	.LBB21_14
	.long	.LBB21_15
	.long	.LBB21_16
	.long	.LBB21_17
	.long	.LBB21_18
	.long	.LBB21_19
.LBB21_10:                              @ %sw.bb4
	.loc	7 83 0                  @ ../../lib/version-etc.c:83:0
.Ltmp185:
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_13
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 84 0                  @ ../../lib/version-etc.c:84:0
	b	.LBB21_8
.LBB21_11:                              @ %sw.bb
	.loc	7 80 0                  @ ../../lib/version-etc.c:80:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB21_12:                              @ %sw.bb6
	.loc	7 87 0                  @ ../../lib/version-etc.c:87:0
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_12
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 88 0                  @ ../../lib/version-etc.c:88:0
	b	.LBB21_8
.LBB21_13:                              @ %sw.bb8
	.loc	7 91 0                  @ ../../lib/version-etc.c:91:0
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_11
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 92 0                  @ ../../lib/version-etc.c:92:0
	b	.LBB21_8
.LBB21_14:                              @ %sw.bb10
	.loc	7 97 0                  @ ../../lib/version-etc.c:97:0
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_10
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 98 0                  @ ../../lib/version-etc.c:98:0
	b	.LBB21_8
.LBB21_15:                              @ %sw.bb12
	.loc	7 103 0                 @ ../../lib/version-etc.c:103:0
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_9
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 104 0                 @ ../../lib/version-etc.c:104:0
	b	.LBB21_8
.LBB21_16:                              @ %sw.bb14
	.loc	7 109 0                 @ ../../lib/version-etc.c:109:0
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_8
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 111 0                 @ ../../lib/version-etc.c:111:0
	b	.LBB21_8
.LBB21_17:                              @ %sw.bb16
	.loc	7 116 0                 @ ../../lib/version-etc.c:116:0
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_7
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 118 0                 @ ../../lib/version-etc.c:118:0
	b	.LBB21_8
.LBB21_18:                              @ %sw.bb18
	.loc	7 123 0                 @ ../../lib/version-etc.c:123:0
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_6
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 126 0                 @ ../../lib/version-etc.c:126:0
	b	.LBB21_8
.LBB21_19:                              @ %sw.bb20
	.loc	7 131 0                 @ ../../lib/version-etc.c:131:0
	ldr	r2, [sp, #16]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI21_5
	bl	rpl_vfprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 134 0                 @ ../../lib/version-etc.c:134:0
	b	.LBB21_8
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp186:
	.align	2
@ BB#20:
.LCPI21_0:
	.long	.L.str135
.LCPI21_1:
	.long	.L.str34
.LCPI21_2:
	.long	version_etc_copyright
.LCPI21_3:
	.long	.L.str236
.LCPI21_4:
	.long	.L.str337
.LCPI21_5:
	.long	.L.str1246
.LCPI21_6:
	.long	.L.str1145
.LCPI21_7:
	.long	.L.str1044
.LCPI21_8:
	.long	.L.str943
.LCPI21_9:
	.long	.L.str842
.LCPI21_10:
	.long	.L.str741
.LCPI21_11:
	.long	.L.str640
.LCPI21_12:
	.long	.L.str539
.LCPI21_13:
	.long	.L.str438
.LCPI21_14:
	.long	.L.str1347
.Ltmp187:
	.size	version_etc_va, .Ltmp187-version_etc_va
.Lfunc_end21:
	.file	33 "/usr/arm-linux-gnueabi/include/libio.h"

	.align	2
	.type	version_etc,%function
version_etc:                            @ @version_etc
.Lfunc_begin22:
	.loc	7 167 0                 @ ../../lib/version-etc.c:167:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [sp, #16]
	add	r12, r11, #8
	.loc	7 171 0 prologue_end    @ ../../lib/version-etc.c:171:0
.Ltmp188:
	ldr	r3, [sp, #16]
	ldr	r2, [r11, #-12]
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	.loc	7 170 0                 @ ../../lib/version-etc.c:170:0
	str	r12, [sp, #8]
	.loc	7 171 0                 @ ../../lib/version-etc.c:171:0
	str	r12, [sp]
	bl	version_etc_va
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	7 172 0                 @ ../../lib/version-etc.c:172:0
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp189:
.Ltmp190:
	.size	version_etc, .Ltmp190-version_etc
.Lfunc_end22:

	.align	2
	.type	close_stdout_set_file_name,%function
close_stdout_set_file_name:             @ @close_stdout_set_file_name
.Lfunc_begin23:
	.loc	9 41 0                  @ ../../lib/closeout.c:41:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #4
	.loc	9 42 0 prologue_end     @ ../../lib/closeout.c:42:0
.Ltmp191:
	ldr	r1, .LCPI23_0
	str	r0, [sp]
	str	r0, [r1, #76]
	.loc	9 43 0                  @ ../../lib/closeout.c:43:0
	add	sp, sp, #4
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp192:
	.align	2
@ BB#1:
.LCPI23_0:
	.long	_MergedGlobals1
.Ltmp193:
	.size	close_stdout_set_file_name, .Ltmp193-close_stdout_set_file_name
.Lfunc_end23:

	.align	2
	.type	close_stdout,%function
close_stdout:                           @ @close_stdout
.Lfunc_begin24:
	.loc	9 70 0                  @ ../../lib/closeout.c:70:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #8
	.loc	9 71 0 prologue_end     @ ../../lib/closeout.c:71:0
.Ltmp194:
	ldr	r0, .LCPI24_0
	ldr	r0, [r0]
	bl	close_stream
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	bne	.LBB24_3
@ BB#1:                                 @ %if.end5
	.loc	9 83 0                  @ ../../lib/closeout.c:83:0
	ldr	r0, .LCPI24_1
	ldr	r0, [r0]
	bl	close_stream
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	bne	.LBB24_6
@ BB#2:                                 @ %if.end9
	.loc	9 85 0                  @ ../../lib/closeout.c:85:0
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB24_3:                               @ %if.then
.Ltmp195:
	@DEBUG_VALUE: write_error <- [sp+#4]+#0
	.loc	9 74 0                  @ ../../lib/closeout.c:74:0
	ldr	r5, .LCPI24_4
	.loc	9 73 0                  @ ../../lib/closeout.c:73:0
	ldr	r0, .LCPI24_3
	.loc	9 74 0                  @ ../../lib/closeout.c:74:0
	ldr	r1, [r5, #76]
	.loc	9 73 0                  @ ../../lib/closeout.c:73:0
	str	r0, [sp, #4]
	.loc	9 74 0                  @ ../../lib/closeout.c:74:0
	cmp	r1, #0
	beq	.LBB24_5
@ BB#4:                                 @ %if.then1
	.loc	9 75 0                  @ ../../lib/closeout.c:75:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r4, [r0]
	ldr	r0, [r5, #76]
	bl	quotearg_colon
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r3, r0
	ldr	r0, [sp, #4]
	ldr	r2, .LCPI24_6
	mov	r1, r4
	str	r0, [sp]
	mov	r0, #0
	bl	error
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB24_6
.LBB24_5:                               @ %if.else
	.loc	9 78 0                  @ ../../lib/closeout.c:78:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [r0]
	ldr	r3, [sp, #4]
	ldr	r2, .LCPI24_5
	mov	r0, #0
	bl	error
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB24_6:                               @ %if.end
	.loc	9 80 0                  @ ../../lib/closeout.c:80:0
	ldr	r0, .LCPI24_2
	ldr	r0, [r0]
	bl	_exit
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp196:
	.align	2
@ BB#7:
.LCPI24_0:
	.long	stdout
.LCPI24_1:
	.long	stderr
.LCPI24_2:
	.long	_MergedGlobals
.LCPI24_3:
	.long	.L.str52
.LCPI24_4:
	.long	_MergedGlobals1
.LCPI24_5:
	.long	.L.str254
.LCPI24_6:
	.long	.L.str153
.Ltmp197:
	.size	close_stdout, .Ltmp197-close_stdout
.Lfunc_end24:

	.align	2
	.type	quote_n,%function
quote_n:                                @ @quote_n
.Lfunc_begin25:
	.loc	11 30 0                 @ ../../lib/quote.c:30:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r2, r1
	str	r0, [sp, #4]
	mov	r1, #6
	str	r2, [sp]
	.loc	11 31 0 prologue_end    @ ../../lib/quote.c:31:0
.Ltmp198:
	ldr	r0, [sp, #4]
	bl	quotearg_n_style
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp199:
.Ltmp200:
	.size	quote_n, .Ltmp200-quote_n
.Lfunc_end25:

	.align	2
	.type	quote,%function
quote:                                  @ @quote
.Lfunc_begin26:
	.loc	11 38 0                 @ ../../lib/quote.c:38:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #4]
	.loc	11 39 0 prologue_end    @ ../../lib/quote.c:39:0
.Ltmp201:
	bl	quote_n
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp202:
.Ltmp203:
	.size	quote, .Ltmp203-quote
.Lfunc_end26:

	.align	2
	.type	clone_quoting_options,%function
clone_quoting_options:                  @ @clone_quoting_options
.Lfunc_begin27:
	.loc	13 111 0                @ ../../lib/quotearg.c:111:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	.loc	13 112 0 prologue_end   @ ../../lib/quotearg.c:112:0
.Ltmp204:
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	.loc	13 113 0                @ ../../lib/quotearg.c:113:0
	ldr	r1, [sp, #8]
	.loc	13 112 0                @ ../../lib/quotearg.c:112:0
	str	r0, [sp, #4]
	.loc	13 113 0                @ ../../lib/quotearg.c:113:0
	cmp	r1, #0
	beq	.LBB27_2
@ BB#1:                                 @ %cond.true
	ldr	r0, [sp, #8]
	b	.LBB27_3
.LBB27_2:
	ldr	r0, .LCPI27_0
	add	r0, r0, #80
.LBB27_3:                               @ %cond.end
	mov	r1, #40
	bl	xmemdup
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 115 0                @ ../../lib/quotearg.c:115:0
	ldr	r4, [sp, #4]
	.loc	13 113 0                @ ../../lib/quotearg.c:113:0
	str	r0, [sp]
	.loc	13 115 0                @ ../../lib/quotearg.c:115:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r4, [r0]
	.loc	13 116 0                @ ../../lib/quotearg.c:116:0
	ldr	r0, [sp]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp205:
	.align	2
@ BB#4:
.LCPI27_0:
	.long	_MergedGlobals1
.Ltmp206:
	.size	clone_quoting_options, .Ltmp206-clone_quoting_options
.Lfunc_end27:

	.align	2
	.type	get_quoting_style,%function
get_quoting_style:                      @ @get_quoting_style
.Lfunc_begin28:
	.loc	13 122 0                @ ../../lib/quotearg.c:122:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #4
	str	r0, [sp]
	.loc	13 123 0 prologue_end   @ ../../lib/quotearg.c:123:0
.Ltmp207:
	cmp	r0, #0
	beq	.LBB28_2
@ BB#1:                                 @ %cond.true
	ldr	r0, [sp]
	b	.LBB28_3
.LBB28_2:
	ldr	r0, .LCPI28_0
	add	r0, r0, #80
.LBB28_3:                               @ %cond.end
	ldr	r0, [r0]
	add	sp, sp, #4
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp208:
	.align	2
@ BB#4:
.LCPI28_0:
	.long	_MergedGlobals1
.Ltmp209:
	.size	get_quoting_style, .Ltmp209-get_quoting_style
.Lfunc_end28:

	.align	2
	.type	set_quoting_style,%function
set_quoting_style:                      @ @set_quoting_style
.Lfunc_begin29:
	.loc	13 130 0                @ ../../lib/quotearg.c:130:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc	13 131 0 prologue_end   @ ../../lib/quotearg.c:131:0
.Ltmp210:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB29_2
@ BB#1:                                 @ %cond.true
	ldr	r0, [sp, #4]
	b	.LBB29_3
.LBB29_2:
	ldr	r0, .LCPI29_0
	add	r0, r0, #80
.LBB29_3:                               @ %cond.end
	str	r1, [r0]
	.loc	13 132 0                @ ../../lib/quotearg.c:132:0
	add	sp, sp, #8
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp211:
	.align	2
@ BB#4:
.LCPI29_0:
	.long	_MergedGlobals1
.Ltmp212:
	.size	set_quoting_style, .Ltmp212-set_quoting_style
.Lfunc_end29:

	.align	2
	.type	set_char_quoting,%function
set_char_quoting:                       @ @set_char_quoting
.Lfunc_begin30:
	.loc	13 141 0                @ ../../lib/quotearg.c:141:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #28
	str	r0, [sp, #24]
	strb	r1, [sp, #23]
	str	r2, [sp, #16]
	.loc	13 142 0 prologue_end   @ ../../lib/quotearg.c:142:0
.Ltmp213:
	ldrb	r0, [sp, #23]
	.loc	13 144 0                @ ../../lib/quotearg.c:144:0
	ldr	r1, [sp, #24]
	.loc	13 142 0                @ ../../lib/quotearg.c:142:0
	strb	r0, [sp, #15]
	.loc	13 144 0                @ ../../lib/quotearg.c:144:0
	cmp	r1, #0
	beq	.LBB30_2
@ BB#1:                                 @ %cond.true
	ldr	r0, [sp, #24]
	b	.LBB30_3
.LBB30_2:
	ldr	r0, .LCPI30_0
	add	r0, r0, #80
.LBB30_3:                               @ %cond.end
	ldrb	r1, [sp, #15]
	mov	r2, #28
	and	r1, r2, r1, lsr #3
	mov	r2, #1
	add	r0, r0, r1
	add	r0, r0, #8
	str	r0, [sp, #8]
	.loc	13 145 0                @ ../../lib/quotearg.c:145:0
	ldrb	r0, [sp, #15]
	.loc	13 146 0                @ ../../lib/quotearg.c:146:0
	ldr	r1, [sp, #8]
.Ltmp214:
	@DEBUG_VALUE: r <- [sp+#0]+#0
	.loc	13 145 0                @ ../../lib/quotearg.c:145:0
	and	r0, r0, #31
	str	r0, [sp, #4]
.Ltmp215:
	@DEBUG_VALUE: shift <- [sp+#4]+#0
	.loc	13 146 0                @ ../../lib/quotearg.c:146:0
	ldr	r1, [r1]
	.loc	13 147 0                @ ../../lib/quotearg.c:147:0
	ldr	r3, [sp, #4]
	.loc	13 146 0                @ ../../lib/quotearg.c:146:0
	and	r2, r2, r1, lsr r0
	str	r2, [sp]
	.loc	13 147 0                @ ../../lib/quotearg.c:147:0
	ldr	r2, [sp, #16]
	eor	r0, r2, r1, lsr r0
	ldr	r1, [sp, #8]
	and	r0, r0, #1
	ldr	r2, [r1]
	eor	r0, r2, r0, lsl r3
	str	r0, [r1]
	.loc	13 148 0                @ ../../lib/quotearg.c:148:0
	ldr	r0, [sp]
	add	sp, sp, #28
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp216:
	.align	2
@ BB#4:
.LCPI30_0:
	.long	_MergedGlobals1
.Ltmp217:
	.size	set_char_quoting, .Ltmp217-set_char_quoting
.Lfunc_end30:

	.align	2
	.type	set_quoting_flags,%function
set_quoting_flags:                      @ @set_quoting_flags
.Lfunc_begin31:
	.loc	13 157 0                @ ../../lib/quotearg.c:157:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	.loc	13 159 0 prologue_end   @ ../../lib/quotearg.c:159:0
.Ltmp218:
	ldr	r0, [sp, #8]
	.loc	13 162 0                @ ../../lib/quotearg.c:162:0
	ldr	r1, [sp, #4]
	.loc	13 159 0                @ ../../lib/quotearg.c:159:0
	cmp	r0, #0
	.loc	13 160 0                @ ../../lib/quotearg.c:160:0
	ldreq	r0, .LCPI31_0
	addeq	r0, r0, #80
	streq	r0, [sp, #8]
	.loc	13 161 0                @ ../../lib/quotearg.c:161:0
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #4]
	str	r0, [sp]
	.loc	13 162 0                @ ../../lib/quotearg.c:162:0
	ldr	r0, [sp, #8]
	str	r1, [r0, #4]
	.loc	13 163 0                @ ../../lib/quotearg.c:163:0
	ldr	r0, [sp]
	add	sp, sp, #12
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp219:
	.align	2
@ BB#1:
.LCPI31_0:
	.long	_MergedGlobals1
.Ltmp220:
	.size	set_quoting_flags, .Ltmp220-set_quoting_flags
.Lfunc_end31:

	.align	2
	.type	quotearg_buffer,%function
quotearg_buffer:                        @ @quotearg_buffer
.Lfunc_begin32:
	.loc	13 599 0                @ ../../lib/quotearg.c:599:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #44
	str	r1, [r11, #-12]
	ldr	r1, [r11, #8]
	str	r0, [r11, #-8]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	str	r1, [sp, #24]
	.loc	13 600 0 prologue_end   @ ../../lib/quotearg.c:600:0
.Ltmp221:
	cmp	r1, #0
	beq	.LBB32_2
@ BB#1:                                 @ %cond.true
	ldr	r0, [sp, #24]
	b	.LBB32_3
.LBB32_2:
	ldr	r0, .LCPI32_0
	add	r0, r0, #80
.LBB32_3:                               @ %cond.end
.Ltmp222:
	@DEBUG_VALUE: e <- [sp+#16]+#0
	str	r0, [sp, #20]
	.loc	13 601 0                @ ../../lib/quotearg.c:601:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	.loc	13 602 0                @ ../../lib/quotearg.c:602:0
	ldr	r4, [sp, #20]
	.loc	13 601 0                @ ../../lib/quotearg.c:601:0
	str	r0, [sp, #16]
	.loc	13 602 0                @ ../../lib/quotearg.c:602:0
	ldm	r4, {r12, lr}
	ldr	r3, [r11, #-20]
	ldr	r2, [r11, #-16]
	ldr	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
.Ltmp223:
	@DEBUG_VALUE: r <- [sp+#12]+#0
	add	r4, r4, #8
	stm	sp, {r12, lr}
	str	r4, [sp, #8]
	bl	quotearg_buffer_restyled
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 604 0                @ ../../lib/quotearg.c:604:0
	ldr	r4, [sp, #16]
	.loc	13 602 0                @ ../../lib/quotearg.c:602:0
	str	r0, [sp, #12]
	.loc	13 604 0                @ ../../lib/quotearg.c:604:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r4, [r0]
	.loc	13 605 0                @ ../../lib/quotearg.c:605:0
	ldr	r0, [sp, #12]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp224:
	.align	2
@ BB#4:
.LCPI32_0:
	.long	_MergedGlobals1
.Ltmp225:
	.size	quotearg_buffer, .Ltmp225-quotearg_buffer
.Lfunc_end32:

	.align	2
	.type	quotearg_buffer_restyled,%function
quotearg_buffer_restyled:               @ @quotearg_buffer_restyled
.Lfunc_begin33:
	.loc	13 206 0                @ ../../lib/quotearg.c:206:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #116
	str	r0, [r11, #-36]
	ldr	r0, [r11, #8]
	str	r1, [r11, #-40]
	str	r2, [r11, #-44]
	str	r3, [r11, #-48]
	str	r0, [r11, #-52]
	ldr	r0, [r11, #12]
	str	r0, [r11, #-56]
	ldr	r0, [r11, #16]
	str	r0, [r11, #-60]
	mov	r0, #0
	.loc	13 208 0 prologue_end   @ ../../lib/quotearg.c:208:0
.Ltmp226:
	str	r0, [r11, #-68]
	.loc	13 209 0                @ ../../lib/quotearg.c:209:0
	str	r0, [sp, #72]
	.loc	13 210 0                @ ../../lib/quotearg.c:210:0
	str	r0, [sp, #68]
	.loc	13 211 0                @ ../../lib/quotearg.c:211:0
	strb	r0, [sp, #67]
	.loc	13 212 0                @ ../../lib/quotearg.c:212:0
	bl	__ctype_get_mb_cur_max
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #1
	movne	r0, #0
	strb	r0, [sp, #66]
	.loc	13 213 0                @ ../../lib/quotearg.c:213:0
	ldr	r0, [r11, #-56]
	and	r0, r0, #2
	lsr	r0, r0, #1
	strb	r0, [sp, #65]
	.loc	13 224 0                @ ../../lib/quotearg.c:224:0
	ldr	r0, [r11, #-52]
	cmp	r0, #7
	bhi	.LBB33_131
@ BB#1:                                 @ %entry
	lsl	r0, r0, #2
	adr	r1, .LJTI33_0_0
	ldr	pc, [r0, r1]
.LJTI33_0_0:
	.long	.LBB33_19
	.long	.LBB33_8
	.long	.LBB33_9
	.long	.LBB33_13
	.long	.LBB33_12
	.long	.LBB33_18
	.long	.LBB33_2
	.long	.LBB33_2
.LBB33_2:                               @ %sw.bb8
.Ltmp227:
	@DEBUG_VALUE: left <- [sp+#60]+#0
	.loc	13 266 0                @ ../../lib/quotearg.c:266:0
	ldr	r1, [r11, #-52]
	ldr	r0, .LCPI33_1
	bl	gettext_quote
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #60]
	.loc	13 267 0                @ ../../lib/quotearg.c:267:0
	ldr	r1, [r11, #-52]
.Ltmp228:
	@DEBUG_VALUE: right <- [sp+#56]+#0
	ldr	r0, .LCPI33_0
	bl	gettext_quote
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #56]
	.loc	13 268 0                @ ../../lib/quotearg.c:268:0
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_16
@ BB#3:                                 @ %if.then12
	.loc	13 269 0                @ ../../lib/quotearg.c:269:0
.Ltmp229:
	ldr	r0, [sp, #60]
	b	.LBB33_5
.LBB33_4:                               @ %for.inc
                                        @   in Loop: Header=BB33_5 Depth=1
	.loc	13 270 0                @ ../../lib/quotearg.c:270:0
.Ltmp230:
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp231:
	.loc	13 269 0                @ ../../lib/quotearg.c:269:0
	ldr	r0, [sp, #72]
	add	r0, r0, #1
.LBB33_5:                               @ %if.then12
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp, #72]
	ldr	r0, [sp, #72]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB33_16
@ BB#6:                                 @ %do.body14
                                        @   in Loop: Header=BB33_5 Depth=1
	.loc	13 270 0                @ ../../lib/quotearg.c:270:0
.Ltmp232:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	bhs	.LBB33_4
@ BB#7:                                 @ %if.then16
                                        @   in Loop: Header=BB33_5 Depth=1
	ldr	r0, [sp, #72]
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-68]
	ldrb	r0, [r0]
	strb	r0, [r1, r2]
	b	.LBB33_4
.Ltmp233:
.LBB33_8:                               @ %sw.bb23
	mov	r0, #2
	.loc	13 278 0                @ ../../lib/quotearg.c:278:0
	str	r0, [r11, #-52]
	mov	r0, #1
	.loc	13 279 0                @ ../../lib/quotearg.c:279:0
	strb	r0, [sp, #65]
.LBB33_9:                               @ %sw.bb24
	.loc	13 282 0                @ ../../lib/quotearg.c:282:0
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_11
@ BB#10:                                @ %do.body27
	.loc	13 283 0                @ ../../lib/quotearg.c:283:0
.Ltmp234:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #39
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp235:
.LBB33_11:                              @ %if.end34
	.loc	13 284 0                @ ../../lib/quotearg.c:284:0
	ldr	r0, .LCPI33_0
	str	r0, [sp, #72]
	mov	r0, #1
	b	.LBB33_17
.LBB33_12:                              @ %sw.bb
	mov	r0, #3
	.loc	13 227 0                @ ../../lib/quotearg.c:227:0
	str	r0, [r11, #-52]
	mov	r0, #1
	.loc	13 228 0                @ ../../lib/quotearg.c:228:0
	strb	r0, [sp, #65]
.LBB33_13:                              @ %sw.bb3
	.loc	13 231 0                @ ../../lib/quotearg.c:231:0
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_15
@ BB#14:                                @ %do.body
	.loc	13 232 0                @ ../../lib/quotearg.c:232:0
.Ltmp236:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #34
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp237:
.LBB33_15:                              @ %if.end6
	.loc	13 234 0                @ ../../lib/quotearg.c:234:0
	ldr	r1, .LCPI33_2
	mov	r0, #1
	.loc	13 233 0                @ ../../lib/quotearg.c:233:0
	strb	r0, [sp, #67]
	.loc	13 234 0                @ ../../lib/quotearg.c:234:0
	str	r1, [sp, #72]
	b	.LBB33_17
.LBB33_16:                              @ %if.end21
	mov	r0, #1
	.loc	13 271 0                @ ../../lib/quotearg.c:271:0
.Ltmp238:
	strb	r0, [sp, #67]
	.loc	13 272 0                @ ../../lib/quotearg.c:272:0
	ldr	r0, [sp, #56]
	str	r0, [sp, #72]
	.loc	13 273 0                @ ../../lib/quotearg.c:273:0
	bl	strlen
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB33_17:                              @ %if.end21
	str	r0, [sp, #68]
	b	.LBB33_20
.Ltmp239:
.LBB33_18:                              @ %sw.bb7
	mov	r0, #1
	.loc	13 239 0                @ ../../lib/quotearg.c:239:0
	strb	r0, [sp, #67]
.LBB33_19:                              @ %sw.bb35
	mov	r0, #0
	.loc	13 289 0                @ ../../lib/quotearg.c:289:0
	strb	r0, [sp, #65]
.Ltmp240:
.LBB33_20:                              @ %sw.epilog
	mov	r6, #0
	mov	r9, #92
	mov	r4, #1
	add	r7, sp, #28
	add	r5, sp, #32
	mov	r10, #43
	.loc	13 296 0                @ ../../lib/quotearg.c:296:0
.Ltmp241:
	str	r6, [r11, #-64]
	b	.LBB33_22
.LBB33_21:                              @ %for.inc462
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-64]
	add	r0, r0, #1
	str	r0, [r11, #-64]
.LBB33_22:                              @ %for.cond36
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB33_53 Depth 2
                                        @       Child Loop BB33_60 Depth 3
                                        @     Child Loop BB33_69 Depth 2
                                        @     Child Loop BB33_42 Depth 2
	ldr	r0, [r11, #-48]
	cmn	r0, #1
	bne	.LBB33_24
@ BB#23:                                @ %cond.true
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-64]
	ldr	r1, [r11, #-44]
	ldrb	r0, [r1, r0]
	cmp	r0, #0
	b	.LBB33_25
.LBB33_24:                              @ %cond.false
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-64]
	cmp	r1, r0
.LBB33_25:                              @ %cond.false
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #0
	moveq	r0, #1
	cmp	r0, #0
	bne	.LBB33_119
@ BB#26:                                @ %for.body44
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 301 0                @ ../../lib/quotearg.c:301:0
.Ltmp242:
	ldrb	r0, [sp, #67]
	tst	r0, #1
.Ltmp243:
	@DEBUG_VALUE: c <- [sp+#55]+#0
	@DEBUG_VALUE: esc <- [sp+#54]+#0
	ldrne	r0, [sp, #68]
	cmpne	r0, #0
	beq	.LBB33_31
@ BB#27:                                @ %land.lhs.true48
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [sp, #68]
	ldr	r1, [r11, #-64]
	ldr	r2, [r11, #-48]
	add	r0, r1, r0
	cmp	r0, r2
	bhi	.LBB33_31
@ BB#28:                                @ %land.lhs.true51
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 304 0                @ ../../lib/quotearg.c:304:0
	ldr	r0, [r11, #-64]
	ldr	r1, [r11, #-44]
	ldr	r2, [sp, #68]
	add	r0, r1, r0
	ldr	r1, [sp, #72]
	bl	memcmp
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	bne	.LBB33_31
@ BB#29:                                @ %if.then55
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 306 0                @ ../../lib/quotearg.c:306:0
.Ltmp244:
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_122
@ BB#30:                                @ %do.body59
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 308 0                @ ../../lib/quotearg.c:308:0
.Ltmp245:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	strblo	r9, [r0, r1]
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp246:
.LBB33_31:                              @ %if.end67
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 311 0                @ ../../lib/quotearg.c:311:0
	ldr	r0, [r11, #-64]
	ldr	r1, [r11, #-44]
	ldrb	r0, [r1, r0]
	strb	r0, [sp, #55]
	.loc	13 312 0                @ ../../lib/quotearg.c:312:0
	ldrb	r0, [sp, #55]
	cmp	r0, #126
	bhi	.LBB33_35
@ BB#32:                                @ %if.end67
                                        @   in Loop: Header=BB33_22 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI33_1_1
	ldr	pc, [r0, r1]
.LJTI33_1_1:
	.long	.LBB33_72
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_79
	.long	.LBB33_80
	.long	.LBB33_81
	.long	.LBB33_82
	.long	.LBB33_83
	.long	.LBB33_84
	.long	.LBB33_85
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_35
	.long	.LBB33_109
	.long	.LBB33_109
	.long	.LBB33_109
	.long	.LBB33_108
	.long	.LBB33_109
	.long	.LBB33_112
	.long	.LBB33_109
	.long	.LBB33_86
	.long	.LBB33_109
	.long	.LBB33_109
	.long	.LBB33_109
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_109
	.long	.LBB33_109
	.long	.LBB33_109
	.long	.LBB33_109
	.long	.LBB33_92
	.long	.LBB33_35
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_109
	.long	.LBB33_101
	.long	.LBB33_112
	.long	.LBB33_109
	.long	.LBB33_112
	.long	.LBB33_109
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_112
	.long	.LBB33_33
	.long	.LBB33_109
	.long	.LBB33_33
	.long	.LBB33_108
.LBB33_33:                              @ %sw.bb215
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 396 0                @ ../../lib/quotearg.c:396:0
.Ltmp247:
	ldr	r0, [r11, #-48]
	cmn	r0, #1
	bne	.LBB33_107
@ BB#34:                                @ %cond.true218
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-44]
	ldrb	r0, [r0, #1]
	cmp	r0, #0
	beq	.LBB33_108
	b	.LBB33_112
.LBB33_35:                              @ %sw.default274
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 460 0                @ ../../lib/quotearg.c:460:0
.Ltmp248:
	ldrb	r0, [sp, #66]
	tst	r0, #1
.Ltmp249:
	@DEBUG_VALUE: m <- [sp+#48]+#0
	@DEBUG_VALUE: printable <- [sp+#47]+#0
	beq	.LBB33_51
@ BB#36:                                @ %if.then276
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 463 0                @ ../../lib/quotearg.c:463:0
.Ltmp250:
	ldrb	r8, [sp, #55]
	.loc	13 462 0                @ ../../lib/quotearg.c:462:0
	str	r4, [sp, #48]
	.loc	13 463 0                @ ../../lib/quotearg.c:463:0
	bl	__ctype_b_loc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	add	r0, r0, r8, lsl #1
	ldrh	r0, [r0]
	and	r0, r0, #16384
	lsr	r0, r0, #14
	strb	r0, [sp, #47]
.Ltmp251:
.LBB33_37:                              @ %if.end349
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 524 0                @ ../../lib/quotearg.c:524:0
	ldr	r0, [sp, #48]
	cmp	r0, #1
	bhi	.LBB33_40
@ BB#38:                                @ %lor.lhs.false
                                        @   in Loop: Header=BB33_22 Depth=1
	ldrb	r0, [sp, #67]
	tst	r0, #1
	beq	.LBB33_112
@ BB#39:                                @ %land.lhs.true354
                                        @   in Loop: Header=BB33_22 Depth=1
	ldrb	r0, [sp, #47]
	tst	r0, #1
	bne	.LBB33_112
.LBB33_40:                              @ %if.then356
                                        @   in Loop: Header=BB33_22 Depth=1
.Ltmp252:
	@DEBUG_VALUE: ilim <- [sp+#16]+#0
	.loc	13 528 0                @ ../../lib/quotearg.c:528:0
	ldr	r0, [sp, #48]
	ldr	r1, [r11, #-64]
	add	r0, r1, r0
	str	r0, [sp, #16]
	b	.LBB33_42
.LBB33_41:                              @ %do.body412
                                        @   in Loop: Header=BB33_42 Depth=2
	.loc	13 543 0                @ ../../lib/quotearg.c:543:0
.Ltmp253:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	ldrblo	r2, [sp, #55]
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp254:
	.loc	13 544 0                @ ../../lib/quotearg.c:544:0
	ldr	r1, [r11, #-44]
	.loc	13 543 0                @ ../../lib/quotearg.c:543:0
.Ltmp255:
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp256:
	.loc	13 544 0                @ ../../lib/quotearg.c:544:0
	ldr	r0, [r11, #-64]
	add	r0, r0, #1
	str	r0, [r11, #-64]
	ldrb	r0, [r1, r0]
	strb	r0, [sp, #55]
.LBB33_42:                              @ %for.cond358
                                        @   Parent Loop BB33_22 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	13 532 0                @ ../../lib/quotearg.c:532:0
	ldrb	r0, [sp, #67]
	tst	r0, #1
	beq	.LBB33_50
@ BB#43:                                @ %land.lhs.true361
                                        @   in Loop: Header=BB33_42 Depth=2
	ldrb	r0, [sp, #47]
	tst	r0, #1
	bne	.LBB33_50
@ BB#44:                                @ %if.then363
                                        @   in Loop: Header=BB33_42 Depth=2
	.loc	13 534 0                @ ../../lib/quotearg.c:534:0
.Ltmp257:
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_122
@ BB#45:                                @ %do.body367
                                        @   in Loop: Header=BB33_42 Depth=2
	.loc	13 536 0                @ ../../lib/quotearg.c:536:0
.Ltmp258:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	strblo	r9, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp259:
	.loc	13 537 0                @ ../../lib/quotearg.c:537:0
	ldr	r1, [r11, #-40]
.Ltmp260:
	.loc	13 536 0                @ ../../lib/quotearg.c:536:0
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp261:
	.loc	13 537 0                @ ../../lib/quotearg.c:537:0
	cmp	r0, r1
	bhs	.LBB33_47
@ BB#46:                                @ %if.then379
                                        @   in Loop: Header=BB33_42 Depth=2
	ldrb	r0, [sp, #55]
	ldr	r3, [r11, #-36]
	ldr	r2, [r11, #-68]
	mov	r1, #48
	orr	r0, r1, r0, lsr #6
	strb	r0, [r3, r2]
.LBB33_47:                              @ %do.body388
                                        @   in Loop: Header=BB33_42 Depth=2
	ldr	r0, [r11, #-68]
.Ltmp262:
	.loc	13 538 0                @ ../../lib/quotearg.c:538:0
	ldr	r1, [r11, #-40]
.Ltmp263:
	.loc	13 537 0                @ ../../lib/quotearg.c:537:0
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp264:
	.loc	13 538 0                @ ../../lib/quotearg.c:538:0
	cmp	r0, r1
	bhs	.LBB33_49
@ BB#48:                                @ %if.then391
                                        @   in Loop: Header=BB33_42 Depth=2
	ldrb	r0, [sp, #55]
	ldr	r3, [r11, #-36]
	ldr	r2, [r11, #-68]
	mov	r1, #7
	and	r0, r1, r0, lsr #3
	orr	r0, r0, #48
	strb	r0, [r3, r2]
.LBB33_49:                              @ %do.end401
                                        @   in Loop: Header=BB33_42 Depth=2
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp265:
	.loc	13 539 0                @ ../../lib/quotearg.c:539:0
	ldrb	r0, [sp, #55]
	and	r0, r0, #7
	orr	r0, r0, #48
	strb	r0, [sp, #55]
.Ltmp266:
.LBB33_50:                              @ %if.end406
                                        @   in Loop: Header=BB33_42 Depth=2
	.loc	13 541 0                @ ../../lib/quotearg.c:541:0
	ldr	r0, [r11, #-64]
	ldr	r1, [sp, #16]
	add	r0, r0, #1
	cmp	r1, r0
	bls	.LBB33_117
	b	.LBB33_41
.Ltmp267:
.LBB33_51:                              @ %if.else285
                                        @   in Loop: Header=BB33_22 Depth=1
	@DEBUG_VALUE: mbstate <- [sp+#32]+#0
	.loc	13 472 0                @ ../../lib/quotearg.c:472:0
	ldr	r0, [r11, #-48]
	.loc	13 468 0                @ ../../lib/quotearg.c:468:0
	str	r6, [sp, #36]
	str	r6, [sp, #32]
	.loc	13 470 0                @ ../../lib/quotearg.c:470:0
	str	r6, [sp, #48]
	.loc	13 471 0                @ ../../lib/quotearg.c:471:0
	strb	r4, [sp, #47]
	.loc	13 472 0                @ ../../lib/quotearg.c:472:0
	cmn	r0, #1
	bne	.LBB33_53
@ BB#52:                                @ %if.then288
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 473 0                @ ../../lib/quotearg.c:473:0
	ldr	r0, [r11, #-44]
	bl	strlen
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-48]
.LBB33_53:                              @ %do.body291
                                        @   Parent Loop BB33_22 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB33_60 Depth 3
.Ltmp268:
	@DEBUG_VALUE: w <- [sp+#28]+#0
	@DEBUG_VALUE: bytes <- [sp+#24]+#0
	.loc	13 478 0                @ ../../lib/quotearg.c:478:0
	ldr	r0, [sp, #48]
	ldr	r1, [r11, #-64]
	ldr	r2, [r11, #-48]
	mov	r3, r5
	add	r0, r1, r0
	ldr	r1, [r11, #-44]
	sub	r2, r2, r0
	add	r1, r1, r0
	mov	r0, r7
	bl	mbrtowc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #24]
	.loc	13 480 0                @ ../../lib/quotearg.c:480:0
	cmp	r0, #0
	beq	.LBB33_37
@ BB#54:                                @ %if.else299
                                        @   in Loop: Header=BB33_53 Depth=2
	.loc	13 482 0                @ ../../lib/quotearg.c:482:0
	ldr	r0, [sp, #24]
	cmn	r0, #1
	beq	.LBB33_66
@ BB#55:                                @ %if.else303
                                        @   in Loop: Header=BB33_53 Depth=2
	.loc	13 487 0                @ ../../lib/quotearg.c:487:0
	ldr	r0, [sp, #24]
	cmn	r0, #2
	beq	.LBB33_67
@ BB#56:                                @ %if.else315
                                        @   in Loop: Header=BB33_53 Depth=2
	.loc	13 500 0                @ ../../lib/quotearg.c:500:0
.Ltmp269:
	ldrb	r0, [sp, #65]
	tst	r0, #1
	beq	.LBB33_65
@ BB#57:                                @ %land.lhs.true318
                                        @   in Loop: Header=BB33_53 Depth=2
	ldr	r0, [r11, #-52]
	cmp	r0, #2
	bne	.LBB33_65
@ BB#58:                                @ %if.then321
                                        @   in Loop: Header=BB33_53 Depth=2
.Ltmp270:
	@DEBUG_VALUE: j <- [sp+#20]+#0
	.loc	13 504 0                @ ../../lib/quotearg.c:504:0
	str	r4, [sp, #20]
	b	.LBB33_60
.LBB33_59:                              @ %for.inc333
                                        @   in Loop: Header=BB33_60 Depth=3
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
.LBB33_60:                              @ %for.cond322
                                        @   Parent Loop BB33_22 Depth=1
                                        @     Parent Loop BB33_53 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #20]
	cmp	r1, r0
	bhs	.LBB33_65
@ BB#61:                                @ %for.body325
                                        @   in Loop: Header=BB33_60 Depth=3
	.loc	13 505 0                @ ../../lib/quotearg.c:505:0
	ldr	r0, [sp, #48]
	ldr	r1, [r11, #-64]
	add	r0, r1, r0
	ldr	r1, [sp, #20]
	add	r0, r0, r1
	ldr	r1, [r11, #-44]
	ldrb	r0, [r1, r0]
	cmp	r0, #123
	bhi	.LBB33_64
.Ltmp271:
@ BB#62:                                @ %for.body325
                                        @   in Loop: Header=BB33_60 Depth=3
	sub	r0, r0, #91
	cmp	r0, #5
	bhi	.LBB33_59
@ BB#63:                                @ %for.body325
                                        @   in Loop: Header=BB33_60 Depth=3
	tst	r10, r4, lsl r0
	beq	.LBB33_59
	b	.LBB33_122
.LBB33_64:                              @ %for.body325
                                        @   in Loop: Header=BB33_60 Depth=3
	cmp	r0, #124
	beq	.LBB33_122
	b	.LBB33_59
.LBB33_65:                              @ %if.end336
                                        @   in Loop: Header=BB33_53 Depth=2
	.loc	13 516 0                @ ../../lib/quotearg.c:516:0
	ldr	r0, [sp, #28]
	bl	iswprint
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	.loc	13 518 0                @ ../../lib/quotearg.c:518:0
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #48]
	.loc	13 517 0                @ ../../lib/quotearg.c:517:0
	strbeq	r6, [sp, #47]
	.loc	13 518 0                @ ../../lib/quotearg.c:518:0
	add	r0, r1, r0
	str	r0, [sp, #48]
.Ltmp272:
	.loc	13 521 0                @ ../../lib/quotearg.c:521:0
	mov	r0, r5
	bl	mbsinit
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	beq	.LBB33_53
	b	.LBB33_37
.LBB33_66:                              @ %if.then302
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 484 0                @ ../../lib/quotearg.c:484:0
.Ltmp273:
	strb	r6, [sp, #47]
	b	.LBB33_37
.Ltmp274:
.LBB33_67:                              @ %if.then306
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 489 0                @ ../../lib/quotearg.c:489:0
	strb	r6, [sp, #47]
	b	.LBB33_69
.LBB33_68:                              @ %while.body
                                        @   in Loop: Header=BB33_69 Depth=2
	.loc	13 491 0                @ ../../lib/quotearg.c:491:0
	ldr	r0, [sp, #48]
	add	r0, r0, #1
	str	r0, [sp, #48]
.LBB33_69:                              @ %while.cond
                                        @   Parent Loop BB33_22 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	13 490 0                @ ../../lib/quotearg.c:490:0
	ldr	r0, [sp, #48]
	ldr	r1, [r11, #-64]
	ldr	r2, [r11, #-48]
	add	r1, r1, r0
	mov	r0, #0
	cmp	r1, r2
	bhs	.LBB33_71
@ BB#70:                                @ %land.rhs
                                        @   in Loop: Header=BB33_69 Depth=2
	ldr	r0, [sp, #48]
	ldr	r1, [r11, #-64]
	add	r0, r1, r0
	ldr	r1, [r11, #-44]
	ldrb	r0, [r1, r0]
	cmp	r0, #0
	movne	r0, #1
.Ltmp275:
.LBB33_71:                              @ %land.end
                                        @   in Loop: Header=BB33_69 Depth=2
	cmp	r0, #1
	bne	.LBB33_37
	b	.LBB33_68
.LBB33_72:                              @ %sw.bb70
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 315 0                @ ../../lib/quotearg.c:315:0
	ldrb	r0, [sp, #67]
	tst	r0, #1
	beq	.LBB33_118
@ BB#73:                                @ %if.then72
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 317 0                @ ../../lib/quotearg.c:317:0
.Ltmp276:
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_122
@ BB#74:                                @ %do.body76
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 319 0                @ ../../lib/quotearg.c:319:0
.Ltmp277:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	strblo	r9, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp278:
	.loc	13 320 0                @ ../../lib/quotearg.c:320:0
	ldr	r1, [r11, #-48]
	.loc	13 319 0                @ ../../lib/quotearg.c:319:0
.Ltmp279:
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp280:
	.loc	13 320 0                @ ../../lib/quotearg.c:320:0
	ldr	r0, [r11, #-64]
	add	r0, r0, #1
	cmp	r0, r1
	bhs	.LBB33_78
@ BB#75:                                @ %land.lhs.true87
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-64]
	add	r0, r1, r0
	ldrb	r0, [r0, #1]
	cmp	r0, #48
	blt	.LBB33_78
@ BB#76:                                @ %land.lhs.true93
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-64]
	add	r0, r1, r0
	ldrb	r0, [r0, #1]
	cmp	r0, #57
	bgt	.LBB33_78
@ BB#77:                                @ %do.body100
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 322 0                @ ../../lib/quotearg.c:322:0
.Ltmp281:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #48
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp282:
	.loc	13 323 0                @ ../../lib/quotearg.c:323:0
	ldr	r1, [r11, #-40]
.Ltmp283:
	.loc	13 322 0                @ ../../lib/quotearg.c:322:0
	add	r0, r0, #1
.Ltmp284:
	.loc	13 323 0                @ ../../lib/quotearg.c:323:0
	cmp	r0, r1
.Ltmp285:
	.loc	13 322 0                @ ../../lib/quotearg.c:322:0
	str	r0, [r11, #-68]
.Ltmp286:
	.loc	13 323 0                @ ../../lib/quotearg.c:323:0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #48
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp287:
.LBB33_78:                              @ %if.end116
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #48
	.loc	13 325 0                @ ../../lib/quotearg.c:325:0
	strb	r0, [sp, #55]
	b	.LBB33_112
.Ltmp288:
.LBB33_79:                              @ %sw.bb188
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #97
	.loc	13 369 0                @ ../../lib/quotearg.c:369:0
	strb	r0, [sp, #54]
	b	.LBB33_105
.LBB33_80:                              @ %sw.bb189
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #98
	.loc	13 370 0                @ ../../lib/quotearg.c:370:0
	strb	r0, [sp, #54]
	b	.LBB33_105
.LBB33_81:                              @ %sw.bb193
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #116
	.loc	13 374 0                @ ../../lib/quotearg.c:374:0
	strb	r0, [sp, #54]
	b	.LBB33_103
.LBB33_82:                              @ %sw.bb191
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #110
	.loc	13 372 0                @ ../../lib/quotearg.c:372:0
	strb	r0, [sp, #54]
	b	.LBB33_103
.LBB33_83:                              @ %sw.bb194
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #118
	.loc	13 375 0                @ ../../lib/quotearg.c:375:0
	strb	r0, [sp, #54]
	b	.LBB33_105
.LBB33_84:                              @ %sw.bb190
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #102
	.loc	13 371 0                @ ../../lib/quotearg.c:371:0
	strb	r0, [sp, #54]
	b	.LBB33_105
.LBB33_85:                              @ %sw.bb192
                                        @   in Loop: Header=BB33_22 Depth=1
	mov	r0, #114
	.loc	13 373 0                @ ../../lib/quotearg.c:373:0
	strb	r0, [sp, #54]
	b	.LBB33_103
.LBB33_86:                              @ %sw.bb241
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 422 0                @ ../../lib/quotearg.c:422:0
	ldr	r0, [r11, #-52]
	cmp	r0, #2
	bne	.LBB33_112
@ BB#87:                                @ %if.then244
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 424 0                @ ../../lib/quotearg.c:424:0
.Ltmp289:
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_122
@ BB#88:                                @ %do.body248
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 426 0                @ ../../lib/quotearg.c:426:0
.Ltmp290:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #39
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp291:
	.loc	13 427 0                @ ../../lib/quotearg.c:427:0
	ldr	r1, [r11, #-40]
.Ltmp292:
	.loc	13 426 0                @ ../../lib/quotearg.c:426:0
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp293:
	.loc	13 427 0                @ ../../lib/quotearg.c:427:0
	cmp	r0, r1
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	strblo	r9, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp294:
	.loc	13 428 0                @ ../../lib/quotearg.c:428:0
	ldr	r1, [r11, #-40]
.Ltmp295:
	.loc	13 427 0                @ ../../lib/quotearg.c:427:0
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp296:
	.loc	13 428 0                @ ../../lib/quotearg.c:428:0
	cmp	r0, r1
	bhs	.LBB33_91
@ BB#89:                                @ %if.then267
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-36]
	ldr	r1, [r11, #-68]
	mov	r2, #39
.Ltmp297:
.LBB33_90:                              @ %if.then178
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 356 0                @ ../../lib/quotearg.c:356:0
	strb	r2, [r0, r1]
.LBB33_91:                              @ %if.end180
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
	b	.LBB33_112
.Ltmp298:
.LBB33_92:                              @ %sw.bb122
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 332 0                @ ../../lib/quotearg.c:332:0
	ldr	r0, [r11, #-52]
	cmp	r0, #3
	bne	.LBB33_110
@ BB#93:                                @ %sw.bb127
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 340 0                @ ../../lib/quotearg.c:340:0
.Ltmp299:
	ldrb	r0, [r11, #-56]
	tst	r0, #4
	beq	.LBB33_112
@ BB#94:                                @ %land.lhs.true130
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-64]
	ldr	r1, [r11, #-48]
	add	r0, r0, #2
	cmp	r0, r1
	bhs	.LBB33_112
@ BB#95:                                @ %land.lhs.true134
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-64]
	add	r0, r1, r0
	ldrb	r0, [r0, #1]
	cmp	r0, #63
	bne	.LBB33_112
@ BB#96:                                @ %if.then140
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 342 0                @ ../../lib/quotearg.c:342:0
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-64]
	add	r0, r1, r0
	ldrb	r0, [r0, #2]
	sub	r0, r0, #33
	cmp	r0, #29
	bhi	.LBB33_112
@ BB#97:                                @ %if.then140
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r1, .LCPI33_3
	tst	r1, r4, lsl r0
	beq	.LBB33_112
@ BB#98:                                @ %sw.bb144
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 349 0                @ ../../lib/quotearg.c:349:0
.Ltmp300:
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_122
@ BB#99:                                @ %do.body151
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 351 0                @ ../../lib/quotearg.c:351:0
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-64]
	add	r0, r1, r0
	.loc	13 353 0                @ ../../lib/quotearg.c:353:0
.Ltmp301:
	ldr	r1, [r11, #-68]
.Ltmp302:
	.loc	13 351 0                @ ../../lib/quotearg.c:351:0
	ldrb	r0, [r0, #2]
	strb	r0, [sp, #55]
	.loc	13 352 0                @ ../../lib/quotearg.c:352:0
	ldr	r0, [r11, #-64]
	add	r0, r0, #2
	str	r0, [r11, #-64]
	.loc	13 353 0                @ ../../lib/quotearg.c:353:0
.Ltmp303:
	ldr	r0, [r11, #-40]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #63
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp304:
	.loc	13 354 0                @ ../../lib/quotearg.c:354:0
	ldr	r1, [r11, #-40]
.Ltmp305:
	.loc	13 353 0                @ ../../lib/quotearg.c:353:0
	add	r0, r0, #1
.Ltmp306:
	.loc	13 354 0                @ ../../lib/quotearg.c:354:0
	cmp	r0, r1
.Ltmp307:
	.loc	13 353 0                @ ../../lib/quotearg.c:353:0
	str	r0, [r11, #-68]
.Ltmp308:
	.loc	13 354 0                @ ../../lib/quotearg.c:354:0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #34
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp309:
	.loc	13 355 0                @ ../../lib/quotearg.c:355:0
	ldr	r1, [r11, #-40]
.Ltmp310:
	.loc	13 354 0                @ ../../lib/quotearg.c:354:0
	add	r0, r0, #1
.Ltmp311:
	.loc	13 355 0                @ ../../lib/quotearg.c:355:0
	cmp	r0, r1
.Ltmp312:
	.loc	13 354 0                @ ../../lib/quotearg.c:354:0
	str	r0, [r11, #-68]
.Ltmp313:
	.loc	13 355 0                @ ../../lib/quotearg.c:355:0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #34
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
.Ltmp314:
	.loc	13 356 0                @ ../../lib/quotearg.c:356:0
	ldr	r1, [r11, #-40]
.Ltmp315:
	.loc	13 355 0                @ ../../lib/quotearg.c:355:0
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp316:
	.loc	13 356 0                @ ../../lib/quotearg.c:356:0
	cmp	r0, r1
	bhs	.LBB33_91
@ BB#100:                               @ %if.then178
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-36]
	ldr	r1, [r11, #-68]
	mov	r2, #63
	b	.LBB33_90
.Ltmp317:
.LBB33_101:                             @ %sw.bb195
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 376 0                @ ../../lib/quotearg.c:376:0
	ldrb	r0, [sp, #55]
	strb	r0, [sp, #54]
	.loc	13 379 0                @ ../../lib/quotearg.c:379:0
	ldrb	r0, [sp, #67]
	tst	r0, #1
	ldrbne	r0, [sp, #65]
	tstne	r0, #1
	beq	.LBB33_103
@ BB#102:                               @ %land.lhs.true201
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [sp, #68]
	cmp	r0, #0
	bne	.LBB33_117
.LBB33_103:                             @ %c_and_shell_escape
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 383 0                @ ../../lib/quotearg.c:383:0
	ldr	r0, [r11, #-52]
	cmp	r0, #2
	bne	.LBB33_105
@ BB#104:                               @ %land.lhs.true207
                                        @   in Loop: Header=BB33_22 Depth=1
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_122
.LBB33_105:                             @ %c_escape
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 388 0                @ ../../lib/quotearg.c:388:0
	ldrb	r0, [sp, #67]
	tst	r0, #1
	beq	.LBB33_112
@ BB#106:                               @ %if.then213
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 390 0                @ ../../lib/quotearg.c:390:0
.Ltmp318:
	ldrb	r0, [sp, #54]
	strb	r0, [sp, #55]
	b	.LBB33_115
.Ltmp319:
.LBB33_107:                             @ %cond.false223
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 396 0                @ ../../lib/quotearg.c:396:0
	ldr	r0, [r11, #-48]
	cmp	r0, #1
	bne	.LBB33_112
.LBB33_108:                             @ %sw.bb228
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 400 0                @ ../../lib/quotearg.c:400:0
	ldr	r0, [r11, #-64]
	cmp	r0, #0
	bne	.LBB33_112
.LBB33_109:                             @ %sw.bb233
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 416 0                @ ../../lib/quotearg.c:416:0
	ldr	r0, [r11, #-52]
.LBB33_110:                             @ %sw.bb122
                                        @   in Loop: Header=BB33_22 Depth=1
	cmp	r0, #2
	bne	.LBB33_112
@ BB#111:                               @ %sw.bb123
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 335 0                @ ../../lib/quotearg.c:335:0
.Ltmp320:
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_122
.Ltmp321:
.LBB33_112:                             @ %sw.epilog425
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 552 0                @ ../../lib/quotearg.c:552:0
	ldrb	r0, [sp, #67]
	tst	r0, #1
	ldrbeq	r0, [sp, #65]
	tsteq	r0, #1
	beq	.LBB33_117
@ BB#113:                               @ %land.lhs.true431
                                        @   in Loop: Header=BB33_22 Depth=1
	ldr	r0, [r11, #-60]
	cmp	r0, #0
	beq	.LBB33_117
@ BB#114:                               @ %land.lhs.true433
                                        @   in Loop: Header=BB33_22 Depth=1
	ldrb	r0, [sp, #55]
	ldr	r2, [r11, #-60]
	mov	r1, #28
	and	r1, r1, r0, lsr #3
	and	r0, r0, #31
	ldr	r1, [r2, r1]
	tst	r1, r4, lsl r0
	beq	.LBB33_117
.LBB33_115:                             @ %store_escape
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 558 0                @ ../../lib/quotearg.c:558:0
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_122
@ BB#116:                               @ %do.body444
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 560 0                @ ../../lib/quotearg.c:560:0
.Ltmp322:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	strblo	r9, [r0, r1]
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp323:
.LBB33_117:                             @ %do.body453
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 563 0                @ ../../lib/quotearg.c:563:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	ldrblo	r2, [sp, #55]
	strblo	r2, [r0, r1]
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
	b	.LBB33_21
.Ltmp324:
.LBB33_118:                             @ %if.else
                                        @   in Loop: Header=BB33_22 Depth=1
	.loc	13 327 0                @ ../../lib/quotearg.c:327:0
	ldrb	r0, [r11, #-56]
	tst	r0, #1
	bne	.LBB33_21
	b	.LBB33_112
.Ltmp325:
.LBB33_119:                             @ %for.end464
	.loc	13 566 0                @ ../../lib/quotearg.c:566:0
	ldr	r0, [r11, #-68]
	cmp	r0, #0
	bne	.LBB33_123
@ BB#120:                               @ %land.lhs.true467
	ldr	r0, [r11, #-52]
	cmp	r0, #2
	bne	.LBB33_123
@ BB#121:                               @ %land.lhs.true470
	ldrb	r0, [sp, #65]
	tst	r0, #1
	beq	.LBB33_123
.LBB33_122:                             @ %force_outer_quoting_style
	.loc	13 581 0                @ ../../lib/quotearg.c:581:0
	ldr	r5, [r11, #-56]
	ldr	r7, [r11, #-52]
	ldr	r3, [r11, #-48]
	ldr	r2, [r11, #-44]
	ldr	r1, [r11, #-40]
	ldr	r0, [r11, #-36]
	mov	r6, #0
	bic	r5, r5, #2
	str	r7, [sp]
	stmib	sp, {r5, r6}
	bl	quotearg_buffer_restyled
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB33_130
.LBB33_123:                             @ %if.end474
	.loc	13 570 0                @ ../../lib/quotearg.c:570:0
	ldr	r0, [sp, #72]
	cmp	r0, #0
	beq	.LBB33_129
@ BB#124:                               @ %land.lhs.true476
	ldrb	r0, [sp, #65]
	tst	r0, #1
	bne	.LBB33_129
	b	.LBB33_126
.LBB33_125:                             @ %for.inc491
                                        @   in Loop: Header=BB33_126 Depth=1
	.loc	13 572 0                @ ../../lib/quotearg.c:572:0
.Ltmp326:
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
.Ltmp327:
	.loc	13 571 0                @ ../../lib/quotearg.c:571:0
	ldr	r0, [sp, #72]
	add	r0, r0, #1
	str	r0, [sp, #72]
.LBB33_126:                             @ %for.cond479
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #72]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB33_129
@ BB#127:                               @ %do.body482
                                        @   in Loop: Header=BB33_126 Depth=1
	.loc	13 572 0                @ ../../lib/quotearg.c:572:0
.Ltmp328:
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	bhs	.LBB33_125
@ BB#128:                               @ %if.then485
                                        @   in Loop: Header=BB33_126 Depth=1
	ldr	r0, [sp, #72]
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-68]
	ldrb	r0, [r0]
	strb	r0, [r1, r2]
	b	.LBB33_125
.Ltmp329:
.LBB33_129:                             @ %if.end494
	.loc	13 574 0                @ ../../lib/quotearg.c:574:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	cmp	r1, r0
	.loc	13 575 0                @ ../../lib/quotearg.c:575:0
	ldrlo	r0, [r11, #-36]
	ldrlo	r1, [r11, #-68]
	movlo	r2, #0
	strblo	r2, [r0, r1]
	.loc	13 576 0                @ ../../lib/quotearg.c:576:0
	ldr	r0, [r11, #-68]
.LBB33_130:                             @ %force_outer_quoting_style
	.loc	13 581 0                @ ../../lib/quotearg.c:581:0
	str	r0, [r11, #-32]
	.loc	13 584 0                @ ../../lib/quotearg.c:584:0
	ldr	r0, [r11, #-32]
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB33_131:                             @ %sw.default
	.loc	13 293 0                @ ../../lib/quotearg.c:293:0
.Ltmp330:
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp331:
	.align	2
@ BB#132:
.LCPI33_0:
	.long	.L.str1071
.LCPI33_1:
	.long	.L.str970
.LCPI33_2:
	.long	.L.str869
.LCPI33_3:
	.long	939545025               @ 0x380051c1
.Ltmp332:
	.size	quotearg_buffer_restyled, .Ltmp332-quotearg_buffer_restyled
.Lfunc_end33:
	.file	34 "/usr/arm-linux-gnueabi/include/wchar.h"

	.align	2
	.type	quotearg_alloc,%function
quotearg_alloc:                         @ @quotearg_alloc
.Lfunc_begin34:
	.loc	13 612 0                @ ../../lib/quotearg.c:612:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r3, r2
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	mov	r2, #0
	str	r3, [sp, #4]
	.loc	13 613 0 prologue_end   @ ../../lib/quotearg.c:613:0
.Ltmp333:
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	quotearg_alloc_mem
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp334:
.Ltmp335:
	.size	quotearg_alloc, .Ltmp335-quotearg_alloc
.Lfunc_end34:

	.align	2
	.type	quotearg_alloc_mem,%function
quotearg_alloc_mem:                     @ @quotearg_alloc_mem
.Lfunc_begin35:
	.loc	13 625 0                @ ../../lib/quotearg.c:625:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #52
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	.loc	13 626 0 prologue_end   @ ../../lib/quotearg.c:626:0
.Ltmp336:
	cmp	r3, #0
	beq	.LBB35_2
@ BB#1:                                 @ %cond.true
	ldr	r0, [r11, #-20]
	b	.LBB35_3
.LBB35_2:
	ldr	r0, .LCPI35_0
	add	r0, r0, #80
.LBB35_3:                               @ %cond.end
.Ltmp337:
	@DEBUG_VALUE: e <- [sp+#28]+#0
	str	r0, [r11, #-24]
	.loc	13 627 0                @ ../../lib/quotearg.c:627:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	.loc	13 629 0                @ ../../lib/quotearg.c:629:0
	ldr	r1, [r11, #-16]
	.loc	13 627 0                @ ../../lib/quotearg.c:627:0
	str	r0, [sp, #28]
	.loc	13 629 0                @ ../../lib/quotearg.c:629:0
	ldr	r0, [r11, #-24]
.Ltmp338:
	@DEBUG_VALUE: flags <- [sp+#24]+#0
	cmp	r1, #0
	.loc	13 630 0                @ ../../lib/quotearg.c:630:0
	ldr	r1, [r11, #-24]
	.loc	13 629 0                @ ../../lib/quotearg.c:629:0
	ldr	r0, [r0, #4]
	orreq	r0, r0, #1
	str	r0, [sp, #24]
	.loc	13 630 0                @ ../../lib/quotearg.c:630:0
	ldr	r4, [r1], #8
	ldr	r3, [r11, #-12]
	ldr	r2, [r11, #-8]
.Ltmp339:
	@DEBUG_VALUE: bufsize <- [sp+#20]+#0
	str	r4, [sp]
	stmib	sp, {r0, r1}
	mov	r0, #0
	mov	r1, #0
	bl	quotearg_buffer_restyled
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	add	r0, r0, #1
	str	r0, [sp, #20]
.Ltmp340:
	@DEBUG_VALUE: buf <- [sp+#16]+#0
	.loc	13 632 0                @ ../../lib/quotearg.c:632:0
	bl	xcharalloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 633 0                @ ../../lib/quotearg.c:633:0
	ldr	r12, [r11, #-24]
	.loc	13 632 0                @ ../../lib/quotearg.c:632:0
	str	r0, [sp, #16]
	.loc	13 633 0                @ ../../lib/quotearg.c:633:0
	ldr	lr, [r12], #8
	ldr	r3, [r11, #-12]
	ldr	r2, [r11, #-8]
	ldr	r1, [sp, #20]
	ldr	r4, [sp, #24]
	str	lr, [sp]
	stmib	sp, {r4, r12}
	bl	quotearg_buffer_restyled
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 635 0                @ ../../lib/quotearg.c:635:0
	ldr	r4, [sp, #28]
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r4, [r0]
	.loc	13 636 0                @ ../../lib/quotearg.c:636:0
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	.loc	13 637 0                @ ../../lib/quotearg.c:637:0
	ldrne	r0, [sp, #20]
	ldrne	r1, [r11, #-16]
	subne	r0, r0, #1
	strne	r0, [r1]
	.loc	13 638 0                @ ../../lib/quotearg.c:638:0
	ldr	r0, [sp, #16]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp341:
	.align	2
@ BB#4:
.LCPI35_0:
	.long	_MergedGlobals1
.Ltmp342:
	.size	quotearg_alloc_mem, .Ltmp342-quotearg_alloc_mem
.Lfunc_end35:

	.align	2
	.type	quotearg_free,%function
quotearg_free:                          @ @quotearg_free
.Lfunc_begin36:
	.loc	13 657 0                @ ../../lib/quotearg.c:657:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #8
	.loc	13 658 0 prologue_end   @ ../../lib/quotearg.c:658:0
.Ltmp343:
	ldr	r4, .LCPI36_0
	ldr	r0, [r4, #4]
	str	r0, [sp, #4]
	mov	r0, #1
	b	.LBB36_2
.LBB36_1:                               @ %for.inc
                                        @   in Loop: Header=BB36_2 Depth=1
	.loc	13 661 0                @ ../../lib/quotearg.c:661:0
.Ltmp344:
	ldm	sp, {r0, r1}
	add	r0, r1, r0, lsl #3
	ldr	r0, [r0, #4]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 660 0                @ ../../lib/quotearg.c:660:0
	ldr	r0, [sp]
	add	r0, r0, #1
.LBB36_2:                               @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	str	r0, [sp]
	ldr	r0, [r4, #8]
	ldr	r1, [sp]
	cmp	r1, r0
	blo	.LBB36_1
.Ltmp345:
@ BB#3:                                 @ %for.end
	.loc	13 662 0                @ ../../lib/quotearg.c:662:0
	ldr	r0, .LCPI36_1
	add	r5, r0, #120
	ldr	r0, [sp, #4]
	ldr	r0, [r0, #4]
	cmp	r0, r5
	beq	.LBB36_5
@ BB#4:                                 @ %if.then
	.loc	13 664 0                @ ../../lib/quotearg.c:664:0
.Ltmp346:
	ldr	r0, [sp, #4]
	ldr	r0, [r0, #4]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 665 0                @ ../../lib/quotearg.c:665:0
	mov	r0, #256
	str	r0, [r4, #12]
	.loc	13 666 0                @ ../../lib/quotearg.c:666:0
	str	r5, [r4, #16]
.Ltmp347:
.LBB36_5:                               @ %if.end
	.loc	13 668 0                @ ../../lib/quotearg.c:668:0
	ldr	r0, [sp, #4]
	add	r5, r4, #12
	cmp	r0, r5
	beq	.LBB36_7
@ BB#6:                                 @ %if.then7
	.loc	13 670 0                @ ../../lib/quotearg.c:670:0
.Ltmp348:
	ldr	r0, [sp, #4]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 671 0                @ ../../lib/quotearg.c:671:0
	str	r5, [r4, #4]
.Ltmp349:
.LBB36_7:                               @ %if.end8
	mov	r0, #1
	.loc	13 673 0                @ ../../lib/quotearg.c:673:0
	str	r0, [r4, #8]
	.loc	13 674 0                @ ../../lib/quotearg.c:674:0
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp350:
	.align	2
@ BB#8:
.LCPI36_0:
	.long	_MergedGlobals
.LCPI36_1:
	.long	_MergedGlobals1
.Ltmp351:
	.size	quotearg_free, .Ltmp351-quotearg_free
.Lfunc_end36:

	.align	2
	.type	quotearg_n,%function
quotearg_n:                             @ @quotearg_n
.Lfunc_begin37:
	.loc	13 742 0                @ ../../lib/quotearg.c:742:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	.loc	13 743 0 prologue_end   @ ../../lib/quotearg.c:743:0
.Ltmp352:
	ldr	r2, .LCPI37_0
	str	r1, [sp]
	ldr	r0, [sp, #4]
	add	r3, r2, #80
	mvn	r2, #0
	bl	quotearg_n_options
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp353:
	.align	2
@ BB#1:
.LCPI37_0:
	.long	_MergedGlobals1
.Ltmp354:
	.size	quotearg_n, .Ltmp354-quotearg_n
.Lfunc_end37:

	.align	2
	.type	quotearg_n_options,%function
quotearg_n_options:                     @ @quotearg_n_options
.Lfunc_begin38:
	.loc	13 687 0                @ ../../lib/quotearg.c:687:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #68
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	.loc	13 688 0 prologue_end   @ ../../lib/quotearg.c:688:0
.Ltmp355:
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	.loc	13 691 0                @ ../../lib/quotearg.c:691:0
	ldr	r4, .LCPI38_0
	.loc	13 693 0                @ ../../lib/quotearg.c:693:0
	ldr	r1, [r11, #-8]
	.loc	13 688 0                @ ../../lib/quotearg.c:688:0
	str	r0, [r11, #-24]
	.loc	13 690 0                @ ../../lib/quotearg.c:690:0
	ldr	r0, [r11, #-8]
	.loc	13 693 0                @ ../../lib/quotearg.c:693:0
	cmp	r1, #0
	.loc	13 690 0                @ ../../lib/quotearg.c:690:0
	str	r0, [r11, #-28]
	.loc	13 691 0                @ ../../lib/quotearg.c:691:0
	ldr	r0, [r4, #4]
	str	r0, [r11, #-32]
	.loc	13 693 0                @ ../../lib/quotearg.c:693:0
	blt	.LBB38_9
@ BB#1:                                 @ %if.end
	.loc	13 696 0                @ ../../lib/quotearg.c:696:0
	ldr	r0, [r4, #8]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bhi	.LBB38_4
@ BB#2:                                 @ %if.then2
.Ltmp356:
	@DEBUG_VALUE: n1 <- [sp+#36]+#0
	.loc	13 703 0                @ ../../lib/quotearg.c:703:0
	ldr	r0, [r11, #-28]
	.loc	13 704 0                @ ../../lib/quotearg.c:704:0
	ldr	r2, [r11, #-32]
.Ltmp357:
	@DEBUG_VALUE: preallocated <- [sp+#35]+#0
	add	r1, r4, #12
	.loc	13 703 0                @ ../../lib/quotearg.c:703:0
	add	r0, r0, #1
	.loc	13 704 0                @ ../../lib/quotearg.c:704:0
	cmp	r2, r1
	mov	r1, #0
	.loc	13 703 0                @ ../../lib/quotearg.c:703:0
	str	r0, [sp, #36]
	.loc	13 704 0                @ ../../lib/quotearg.c:704:0
	moveq	r1, #1
	mov	r0, #0
	strb	r1, [sp, #35]
	.loc	13 706 0                @ ../../lib/quotearg.c:706:0
	ldr	r1, [sp, #36]
	cmp	r1, #536870912
	bhs	.LBB38_10
@ BB#3:                                 @ %if.end6
	.loc	13 709 0                @ ../../lib/quotearg.c:709:0
	ldrb	r1, [sp, #35]
	tst	r1, #1
	ldr	r1, [sp, #36]
	ldreq	r0, [r11, #-32]
	lsl	r1, r1, #3
	bl	xrealloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-32]
	str	r0, [r4, #4]
	.loc	13 710 0                @ ../../lib/quotearg.c:710:0
	ldrb	r0, [sp, #35]
	tst	r0, #1
	.loc	13 711 0                @ ../../lib/quotearg.c:711:0
	ldrne	r0, [r11, #-32]
	ldrne	r1, [r4, #12]
	ldrne	r2, [r4, #16]
	stmne	r0, {r1, r2}
	.loc	13 712 0                @ ../../lib/quotearg.c:712:0
	ldr	r1, [r4, #8]
	ldr	r0, [r11, #-32]
	ldr	r2, [sp, #36]
	add	r0, r0, r1, lsl #3
	sub	r1, r2, r1
	mov	r2, #0
	lsl	r1, r1, #3
	bl	__aeabi_memset
	.loc	13 713 0                @ ../../lib/quotearg.c:713:0
	ldr	r0, [sp, #36]
	str	r0, [r4, #8]
.Ltmp358:
.LBB38_4:                               @ %if.end12
	@DEBUG_VALUE: size <- [sp+#28]+#0
	.loc	13 717 0                @ ../../lib/quotearg.c:717:0
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-32]
	.loc	13 721 0                @ ../../lib/quotearg.c:721:0
	ldr	r4, [r11, #-20]
	.loc	13 717 0                @ ../../lib/quotearg.c:717:0
	ldr	r0, [r1, r0, lsl #3]
	.loc	13 718 0                @ ../../lib/quotearg.c:718:0
	ldr	r1, [r11, #-32]
	.loc	13 717 0                @ ../../lib/quotearg.c:717:0
	str	r0, [sp, #28]
	.loc	13 718 0                @ ../../lib/quotearg.c:718:0
	ldr	r0, [r11, #-8]
.Ltmp359:
	@DEBUG_VALUE: val <- [sp+#24]+#0
	add	r0, r1, r0, lsl #3
	ldr	r0, [r0, #4]
	str	r0, [sp, #24]
	.loc	13 720 0                @ ../../lib/quotearg.c:720:0
	ldr	r0, [r11, #-20]
.Ltmp360:
	@DEBUG_VALUE: flags <- [sp+#20]+#0
	ldr	r0, [r0, #4]
	orr	r12, r0, #1
	str	r12, [sp, #20]
	.loc	13 721 0                @ ../../lib/quotearg.c:721:0
	ldr	lr, [r4], #8
	ldr	r3, [r11, #-16]
	ldr	r2, [r11, #-12]
	ldr	r1, [sp, #28]
	ldr	r0, [sp, #24]
.Ltmp361:
	@DEBUG_VALUE: qsize <- [sp+#16]+#0
	str	lr, [sp]
	str	r12, [sp, #4]
	str	r4, [sp, #8]
	bl	quotearg_buffer_restyled
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 725 0                @ ../../lib/quotearg.c:725:0
	ldr	r1, [sp, #28]
	.loc	13 721 0                @ ../../lib/quotearg.c:721:0
	str	r0, [sp, #16]
	.loc	13 725 0                @ ../../lib/quotearg.c:725:0
	cmp	r1, r0
	bhi	.LBB38_8
@ BB#5:                                 @ %if.then19
	.loc	13 727 0                @ ../../lib/quotearg.c:727:0
.Ltmp362:
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-8]
	add	r0, r0, #1
	str	r0, [sp, #28]
	str	r0, [r1, r2, lsl #3]
	.loc	13 728 0                @ ../../lib/quotearg.c:728:0
	ldr	r0, .LCPI38_1
	ldr	r1, [sp, #24]
	add	r0, r0, #120
	cmp	r1, r0
	beq	.LBB38_7
@ BB#6:                                 @ %if.then24
	.loc	13 729 0                @ ../../lib/quotearg.c:729:0
	ldr	r0, [sp, #24]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB38_7:                               @ %if.end25
	.loc	13 730 0                @ ../../lib/quotearg.c:730:0
	ldr	r0, [sp, #28]
	bl	xcharalloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-32]
	str	r0, [sp, #24]
	add	r1, r2, r1, lsl #3
	str	r0, [r1, #4]
	.loc	13 731 0                @ ../../lib/quotearg.c:731:0
	ldr	r4, [r11, #-20]
	ldr	r12, [r4], #8
	ldr	r3, [r11, #-16]
	ldr	r2, [r11, #-12]
	ldr	r1, [sp, #28]
	ldr	r0, [sp, #24]
	ldr	lr, [sp, #20]
	stm	sp, {r12, lr}
	str	r4, [sp, #8]
	bl	quotearg_buffer_restyled
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 733 0                @ ../../lib/quotearg.c:733:0
.Ltmp363:
.LBB38_8:                               @ %if.end33
	.loc	13 735 0                @ ../../lib/quotearg.c:735:0
	ldr	r4, [r11, #-24]
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r4, [r0]
	.loc	13 736 0                @ ../../lib/quotearg.c:736:0
	ldr	r0, [sp, #24]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.Ltmp364:
.LBB38_9:                               @ %if.then
	.loc	13 694 0                @ ../../lib/quotearg.c:694:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB38_10:                              @ %if.then5
	.loc	13 707 0                @ ../../lib/quotearg.c:707:0
.Ltmp365:
	bl	xalloc_die
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp366:
	.align	2
@ BB#11:
.LCPI38_0:
	.long	_MergedGlobals
.LCPI38_1:
	.long	_MergedGlobals1
.Ltmp367:
	.size	quotearg_n_options, .Ltmp367-quotearg_n_options
.Lfunc_end38:

	.align	2
	.type	quotearg_n_mem,%function
quotearg_n_mem:                         @ @quotearg_n_mem
.Lfunc_begin39:
	.loc	13 748 0                @ ../../lib/quotearg.c:748:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	.loc	13 749 0 prologue_end   @ ../../lib/quotearg.c:749:0
.Ltmp368:
	ldr	r3, .LCPI39_0
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	add	r3, r3, #80
	bl	quotearg_n_options
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp369:
	.align	2
@ BB#1:
.LCPI39_0:
	.long	_MergedGlobals1
.Ltmp370:
	.size	quotearg_n_mem, .Ltmp370-quotearg_n_mem
.Lfunc_end39:

	.align	2
	.type	quotearg,%function
quotearg:                               @ @quotearg
.Lfunc_begin40:
	.loc	13 754 0                @ ../../lib/quotearg.c:754:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #4]
	.loc	13 755 0 prologue_end   @ ../../lib/quotearg.c:755:0
.Ltmp371:
	bl	quotearg_n
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp372:
.Ltmp373:
	.size	quotearg, .Ltmp373-quotearg
.Lfunc_end40:

	.align	2
	.type	quotearg_mem,%function
quotearg_mem:                           @ @quotearg_mem
.Lfunc_begin41:
	.loc	13 760 0                @ ../../lib/quotearg.c:760:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r2, r1
	str	r0, [sp, #4]
	mov	r0, #0
	str	r2, [sp]
	.loc	13 761 0 prologue_end   @ ../../lib/quotearg.c:761:0
.Ltmp374:
	ldr	r1, [sp, #4]
	bl	quotearg_n_mem
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp375:
.Ltmp376:
	.size	quotearg_mem, .Ltmp376-quotearg_mem
.Lfunc_end41:

	.align	2
	.type	quotearg_n_style,%function
quotearg_n_style:                       @ @quotearg_n_style
.Lfunc_begin42:
	.loc	13 766 0                @ ../../lib/quotearg.c:766:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #52
	str	r1, [r11, #-12]
	mov	r4, sp
	str	r0, [r11, #-8]
	str	r2, [r11, #-16]
	.loc	13 767 0 prologue_end   @ ../../lib/quotearg.c:767:0
.Ltmp377:
	ldr	r1, [r11, #-12]
	mov	r0, r4
	bl	quoting_options_from_style
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 768 0                @ ../../lib/quotearg.c:768:0
	ldr	r1, [r11, #-16]
	ldr	r0, [r11, #-8]
	mvn	r2, #0
	mov	r3, r4
	bl	quotearg_n_options
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r4, r11, lr}
	sub	sp, r11, #4
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp378:
.Ltmp379:
	.size	quotearg_n_style, .Ltmp379-quotearg_n_style
.Lfunc_end42:

	.align	2
	.type	quoting_options_from_style,%function
quoting_options_from_style:             @ @quoting_options_from_style
.Lfunc_begin43:
	.loc	13 169 0                @ ../../lib/quotearg.c:169:0
@ BB#0:                                 @ %entry
	push	{r4, lr}
	sub	sp, sp, #48
	str	r1, [sp, #44]
	.loc	13 171 0 prologue_end   @ ../../lib/quotearg.c:171:0
.Ltmp380:
	str	r1, [sp]
	mov	r1, #0
	.loc	13 174 0                @ ../../lib/quotearg.c:174:0
	add	r4, sp, #12
	.loc	13 172 0                @ ../../lib/quotearg.c:172:0
	str	r1, [sp, #4]
	.loc	13 173 0                @ ../../lib/quotearg.c:173:0
	str	r1, [sp, #36]
	str	r1, [sp, #32]
	str	r1, [sp, #28]
	str	r1, [sp, #24]
	str	r1, [sp, #20]
	str	r1, [sp, #16]
	str	r1, [sp, #12]
	str	r1, [sp, #8]
	.loc	13 174 0                @ ../../lib/quotearg.c:174:0
	ldm	sp, {r12, lr}
	ldr	r3, [sp, #8]
	ldm	r4, {r1, r2, r4}
	str	r4, [r0, #20]
	str	r2, [r0, #16]
	str	r1, [r0, #12]
	str	r3, [r0, #8]
	stm	r0, {r12, lr}
	ldr	r3, [sp, #32]
	ldr	r12, [sp, #24]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #36]
	str	r3, [r0, #32]
	str	r1, [r0, #36]
	str	r2, [r0, #28]
	str	r12, [r0, #24]
	add	sp, sp, #48
	pop	{r4, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp381:
.Ltmp382:
	.size	quoting_options_from_style, .Ltmp382-quoting_options_from_style
.Lfunc_end43:

	.align	2
	.type	quotearg_n_style_mem,%function
quotearg_n_style_mem:                   @ @quotearg_n_style_mem
.Lfunc_begin44:
	.loc	13 774 0                @ ../../lib/quotearg.c:774:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #60
	str	r1, [r11, #-12]
	mov	r4, sp
	str	r0, [r11, #-8]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	.loc	13 775 0 prologue_end   @ ../../lib/quotearg.c:775:0
.Ltmp383:
	ldr	r1, [r11, #-12]
	mov	r0, r4
	bl	quoting_options_from_style
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 776 0                @ ../../lib/quotearg.c:776:0
	ldr	r2, [r11, #-20]
	ldr	r1, [r11, #-16]
	ldr	r0, [r11, #-8]
	mov	r3, r4
	bl	quotearg_n_options
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r4, r11, lr}
	sub	sp, r11, #4
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp384:
.Ltmp385:
	.size	quotearg_n_style_mem, .Ltmp385-quotearg_n_style_mem
.Lfunc_end44:

	.align	2
	.type	quotearg_style,%function
quotearg_style:                         @ @quotearg_style
.Lfunc_begin45:
	.loc	13 781 0                @ ../../lib/quotearg.c:781:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r2, r1
	str	r0, [sp, #4]
	mov	r0, #0
	str	r2, [sp]
	.loc	13 782 0 prologue_end   @ ../../lib/quotearg.c:782:0
.Ltmp386:
	ldr	r1, [sp, #4]
	bl	quotearg_n_style
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp387:
.Ltmp388:
	.size	quotearg_style, .Ltmp388-quotearg_style
.Lfunc_end45:

	.align	2
	.type	quotearg_style_mem,%function
quotearg_style_mem:                     @ @quotearg_style_mem
.Lfunc_begin46:
	.loc	13 787 0                @ ../../lib/quotearg.c:787:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r3, r2
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	mov	r0, #0
	str	r3, [sp, #4]
	.loc	13 788 0 prologue_end   @ ../../lib/quotearg.c:788:0
.Ltmp389:
	ldr	r2, [sp, #8]
	ldr	r1, [r11, #-4]
	bl	quotearg_n_style_mem
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp390:
.Ltmp391:
	.size	quotearg_style_mem, .Ltmp391-quotearg_style_mem
.Lfunc_end46:

	.align	2
	.type	quotearg_char_mem,%function
quotearg_char_mem:                      @ @quotearg_char_mem
.Lfunc_begin47:
	.loc	13 793 0                @ ../../lib/quotearg.c:793:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #52
	str	r0, [r11, #-8]
	.loc	13 795 0 prologue_end   @ ../../lib/quotearg.c:795:0
.Ltmp392:
	ldr	r0, .LCPI47_0
	str	r1, [r11, #-12]
	strb	r2, [r11, #-13]
	ldr	r2, [r0, #100]
	ldr	r12, [r0, #80]
	ldr	lr, [r0, #84]
	ldr	r3, [r0, #88]
	ldr	r4, [r0, #92]
	ldr	r1, [r0, #96]
	str	r2, [sp, #20]
	str	r1, [sp, #16]
	str	r4, [sp, #12]
	str	r3, [sp, #8]
	stm	sp, {r12, lr}
	add	r3, r0, #104
	add	r4, sp, #24
	ldm	r3, {r1, r2, r3}
	ldr	r0, [r0, #116]
	str	r0, [sp, #36]
	stm	r4, {r1, r2, r3}
	mov	r4, sp
	mov	r2, #1
	.loc	13 796 0                @ ../../lib/quotearg.c:796:0
	ldrb	r1, [r11, #-13]
	mov	r0, r4
	bl	set_char_quoting
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	13 797 0                @ ../../lib/quotearg.c:797:0
	ldr	r2, [r11, #-12]
	ldr	r1, [r11, #-8]
	mov	r0, #0
	mov	r3, r4
	bl	quotearg_n_options
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r4, r11, lr}
	sub	sp, r11, #4
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp393:
	.align	2
@ BB#1:
.LCPI47_0:
	.long	_MergedGlobals1
.Ltmp394:
	.size	quotearg_char_mem, .Ltmp394-quotearg_char_mem
.Lfunc_end47:

	.align	2
	.type	quotearg_char,%function
quotearg_char:                          @ @quotearg_char
.Lfunc_begin48:
	.loc	13 802 0                @ ../../lib/quotearg.c:802:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	strb	r1, [sp, #3]
	mvn	r1, #0
	.loc	13 803 0 prologue_end   @ ../../lib/quotearg.c:803:0
.Ltmp395:
	ldrb	r2, [sp, #3]
	ldr	r0, [sp, #4]
	bl	quotearg_char_mem
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp396:
.Ltmp397:
	.size	quotearg_char, .Ltmp397-quotearg_char
.Lfunc_end48:

	.align	2
	.type	quotearg_colon,%function
quotearg_colon:                         @ @quotearg_colon
.Lfunc_begin49:
	.loc	13 808 0                @ ../../lib/quotearg.c:808:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, #58
	str	r0, [sp, #4]
	.loc	13 809 0 prologue_end   @ ../../lib/quotearg.c:809:0
.Ltmp398:
	bl	quotearg_char
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp399:
.Ltmp400:
	.size	quotearg_colon, .Ltmp400-quotearg_colon
.Lfunc_end49:

	.align	2
	.type	quotearg_colon_mem,%function
quotearg_colon_mem:                     @ @quotearg_colon_mem
.Lfunc_begin50:
	.loc	13 814 0                @ ../../lib/quotearg.c:814:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mov	r2, #58
	str	r1, [sp]
	.loc	13 815 0 prologue_end   @ ../../lib/quotearg.c:815:0
.Ltmp401:
	ldr	r0, [sp, #4]
	bl	quotearg_char_mem
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp402:
.Ltmp403:
	.size	quotearg_colon_mem, .Ltmp403-quotearg_colon_mem
.Lfunc_end50:

	.align	2
	.type	gettext_quote,%function
gettext_quote:                          @ @gettext_quote
.Lfunc_begin51:
	.loc	13 181 0                @ ../../lib/quotearg.c:181:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	.loc	13 182 0 prologue_end   @ ../../lib/quotearg.c:182:0
.Ltmp404:
	ldr	r0, [sp, #8]
	.loc	13 183 0                @ ../../lib/quotearg.c:183:0
	ldr	r1, [sp, #8]
	.loc	13 182 0                @ ../../lib/quotearg.c:182:0
	str	r0, [sp]
	.loc	13 183 0                @ ../../lib/quotearg.c:183:0
	cmp	r0, r1
	bne	.LBB51_2
@ BB#1:                                 @ %land.lhs.true
	ldr	r0, [sp, #4]
	cmp	r0, #7
	.loc	13 184 0                @ ../../lib/quotearg.c:184:0
	ldreq	r0, .LCPI51_0
	streq	r0, [sp]
.LBB51_2:                               @ %if.end
	.loc	13 185 0                @ ../../lib/quotearg.c:185:0
	ldr	r0, [sp]
	add	sp, sp, #12
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp405:
	.align	2
@ BB#3:
.LCPI51_0:
	.long	.L.str869
.Ltmp406:
	.size	gettext_quote, .Ltmp406-gettext_quote
.Lfunc_end51:

	.align	2
	.type	rpl_vfprintf,%function
rpl_vfprintf:                           @ @rpl_vfprintf
.Lfunc_begin52:
	.loc	14 37 0                 @ ../../lib/vfprintf.c:37:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #1012
	sub	sp, sp, #1024
	str	r1, [r11, #-24]
	str	r2, [r11, #-32]
	str	r0, [r11, #-20]
	mov	r0, #2000
	add	r4, sp, #16
	add	r1, sp, #4
	.loc	14 43 0 prologue_end    @ ../../lib/vfprintf.c:43:0
.Ltmp407:
	ldr	r3, [r11, #-32]
	ldr	r2, [r11, #-24]
	.loc	14 41 0                 @ ../../lib/vfprintf.c:41:0
	str	r0, [sp, #4]
	.loc	14 43 0                 @ ../../lib/vfprintf.c:43:0
	mov	r0, r4
	bl	vasnprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #12]
	.loc	14 44 0                 @ ../../lib/vfprintf.c:44:0
	ldr	r0, [sp, #4]
	.loc	14 46 0                 @ ../../lib/vfprintf.c:46:0
	ldr	r1, [sp, #12]
	.loc	14 44 0                 @ ../../lib/vfprintf.c:44:0
	str	r0, [sp, #8]
	.loc	14 46 0                 @ ../../lib/vfprintf.c:46:0
	cmp	r1, #0
	beq	.LBB52_6
@ BB#1:                                 @ %if.end
	.loc	14 52 0                 @ ../../lib/vfprintf.c:52:0
	ldr	r3, [r11, #-20]
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #12]
	mov	r1, #1
	bl	fwrite
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bhs	.LBB52_4
@ BB#2:                                 @ %if.then2
	.loc	14 54 0                 @ ../../lib/vfprintf.c:54:0
.Ltmp408:
	ldr	r0, [sp, #12]
	cmp	r0, r4
	beq	.LBB52_7
@ BB#3:                                 @ %if.then5
.Ltmp409:
	@DEBUG_VALUE: saved_errno <- [sp+#0]+#0
	.loc	14 56 0                 @ ../../lib/vfprintf.c:56:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	str	r0, [sp]
	.loc	14 57 0                 @ ../../lib/vfprintf.c:57:0
	ldr	r0, [sp, #12]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	14 58 0                 @ ../../lib/vfprintf.c:58:0
	ldr	r4, [sp]
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r4, [r0]
	b	.LBB52_7
.Ltmp410:
.LBB52_4:                               @ %if.end9
	.loc	14 63 0                 @ ../../lib/vfprintf.c:63:0
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bge	.LBB52_9
@ BB#5:                                 @ %if.then11
	.loc	14 65 0                 @ ../../lib/vfprintf.c:65:0
.Ltmp411:
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #75
	str	r1, [r0]
.Ltmp412:
.LBB52_6:                               @ %if.then
	.loc	14 48 0                 @ ../../lib/vfprintf.c:48:0
	ldr	r0, [r11, #-20]
	bl	fseterr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	14 49 0                 @ ../../lib/vfprintf.c:49:0
	b	.LBB52_7
.Ltmp413:
.LBB52_7:                               @ %if.end8
	mvn	r0, #0
.LBB52_8:                               @ %if.end13
	.loc	14 70 0                 @ ../../lib/vfprintf.c:70:0
	str	r0, [r11, #-16]
	.loc	14 71 0                 @ ../../lib/vfprintf.c:71:0
	ldr	r0, [r11, #-16]
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB52_9:                               @ %if.end13
	.loc	14 70 0                 @ ../../lib/vfprintf.c:70:0
	ldr	r0, [sp, #8]
	b	.LBB52_8
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp414:
.Ltmp415:
	.size	rpl_vfprintf, .Ltmp415-rpl_vfprintf
.Lfunc_end52:

	.align	2
	.type	xnmalloc,%function
xnmalloc:                               @ @xnmalloc
.Lfunc_begin53:
	.loc	16 113 0                @ ../../lib/xalloc.h:113:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mvn	r0, #0
	str	r1, [sp]
	.loc	16 114 0 prologue_end   @ ../../lib/xalloc.h:114:0
.Ltmp416:
	bl	__aeabi_uidiv
	ldr	r1, [sp, #4]
	cmp	r0, r1
	blo	.LBB53_2
@ BB#1:                                 @ %if.end
	.loc	16 116 0                @ ../../lib/xalloc.h:116:0
	ldm	sp, {r1, r2}
	mul	r0, r2, r1
	bl	xmalloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
.LBB53_2:                               @ %if.then
	.loc	16 115 0                @ ../../lib/xalloc.h:115:0
	bl	xalloc_die
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp417:
.Ltmp418:
	.size	xnmalloc, .Ltmp418-xnmalloc
.Lfunc_end53:

	.align	2
	.type	xmalloc,%function
xmalloc:                                @ @xmalloc
.Lfunc_begin54:
	.loc	15 48 0                 @ ../../lib/xmalloc.c:48:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	.loc	15 49 0 prologue_end    @ ../../lib/xmalloc.c:49:0
.Ltmp419:
	bl	malloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp]
	.loc	15 50 0                 @ ../../lib/xmalloc.c:50:0
	cmp	r0, #0
	bne	.LBB54_2
@ BB#1:                                 @ %land.lhs.true
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.LBB54_3
.LBB54_2:                               @ %if.end
	.loc	15 52 0                 @ ../../lib/xmalloc.c:52:0
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB54_3:                               @ %if.then
	.loc	15 51 0                 @ ../../lib/xmalloc.c:51:0
	bl	xalloc_die
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp420:
.Ltmp421:
	.size	xmalloc, .Ltmp421-xmalloc
.Lfunc_end54:

	.align	2
	.type	xnrealloc,%function
xnrealloc:                              @ @xnrealloc
.Lfunc_begin55:
	.loc	16 124 0                @ ../../lib/xalloc.h:124:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	mvn	r0, #0
	.loc	16 125 0 prologue_end   @ ../../lib/xalloc.h:125:0
.Ltmp422:
	mov	r1, r2
	str	r2, [sp, #4]
	bl	__aeabi_uidiv
	ldr	r1, [sp, #8]
	cmp	r0, r1
	blo	.LBB55_2
@ BB#1:                                 @ %if.end
	.loc	16 127 0                @ ../../lib/xalloc.h:127:0
	ldmib	sp, {r0, r2}
	mul	r1, r2, r0
	ldr	r0, [r11, #-4]
	bl	xrealloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
.LBB55_2:                               @ %if.then
	.loc	16 126 0                @ ../../lib/xalloc.h:126:0
	bl	xalloc_die
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp423:
.Ltmp424:
	.size	xnrealloc, .Ltmp424-xnrealloc
.Lfunc_end55:

	.align	2
	.type	xrealloc,%function
xrealloc:                               @ @xrealloc
.Lfunc_begin56:
	.loc	15 60 0                 @ ../../lib/xmalloc.c:60:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc	15 61 0 prologue_end    @ ../../lib/xmalloc.c:61:0
.Ltmp425:
	ldr	r0, [sp, #4]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #4]
	.loc	15 62 0                 @ ../../lib/xmalloc.c:62:0
	cmp	r0, #0
	bne	.LBB56_2
@ BB#1:                                 @ %land.lhs.true
	ldr	r0, [sp]
	cmp	r0, #0
	bne	.LBB56_3
.LBB56_2:                               @ %if.end
	.loc	15 64 0                 @ ../../lib/xmalloc.c:64:0
	ldr	r0, [sp, #4]
	mov	sp, r11
	pop	{r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB56_3:                               @ %if.then
	.loc	15 63 0                 @ ../../lib/xmalloc.c:63:0
	bl	xalloc_die
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp426:
.Ltmp427:
	.size	xrealloc, .Ltmp427-xrealloc
.Lfunc_end56:

	.align	2
	.type	x2nrealloc,%function
x2nrealloc:                             @ @x2nrealloc
.Lfunc_begin57:
	.loc	16 187 0                @ ../../lib/xalloc.h:187:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r1, [sp, #8]
	str	r0, [r11, #-4]
	str	r2, [sp, #4]
	.loc	16 188 0 prologue_end   @ ../../lib/xalloc.h:188:0
.Ltmp428:
	ldr	r0, [sp, #8]
	.loc	16 190 0                @ ../../lib/xalloc.h:190:0
	ldr	r1, [r11, #-4]
	.loc	16 188 0                @ ../../lib/xalloc.h:188:0
	ldr	r0, [r0]
	.loc	16 190 0                @ ../../lib/xalloc.h:190:0
	cmp	r1, #0
	.loc	16 188 0                @ ../../lib/xalloc.h:188:0
	str	r0, [sp]
	beq	.LBB57_3
@ BB#1:                                 @ %if.else
	ldr	r0, .LCPI57_0
	.loc	16 210 0                @ ../../lib/xalloc.h:210:0
.Ltmp429:
	ldr	r1, [sp, #4]
	bl	__aeabi_uidiv
	ldr	r1, [sp]
	cmp	r0, r1
	bls	.LBB57_7
@ BB#2:                                 @ %if.end6
	.loc	16 212 0                @ ../../lib/xalloc.h:212:0
	ldr	r0, [sp]
	add	r1, r0, #1
	add	r0, r0, r1, lsr #1
	b	.LBB57_5
.Ltmp430:
.LBB57_3:                               @ %if.then
	.loc	16 192 0                @ ../../lib/xalloc.h:192:0
	ldr	r0, [sp]
	cmp	r0, #0
	bne	.LBB57_6
@ BB#4:                                 @ %if.then2
	.loc	16 200 0                @ ../../lib/xalloc.h:200:0
.Ltmp431:
	ldr	r1, [sp, #4]
	mov	r0, #64
	bl	__aeabi_uidiv
	.loc	16 201 0                @ ../../lib/xalloc.h:201:0
	cmp	r0, #0
	.loc	16 200 0                @ ../../lib/xalloc.h:200:0
	str	r0, [sp]
	.loc	16 201 0                @ ../../lib/xalloc.h:201:0
	addeq	r0, r0, #1
.Ltmp432:
.LBB57_5:                               @ %if.end6
	.loc	16 212 0                @ ../../lib/xalloc.h:212:0
	str	r0, [sp]
.Ltmp433:
.LBB57_6:                               @ %if.end10
	.loc	16 215 0                @ ../../lib/xalloc.h:215:0
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	str	r1, [r0]
	.loc	16 216 0                @ ../../lib/xalloc.h:216:0
	ldr	r0, [sp, #4]
	ldr	r2, [sp]
	mul	r1, r2, r0
	ldr	r0, [r11, #-4]
	bl	xrealloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
.LBB57_7:                               @ %if.then5
	.loc	16 211 0                @ ../../lib/xalloc.h:211:0
.Ltmp434:
	bl	xalloc_die
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp435:
	.align	2
@ BB#8:
.LCPI57_0:
	.long	2863311530              @ 0xaaaaaaaa
.Ltmp436:
	.size	x2nrealloc, .Ltmp436-x2nrealloc
.Lfunc_end57:

	.align	2
	.type	xcharalloc,%function
xcharalloc:                             @ @xcharalloc
.Lfunc_begin58:
	.loc	16 224 0                @ ../../lib/xalloc.h:224:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	.loc	16 225 0 prologue_end   @ ../../lib/xalloc.h:225:0
.Ltmp437:
	bl	xmalloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp438:
.Ltmp439:
	.size	xcharalloc, .Ltmp439-xcharalloc
.Lfunc_end58:

	.align	2
	.type	x2realloc,%function
x2realloc:                              @ @x2realloc
.Lfunc_begin59:
	.loc	15 75 0                 @ ../../lib/xmalloc.c:75:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mov	r2, #1
	str	r1, [sp]
	.loc	15 76 0 prologue_end    @ ../../lib/xmalloc.c:76:0
.Ltmp440:
	ldr	r0, [sp, #4]
	bl	x2nrealloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp441:
.Ltmp442:
	.size	x2realloc, .Ltmp442-x2realloc
.Lfunc_end59:

	.align	2
	.type	xzalloc,%function
xzalloc:                                @ @xzalloc
.Lfunc_begin60:
	.loc	15 85 0                 @ ../../lib/xmalloc.c:85:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	str	r0, [sp]
	.loc	15 86 0 prologue_end    @ ../../lib/xmalloc.c:86:0
.Ltmp443:
	bl	xmalloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r4, r0
	ldr	r1, [sp]
	mov	r2, #0
	bl	__aeabi_memset
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp444:
.Ltmp445:
	.size	xzalloc, .Ltmp445-xzalloc
.Lfunc_end60:

	.align	2
	.type	xcalloc,%function
xcalloc:                                @ @xcalloc
.Lfunc_begin61:
	.loc	15 94 0                 @ ../../lib/xmalloc.c:94:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	.loc	15 101 0 prologue_end   @ ../../lib/xmalloc.c:101:0
.Ltmp446:
	ldr	r0, [r11, #-4]
	bl	calloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB61_2
@ BB#1:                                 @ %if.end
	.loc	15 103 0                @ ../../lib/xmalloc.c:103:0
	ldr	r0, [sp, #4]
	mov	sp, r11
	pop	{r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB61_2:                               @ %if.then
	.loc	15 102 0                @ ../../lib/xmalloc.c:102:0
	bl	xalloc_die
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp447:
.Ltmp448:
	.size	xcalloc, .Ltmp448-xcalloc
.Lfunc_end61:

	.align	2
	.type	xmemdup,%function
xmemdup:                                @ @xmemdup
.Lfunc_begin62:
	.loc	15 112 0                @ ../../lib/xmalloc.c:112:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	.loc	15 113 0 prologue_end   @ ../../lib/xmalloc.c:113:0
.Ltmp449:
	mov	r0, r1
	str	r1, [sp, #4]
	bl	xmalloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r4, r0
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	bl	__aeabi_memcpy
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp450:
.Ltmp451:
	.size	xmemdup, .Ltmp451-xmemdup
.Lfunc_end62:

	.align	2
	.type	xstrdup,%function
xstrdup:                                @ @xstrdup
.Lfunc_begin63:
	.loc	15 120 0                @ ../../lib/xmalloc.c:120:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	.loc	15 121 0 prologue_end   @ ../../lib/xmalloc.c:121:0
.Ltmp452:
	bl	strlen
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	add	r1, r0, #1
	mov	r0, r4
	bl	xmemdup
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r4, r11, lr}
	sub	sp, r11, #4
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp453:
.Ltmp454:
	.size	xstrdup, .Ltmp454-xstrdup
.Lfunc_end63:

	.align	2
	.type	xstrtoul,%function
xstrtoul:                               @ @xstrtoul
.Lfunc_begin64:
	.loc	18 77 0                 @ ../../lib/xstrtol.c:77:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #60
	str	r0, [r11, #-12]
	ldr	r0, [r11, #8]
	str	r2, [r11, #-20]
	str	r1, [r11, #-16]
	str	r3, [r11, #-24]
	.loc	18 83 0 prologue_end    @ ../../lib/xstrtol.c:83:0
.Ltmp455:
	ldr	r1, [r11, #-20]
	str	r0, [r11, #-28]
	mov	r0, #0
	.loc	18 81 0                 @ ../../lib/xstrtol.c:81:0
	str	r0, [sp, #20]
	.loc	18 83 0                 @ ../../lib/xstrtol.c:83:0
	cmp	r1, #0
	blt	.LBB64_53
@ BB#1:                                 @ %land.lhs.true
	ldr	r0, [r11, #-20]
	cmp	r0, #37
	bge	.LBB64_53
@ BB#2:                                 @ %cond.end
	.loc	18 85 0                 @ ../../lib/xstrtol.c:85:0
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	beq	.LBB64_4
@ BB#3:                                 @ %cond.true3
	ldr	r0, [r11, #-16]
	b	.LBB64_5
.LBB64_4:
	add	r0, sp, #32
.LBB64_5:                               @ %cond.end5
.Ltmp456:
	@DEBUG_VALUE: q <- [sp+#16]+#0
	str	r0, [sp, #28]
	.loc	18 89 0                 @ ../../lib/xstrtol.c:89:0
.Ltmp457:
	ldr	r0, [r11, #-12]
	str	r0, [sp, #16]
	.loc	18 90 0                 @ ../../lib/xstrtol.c:90:0
	ldrb	r0, [r0]
	b	.LBB64_7
.LBB64_6:                               @ %while.body
                                        @   in Loop: Header=BB64_7 Depth=1
	.loc	18 92 0                 @ ../../lib/xstrtol.c:92:0
	ldr	r0, [sp, #16]
	add	r1, r0, #1
	str	r1, [sp, #16]
	ldrb	r0, [r0, #1]
.LBB64_7:                               @ %cond.end5
                                        @ =>This Inner Loop Header: Depth=1
.Ltmp458:
	@DEBUG_VALUE: ch <- [sp+#15]+#0
	.loc	18 90 0                 @ ../../lib/xstrtol.c:90:0
	strb	r0, [sp, #15]
	.loc	18 91 0                 @ ../../lib/xstrtol.c:91:0
	ldrb	r4, [sp, #15]
	bl	__ctype_b_loc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	add	r0, r0, r4, lsl #1
	ldrb	r0, [r0, #1]
	tst	r0, #32
	bne	.LBB64_6
@ BB#8:                                 @ %while.end
	.loc	18 93 0                 @ ../../lib/xstrtol.c:93:0
	ldrb	r0, [sp, #15]
	cmp	r0, #45
	beq	.LBB64_23
.Ltmp459:
@ BB#9:                                 @ %if.end
	.loc	18 97 0                 @ ../../lib/xstrtol.c:97:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #0
	str	r1, [r0]
	.loc	18 98 0                 @ ../../lib/xstrtol.c:98:0
	ldr	r2, [r11, #-20]
	ldr	r1, [sp, #28]
	ldr	r0, [r11, #-12]
	bl	strtoul
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #24]
	.loc	18 100 0                @ ../../lib/xstrtol.c:100:0
	ldr	r0, [sp, #28]
	ldr	r1, [r11, #-12]
	ldr	r0, [r0]
	cmp	r0, r1
	beq	.LBB64_13
@ BB#10:                                @ %if.else28
	.loc	18 109 0                @ ../../lib/xstrtol.c:109:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB64_17
@ BB#11:                                @ %if.then32
	.loc	18 111 0                @ ../../lib/xstrtol.c:111:0
.Ltmp460:
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	cmp	r0, #34
	bne	.LBB64_23
@ BB#12:                                @ %if.end37
	mov	r0, #1
	.loc	18 113 0                @ ../../lib/xstrtol.c:113:0
	str	r0, [sp, #20]
	b	.LBB64_17
.Ltmp461:
.LBB64_13:                              @ %if.then17
	.loc	18 104 0                @ ../../lib/xstrtol.c:104:0
	ldr	r0, [r11, #-28]
	cmp	r0, #0
	beq	.LBB64_23
@ BB#14:                                @ %land.lhs.true19
	ldr	r0, [sp, #28]
	ldr	r0, [r0]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB64_23
@ BB#15:                                @ %land.lhs.true22
	ldr	r0, [sp, #28]
	ldr	r0, [r0]
	ldrb	r1, [r0]
	ldr	r0, [r11, #-28]
	bl	strchr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	beq	.LBB64_23
@ BB#16:                                @ %if.then26
	mov	r0, #1
	.loc	18 105 0                @ ../../lib/xstrtol.c:105:0
	str	r0, [sp, #24]
.Ltmp462:
.LBB64_17:                              @ %if.end39
	.loc	18 119 0                @ ../../lib/xstrtol.c:119:0
	ldr	r0, [r11, #-28]
	cmp	r0, #0
	beq	.LBB64_61
@ BB#18:                                @ %if.end42
	.loc	18 125 0                @ ../../lib/xstrtol.c:125:0
	ldr	r0, [sp, #28]
	ldr	r0, [r0]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB64_61
@ BB#19:                                @ %if.then46
.Ltmp463:
	@DEBUG_VALUE: base <- [sp+#8]+#0
	mov	r0, #1024
	.loc	18 127 0                @ ../../lib/xstrtol.c:127:0
.Ltmp464:
	str	r0, [sp, #8]
	mov	r0, #1
.Ltmp465:
	@DEBUG_VALUE: suffixes <- [sp+#4]+#0
	.loc	18 128 0                @ ../../lib/xstrtol.c:128:0
	str	r0, [sp, #4]
	.loc	18 131 0                @ ../../lib/xstrtol.c:131:0
	ldr	r0, [sp, #28]
	ldr	r0, [r0]
	ldrb	r1, [r0]
	ldr	r0, [r11, #-28]
.Ltmp466:
	@DEBUG_VALUE: overflow <- [sp+#0]+#0
	bl	strchr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	beq	.LBB64_52
@ BB#20:                                @ %if.end54
	.loc	18 137 0                @ ../../lib/xstrtol.c:137:0
	ldr	r0, [r11, #-28]
	mov	r1, #48
	bl	strchr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	beq	.LBB64_28
@ BB#21:                                @ %if.then57
	.loc	18 146 0                @ ../../lib/xstrtol.c:146:0
.Ltmp467:
	ldr	r0, [sp, #28]
	ldr	r0, [r0]
	ldrb	r0, [r0, #1]
	cmp	r0, #66
	cmpne	r0, #68
	bne	.LBB64_24
@ BB#22:                                @ %sw.bb68
	mov	r0, #1000
	.loc	18 155 0                @ ../../lib/xstrtol.c:155:0
.Ltmp468:
	str	r0, [sp, #8]
	.loc	18 156 0                @ ../../lib/xstrtol.c:156:0
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	b	.LBB64_27
.LBB64_23:                              @ %if.then
	mov	r0, #4
	b	.LBB64_62
.LBB64_24:                              @ %if.then57
	cmp	r0, #105
	bne	.LBB64_28
@ BB#25:                                @ %sw.bb
	.loc	18 149 0                @ ../../lib/xstrtol.c:149:0
	ldr	r0, [sp, #28]
	ldr	r0, [r0]
	ldrb	r0, [r0, #2]
	cmp	r0, #66
	bne	.LBB64_28
@ BB#26:                                @ %if.then66
	.loc	18 150 0                @ ../../lib/xstrtol.c:150:0
	ldr	r0, [sp, #4]
	add	r0, r0, #2
.LBB64_27:                              @ %sw.bb68
	.loc	18 156 0                @ ../../lib/xstrtol.c:156:0
	str	r0, [sp, #4]
.Ltmp469:
.LBB64_28:                              @ %if.end69
	.loc	18 161 0                @ ../../lib/xstrtol.c:161:0
	ldr	r0, [sp, #28]
	ldr	r0, [r0]
	ldrb	r0, [r0]
	cmp	r0, #68
	bhi	.LBB64_31
@ BB#29:                                @ %if.end69
	cmp	r0, #66
	bne	.LBB64_52
@ BB#30:                                @ %sw.bb73
	add	r0, sp, #24
	mov	r1, #1024
	b	.LBB64_41
.LBB64_31:                              @ %if.end69
	cmp	r0, #118
	bhi	.LBB64_39
@ BB#32:                                @ %if.end69
	cmp	r0, #115
	bhi	.LBB64_42
@ BB#33:                                @ %if.end69
	cmp	r0, #97
	bhi	.LBB64_43
@ BB#34:                                @ %if.end69
	cmp	r0, #88
	bhi	.LBB64_46
@ BB#35:                                @ %if.end69
	cmp	r0, #83
	bhi	.LBB64_48
@ BB#36:                                @ %if.end69
	sub	r0, r0, #69
	cmp	r0, #11
	bhi	.LBB64_52
@ BB#37:                                @ %if.end69
	lsl	r0, r0, #2
	adr	r1, .LJTI64_1_1
	ldr	pc, [r0, r1]
.LJTI64_1_1:
	.long	.LBB64_38
	.long	.LBB64_52
	.long	.LBB64_56
	.long	.LBB64_52
	.long	.LBB64_52
	.long	.LBB64_52
	.long	.LBB64_57
	.long	.LBB64_52
	.long	.LBB64_58
	.long	.LBB64_52
	.long	.LBB64_52
	.long	.LBB64_54
.LBB64_38:                              @ %sw.bb76
	.loc	18 176 0                @ ../../lib/xstrtol.c:176:0
.Ltmp470:
	ldr	r1, [sp, #8]
	add	r0, sp, #24
	mov	r2, #6
	b	.LBB64_59
.LBB64_39:                              @ %if.end69
	cmp	r0, #119
	bne	.LBB64_52
@ BB#40:                                @ %sw.bb88
	add	r0, sp, #24
	mov	r1, #2
.LBB64_41:                              @ %sw.bb71
	.loc	18 164 0                @ ../../lib/xstrtol.c:164:0
	bl	bkm_scale
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB64_60
.LBB64_42:                              @ %if.end69
	cmp	r0, #116
	bne	.LBB64_52
	b	.LBB64_49
.LBB64_43:                              @ %if.end69
	sub	r0, r0, #98
	cmp	r0, #11
	bhi	.LBB64_52
@ BB#44:                                @ %if.end69
	lsl	r0, r0, #2
	adr	r1, .LJTI64_0_0
	ldr	pc, [r0, r1]
.LJTI64_0_0:
	.long	.LBB64_45
	.long	.LBB64_55
	.long	.LBB64_52
	.long	.LBB64_52
	.long	.LBB64_52
	.long	.LBB64_56
	.long	.LBB64_52
	.long	.LBB64_52
	.long	.LBB64_52
	.long	.LBB64_57
	.long	.LBB64_52
	.long	.LBB64_58
.LBB64_45:                              @ %sw.bb71
	add	r0, sp, #24
	mov	r1, #512
	b	.LBB64_41
.LBB64_46:                              @ %if.end69
	cmp	r0, #89
	bne	.LBB64_50
@ BB#47:                                @ %sw.bb90
	.loc	18 208 0                @ ../../lib/xstrtol.c:208:0
	ldr	r1, [sp, #8]
	add	r0, sp, #24
	mov	r2, #8
	b	.LBB64_59
.LBB64_48:                              @ %if.end69
	cmp	r0, #84
	bne	.LBB64_52
.LBB64_49:                              @ %sw.bb86
	.loc	18 200 0                @ ../../lib/xstrtol.c:200:0
	ldr	r1, [sp, #8]
	add	r0, sp, #24
	mov	r2, #4
	b	.LBB64_59
.LBB64_50:                              @ %if.end69
	cmp	r0, #90
	bne	.LBB64_52
@ BB#51:                                @ %sw.bb92
	.loc	18 212 0                @ ../../lib/xstrtol.c:212:0
	ldr	r1, [sp, #8]
	add	r0, sp, #24
	mov	r2, #7
	b	.LBB64_59
.Ltmp471:
.LBB64_52:                              @ %if.then53
	.loc	18 133 0                @ ../../lib/xstrtol.c:133:0
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #24]
	str	r1, [r0]
	.loc	18 134 0                @ ../../lib/xstrtol.c:134:0
	ldr	r0, [sp, #20]
	orr	r0, r0, #2
	b	.LBB64_62
.Ltmp472:
.LBB64_53:                              @ %cond.false
	.loc	18 83 0                 @ ../../lib/xstrtol.c:83:0
	ldr	r0, .LCPI64_0
	ldr	r1, .LCPI64_1
	ldr	r3, .LCPI64_2
	mov	r2, #83
	bl	__assert_fail
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB64_54:                              @ %sw.bb84
	.loc	18 195 0                @ ../../lib/xstrtol.c:195:0
.Ltmp473:
	ldr	r1, [sp, #8]
	add	r0, sp, #24
	mov	r2, #5
	b	.LBB64_59
.LBB64_55:                              @ %sw.bb75
	mov	r0, #0
	b	.LBB64_60
.LBB64_56:                              @ %sw.bb78
	.loc	18 181 0                @ ../../lib/xstrtol.c:181:0
	ldr	r1, [sp, #8]
	add	r0, sp, #24
	mov	r2, #3
	b	.LBB64_59
.LBB64_57:                              @ %sw.bb80
	.loc	18 186 0                @ ../../lib/xstrtol.c:186:0
	ldr	r1, [sp, #8]
	add	r0, sp, #24
	mov	r2, #1
	b	.LBB64_59
.LBB64_58:                              @ %sw.bb82
	.loc	18 191 0                @ ../../lib/xstrtol.c:191:0
	ldr	r1, [sp, #8]
	add	r0, sp, #24
	mov	r2, #2
.LBB64_59:                              @ %sw.bb76
	.loc	18 176 0                @ ../../lib/xstrtol.c:176:0
	bl	bkm_scale_by_power
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	18 164 0                @ ../../lib/xstrtol.c:164:0
	b	.LBB64_60
.LBB64_60:                              @ %sw.bb75
	.loc	18 172 0                @ ../../lib/xstrtol.c:172:0
	str	r0, [sp]
.Ltmp474:
	.loc	18 220 0                @ ../../lib/xstrtol.c:220:0
	ldr	r1, [sp, #20]
	.loc	18 221 0                @ ../../lib/xstrtol.c:221:0
	ldr	r2, [sp, #4]
	.loc	18 220 0                @ ../../lib/xstrtol.c:220:0
	ldr	r0, [sp]
	orr	r0, r1, r0
	str	r0, [sp, #20]
	.loc	18 221 0                @ ../../lib/xstrtol.c:221:0
	ldr	r0, [sp, #28]
	ldr	r1, [r0]
	add	r1, r1, r2
	str	r1, [r0]
	.loc	18 222 0                @ ../../lib/xstrtol.c:222:0
	ldr	r0, [sp, #28]
	ldr	r0, [r0]
	ldrb	r0, [r0]
	cmp	r0, #0
	.loc	18 223 0                @ ../../lib/xstrtol.c:223:0
	ldrne	r0, [sp, #20]
	orrne	r0, r0, #2
	strne	r0, [sp, #20]
.Ltmp475:
.LBB64_61:                              @ %if.end101
	.loc	18 226 0                @ ../../lib/xstrtol.c:226:0
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #24]
	str	r1, [r0]
	.loc	18 227 0                @ ../../lib/xstrtol.c:227:0
	ldr	r0, [sp, #20]
.LBB64_62:                              @ %if.end101
	str	r0, [r11, #-8]
	.loc	18 228 0                @ ../../lib/xstrtol.c:228:0
	ldr	r0, [r11, #-8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp476:
	.align	2
@ BB#63:
.LCPI64_0:
	.long	.L.str84
.LCPI64_1:
	.long	.L.str185
.LCPI64_2:
	.long	.L__PRETTY_FUNCTION__.xstrtoul
.Ltmp477:
	.size	xstrtoul, .Ltmp477-xstrtoul
.Lfunc_end64:

	.align	2
	.type	bkm_scale,%function
bkm_scale:                              @ @bkm_scale
.Lfunc_begin65:
	.loc	18 48 0                 @ ../../lib/xstrtol.c:48:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #4]
	mvn	r0, #0
	str	r1, [sp]
	mvn	r4, #0
	.loc	18 54 0 prologue_end    @ ../../lib/xstrtol.c:54:0
.Ltmp478:
	bl	__aeabi_uidiv
	ldr	r1, [sp, #4]
	ldr	r1, [r1]
	cmp	r0, r1
	bhs	.LBB65_2
@ BB#1:                                 @ %if.then
	.loc	18 56 0                 @ ../../lib/xstrtol.c:56:0
.Ltmp479:
	ldr	r0, [sp, #4]
	str	r4, [r0]
	mov	r0, #1
	b	.LBB65_3
.Ltmp480:
.LBB65_2:                               @ %if.end
	.loc	18 59 0                 @ ../../lib/xstrtol.c:59:0
	ldr	r0, [sp, #4]
	ldr	r3, [sp]
	ldr	r1, [r0]
	mul	r2, r1, r3
	str	r2, [r0]
	mov	r0, #0
.LBB65_3:                               @ %if.end
	.loc	18 60 0                 @ ../../lib/xstrtol.c:60:0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp481:
.Ltmp482:
	.size	bkm_scale, .Ltmp482-bkm_scale
.Lfunc_end65:

	.align	2
	.type	bkm_scale_by_power,%function
bkm_scale_by_power:                     @ @bkm_scale_by_power
.Lfunc_begin66:
	.loc	18 65 0                 @ ../../lib/xstrtol.c:65:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	mov	r0, #0
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	b	.LBB66_2
.LBB66_1:                               @ %while.body
                                        @   in Loop: Header=BB66_2 Depth=1
	.loc	18 68 0 prologue_end    @ ../../lib/xstrtol.c:68:0
.Ltmp483:
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	bkm_scale
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [sp]
	orr	r0, r1, r0
.LBB66_2:                               @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	.loc	18 66 0                 @ ../../lib/xstrtol.c:66:0
	str	r0, [sp]
	.loc	18 67 0                 @ ../../lib/xstrtol.c:67:0
	ldr	r0, [sp, #4]
	sub	r1, r0, #1
	cmp	r0, #0
	str	r1, [sp, #4]
	bne	.LBB66_1
@ BB#3:                                 @ %while.end
	.loc	18 69 0                 @ ../../lib/xstrtol.c:69:0
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp484:
.Ltmp485:
	.size	bkm_scale_by_power, .Ltmp485-bkm_scale_by_power
.Lfunc_end66:

	.align	2
	.type	fseterr,%function
fseterr:                                @ @fseterr
.Lfunc_begin67:
	.loc	19 26 0                 @ ../../lib/fseterr.c:26:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #4
	str	r0, [sp]
	.loc	19 31 0 prologue_end    @ ../../lib/fseterr.c:31:0
.Ltmp486:
	ldr	r1, [r0]
	orr	r1, r1, #32
	str	r1, [r0]
	.loc	19 84 0                 @ ../../lib/fseterr.c:84:0
	add	sp, sp, #4
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp487:
.Ltmp488:
	.size	fseterr, .Ltmp488-fseterr
.Lfunc_end67:

	.align	2
	.type	xalloc_die,%function
xalloc_die:                             @ @xalloc_die
.Lfunc_begin68:
	.loc	20 33 0                 @ ../../lib/xalloc-die.c:33:0
@ BB#0:                                 @ %entry
	.loc	20 34 0 prologue_end    @ ../../lib/xalloc-die.c:34:0
	push	{r11, lr}
	mov	r11, sp
	ldr	r0, .LCPI68_0
	ldr	r2, .LCPI68_1
	ldr	r3, .LCPI68_2
	mov	r1, #0
	ldr	r0, [r0]
	bl	error
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	20 40 0                 @ ../../lib/xalloc-die.c:40:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp489:
	.align	2
@ BB#1:
.LCPI68_0:
	.long	_MergedGlobals
.LCPI68_1:
	.long	.L.str90
.LCPI68_2:
	.long	.L.str191
.Ltmp490:
	.size	xalloc_die, .Ltmp490-xalloc_die
.Lfunc_end68:

	.align	2
	.type	close_stream,%function
close_stream:                           @ @close_stream
.Lfunc_begin69:
	.loc	21 54 0                 @ ../../lib/close-stream.c:54:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #8]
	.loc	21 55 0 prologue_end    @ ../../lib/close-stream.c:55:0
.Ltmp491:
	bl	__fpending
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	movne	r0, #1
	strb	r0, [sp, #7]
	.loc	21 56 0                 @ ../../lib/close-stream.c:56:0
	ldr	r0, [sp, #8]
	bl	ferror_unlocked
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	movne	r0, #1
	strb	r0, [sp, #6]
	.loc	21 57 0                 @ ../../lib/close-stream.c:57:0
	ldr	r0, [sp, #8]
	bl	fclose
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	movne	r0, #1
	strb	r0, [sp, #5]
	.loc	21 67 0                 @ ../../lib/close-stream.c:67:0
	ldrb	r0, [sp, #6]
	tst	r0, #1
	bne	.LBB69_4
@ BB#1:                                 @ %lor.lhs.false
	ldrb	r0, [sp, #5]
	tst	r0, #1
	beq	.LBB69_7
@ BB#2:                                 @ %land.lhs.true
	ldrb	r0, [sp, #7]
	tst	r0, #1
	bne	.LBB69_4
@ BB#3:                                 @ %lor.lhs.false9
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r0]
	cmp	r0, #9
	beq	.LBB69_7
.LBB69_4:                               @ %if.then
	.loc	21 69 0                 @ ../../lib/close-stream.c:69:0
.Ltmp492:
	ldrb	r0, [sp, #5]
	tst	r0, #1
	bne	.LBB69_6
@ BB#5:                                 @ %if.then13
	.loc	21 70 0                 @ ../../lib/close-stream.c:70:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #0
	str	r1, [r0]
.Ltmp493:
.LBB69_6:                               @ %if.end
	mvn	r0, #0
	b	.LBB69_8
.LBB69_7:                               @ %if.end15
	mov	r0, #0
.LBB69_8:                               @ %if.end15
	.loc	21 74 0                 @ ../../lib/close-stream.c:74:0
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp494:
.Ltmp495:
	.size	close_stream, .Ltmp495-close_stream
.Lfunc_end69:

	.align	2
	.type	vasnprintf,%function
vasnprintf:                             @ @vasnprintf
.Lfunc_begin70:
	.loc	22 1412 0               @ ../../lib/vasnprintf.c:1412:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #76
	sub	sp, sp, #1024
	str	r2, [r11, #-48]
	str	r0, [r11, #-40]
	str	r1, [r11, #-44]
	sub	r1, r11, #72
	sub	r2, r11, #80
	str	r3, [r11, #-56]
	.loc	22 1416 0 prologue_end  @ ../../lib/vasnprintf.c:1416:0
.Ltmp496:
	ldr	r0, [r11, #-48]
	bl	printf_parse
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	blt	.LBB70_382
@ BB#1:                                 @ %if.end
	.loc	22 1425 0               @ ../../lib/vasnprintf.c:1425:0
	ldr	r0, [r11, #-56]
	sub	r1, r11, #80
	bl	printf_fetchargs
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	blt	.LBB70_4
@ BB#2:                                 @ %if.end8
.Ltmp497:
	@DEBUG_VALUE: buf_neededlength <- [r11+#-84]+#0
	@DEBUG_VALUE: buf <- [r11+#-88]+#0
	@DEBUG_VALUE: buf_malloced <- [r11+#-92]+#0
	@DEBUG_VALUE: cp <- [r11+#-96]+#0
	@DEBUG_VALUE: i <- [r11+#-100]+#0
	@DEBUG_VALUE: dp <- [r11+#-104]+#0
	@DEBUG_VALUE: result <- [r11+#-108]+#0
	@DEBUG_VALUE: allocated <- [r11+#-112]+#0
	@DEBUG_VALUE: length <- [r11+#-116]+#0
	.loc	22 1447 7               @ ../../lib/vasnprintf.c:1447:7
	ldr	r1, [r11, #-64]
	ldr	r2, [r11, #-60]
	mov	r0, #7
	mov	r3, #6
	bl	xsum4
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-84]
	.loc	22 1449 0               @ ../../lib/vasnprintf.c:1449:0
	lsr	r0, r0, #5
	cmp	r0, #124
	bhi	.LBB70_5
@ BB#3:                                 @ %if.then11
	.loc	22 1451 0               @ ../../lib/vasnprintf.c:1451:0
.Ltmp498:
	ldr	r0, [r11, #-84]
	add	r0, r0, #7
	bic	r0, r0, #7
	sub	r0, sp, r0
	mov	sp, r0
	str	r0, [r11, #-88]
	mov	r0, #0
	b	.LBB70_8
.Ltmp499:
.LBB70_4:                               @ %if.then3
	.loc	22 1427 0               @ ../../lib/vasnprintf.c:1427:0
	ldr	r0, [r11, #-68]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r11, #-76]
	cmp	r0, #0
	beq	.LBB70_352
	b	.LBB70_351
.Ltmp500:
.LBB70_5:                               @ %if.else
	@DEBUG_VALUE: buf_memsize <- [r11+#-120]+#0
	.loc	22 1457 0               @ ../../lib/vasnprintf.c:1457:0
	ldr	r1, [r11, #-84]
	mov	r0, #1
	cmp	r1, #1
	ldrls	r0, [r11, #-84]
	str	r0, [r11, #-120]
	.loc	22 1458 0               @ ../../lib/vasnprintf.c:1458:0
	cmp	r0, #1
	beq	.LBB70_378
@ BB#6:                                 @ %if.end16
	.loc	22 1460 0               @ ../../lib/vasnprintf.c:1460:0
	ldr	r0, [r11, #-120]
	bl	malloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-88]
	.loc	22 1461 0               @ ../../lib/vasnprintf.c:1461:0
	cmp	r0, #0
	beq	.LBB70_378
@ BB#7:                                 @ %if.end20
	.loc	22 1463 0               @ ../../lib/vasnprintf.c:1463:0
	ldr	r0, [r11, #-88]
.Ltmp501:
.LBB70_8:                               @ %if.end20
	.loc	22 1466 0               @ ../../lib/vasnprintf.c:1466:0
	ldr	r1, [r11, #-40]
	.loc	22 1463 0               @ ../../lib/vasnprintf.c:1463:0
.Ltmp502:
	str	r0, [r11, #-92]
.Ltmp503:
	.loc	22 1466 0               @ ../../lib/vasnprintf.c:1466:0
	cmp	r1, #0
	beq	.LBB70_10
@ BB#9:                                 @ %if.then23
	.loc	22 1468 0               @ ../../lib/vasnprintf.c:1468:0
.Ltmp504:
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-108]
	.loc	22 1469 0               @ ../../lib/vasnprintf.c:1469:0
	ldr	r0, [r11, #-44]
	ldr	r0, [r0]
	b	.LBB70_11
.Ltmp505:
.LBB70_10:                              @ %if.else24
	mov	r0, #0
	.loc	22 1473 0               @ ../../lib/vasnprintf.c:1473:0
.Ltmp506:
	str	r0, [r11, #-108]
.LBB70_11:                              @ %if.else24
	.loc	22 1474 0               @ ../../lib/vasnprintf.c:1474:0
	str	r0, [r11, #-112]
.Ltmp507:
	.loc	22 1506 0               @ ../../lib/vasnprintf.c:1506:0
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-68]
	mov	r8, #0
	mov	r9, #32
	sub	r10, r11, #992
.Ltmp508:
	.loc	22 1476 0               @ ../../lib/vasnprintf.c:1476:0
	str	r8, [r11, #-116]
	.loc	22 1506 0               @ ../../lib/vasnprintf.c:1506:0
.Ltmp509:
	str	r8, [r11, #-100]
	str	r0, [r11, #-96]
	str	r1, [r11, #-104]
	b	.LBB70_13
.LBB70_12:                              @ %for.inc1359
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #4]
	str	r0, [r11, #-96]
	ldr	r0, [r11, #-100]
	add	r0, r0, #1
	str	r0, [r11, #-100]
	ldr	r0, [r11, #-104]
	add	r0, r0, #44
	str	r0, [r11, #-104]
.LBB70_13:                              @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB70_109 Depth 2
                                        @     Child Loop BB70_260 Depth 2
                                        @     Child Loop BB70_273 Depth 2
                                        @     Child Loop BB70_312 Depth 2
                                        @     Child Loop BB70_314 Depth 2
                                        @     Child Loop BB70_307 Depth 2
                                        @     Child Loop BB70_309 Depth 2
                                        @     Child Loop BB70_305 Depth 2
	.loc	22 1508 0               @ ../../lib/vasnprintf.c:1508:0
.Ltmp510:
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-96]
	ldr	r0, [r0]
	cmp	r1, r0
	beq	.LBB70_27
@ BB#14:                                @ %if.then28
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp511:
	@DEBUG_VALUE: n <- [r11+#-124]+#0
	.loc	22 1510 0               @ ../../lib/vasnprintf.c:1510:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-96]
	ldr	r0, [r0]
	sub	r1, r0, r1
	.loc	22 1511 32              @ ../../lib/vasnprintf.c:1511:32
	ldr	r0, [r11, #-116]
.Ltmp512:
	@DEBUG_VALUE: augmented_length <- [r11+#-128]+#0
	.loc	22 1510 0               @ ../../lib/vasnprintf.c:1510:0
	str	r1, [r11, #-124]
	.loc	22 1511 32              @ ../../lib/vasnprintf.c:1511:32
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	22 1513 0               @ ../../lib/vasnprintf.c:1513:0
	ldr	r1, [r11, #-112]
	.loc	22 1511 32              @ ../../lib/vasnprintf.c:1511:32
	str	r0, [r11, #-128]
	.loc	22 1513 0               @ ../../lib/vasnprintf.c:1513:0
	cmp	r0, r1
	bls	.LBB70_26
@ BB#15:                                @ %if.then32
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp513:
	@DEBUG_VALUE: memory_size <- [r11+#-132]+#0
	@DEBUG_VALUE: memory <- [r11+#-136]+#0
	.loc	22 1513 0               @ ../../lib/vasnprintf.c:1513:0
	ldr	r1, [r11, #-112]
	mov	r0, #12
	cmp	r1, #0
	beq	.LBB70_17
@ BB#16:                                @ %cond.true34
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-112]
	lsleq	r0, r0, #1
.LBB70_17:                              @ %cond.end42
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-128]
	str	r0, [r11, #-112]
	cmp	r1, r0
	ldrhi	r0, [r11, #-128]
	strhi	r0, [r11, #-112]
	mov	r0, #1
	ldr	r1, [r11, #-112]
	cmp	r1, #1
	ldrls	r0, [r11, #-112]
	str	r0, [r11, #-132]
	cmp	r0, #1
	beq	.LBB70_374
@ BB#18:                                @ %if.end55
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	bne	.LBB70_20
@ BB#19:                                @ %if.then58
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-132]
	bl	malloc
	b	.LBB70_21
.LBB70_20:                              @ %if.else60
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-132]
	ldr	r0, [r11, #-108]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_21:                              @ %if.else60
                                        @   in Loop: Header=BB70_13 Depth=1
	str	r0, [r11, #-136]
	ldr	r0, [r11, #-136]
	cmp	r0, #0
	beq	.LBB70_374
@ BB#22:                                @ %if.end65
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	bne	.LBB70_25
@ BB#23:                                @ %land.lhs.true
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB70_25
@ BB#24:                                @ %if.then68
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r2, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r0, [r11, #-136]
	bl	__aeabi_memcpy
.LBB70_25:                              @ %if.end69
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-136]
	str	r0, [r11, #-108]
.Ltmp514:
.LBB70_26:                              @ %if.end70
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1519 0               @ ../../lib/vasnprintf.c:1519:0
	ldr	r0, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r2, [r11, #-124]
	add	r0, r1, r0
	ldr	r1, [r11, #-96]
	bl	__aeabi_memcpy
	.loc	22 1520 0               @ ../../lib/vasnprintf.c:1520:0
	ldr	r0, [r11, #-128]
	str	r0, [r11, #-116]
.Ltmp515:
.LBB70_27:                              @ %if.end71
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1529 0               @ ../../lib/vasnprintf.c:1529:0
	ldr	r0, [r11, #-72]
	ldr	r1, [r11, #-100]
	cmp	r1, r0
	beq	.LBB70_335
@ BB#28:                                @ %if.end74
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1533 0               @ ../../lib/vasnprintf.c:1533:0
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #37
	bne	.LBB70_36
@ BB#29:                                @ %if.then77
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp516:
	@DEBUG_VALUE: augmented_length <- [r11+#-140]+#0
	.loc	22 1537 0               @ ../../lib/vasnprintf.c:1537:0
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #40]
	cmn	r0, #1
	bne	.LBB70_401
@ BB#30:                                @ %if.end82
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1539 25              @ ../../lib/vasnprintf.c:1539:25
	ldr	r0, [r11, #-116]
	mov	r1, #1
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	22 1540 0               @ ../../lib/vasnprintf.c:1540:0
	ldr	r1, [r11, #-112]
	.loc	22 1539 25              @ ../../lib/vasnprintf.c:1539:25
	str	r0, [r11, #-140]
	.loc	22 1540 0               @ ../../lib/vasnprintf.c:1540:0
	cmp	r0, r1
	bls	.LBB70_96
@ BB#31:                                @ %if.then86
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp517:
	@DEBUG_VALUE: memory_size <- [r11+#-144]+#0
	@DEBUG_VALUE: memory <- [r11+#-148]+#0
	.loc	22 1540 0               @ ../../lib/vasnprintf.c:1540:0
	ldr	r1, [r11, #-112]
	mov	r0, #12
	cmp	r1, #0
	beq	.LBB70_33
@ BB#32:                                @ %cond.true91
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-112]
	lsleq	r0, r0, #1
.LBB70_33:                              @ %cond.end100
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-140]
	str	r0, [r11, #-112]
	cmp	r1, r0
	ldrhi	r0, [r11, #-140]
	strhi	r0, [r11, #-112]
	mov	r0, #1
	ldr	r1, [r11, #-112]
	cmp	r1, #1
	ldrls	r0, [r11, #-112]
	str	r0, [r11, #-144]
	cmp	r0, #1
	beq	.LBB70_374
@ BB#34:                                @ %if.end116
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	bne	.LBB70_90
@ BB#35:                                @ %if.then122
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-144]
	bl	malloc
	b	.LBB70_91
.Ltmp518:
.LBB70_36:                              @ %if.else140
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1546 0               @ ../../lib/vasnprintf.c:1546:0
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #40]
	cmn	r0, #1
	beq	.LBB70_401
@ BB#37:                                @ %if.end145
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1549 0               @ ../../lib/vasnprintf.c:1549:0
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #110
	bne	.LBB70_41
@ BB#38:                                @ %if.then150
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1551 0               @ ../../lib/vasnprintf.c:1551:0
.Ltmp519:
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	ldr	r0, [r1, r0, lsl #4]
	sub	r0, r0, #18
	cmp	r0, #4
	bhi	.LBB70_343
@ BB#39:                                @ %if.then150
                                        @   in Loop: Header=BB70_13 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI70_1_1
	ldr	pc, [r0, r1]
.LJTI70_1_1:
	.long	.LBB70_98
	.long	.LBB70_99
	.long	.LBB70_40
	.long	.LBB70_40
	.long	.LBB70_100
.LBB70_40:                              @ %sw.bb170
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1563 0               @ ../../lib/vasnprintf.c:1563:0
.Ltmp520:
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r1, [r11, #-116]
	ldr	r0, [r0, #8]
	str	r1, [r0]
	b	.LBB70_12
.Ltmp521:
.LBB70_41:                              @ %if.else181
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2531 0               @ ../../lib/vasnprintf.c:2531:0
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #102
	beq	.LBB70_49
@ BB#42:                                @ %lor.lhs.false186
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #70
	beq	.LBB70_49
@ BB#43:                                @ %lor.lhs.false191
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #101
	beq	.LBB70_49
@ BB#44:                                @ %lor.lhs.false196
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #69
	beq	.LBB70_49
@ BB#45:                                @ %lor.lhs.false201
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #103
	beq	.LBB70_49
@ BB#46:                                @ %lor.lhs.false206
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #71
	beq	.LBB70_49
@ BB#47:                                @ %lor.lhs.false211
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #97
	beq	.LBB70_49
@ BB#48:                                @ %lor.lhs.false216
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #65
	bne	.LBB70_56
.LBB70_49:                              @ %land.lhs.true221
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	ldr	r0, [r1, r0, lsl #4]
	cmp	r0, #12
	bne	.LBB70_56
@ BB#50:                                @ %land.lhs.true228
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2551 0               @ ../../lib/vasnprintf.c:2551:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r1, #8]
	ldr	r1, [r1, #12]
	bl	is_infinitel
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	beq	.LBB70_56
@ BB#51:                                @ %if.then235
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp522:
	@DEBUG_VALUE: flags <- [r11+#-152]+#0
	.loc	22 2558 0               @ ../../lib/vasnprintf.c:2558:0
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #8]
	.loc	22 2569 0               @ ../../lib/vasnprintf.c:2569:0
	str	r8, [r11, #-156]
	.loc	22 2570 0               @ ../../lib/vasnprintf.c:2570:0
	str	r8, [r11, #-160]
	.loc	22 2558 0               @ ../../lib/vasnprintf.c:2558:0
	str	r0, [r11, #-152]
.Ltmp523:
	@DEBUG_VALUE: p <- [r11+#-884]+#0
	@DEBUG_VALUE: pad_ptr <- [r11+#-880]+#0
	@DEBUG_VALUE: tmp <- [r11+#-876]+#0
	@DEBUG_VALUE: tmpbuf <- [r11+#-872]+#0
	@DEBUG_VALUE: tmp_length <- [r11+#-172]+#0
	@DEBUG_VALUE: precision <- [r11+#-168]+#0
	@DEBUG_VALUE: has_precision <- [r11+#-164]+#0
	@DEBUG_VALUE: width <- [r11+#-160]+#0
	@DEBUG_VALUE: has_width <- [r11+#-156]+#0
	.loc	22 2571 0               @ ../../lib/vasnprintf.c:2571:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r0, #12]
	ldr	r0, [r0, #16]
	cmp	r1, r0
	beq	.LBB70_266
@ BB#52:                                @ %if.then241
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2573 0               @ ../../lib/vasnprintf.c:2573:0
.Ltmp524:
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #20]
	cmn	r0, #1
	beq	.LBB70_259
@ BB#53:                                @ %if.then244
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp525:
	@DEBUG_VALUE: arg <- [r11+#-888]+#0
	.loc	22 2577 0               @ ../../lib/vasnprintf.c:2577:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #20]
	ldr	r0, [r1, r0, lsl #4]
	cmp	r0, #5
	bne	.LBB70_401
@ BB#54:                                @ %if.end254
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2579 0               @ ../../lib/vasnprintf.c:2579:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #20]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-888]
	.loc	22 2580 0               @ ../../lib/vasnprintf.c:2580:0
	cmp	r0, #0
	bge	.LBB70_264
@ BB#55:                                @ %if.then261
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2584 0               @ ../../lib/vasnprintf.c:2584:0
.Ltmp526:
	ldr	r0, [r11, #-152]
	orr	r0, r0, #2
	str	r0, [r11, #-152]
	.loc	22 2585 0               @ ../../lib/vasnprintf.c:2585:0
	ldr	r0, [r11, #-888]
	rsb	r0, r0, #0
	str	r0, [r11, #-160]
	b	.LBB70_265
.Ltmp527:
.LBB70_56:                              @ %if.else592
                                        @   in Loop: Header=BB70_13 Depth=1
	@DEBUG_VALUE: type <- [r11+#-952]+#0
	.loc	22 3562 0               @ ../../lib/vasnprintf.c:3562:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	ldr	r0, [r1, r0, lsl #4]
	str	r0, [r11, #-952]
	.loc	22 3563 0               @ ../../lib/vasnprintf.c:3563:0
	ldr	r0, [r11, #-104]
.Ltmp528:
	@DEBUG_VALUE: flags <- [r11+#-956]+#0
	ldr	r0, [r0, #8]
	str	r0, [r11, #-956]
	.loc	22 3911 0               @ ../../lib/vasnprintf.c:3911:0
	ldr	r0, [r11, #-88]
.Ltmp529:
	@DEBUG_VALUE: prefixes <- [r11+#-972]+#0
	@DEBUG_VALUE: prefix_count <- [r11+#-964]+#0
	@DEBUG_VALUE: fbp <- [r11+#-960]+#0
	.loc	22 3912 0               @ ../../lib/vasnprintf.c:3912:0
	add	r1, r0, #1
	.loc	22 3911 0               @ ../../lib/vasnprintf.c:3911:0
	str	r0, [r11, #-960]
	.loc	22 3912 0               @ ../../lib/vasnprintf.c:3912:0
	str	r1, [r11, #-960]
	mov	r1, #37
	strb	r1, [r0]
	.loc	22 3918 0               @ ../../lib/vasnprintf.c:3918:0
	ldrb	r0, [r11, #-956]
	tst	r0, #1
	beq	.LBB70_58
@ BB#57:                                @ %if.then608
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3919 0               @ ../../lib/vasnprintf.c:3919:0
	ldr	r0, [r11, #-960]
	add	r1, r0, #1
	str	r1, [r11, #-960]
	mov	r1, #39
	strb	r1, [r0]
.LBB70_58:                              @ %if.end610
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3921 0               @ ../../lib/vasnprintf.c:3921:0
	ldrb	r0, [r11, #-956]
	tst	r0, #2
	beq	.LBB70_60
@ BB#59:                                @ %if.then613
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3922 0               @ ../../lib/vasnprintf.c:3922:0
	ldr	r0, [r11, #-960]
	add	r1, r0, #1
	str	r1, [r11, #-960]
	mov	r1, #45
	strb	r1, [r0]
.LBB70_60:                              @ %if.end615
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3923 0               @ ../../lib/vasnprintf.c:3923:0
	ldrb	r0, [r11, #-956]
	tst	r0, #4
	beq	.LBB70_62
@ BB#61:                                @ %if.then618
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3924 0               @ ../../lib/vasnprintf.c:3924:0
	ldr	r0, [r11, #-960]
	add	r1, r0, #1
	str	r1, [r11, #-960]
	mov	r1, #43
	strb	r1, [r0]
.LBB70_62:                              @ %if.end620
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3925 0               @ ../../lib/vasnprintf.c:3925:0
	ldrb	r0, [r11, #-956]
	tst	r0, #8
	.loc	22 3926 0               @ ../../lib/vasnprintf.c:3926:0
	ldrne	r0, [r11, #-960]
	addne	r1, r0, #1
	strne	r1, [r11, #-960]
	strbne	r9, [r0]
	.loc	22 3927 0               @ ../../lib/vasnprintf.c:3927:0
	ldrb	r0, [r11, #-956]
	tst	r0, #16
	beq	.LBB70_64
@ BB#63:                                @ %if.then628
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3928 0               @ ../../lib/vasnprintf.c:3928:0
	ldr	r0, [r11, #-960]
	add	r1, r0, #1
	str	r1, [r11, #-960]
	mov	r1, #35
	strb	r1, [r0]
.LBB70_64:                              @ %if.end630
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3931 0               @ ../../lib/vasnprintf.c:3931:0
.Ltmp530:
	ldrb	r0, [r11, #-956]
	tst	r0, #32
	beq	.LBB70_66
@ BB#65:                                @ %if.then633
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3932 0               @ ../../lib/vasnprintf.c:3932:0
	ldr	r0, [r11, #-960]
	add	r1, r0, #1
	str	r1, [r11, #-960]
	mov	r1, #48
	strb	r1, [r0]
.LBB70_66:                              @ %if.end635
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3933 0               @ ../../lib/vasnprintf.c:3933:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r0, #12]
	ldr	r0, [r0, #16]
	cmp	r1, r0
	beq	.LBB70_68
@ BB#67:                                @ %if.then640
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp531:
	@DEBUG_VALUE: n <- [r11+#-976]+#0
	.loc	22 3935 0               @ ../../lib/vasnprintf.c:3935:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r0, #12]
	ldr	r0, [r0, #16]
	sub	r2, r0, r1
	.loc	22 3940 0               @ ../../lib/vasnprintf.c:3940:0
.Ltmp532:
	ldr	r0, [r11, #-104]
.Ltmp533:
	.loc	22 3935 0               @ ../../lib/vasnprintf.c:3935:0
	str	r2, [r11, #-976]
	.loc	22 3940 0               @ ../../lib/vasnprintf.c:3940:0
.Ltmp534:
	ldr	r1, [r0, #12]
	ldr	r0, [r11, #-960]
	bl	__aeabi_memcpy
	.loc	22 3941 0               @ ../../lib/vasnprintf.c:3941:0
	ldr	r0, [r11, #-976]
	ldr	r1, [r11, #-960]
	add	r0, r1, r0
	str	r0, [r11, #-960]
.Ltmp535:
.LBB70_68:                              @ %if.end651
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3954 0               @ ../../lib/vasnprintf.c:3954:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	cmp	r1, r0
	beq	.LBB70_70
@ BB#69:                                @ %if.then656
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp536:
	@DEBUG_VALUE: n <- [r11+#-980]+#0
	.loc	22 3956 0               @ ../../lib/vasnprintf.c:3956:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	sub	r2, r0, r1
	.loc	22 3961 0               @ ../../lib/vasnprintf.c:3961:0
.Ltmp537:
	ldr	r0, [r11, #-104]
.Ltmp538:
	.loc	22 3956 0               @ ../../lib/vasnprintf.c:3956:0
	str	r2, [r11, #-980]
	.loc	22 3961 0               @ ../../lib/vasnprintf.c:3961:0
.Ltmp539:
	ldr	r1, [r0, #24]
	ldr	r0, [r11, #-960]
	bl	__aeabi_memcpy
	.loc	22 3962 0               @ ../../lib/vasnprintf.c:3962:0
	ldr	r0, [r11, #-980]
	ldr	r1, [r11, #-960]
	add	r0, r1, r0
	str	r0, [r11, #-960]
.Ltmp540:
.LBB70_70:                              @ %if.end667
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3974 0               @ ../../lib/vasnprintf.c:3974:0
	ldr	r0, [r11, #-952]
	cmp	r0, #16
	bhi	.LBB70_76
@ BB#71:                                @ %if.end667
                                        @   in Loop: Header=BB70_13 Depth=1
	mov	r2, #384
	mov	r1, #1
	orr	r2, r2, #81920
	tst	r2, r1, lsl r0
	bne	.LBB70_74
@ BB#72:                                @ %if.end667
                                        @   in Loop: Header=BB70_13 Depth=1
	mov	r1, #1
	mov	r2, #1536
	tst	r2, r1, lsl r0
	beq	.LBB70_262
@ BB#73:                                @ %sw.bb668
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3985 0               @ ../../lib/vasnprintf.c:3985:0
.Ltmp541:
	ldr	r0, [r11, #-960]
	add	r1, r0, #1
	str	r1, [r11, #-960]
	mov	r1, #108
	strb	r1, [r0]
.LBB70_74:                              @ %sw.bb670
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3997 0               @ ../../lib/vasnprintf.c:3997:0
	ldr	r0, [r11, #-960]
	add	r1, r0, #1
	str	r1, [r11, #-960]
	mov	r1, #108
.LBB70_75:                              @ %sw.bb672
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4000 0               @ ../../lib/vasnprintf.c:4000:0
	strb	r1, [r0]
.Ltmp542:
.LBB70_76:                              @ %sw.epilog675
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4010 0               @ ../../lib/vasnprintf.c:4010:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-960]
	ldrb	r0, [r0, #36]
	strb	r0, [r1]
	.loc	22 4040 0               @ ../../lib/vasnprintf.c:4040:0
	ldr	r0, [r11, #-960]
	strb	r8, [r0, #1]
	.loc	22 4047 0               @ ../../lib/vasnprintf.c:4047:0
	str	r8, [r11, #-964]
	.loc	22 4048 0               @ ../../lib/vasnprintf.c:4048:0
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #20]
	cmn	r0, #1
	beq	.LBB70_79
@ BB#77:                                @ %if.then681
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4050 0               @ ../../lib/vasnprintf.c:4050:0
.Ltmp543:
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #20]
	ldr	r0, [r1, r0, lsl #4]
	cmp	r0, #5
	bne	.LBB70_401
@ BB#78:                                @ %if.end689
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4052 0               @ ../../lib/vasnprintf.c:4052:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	sub	r3, r11, #972
	ldr	r0, [r0, #20]
	add	r0, r1, r0, lsl #4
	ldr	r1, [r11, #-964]
	ldr	r0, [r0, #8]
	add	r2, r1, #1
	str	r2, [r11, #-964]
	str	r0, [r3, r1, lsl #2]
.Ltmp544:
.LBB70_79:                              @ %if.end696
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4054 0               @ ../../lib/vasnprintf.c:4054:0
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #32]
	cmn	r0, #1
	beq	.LBB70_82
@ BB#80:                                @ %if.then700
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4056 0               @ ../../lib/vasnprintf.c:4056:0
.Ltmp545:
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #32]
	ldr	r0, [r1, r0, lsl #4]
	cmp	r0, #5
	bne	.LBB70_401
@ BB#81:                                @ %if.end708
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4058 0               @ ../../lib/vasnprintf.c:4058:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	sub	r3, r11, #972
	ldr	r0, [r0, #32]
	add	r0, r1, r0, lsl #4
	ldr	r1, [r11, #-964]
	ldr	r0, [r0, #8]
	add	r2, r1, #1
	str	r2, [r11, #-964]
	str	r0, [r3, r1, lsl #2]
.Ltmp546:
.LBB70_82:                              @ %if.end716
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4070 0               @ ../../lib/vasnprintf.c:4070:0
	ldr	r0, [r11, #-116]
	mov	r1, #2
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [r11, #-112]
	cmp	r0, r1
	bls	.LBB70_107
@ BB#83:                                @ %if.then720
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp547:
	@DEBUG_VALUE: memory_size <- [r11+#-984]+#0
	@DEBUG_VALUE: memory <- [r11+#-988]+#0
	.loc	22 4070 0               @ ../../lib/vasnprintf.c:4070:0
	ldr	r1, [r11, #-112]
	mov	r0, #12
	cmp	r1, #0
	beq	.LBB70_85
@ BB#84:                                @ %cond.true727
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-112]
	lsleq	r0, r0, #1
.LBB70_85:                              @ %cond.end736
                                        @   in Loop: Header=BB70_13 Depth=1
	str	r0, [r11, #-112]
	ldr	r0, [r11, #-116]
	mov	r1, #2
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [r11, #-112]
	cmp	r0, r1
	bls	.LBB70_87
@ BB#86:                                @ %if.then741
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-116]
	mov	r1, #2
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-112]
.LBB70_87:                              @ %if.end743
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #1
	ldrls	r0, [r11, #-112]
	str	r0, [r11, #-984]
	cmp	r0, #1
	beq	.LBB70_374
@ BB#88:                                @ %if.end754
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	bne	.LBB70_101
@ BB#89:                                @ %if.then760
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-984]
	bl	malloc
	b	.LBB70_102
.Ltmp548:
.LBB70_90:                              @ %if.else124
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1540 0               @ ../../lib/vasnprintf.c:1540:0
	ldr	r1, [r11, #-144]
	ldr	r0, [r11, #-108]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_91:                              @ %if.else124
                                        @   in Loop: Header=BB70_13 Depth=1
	str	r0, [r11, #-148]
	ldr	r0, [r11, #-148]
	cmp	r0, #0
	beq	.LBB70_374
@ BB#92:                                @ %if.end130
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	bne	.LBB70_95
@ BB#93:                                @ %land.lhs.true133
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB70_95
@ BB#94:                                @ %if.then136
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r2, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r0, [r11, #-148]
	bl	__aeabi_memcpy
.LBB70_95:                              @ %if.end137
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-148]
	str	r0, [r11, #-108]
.Ltmp549:
.LBB70_96:                              @ %if.end138
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1541 0               @ ../../lib/vasnprintf.c:1541:0
	ldr	r0, [r11, #-108]
	ldr	r1, [r11, #-116]
	mov	r2, #37
	strb	r2, [r0, r1]
	.loc	22 1542 0               @ ../../lib/vasnprintf.c:1542:0
	ldr	r0, [r11, #-140]
.Ltmp550:
.LBB70_97:                              @ %if.end1353
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4635 0               @ ../../lib/vasnprintf.c:4635:0
	str	r0, [r11, #-116]
	b	.LBB70_12
.Ltmp551:
.LBB70_98:                              @ %sw.bb
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1554 0               @ ../../lib/vasnprintf.c:1554:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r1, [r11, #-116]
	ldr	r0, [r0, #8]
	strb	r1, [r0]
	b	.LBB70_12
.LBB70_99:                              @ %sw.bb159
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1557 0               @ ../../lib/vasnprintf.c:1557:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r1, [r11, #-116]
	ldr	r0, [r0, #8]
	strh	r1, [r0]
	b	.LBB70_12
.LBB70_100:                             @ %sw.bb175
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 1567 0               @ ../../lib/vasnprintf.c:1567:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r1, [r11, #-116]
	ldr	r0, [r0, #8]
	stm	r0, {r1, r8}
	b	.LBB70_12
.Ltmp552:
.LBB70_101:                             @ %if.else762
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4070 0               @ ../../lib/vasnprintf.c:4070:0
	ldr	r1, [r11, #-984]
	ldr	r0, [r11, #-108]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_102:                             @ %if.else762
                                        @   in Loop: Header=BB70_13 Depth=1
	str	r0, [r11, #-988]
	ldr	r0, [r11, #-988]
	cmp	r0, #0
	beq	.LBB70_374
@ BB#103:                               @ %if.end768
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	bne	.LBB70_106
@ BB#104:                               @ %land.lhs.true771
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB70_106
@ BB#105:                               @ %if.then774
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r2, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r0, [r11, #-988]
	bl	__aeabi_memcpy
.LBB70_106:                             @ %if.end775
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-988]
	str	r0, [r11, #-108]
.Ltmp553:
.LBB70_107:                             @ %if.end776
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4075 0               @ ../../lib/vasnprintf.c:4075:0
	ldr	r0, [r11, #-116]
	ldr	r1, [r11, #-108]
	strb	r8, [r1, r0]
	b	.LBB70_109
.LBB70_108:                             @ %if.end1351
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4336 0               @ ../../lib/vasnprintf.c:4336:0
.Ltmp554:
	ldr	r0, [r11, #-1108]
	str	r0, [r11, #-108]
.Ltmp555:
.LBB70_109:                             @ %for.cond778
                                        @   Parent Loop BB70_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	@DEBUG_VALUE: count <- [r11+#-992]+#0
	mvn	r0, #0
	.loc	22 4084 0               @ ../../lib/vasnprintf.c:4084:0
	ldr	r1, [r11, #-112]
.Ltmp556:
	@DEBUG_VALUE: maxlen <- [r11+#-1000]+#0
	.loc	22 4083 0               @ ../../lib/vasnprintf.c:4083:0
	str	r8, [r11, #-996]
	.loc	22 4080 0               @ ../../lib/vasnprintf.c:4080:0
	str	r0, [r11, #-992]
.Ltmp557:
	@DEBUG_VALUE: retcount <- [r11+#-996]+#0
	.loc	22 4084 0               @ ../../lib/vasnprintf.c:4084:0
	ldr	r0, [r11, #-116]
	sub	r0, r1, r0
	.loc	22 4087 0               @ ../../lib/vasnprintf.c:4087:0
	cmp	r0, #0
	.loc	22 4084 0               @ ../../lib/vasnprintf.c:4084:0
	str	r0, [r11, #-1000]
	mvnlt	r0, #-2147483648
	.loc	22 4088 0               @ ../../lib/vasnprintf.c:4088:0
	strlt	r0, [r11, #-1000]
	.loc	22 4131 0               @ ../../lib/vasnprintf.c:4131:0
	ldr	r0, [r11, #-952]
	sub	r0, r0, #1
	cmp	r0, #16
	bhi	.LBB70_334
@ BB#110:                               @ %if.end787
                                        @   in Loop: Header=BB70_109 Depth=2
	lsl	r0, r0, #2
	adr	r1, .LJTI70_0_0
	ldr	pc, [r0, r1]
.LJTI70_0_0:
	.long	.LBB70_111
	.long	.LBB70_114
	.long	.LBB70_117
	.long	.LBB70_120
	.long	.LBB70_123
	.long	.LBB70_126
	.long	.LBB70_129
	.long	.LBB70_132
	.long	.LBB70_135
	.long	.LBB70_138
	.long	.LBB70_141
	.long	.LBB70_144
	.long	.LBB70_147
	.long	.LBB70_150
	.long	.LBB70_153
	.long	.LBB70_156
	.long	.LBB70_159
.LBB70_111:                             @ %sw.bb789
                                        @   in Loop: Header=BB70_109 Depth=2
.Ltmp558:
	@DEBUG_VALUE: arg <- [r11+#-1004]+#0
	.loc	22 4135 0               @ ../../lib/vasnprintf.c:4135:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldrsb	r0, [r0, #8]
	str	r0, [r11, #-1004]
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_163
@ BB#112:                               @ %sw.bb789
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_164
@ BB#113:                               @ %sw.bb800
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
.Ltmp559:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1004]
	b	.LBB70_162
.Ltmp560:
.LBB70_114:                             @ %sw.bb811
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1008]+#0
	.loc	22 4141 0               @ ../../lib/vasnprintf.c:4141:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldrb	r0, [r0, #8]
	str	r0, [r11, #-1008]
	.loc	22 4142 0               @ ../../lib/vasnprintf.c:4142:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_166
@ BB#115:                               @ %sw.bb811
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_167
@ BB#116:                               @ %sw.bb822
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4142 0               @ ../../lib/vasnprintf.c:4142:0
.Ltmp561:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1008]
	b	.LBB70_162
.Ltmp562:
.LBB70_117:                             @ %sw.bb833
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1012]+#0
	.loc	22 4147 0               @ ../../lib/vasnprintf.c:4147:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldrsh	r0, [r0, #8]
	str	r0, [r11, #-1012]
	.loc	22 4148 0               @ ../../lib/vasnprintf.c:4148:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_169
@ BB#118:                               @ %sw.bb833
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_170
@ BB#119:                               @ %sw.bb844
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4148 0               @ ../../lib/vasnprintf.c:4148:0
.Ltmp563:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1012]
	b	.LBB70_162
.Ltmp564:
.LBB70_120:                             @ %sw.bb855
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1016]+#0
	.loc	22 4153 0               @ ../../lib/vasnprintf.c:4153:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldrh	r0, [r0, #8]
	str	r0, [r11, #-1016]
	.loc	22 4154 0               @ ../../lib/vasnprintf.c:4154:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_172
@ BB#121:                               @ %sw.bb855
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_173
@ BB#122:                               @ %sw.bb866
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4154 0               @ ../../lib/vasnprintf.c:4154:0
.Ltmp565:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1016]
	b	.LBB70_162
.Ltmp566:
.LBB70_123:                             @ %sw.bb877
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1020]+#0
	.loc	22 4159 0               @ ../../lib/vasnprintf.c:4159:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1020]
	.loc	22 4160 0               @ ../../lib/vasnprintf.c:4160:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_175
@ BB#124:                               @ %sw.bb877
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_176
@ BB#125:                               @ %sw.bb888
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4160 0               @ ../../lib/vasnprintf.c:4160:0
.Ltmp567:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1020]
	b	.LBB70_162
.Ltmp568:
.LBB70_126:                             @ %sw.bb899
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1024]+#0
	.loc	22 4165 0               @ ../../lib/vasnprintf.c:4165:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1024]
	.loc	22 4166 0               @ ../../lib/vasnprintf.c:4166:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_178
@ BB#127:                               @ %sw.bb899
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_179
@ BB#128:                               @ %sw.bb909
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4166 0               @ ../../lib/vasnprintf.c:4166:0
.Ltmp569:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1024]
	b	.LBB70_162
.Ltmp570:
.LBB70_129:                             @ %sw.bb920
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1028]+#0
	.loc	22 4171 0               @ ../../lib/vasnprintf.c:4171:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1028]
	.loc	22 4172 0               @ ../../lib/vasnprintf.c:4172:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_181
@ BB#130:                               @ %sw.bb920
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_182
@ BB#131:                               @ %sw.bb930
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4172 0               @ ../../lib/vasnprintf.c:4172:0
.Ltmp571:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1028]
	b	.LBB70_162
.Ltmp572:
.LBB70_132:                             @ %sw.bb941
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1032]+#0
	.loc	22 4177 0               @ ../../lib/vasnprintf.c:4177:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1032]
	.loc	22 4178 0               @ ../../lib/vasnprintf.c:4178:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_184
@ BB#133:                               @ %sw.bb941
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_186
@ BB#134:                               @ %sw.bb951
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4178 0               @ ../../lib/vasnprintf.c:4178:0
.Ltmp573:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1032]
	b	.LBB70_162
.Ltmp574:
.LBB70_135:                             @ %sw.bb962
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1040]+#0
	.loc	22 4184 0               @ ../../lib/vasnprintf.c:4184:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r1, #8]
	ldr	r1, [r1, #12]
	str	r1, [r11, #-1036]
	str	r0, [r11, #-1040]
	.loc	22 4185 0               @ ../../lib/vasnprintf.c:4185:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_189
@ BB#136:                               @ %sw.bb962
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_190
@ BB#137:                               @ %sw.bb972
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4185 0               @ ../../lib/vasnprintf.c:4185:0
.Ltmp575:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1040]
	ldr	r5, [r11, #-1036]
	b	.LBB70_185
.Ltmp576:
.LBB70_138:                             @ %sw.bb983
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1048]+#0
	.loc	22 4190 0               @ ../../lib/vasnprintf.c:4190:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r1, #8]
	ldr	r1, [r1, #12]
	str	r1, [r11, #-1044]
	str	r0, [r11, #-1048]
	.loc	22 4191 0               @ ../../lib/vasnprintf.c:4191:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_192
@ BB#139:                               @ %sw.bb983
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_193
@ BB#140:                               @ %sw.bb993
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4191 0               @ ../../lib/vasnprintf.c:4191:0
.Ltmp577:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1048]
	ldr	r5, [r11, #-1044]
	b	.LBB70_185
.Ltmp578:
.LBB70_141:                             @ %sw.bb1004
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1056]+#0
	.loc	22 4197 0               @ ../../lib/vasnprintf.c:4197:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r1, #8]
	ldr	r1, [r1, #12]
	str	r1, [r11, #-1052]
	str	r0, [r11, #-1056]
	.loc	22 4198 0               @ ../../lib/vasnprintf.c:4198:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_195
@ BB#142:                               @ %sw.bb1004
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_197
@ BB#143:                               @ %sw.bb1014
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4198 0               @ ../../lib/vasnprintf.c:4198:0
.Ltmp579:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1056]
	ldr	r5, [r11, #-1052]
	b	.LBB70_185
.Ltmp580:
.LBB70_144:                             @ %sw.bb1025
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1064]+#0
	.loc	22 4203 0               @ ../../lib/vasnprintf.c:4203:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r1, #8]
	ldr	r1, [r1, #12]
	str	r1, [r11, #-1060]
	str	r0, [r11, #-1064]
	.loc	22 4204 0               @ ../../lib/vasnprintf.c:4204:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_199
@ BB#145:                               @ %sw.bb1025
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_201
@ BB#146:                               @ %sw.bb1036
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4204 0               @ ../../lib/vasnprintf.c:4204:0
.Ltmp581:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1064]
	ldr	r5, [r11, #-1060]
	b	.LBB70_185
.Ltmp582:
.LBB70_147:                             @ %sw.bb1047
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1068]+#0
	.loc	22 4209 0               @ ../../lib/vasnprintf.c:4209:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1068]
	.loc	22 4210 0               @ ../../lib/vasnprintf.c:4210:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_204
@ BB#148:                               @ %sw.bb1047
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_205
@ BB#149:                               @ %sw.bb1057
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4210 0               @ ../../lib/vasnprintf.c:4210:0
.Ltmp583:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1068]
	b	.LBB70_162
.Ltmp584:
.LBB70_150:                             @ %sw.bb1068
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1072]+#0
	.loc	22 4216 0               @ ../../lib/vasnprintf.c:4216:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1072]
	.loc	22 4217 0               @ ../../lib/vasnprintf.c:4217:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_207
@ BB#151:                               @ %sw.bb1068
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_208
@ BB#152:                               @ %sw.bb1078
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4217 0               @ ../../lib/vasnprintf.c:4217:0
.Ltmp585:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1072]
	b	.LBB70_162
.Ltmp586:
.LBB70_153:                             @ %sw.bb1089
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1076]+#0
	.loc	22 4223 0               @ ../../lib/vasnprintf.c:4223:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1076]
	.loc	22 4224 0               @ ../../lib/vasnprintf.c:4224:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_210
@ BB#154:                               @ %sw.bb1089
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_211
@ BB#155:                               @ %sw.bb1099
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4224 0               @ ../../lib/vasnprintf.c:4224:0
.Ltmp587:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1076]
	b	.LBB70_162
.Ltmp588:
.LBB70_156:                             @ %sw.bb1110
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1080]+#0
	.loc	22 4230 0               @ ../../lib/vasnprintf.c:4230:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1080]
	.loc	22 4231 0               @ ../../lib/vasnprintf.c:4231:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_213
@ BB#157:                               @ %sw.bb1110
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_214
@ BB#158:                               @ %sw.bb1120
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4231 0               @ ../../lib/vasnprintf.c:4231:0
.Ltmp589:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1080]
	b	.LBB70_162
.Ltmp590:
.LBB70_159:                             @ %sw.bb1131
                                        @   in Loop: Header=BB70_109 Depth=2
	@DEBUG_VALUE: arg <- [r11+#-1084]+#0
	.loc	22 4237 0               @ ../../lib/vasnprintf.c:4237:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #40]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-1084]
	.loc	22 4238 0               @ ../../lib/vasnprintf.c:4238:0
	ldr	r0, [r11, #-964]
	cmp	r0, #2
	beq	.LBB70_216
@ BB#160:                               @ %sw.bb1131
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #1
	bne	.LBB70_220
@ BB#161:                               @ %sw.bb1141
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4238 0               @ ../../lib/vasnprintf.c:4238:0
.Ltmp591:
	ldr	r3, [r11, #-972]
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r7, [r11, #-1084]
.Ltmp592:
.LBB70_162:                             @ %sw.bb800
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
	push	{r7, r10}
	b	.LBB70_223
.LBB70_163:                             @ %sw.bb804
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r7, [r11, #-968]
	ldr	r5, [r11, #-1004]
	b	.LBB70_185
.LBB70_164:                             @ %sw.bb789
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_384
@ BB#165:                               @ %sw.bb797
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1004]
	b	.LBB70_188
.Ltmp593:
.LBB70_166:                             @ %sw.bb826
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4142 0               @ ../../lib/vasnprintf.c:4142:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r7, [r11, #-968]
	ldr	r5, [r11, #-1008]
	b	.LBB70_185
.LBB70_167:                             @ %sw.bb811
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_385
@ BB#168:                               @ %sw.bb819
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1008]
	b	.LBB70_188
.Ltmp594:
.LBB70_169:                             @ %sw.bb848
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4148 0               @ ../../lib/vasnprintf.c:4148:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r7, [r11, #-968]
	ldr	r5, [r11, #-1012]
	b	.LBB70_185
.LBB70_170:                             @ %sw.bb833
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_386
@ BB#171:                               @ %sw.bb841
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1012]
	b	.LBB70_188
.Ltmp595:
.LBB70_172:                             @ %sw.bb870
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4154 0               @ ../../lib/vasnprintf.c:4154:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r7, [r11, #-968]
	ldr	r5, [r11, #-1016]
	b	.LBB70_185
.LBB70_173:                             @ %sw.bb855
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_387
@ BB#174:                               @ %sw.bb863
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1016]
	b	.LBB70_188
.Ltmp596:
.LBB70_175:                             @ %sw.bb892
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4160 0               @ ../../lib/vasnprintf.c:4160:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r7, [r11, #-968]
	ldr	r5, [r11, #-1020]
	b	.LBB70_185
.LBB70_176:                             @ %sw.bb877
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_388
@ BB#177:                               @ %sw.bb885
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1020]
	b	.LBB70_188
.Ltmp597:
.LBB70_178:                             @ %sw.bb913
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4166 0               @ ../../lib/vasnprintf.c:4166:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r7, [r11, #-968]
	ldr	r5, [r11, #-1024]
	b	.LBB70_185
.LBB70_179:                             @ %sw.bb899
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_389
@ BB#180:                               @ %sw.bb906
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1024]
	b	.LBB70_188
.Ltmp598:
.LBB70_181:                             @ %sw.bb934
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4172 0               @ ../../lib/vasnprintf.c:4172:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r7, [r11, #-968]
	ldr	r5, [r11, #-1028]
	b	.LBB70_185
.LBB70_182:                             @ %sw.bb920
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_390
@ BB#183:                               @ %sw.bb927
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1028]
	b	.LBB70_188
.Ltmp599:
.LBB70_184:                             @ %sw.bb955
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4178 0               @ ../../lib/vasnprintf.c:4178:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r7, [r11, #-968]
	ldr	r5, [r11, #-1032]
.Ltmp600:
.LBB70_185:                             @ %sw.bb804
                                        @   in Loop: Header=BB70_109 Depth=2
	sub	sp, sp, #16
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
.Ltmp601:
	str	r7, [sp]
	str	r5, [sp, #4]
	b	.LBB70_218
.Ltmp602:
.LBB70_186:                             @ %sw.bb941
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_391
@ BB#187:                               @ %sw.bb948
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4178 0               @ ../../lib/vasnprintf.c:4178:0
.Ltmp603:
	ldr	r3, [r11, #-1032]
.Ltmp604:
.LBB70_188:                             @ %sw.bb797
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r7, [r11, #-108]
	sub	sp, sp, #8
	str	r10, [sp]
	add	r0, r7, r0
	b	.LBB70_224
.Ltmp605:
.LBB70_189:                             @ %sw.bb976
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4185 0               @ ../../lib/vasnprintf.c:4185:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r7, [r11, #-1040]
	ldr	r4, [r11, #-1036]
	b	.LBB70_196
.LBB70_190:                             @ %sw.bb962
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_392
@ BB#191:                               @ %sw.bb969
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r3, [r11, #-108]
	ldr	r7, [r11, #-1040]
	ldr	r6, [r11, #-1036]
	b	.LBB70_203
.Ltmp606:
.LBB70_192:                             @ %sw.bb997
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4191 0               @ ../../lib/vasnprintf.c:4191:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r7, [r11, #-1048]
	ldr	r4, [r11, #-1044]
	b	.LBB70_196
.LBB70_193:                             @ %sw.bb983
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_393
@ BB#194:                               @ %sw.bb990
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r3, [r11, #-108]
	ldr	r7, [r11, #-1048]
	ldr	r6, [r11, #-1044]
	b	.LBB70_203
.Ltmp607:
.LBB70_195:                             @ %sw.bb1018
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4198 0               @ ../../lib/vasnprintf.c:4198:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r7, [r11, #-1056]
	ldr	r4, [r11, #-1052]
.Ltmp608:
.LBB70_196:                             @ %sw.bb976
                                        @   in Loop: Header=BB70_109 Depth=2
	sub	sp, sp, #24
	.loc	22 4185 0               @ ../../lib/vasnprintf.c:4185:0
.Ltmp609:
	str	r7, [sp, #8]
	str	r4, [sp, #12]
	b	.LBB70_200
.Ltmp610:
.LBB70_197:                             @ %sw.bb1004
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_394
@ BB#198:                               @ %sw.bb1011
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4198 0               @ ../../lib/vasnprintf.c:4198:0
.Ltmp611:
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r3, [r11, #-108]
	ldr	r7, [r11, #-1056]
	ldr	r6, [r11, #-1052]
	b	.LBB70_203
.Ltmp612:
.LBB70_199:                             @ %sw.bb1040
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4204 0               @ ../../lib/vasnprintf.c:4204:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r4, [r11, #-1064]
	ldr	r7, [r11, #-1060]
	sub	sp, sp, #24
	str	r4, [sp, #8]
	str	r7, [sp, #12]
.Ltmp613:
.LBB70_200:                             @ %sw.bb976
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4185 0               @ ../../lib/vasnprintf.c:4185:0
	add	r0, r6, r0
	str	r10, [sp, #16]
	str	r5, [sp]
	bl	snprintf
	add	sp, sp, #24
	b	.LBB70_225
.Ltmp614:
.LBB70_201:                             @ %sw.bb1025
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_395
@ BB#202:                               @ %sw.bb1033
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4204 0               @ ../../lib/vasnprintf.c:4204:0
.Ltmp615:
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r3, [r11, #-108]
	ldr	r7, [r11, #-1064]
	ldr	r6, [r11, #-1060]
.Ltmp616:
.LBB70_203:                             @ %sw.bb969
                                        @   in Loop: Header=BB70_109 Depth=2
	sub	sp, sp, #16
	.loc	22 4185 0               @ ../../lib/vasnprintf.c:4185:0
.Ltmp617:
	add	r0, r3, r0
	str	r7, [sp]
	stmib	sp, {r6, r10}
	bl	snprintf
	b	.LBB70_219
.Ltmp618:
.LBB70_204:                             @ %sw.bb1061
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4210 0               @ ../../lib/vasnprintf.c:4210:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r4, [r11, #-1068]
	b	.LBB70_217
.LBB70_205:                             @ %sw.bb1047
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_396
@ BB#206:                               @ %sw.bb1054
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1068]
	b	.LBB70_222
.Ltmp619:
.LBB70_207:                             @ %sw.bb1082
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4217 0               @ ../../lib/vasnprintf.c:4217:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r4, [r11, #-1072]
	b	.LBB70_217
.LBB70_208:                             @ %sw.bb1068
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_397
@ BB#209:                               @ %sw.bb1075
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1072]
	b	.LBB70_222
.Ltmp620:
.LBB70_210:                             @ %sw.bb1103
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4224 0               @ ../../lib/vasnprintf.c:4224:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r4, [r11, #-1076]
	b	.LBB70_217
.LBB70_211:                             @ %sw.bb1089
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_398
@ BB#212:                               @ %sw.bb1096
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1076]
	b	.LBB70_222
.Ltmp621:
.LBB70_213:                             @ %sw.bb1124
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4231 0               @ ../../lib/vasnprintf.c:4231:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r4, [r11, #-1080]
	b	.LBB70_217
.LBB70_214:                             @ %sw.bb1110
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_399
@ BB#215:                               @ %sw.bb1117
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r3, [r11, #-1080]
	b	.LBB70_222
.Ltmp622:
.LBB70_216:                             @ %sw.bb1145
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4238 0               @ ../../lib/vasnprintf.c:4238:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	ldr	r3, [r11, #-972]
	ldr	r5, [r11, #-968]
	ldr	r4, [r11, #-1084]
.Ltmp623:
.LBB70_217:                             @ %sw.bb1061
                                        @   in Loop: Header=BB70_109 Depth=2
	sub	sp, sp, #16
	.loc	22 4210 0               @ ../../lib/vasnprintf.c:4210:0
.Ltmp624:
	str	r5, [sp]
	str	r4, [sp, #4]
.Ltmp625:
.LBB70_218:                             @ %sw.bb804
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
	add	r0, r6, r0
	str	r10, [sp, #8]
	bl	snprintf
.Ltmp626:
.LBB70_219:                             @ %sw.bb804
                                        @   in Loop: Header=BB70_109 Depth=2
	add	sp, sp, #16
	b	.LBB70_225
.LBB70_220:                             @ %sw.bb1131
                                        @   in Loop: Header=BB70_109 Depth=2
	cmp	r0, #0
	bne	.LBB70_334
@ BB#221:                               @ %sw.bb1138
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4238 0               @ ../../lib/vasnprintf.c:4238:0
.Ltmp627:
	ldr	r3, [r11, #-1084]
.Ltmp628:
.LBB70_222:                             @ %sw.bb1054
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4210 0               @ ../../lib/vasnprintf.c:4210:0
	ldr	r2, [r11, #-88]
	ldr	r1, [r11, #-1000]
	ldr	r0, [r11, #-116]
	ldr	r6, [r11, #-108]
	sub	sp, sp, #8
	str	r10, [sp]
.Ltmp629:
.LBB70_223:                             @ %sw.bb800
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
	add	r0, r6, r0
.LBB70_224:                             @ %sw.bb800
                                        @   in Loop: Header=BB70_109 Depth=2
	bl	snprintf
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	add	sp, sp, #8
.LBB70_225:                             @ %sw.bb804
                                        @   in Loop: Header=BB70_109 Depth=2
.Ltmp630:
	.loc	22 4250 0               @ ../../lib/vasnprintf.c:4250:0
	ldr	r1, [r11, #-992]
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
.Ltmp631:
	str	r0, [r11, #-996]
.Ltmp632:
	.loc	22 4250 0               @ ../../lib/vasnprintf.c:4250:0
	cmp	r1, #0
	blt	.LBB70_229
@ BB#226:                               @ %if.then1156
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4254 0               @ ../../lib/vasnprintf.c:4254:0
.Ltmp633:
	ldr	r0, [r11, #-1000]
	ldr	r1, [r11, #-992]
	cmp	r1, r0
	bhs	.LBB70_228
@ BB#227:                               @ %land.lhs.true1159
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-116]
	ldr	r1, [r11, #-108]
	add	r0, r1, r0
	ldr	r1, [r11, #-992]
	ldrb	r0, [r0, r1]
	cmp	r0, #0
	bne	.LBB70_401
.LBB70_228:                             @ %if.end1166
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4258 0               @ ../../lib/vasnprintf.c:4258:0
	ldr	r0, [r11, #-992]
	ldr	r1, [r11, #-996]
	cmp	r1, r0
	ble	.LBB70_239
	b	.LBB70_238
.Ltmp634:
.LBB70_229:                             @ %if.else1171
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4265 0               @ ../../lib/vasnprintf.c:4265:0
	ldr	r0, [r11, #-960]
	ldrb	r0, [r0, #1]
	cmp	r0, #0
	beq	.LBB70_231
@ BB#230:                               @ %if.then1176
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4269 0               @ ../../lib/vasnprintf.c:4269:0
.Ltmp635:
	ldr	r0, [r11, #-960]
	strb	r8, [r0, #1]
	b	.LBB70_109
.Ltmp636:
.LBB70_231:                             @ %if.else1178
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4275 0               @ ../../lib/vasnprintf.c:4275:0
	ldr	r0, [r11, #-996]
	cmp	r0, #0
	bge	.LBB70_238
@ BB#232:                               @ %if.then1181
                                        @   in Loop: Header=BB70_109 Depth=2
.Ltmp637:
	@DEBUG_VALUE: bigger_need <- [r11+#-1088]+#0
	.loc	22 4283 7               @ ../../lib/vasnprintf.c:4283:7
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #0
	mov	r1, #12
	ldreq	r0, [r11, #-112]
	lsleq	r0, r0, #1
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	22 4284 0               @ ../../lib/vasnprintf.c:4284:0
	ldr	r1, [r11, #-112]
	.loc	22 4283 7               @ ../../lib/vasnprintf.c:4283:7
	str	r0, [r11, #-1088]
	.loc	22 4284 0               @ ../../lib/vasnprintf.c:4284:0
	cmp	r0, r1
	bls	.LBB70_109
@ BB#233:                               @ %if.then1193
                                        @   in Loop: Header=BB70_109 Depth=2
.Ltmp638:
	@DEBUG_VALUE: memory_size <- [r11+#-1092]+#0
	@DEBUG_VALUE: memory <- [r11+#-1096]+#0
	.loc	22 4284 0               @ ../../lib/vasnprintf.c:4284:0
	ldr	r1, [r11, #-112]
	mov	r0, #12
	cmp	r1, #0
	beq	.LBB70_235
@ BB#234:                               @ %cond.true1200
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-112]
	lsleq	r0, r0, #1
.LBB70_235:                             @ %cond.end1209
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r1, [r11, #-1088]
	str	r0, [r11, #-112]
	cmp	r1, r0
	ldrhi	r0, [r11, #-1088]
	strhi	r0, [r11, #-112]
	mov	r0, #1
	ldr	r1, [r11, #-112]
	cmp	r1, #1
	ldrls	r0, [r11, #-112]
	str	r0, [r11, #-1092]
	cmp	r0, #1
	beq	.LBB70_374
@ BB#236:                               @ %if.end1225
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	bne	.LBB70_253
@ BB#237:                               @ %if.then1231
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-1092]
	bl	malloc
	b	.LBB70_254
.Ltmp639:
.LBB70_238:                             @ %if.else1248
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4288 0               @ ../../lib/vasnprintf.c:4288:0
	ldr	r0, [r11, #-996]
	str	r0, [r11, #-992]
.Ltmp640:
.LBB70_239:                             @ %if.end1251
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4294 0               @ ../../lib/vasnprintf.c:4294:0
	ldr	r0, [r11, #-992]
	cmp	r0, #0
	blt	.LBB70_344
@ BB#240:                               @ %if.end1273
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4311 0               @ ../../lib/vasnprintf.c:4311:0
	ldr	r0, [r11, #-992]
	ldr	r1, [r11, #-1000]
	add	r0, r0, #1
	cmp	r0, r1
	blo	.LBB70_261
@ BB#241:                               @ %if.then1277
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4316 0               @ ../../lib/vasnprintf.c:4316:0
.Ltmp641:
	ldr	r0, [r11, #-1000]
	cmn	r0, #-2147483647
	beq	.LBB70_353
@ BB#242:                               @ %if.else1281
                                        @   in Loop: Header=BB70_109 Depth=2
.Ltmp642:
	@DEBUG_VALUE: n <- [r11+#-1100]+#0
	.loc	22 4330 16              @ ../../lib/vasnprintf.c:4330:16
	ldr	r1, [r11, #-992]
	ldr	r0, [r11, #-116]
	add	r1, r1, #2
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r2, [r11, #-112]
	mov	r1, #1
	cmp	r2, #0
	ldreq	r1, [r11, #-112]
	lsleq	r1, r1, #1
	bl	xmax
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	22 4336 0               @ ../../lib/vasnprintf.c:4336:0
	ldr	r1, [r11, #-112]
	.loc	22 4330 16              @ ../../lib/vasnprintf.c:4330:16
	str	r0, [r11, #-1100]
	.loc	22 4336 0               @ ../../lib/vasnprintf.c:4336:0
	cmp	r0, r1
	bls	.LBB70_109
@ BB#243:                               @ %if.then1298
                                        @   in Loop: Header=BB70_109 Depth=2
.Ltmp643:
	@DEBUG_VALUE: memory_size <- [r11+#-1104]+#0
	@DEBUG_VALUE: memory <- [r11+#-1108]+#0
	.loc	22 4336 0               @ ../../lib/vasnprintf.c:4336:0
	ldr	r1, [r11, #-112]
	mov	r0, #12
	cmp	r1, #0
	beq	.LBB70_245
@ BB#244:                               @ %cond.true1305
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-112]
	lsleq	r0, r0, #1
.LBB70_245:                             @ %cond.end1314
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r1, [r11, #-1100]
	str	r0, [r11, #-112]
	cmp	r1, r0
	ldrhi	r0, [r11, #-1100]
	strhi	r0, [r11, #-112]
	mov	r0, #1
	ldr	r1, [r11, #-112]
	cmp	r1, #1
	ldrls	r0, [r11, #-112]
	str	r0, [r11, #-1104]
	cmp	r0, #1
	beq	.LBB70_374
@ BB#246:                               @ %if.end1330
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	bne	.LBB70_248
@ BB#247:                               @ %if.then1336
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-1104]
	bl	malloc
	b	.LBB70_249
.LBB70_248:                             @ %if.else1338
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r1, [r11, #-1104]
	ldr	r0, [r11, #-108]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_249:                             @ %if.else1338
                                        @   in Loop: Header=BB70_109 Depth=2
	str	r0, [r11, #-1108]
	ldr	r0, [r11, #-1108]
	cmp	r0, #0
	beq	.LBB70_374
@ BB#250:                               @ %if.end1344
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	bne	.LBB70_108
@ BB#251:                               @ %land.lhs.true1347
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB70_108
@ BB#252:                               @ %if.then1350
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r2, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r0, [r11, #-1108]
	bl	__aeabi_memcpy
	b	.LBB70_108
.Ltmp644:
.LBB70_253:                             @ %if.else1233
                                        @   in Loop: Header=BB70_109 Depth=2
	.loc	22 4284 0               @ ../../lib/vasnprintf.c:4284:0
	ldr	r1, [r11, #-1092]
	ldr	r0, [r11, #-108]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_254:                             @ %if.else1233
                                        @   in Loop: Header=BB70_109 Depth=2
	str	r0, [r11, #-1096]
	ldr	r0, [r11, #-1096]
	cmp	r0, #0
	beq	.LBB70_374
@ BB#255:                               @ %if.end1239
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	bne	.LBB70_258
@ BB#256:                               @ %land.lhs.true1242
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB70_258
@ BB#257:                               @ %if.then1245
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r2, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r0, [r11, #-1096]
	bl	__aeabi_memcpy
.LBB70_258:                             @ %if.end1246
                                        @   in Loop: Header=BB70_109 Depth=2
	ldr	r0, [r11, #-1096]
	str	r0, [r11, #-108]
	b	.LBB70_109
.Ltmp645:
.LBB70_259:                             @ %if.else264
                                        @   in Loop: Header=BB70_13 Depth=1
	@DEBUG_VALUE: digitp <- [r11+#-892]+#0
	.loc	22 2592 0               @ ../../lib/vasnprintf.c:2592:0
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #12]
	str	r0, [r11, #-892]
.LBB70_260:                             @ %do.body
                                        @   Parent Loop BB70_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	22 2595 14              @ ../../lib/vasnprintf.c:2595:14
	ldr	r1, [r11, #-160]
	mov	r0, #1
	cmp	r1, #0
	ldr	r1, [r11, #-892]
	ldreq	r0, [r11, #-160]
	add	r2, r1, #1
	str	r2, [r11, #-892]
	addeq	r0, r0, r0, lsl #2
	ldrb	r1, [r1]
	lsleq	r0, r0, #1
	sub	r1, r1, #48
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-160]
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-892]
	ldr	r0, [r0, #16]
	cmp	r1, r0
	bne	.LBB70_260
	b	.LBB70_265
.Ltmp646:
.LBB70_261:                             @ %if.end1353
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4635 0               @ ../../lib/vasnprintf.c:4635:0
	ldr	r0, [r11, #-992]
	b	.LBB70_333
.Ltmp647:
.LBB70_262:                             @ %if.end667
                                        @   in Loop: Header=BB70_13 Depth=1
	cmp	r0, #12
	bne	.LBB70_76
@ BB#263:                               @ %sw.bb672
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4000 0               @ ../../lib/vasnprintf.c:4000:0
.Ltmp648:
	ldr	r0, [r11, #-960]
	add	r1, r0, #1
	str	r1, [r11, #-960]
	mov	r1, #76
	b	.LBB70_75
.Ltmp649:
.LBB70_264:                             @ %if.else262
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2588 0               @ ../../lib/vasnprintf.c:2588:0
	ldr	r0, [r11, #-888]
	str	r0, [r11, #-160]
.Ltmp650:
.LBB70_265:                             @ %if.end280
                                        @   in Loop: Header=BB70_13 Depth=1
	mov	r0, #1
	.loc	22 2598 0               @ ../../lib/vasnprintf.c:2598:0
	str	r0, [r11, #-156]
.Ltmp651:
.LBB70_266:                             @ %if.end281
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2603 0               @ ../../lib/vasnprintf.c:2603:0
	ldr	r0, [r11, #-104]
	.loc	22 2601 0               @ ../../lib/vasnprintf.c:2601:0
	str	r8, [r11, #-164]
	.loc	22 2602 0               @ ../../lib/vasnprintf.c:2602:0
	str	r8, [r11, #-168]
	.loc	22 2603 0               @ ../../lib/vasnprintf.c:2603:0
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	cmp	r1, r0
	beq	.LBB70_275
@ BB#267:                               @ %if.then284
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2605 0               @ ../../lib/vasnprintf.c:2605:0
.Ltmp652:
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #32]
	cmn	r0, #1
	beq	.LBB70_271
@ BB#268:                               @ %if.then287
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp653:
	@DEBUG_VALUE: arg <- [r11+#-896]+#0
	.loc	22 2609 0               @ ../../lib/vasnprintf.c:2609:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #32]
	ldr	r0, [r1, r0, lsl #4]
	cmp	r0, #5
	bne	.LBB70_401
@ BB#269:                               @ %if.end297
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2611 0               @ ../../lib/vasnprintf.c:2611:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-76]
	ldr	r0, [r0, #32]
	add	r0, r1, r0, lsl #4
	ldr	r0, [r0, #8]
	str	r0, [r11, #-896]
	.loc	22 2614 0               @ ../../lib/vasnprintf.c:2614:0
	cmp	r0, #0
	blt	.LBB70_275
@ BB#270:                               @ %if.then305
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2616 0               @ ../../lib/vasnprintf.c:2616:0
.Ltmp654:
	ldr	r0, [r11, #-896]
	str	r0, [r11, #-168]
	b	.LBB70_274
.Ltmp655:
.LBB70_271:                             @ %if.else307
                                        @   in Loop: Header=BB70_13 Depth=1
	@DEBUG_VALUE: digitp <- [r11+#-900]+#0
	.loc	22 2622 0               @ ../../lib/vasnprintf.c:2622:0
	ldr	r0, [r11, #-104]
	ldr	r0, [r0, #24]
	.loc	22 2624 0               @ ../../lib/vasnprintf.c:2624:0
	str	r8, [r11, #-168]
	.loc	22 2622 0               @ ../../lib/vasnprintf.c:2622:0
	add	r0, r0, #1
	str	r0, [r11, #-900]
	b	.LBB70_273
.LBB70_272:                             @ %while.body
                                        @   in Loop: Header=BB70_273 Depth=2
	.loc	22 2626 18              @ ../../lib/vasnprintf.c:2626:18
	ldr	r1, [r11, #-168]
	mov	r0, #1
	cmp	r1, #0
	ldr	r1, [r11, #-900]
	ldreq	r0, [r11, #-168]
	add	r2, r1, #1
	str	r2, [r11, #-900]
	addeq	r0, r0, r0, lsl #2
	ldrb	r1, [r1]
	lsleq	r0, r0, #1
	sub	r1, r1, #48
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-168]
.LBB70_273:                             @ %while.cond
                                        @   Parent Loop BB70_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	22 2625 0               @ ../../lib/vasnprintf.c:2625:0
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-900]
	ldr	r0, [r0, #28]
	cmp	r1, r0
	bne	.LBB70_272
.LBB70_274:                             @ %while.end
                                        @   in Loop: Header=BB70_13 Depth=1
	mov	r0, #1
	.loc	22 2627 0               @ ../../lib/vasnprintf.c:2627:0
	str	r0, [r11, #-164]
.Ltmp656:
.LBB70_275:                             @ %if.end327
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2634 0               @ ../../lib/vasnprintf.c:2634:0
	ldr	r0, [r11, #-164]
	.loc	22 2647 0               @ ../../lib/vasnprintf.c:2647:0
	str	r8, [r11, #-172]
	mov	r1, #12
	.loc	22 2634 0               @ ../../lib/vasnprintf.c:2634:0
	cmp	r0, #0
	moveq	r0, #6
	.loc	22 2635 0               @ ../../lib/vasnprintf.c:2635:0
	streq	r0, [r11, #-168]
	.loc	22 2649 0               @ ../../lib/vasnprintf.c:2649:0
	ldr	r0, [r11, #-168]
	cmp	r0, #0
	.loc	22 2650 0               @ ../../lib/vasnprintf.c:2650:0
	ldrne	r0, [r11, #-168]
	strne	r0, [r11, #-172]
	.loc	22 2684 16              @ ../../lib/vasnprintf.c:2684:16
	ldr	r0, [r11, #-172]
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	22 2686 0               @ ../../lib/vasnprintf.c:2686:0
	ldr	r1, [r11, #-160]
	.loc	22 2684 16              @ ../../lib/vasnprintf.c:2684:16
	str	r0, [r11, #-172]
	.loc	22 2686 0               @ ../../lib/vasnprintf.c:2686:0
	cmp	r0, r1
	mov	r1, #1
	.loc	22 2687 0               @ ../../lib/vasnprintf.c:2687:0
	ldrlo	r0, [r11, #-160]
	strlo	r0, [r11, #-172]
	.loc	22 2689 16              @ ../../lib/vasnprintf.c:2689:16
	ldr	r0, [r11, #-172]
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-172]
	.loc	22 2691 0               @ ../../lib/vasnprintf.c:2691:0
	cmp	r0, #700
	bhi	.LBB70_277
@ BB#276:                               @ %if.then343
                                        @   in Loop: Header=BB70_13 Depth=1
	sub	r0, r11, #872
	.loc	22 2692 0               @ ../../lib/vasnprintf.c:2692:0
	str	r0, [r11, #-876]
	b	.LBB70_279
.LBB70_277:                             @ %if.else344
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp657:
	@DEBUG_VALUE: tmp_memsize <- [r11+#-904]+#0
	.loc	22 2695 0               @ ../../lib/vasnprintf.c:2695:0
	ldr	r1, [r11, #-172]
	mov	r0, #1
	cmp	r1, #1
	ldrls	r0, [r11, #-172]
	str	r0, [r11, #-904]
	.loc	22 2697 0               @ ../../lib/vasnprintf.c:2697:0
	cmp	r0, #1
	beq	.LBB70_374
@ BB#278:                               @ %if.end356
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2700 0               @ ../../lib/vasnprintf.c:2700:0
	ldr	r0, [r11, #-904]
	bl	malloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-876]
	.loc	22 2701 0               @ ../../lib/vasnprintf.c:2701:0
	cmp	r0, #0
	beq	.LBB70_374
.Ltmp658:
.LBB70_279:                             @ %if.end362
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2707 0               @ ../../lib/vasnprintf.c:2707:0
	ldr	r0, [r11, #-876]
	.loc	22 2706 0               @ ../../lib/vasnprintf.c:2706:0
	str	r8, [r11, #-880]
	.loc	22 2714 0               @ ../../lib/vasnprintf.c:2714:0
.Ltmp659:
	ldr	r1, [r11, #-76]
.Ltmp660:
	.loc	22 2707 0               @ ../../lib/vasnprintf.c:2707:0
	str	r0, [r11, #-884]
	.loc	22 2714 0               @ ../../lib/vasnprintf.c:2714:0
.Ltmp661:
	ldr	r0, [r11, #-104]
.Ltmp662:
	@DEBUG_VALUE: arg <- [r11+#-912]+#0
	ldr	r0, [r0, #40]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r1, #8]
	ldr	r1, [r1, #12]
	str	r1, [r11, #-908]
	str	r0, [r11, #-912]
	.loc	22 2716 0               @ ../../lib/vasnprintf.c:2716:0
	ldr	r0, [r11, #-912]
	ldr	r1, [r11, #-908]
	bl	rpl_isnanl
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	beq	.LBB70_283
@ BB#280:                               @ %if.then372
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2718 0               @ ../../lib/vasnprintf.c:2718:0
.Ltmp663:
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #65
	blt	.LBB70_287
@ BB#281:                               @ %land.lhs.true377
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #90
	bgt	.LBB70_287
@ BB#282:                               @ %if.then382
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2720 0               @ ../../lib/vasnprintf.c:2720:0
.Ltmp664:
	ldr	r0, [r11, #-884]
	mov	r2, #78
	add	r1, r0, #1
	str	r1, [r11, #-884]
	strb	r2, [r0]
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #65
	b	.LBB70_288
.Ltmp665:
.LBB70_283:                             @ %cond.true393
                                        @   in Loop: Header=BB70_13 Depth=1
	@DEBUG_VALUE: sign <- [r11+#-916]+#0
	.loc	22 2734 0               @ ../../lib/vasnprintf.c:2734:0
	ldr	r0, [r11, #-908]
	.loc	22 2729 0               @ ../../lib/vasnprintf.c:2729:0
	str	r8, [r11, #-916]
	.loc	22 2734 0               @ ../../lib/vasnprintf.c:2734:0
	cmp	r0, #0
	bge	.LBB70_285
@ BB#284:                               @ %if.then398
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2737 0               @ ../../lib/vasnprintf.c:2737:0
.Ltmp666:
	ldr	r2, [r11, #-912]
	ldr	r3, [r11, #-908]
	mvn	r0, #0
	mov	r1, #-2147483648
	.loc	22 2736 0               @ ../../lib/vasnprintf.c:2736:0
	str	r0, [r11, #-916]
	mov	r0, #0
	.loc	22 2737 0               @ ../../lib/vasnprintf.c:2737:0
	bl	__aeabi_dsub
	str	r1, [r11, #-908]
	str	r0, [r11, #-912]
.Ltmp667:
.LBB70_285:                             @ %if.end400
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2740 0               @ ../../lib/vasnprintf.c:2740:0
	ldr	r0, [r11, #-916]
	cmp	r0, #0
	bge	.LBB70_289
@ BB#286:                               @ %if.then403
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2741 0               @ ../../lib/vasnprintf.c:2741:0
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #45
	strb	r1, [r0]
	b	.LBB70_292
.Ltmp668:
.LBB70_287:                             @ %if.else386
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2724 0               @ ../../lib/vasnprintf.c:2724:0
	ldr	r0, [r11, #-884]
	mov	r2, #110
	add	r1, r0, #1
	str	r1, [r11, #-884]
	strb	r2, [r0]
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #97
.Ltmp669:
.LBB70_288:                             @ %if.then382
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2720 0               @ ../../lib/vasnprintf.c:2720:0
	strb	r1, [r0]
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	strb	r2, [r0]
	b	.LBB70_299
.Ltmp670:
.LBB70_289:                             @ %if.else405
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2742 0               @ ../../lib/vasnprintf.c:2742:0
	ldrb	r0, [r11, #-152]
	tst	r0, #4
	beq	.LBB70_291
@ BB#290:                               @ %if.then407
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2743 0               @ ../../lib/vasnprintf.c:2743:0
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #43
	strb	r1, [r0]
	b	.LBB70_292
.LBB70_291:                             @ %if.else409
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2744 0               @ ../../lib/vasnprintf.c:2744:0
	ldrb	r0, [r11, #-152]
	tst	r0, #8
	.loc	22 2745 0               @ ../../lib/vasnprintf.c:2745:0
	ldrne	r0, [r11, #-884]
	addne	r1, r0, #1
	strne	r1, [r11, #-884]
	strbne	r9, [r0]
.LBB70_292:                             @ %if.end416
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2747 0               @ ../../lib/vasnprintf.c:2747:0
	ldr	r4, [r11, #-912]
	ldr	r5, [r11, #-908]
	mov	r2, #0
	mov	r3, #0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmple
	mov	r6, r0
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpun
	orrs	r0, r0, r6
	bne	.LBB70_400
@ BB#293:                               @ %land.lhs.true419
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r4, [r11, #-912]
	ldr	r5, [r11, #-908]
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB70_400
@ BB#294:                               @ %if.then422
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2749 0               @ ../../lib/vasnprintf.c:2749:0
.Ltmp671:
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #65
	blt	.LBB70_297
@ BB#295:                               @ %land.lhs.true427
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-104]
	ldrb	r0, [r0, #36]
	cmp	r0, #90
	bgt	.LBB70_297
@ BB#296:                               @ %if.then432
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2751 0               @ ../../lib/vasnprintf.c:2751:0
.Ltmp672:
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #73
	strb	r1, [r0]
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #78
	strb	r1, [r0]
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #70
	b	.LBB70_298
.Ltmp673:
.LBB70_297:                             @ %if.else436
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 2755 0               @ ../../lib/vasnprintf.c:2755:0
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #105
	strb	r1, [r0]
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #110
	strb	r1, [r0]
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #102
.LBB70_298:                             @ %if.else436
                                        @   in Loop: Header=BB70_13 Depth=1
	strb	r1, [r0]
.Ltmp674:
.LBB70_299:                             @ %if.end443
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3501 0               @ ../../lib/vasnprintf.c:3501:0
	ldr	r0, [r11, #-156]
	cmp	r0, #0
	beq	.LBB70_316
@ BB#300:                               @ %land.lhs.true445
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-876]
	ldr	r1, [r11, #-884]
	ldr	r2, [r11, #-160]
	sub	r0, r1, r0
	cmp	r0, r2
	bhs	.LBB70_316
@ BB#301:                               @ %if.then451
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp675:
	@DEBUG_VALUE: pad <- [r11+#-920]+#0
	.loc	22 3503 0               @ ../../lib/vasnprintf.c:3503:0
	ldr	r0, [r11, #-876]
	ldr	r1, [r11, #-884]
	sub	r0, r1, r0
	ldr	r1, [r11, #-160]
	sub	r0, r1, r0
	.loc	22 3504 0               @ ../../lib/vasnprintf.c:3504:0
	ldr	r1, [r11, #-884]
.Ltmp676:
	@DEBUG_VALUE: end <- [r11+#-924]+#0
	.loc	22 3503 0               @ ../../lib/vasnprintf.c:3503:0
	str	r0, [r11, #-920]
	.loc	22 3504 0               @ ../../lib/vasnprintf.c:3504:0
	add	r0, r1, r0
	str	r0, [r11, #-924]
	.loc	22 3506 0               @ ../../lib/vasnprintf.c:3506:0
	ldrb	r0, [r11, #-152]
	tst	r0, #2
	bne	.LBB70_305
@ BB#302:                               @ %if.else466
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3512 0               @ ../../lib/vasnprintf.c:3512:0
	ldrb	r0, [r11, #-152]
	tst	r0, #32
	ldrne	r0, [r11, #-880]
	cmpne	r0, #0
	bne	.LBB70_310
@ BB#303:                               @ %if.else489
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp677:
	@DEBUG_VALUE: q <- [r11+#-932]+#0
	.loc	22 3525 0               @ ../../lib/vasnprintf.c:3525:0
	ldr	r0, [r11, #-924]
	str	r0, [r11, #-932]
	b	.LBB70_307
.Ltmp678:
.LBB70_304:                             @ %for.inc
                                        @   in Loop: Header=BB70_305 Depth=2
	.loc	22 3510 0               @ ../../lib/vasnprintf.c:3510:0
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	strb	r9, [r0]
	.loc	22 3509 0               @ ../../lib/vasnprintf.c:3509:0
	ldr	r0, [r11, #-920]
	sub	r0, r0, #1
	str	r0, [r11, #-920]
.LBB70_305:                             @ %for.cond462
                                        @   Parent Loop BB70_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-920]
	cmp	r0, #0
	beq	.LBB70_315
	b	.LBB70_304
.Ltmp679:
.LBB70_306:                             @ %while.body495
                                        @   in Loop: Header=BB70_307 Depth=2
	.loc	22 3528 0               @ ../../lib/vasnprintf.c:3528:0
	ldr	r0, [r11, #-884]
	ldr	r1, [r11, #-932]
	sub	r0, r0, #1
	sub	r1, r1, #1
	str	r0, [r11, #-884]
	ldrb	r0, [r0]
	str	r1, [r11, #-932]
	strb	r0, [r1]
.LBB70_307:                             @ %while.cond492
                                        @   Parent Loop BB70_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	22 3527 0               @ ../../lib/vasnprintf.c:3527:0
	ldr	r0, [r11, #-876]
	ldr	r1, [r11, #-884]
	cmp	r1, r0
	bls	.LBB70_309
	b	.LBB70_306
.LBB70_308:                             @ %for.inc504
                                        @   in Loop: Header=BB70_309 Depth=2
	.loc	22 3530 0               @ ../../lib/vasnprintf.c:3530:0
.Ltmp680:
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	strb	r9, [r0]
	.loc	22 3529 0               @ ../../lib/vasnprintf.c:3529:0
	ldr	r0, [r11, #-920]
	sub	r0, r0, #1
	str	r0, [r11, #-920]
.LBB70_309:                             @ %for.cond499
                                        @   Parent Loop BB70_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-920]
	cmp	r0, #0
	beq	.LBB70_315
	b	.LBB70_308
.Ltmp681:
.LBB70_310:                             @ %if.then472
                                        @   in Loop: Header=BB70_13 Depth=1
	@DEBUG_VALUE: q <- [r11+#-928]+#0
	.loc	22 3515 0               @ ../../lib/vasnprintf.c:3515:0
	ldr	r0, [r11, #-924]
	str	r0, [r11, #-928]
	b	.LBB70_312
.LBB70_311:                             @ %while.body477
                                        @   in Loop: Header=BB70_312 Depth=2
	.loc	22 3518 0               @ ../../lib/vasnprintf.c:3518:0
	ldr	r0, [r11, #-884]
	ldr	r1, [r11, #-928]
	sub	r0, r0, #1
	sub	r1, r1, #1
	str	r0, [r11, #-884]
	ldrb	r0, [r0]
	str	r1, [r11, #-928]
	strb	r0, [r1]
.LBB70_312:                             @ %while.cond474
                                        @   Parent Loop BB70_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	22 3517 0               @ ../../lib/vasnprintf.c:3517:0
	ldr	r0, [r11, #-880]
	ldr	r1, [r11, #-884]
	cmp	r1, r0
	bls	.LBB70_314
	b	.LBB70_311
.LBB70_313:                             @ %for.inc486
                                        @   in Loop: Header=BB70_314 Depth=2
	.loc	22 3520 0               @ ../../lib/vasnprintf.c:3520:0
.Ltmp682:
	ldr	r0, [r11, #-884]
	add	r1, r0, #1
	str	r1, [r11, #-884]
	mov	r1, #48
	strb	r1, [r0]
	.loc	22 3519 0               @ ../../lib/vasnprintf.c:3519:0
	ldr	r0, [r11, #-920]
	sub	r0, r0, #1
	str	r0, [r11, #-920]
.LBB70_314:                             @ %for.cond481
                                        @   Parent Loop BB70_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-920]
	cmp	r0, #0
	bne	.LBB70_313
.Ltmp683:
.LBB70_315:                             @ %if.end508
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3533 0               @ ../../lib/vasnprintf.c:3533:0
	ldr	r0, [r11, #-924]
	str	r0, [r11, #-884]
.Ltmp684:
.LBB70_316:                             @ %if.end509
                                        @   in Loop: Header=BB70_13 Depth=1
	@DEBUG_VALUE: count <- [r11+#-936]+#0
	.loc	22 3537 0               @ ../../lib/vasnprintf.c:3537:0
	ldr	r0, [r11, #-876]
	ldr	r1, [r11, #-884]
	.loc	22 3539 0               @ ../../lib/vasnprintf.c:3539:0
	ldr	r2, [r11, #-172]
	.loc	22 3537 0               @ ../../lib/vasnprintf.c:3537:0
	sub	r0, r1, r0
	str	r0, [r11, #-936]
	.loc	22 3539 0               @ ../../lib/vasnprintf.c:3539:0
	cmp	r0, r2
	bhs	.LBB70_401
@ BB#317:                               @ %if.end518
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3545 0               @ ../../lib/vasnprintf.c:3545:0
	ldr	r0, [r11, #-116]
	ldr	r1, [r11, #-112]
	ldr	r2, [r11, #-936]
	sub	r0, r1, r0
	cmp	r2, r0
	blo	.LBB70_330
@ BB#318:                               @ %if.then522
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp685:
	@DEBUG_VALUE: n <- [r11+#-940]+#0
	.loc	22 3547 20              @ ../../lib/vasnprintf.c:3547:20
	ldr	r1, [r11, #-936]
	ldr	r0, [r11, #-116]
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	.loc	22 3549 0               @ ../../lib/vasnprintf.c:3549:0
	ldr	r1, [r11, #-112]
	.loc	22 3547 20              @ ../../lib/vasnprintf.c:3547:20
	str	r0, [r11, #-940]
	.loc	22 3549 0               @ ../../lib/vasnprintf.c:3549:0
	cmp	r0, r1
	bls	.LBB70_330
@ BB#319:                               @ %if.then528
                                        @   in Loop: Header=BB70_13 Depth=1
.Ltmp686:
	@DEBUG_VALUE: memory_size <- [r11+#-944]+#0
	@DEBUG_VALUE: memory <- [r11+#-948]+#0
	.loc	22 3549 0               @ ../../lib/vasnprintf.c:3549:0
	ldr	r1, [r11, #-112]
	mov	r0, #12
	cmp	r1, #0
	beq	.LBB70_321
@ BB#320:                               @ %cond.true535
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-112]
	lsleq	r0, r0, #1
.LBB70_321:                             @ %cond.end544
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-940]
	str	r0, [r11, #-112]
	cmp	r1, r0
	ldrhi	r0, [r11, #-940]
	strhi	r0, [r11, #-112]
	mov	r0, #1
	ldr	r1, [r11, #-112]
	cmp	r1, #1
	ldrls	r0, [r11, #-112]
	str	r0, [r11, #-944]
	cmp	r0, #1
	beq	.LBB70_374
@ BB#322:                               @ %if.end560
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	bne	.LBB70_324
@ BB#323:                               @ %if.then566
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-944]
	bl	malloc
	b	.LBB70_325
.LBB70_324:                             @ %if.else568
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r1, [r11, #-944]
	ldr	r0, [r11, #-108]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_325:                             @ %if.else568
                                        @   in Loop: Header=BB70_13 Depth=1
	str	r0, [r11, #-948]
	ldr	r0, [r11, #-948]
	cmp	r0, #0
	beq	.LBB70_374
@ BB#326:                               @ %if.end574
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	bne	.LBB70_329
@ BB#327:                               @ %land.lhs.true577
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB70_329
@ BB#328:                               @ %if.then580
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r2, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r0, [r11, #-948]
	bl	__aeabi_memcpy
.LBB70_329:                             @ %if.end581
                                        @   in Loop: Header=BB70_13 Depth=1
	ldr	r0, [r11, #-948]
	str	r0, [r11, #-108]
.Ltmp687:
.LBB70_330:                             @ %if.end583
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3553 0               @ ../../lib/vasnprintf.c:3553:0
	ldr	r0, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r2, [r11, #-936]
	add	r0, r1, r0
	ldr	r1, [r11, #-876]
	bl	__aeabi_memcpy
	.loc	22 3554 0               @ ../../lib/vasnprintf.c:3554:0
	ldr	r0, [r11, #-876]
	sub	r1, r11, #872
	cmp	r0, r1
	beq	.LBB70_332
@ BB#331:                               @ %if.then589
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3555 0               @ ../../lib/vasnprintf.c:3555:0
	ldr	r0, [r11, #-876]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_332:                             @ %if.end590
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 3556 0               @ ../../lib/vasnprintf.c:3556:0
	ldr	r0, [r11, #-936]
.Ltmp688:
.LBB70_333:                             @ %if.end1353
                                        @   in Loop: Header=BB70_13 Depth=1
	.loc	22 4635 0               @ ../../lib/vasnprintf.c:4635:0
	ldr	r1, [r11, #-116]
	add	r0, r1, r0
	b	.LBB70_97
.LBB70_334:                             @ %sw.default1152
	.loc	22 4242 0               @ ../../lib/vasnprintf.c:4242:0
.Ltmp689:
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp690:
.LBB70_335:                             @ %for.end1362
	.loc	22 4643 0               @ ../../lib/vasnprintf.c:4643:0
	ldr	r0, [r11, #-116]
	mov	r1, #1
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [r11, #-112]
	cmp	r0, r1
	bls	.LBB70_366
@ BB#336:                               @ %if.then1366
.Ltmp691:
	@DEBUG_VALUE: memory_size <- [r11+#-1112]+#0
	@DEBUG_VALUE: memory <- [r11+#-1116]+#0
	.loc	22 4643 0               @ ../../lib/vasnprintf.c:4643:0
	ldr	r1, [r11, #-112]
	mov	r0, #12
	cmp	r1, #0
	beq	.LBB70_338
@ BB#337:                               @ %cond.true1373
	ldr	r1, [r11, #-112]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-112]
	lsleq	r0, r0, #1
.LBB70_338:                             @ %cond.end1382
	str	r0, [r11, #-112]
	ldr	r0, [r11, #-116]
	mov	r1, #1
	mov	r4, #1
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [r11, #-112]
	cmp	r0, r1
	bls	.LBB70_340
@ BB#339:                               @ %if.then1387
	ldr	r0, [r11, #-116]
	mov	r1, #1
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-112]
.LBB70_340:                             @ %if.end1389
	ldr	r0, [r11, #-112]
	cmp	r0, #1
	ldrls	r4, [r11, #-112]
	str	r4, [r11, #-1112]
	cmp	r4, #1
	beq	.LBB70_374
@ BB#341:                               @ %if.end1400
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	bne	.LBB70_360
@ BB#342:                               @ %if.then1406
	ldr	r0, [r11, #-1112]
	bl	malloc
	b	.LBB70_361
.Ltmp692:
.LBB70_343:                             @ %sw.default
	.loc	22 1571 0               @ ../../lib/vasnprintf.c:1571:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp693:
.LBB70_344:                             @ %if.then1254
	.loc	22 4296 0               @ ../../lib/vasnprintf.c:4296:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	beq	.LBB70_346
@ BB#345:                               @ %if.then1260
	.loc	22 4297 0               @ ../../lib/vasnprintf.c:4297:0
	ldr	r0, [r11, #-108]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB70_346
.LBB70_346:                             @ %if.end1261
	.loc	22 4298 0               @ ../../lib/vasnprintf.c:4298:0
	ldr	r0, [r11, #-92]
	cmp	r0, #0
	beq	.LBB70_348
@ BB#347:                               @ %if.then1264
	.loc	22 4299 0               @ ../../lib/vasnprintf.c:4299:0
	ldr	r0, [r11, #-92]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_348:                             @ %if.end1265
	.loc	22 4300 0               @ ../../lib/vasnprintf.c:4300:0
	ldr	r0, [r11, #-68]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r11, #-76]
	cmp	r0, #0
	beq	.LBB70_352
@ BB#349:                               @ %if.then1269
	ldr	r0, [r11, #-76]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp694:
.LBB70_350:                             @ %if.end1271
	b	.LBB70_352
.LBB70_351:                             @ %if.then4
	.loc	22 1427 0               @ ../../lib/vasnprintf.c:1427:0
.Ltmp695:
	ldr	r0, [r11, #-76]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_352:                             @ %if.end6
	.loc	22 1428 0               @ ../../lib/vasnprintf.c:1428:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #22
	b	.LBB70_381
.Ltmp696:
.LBB70_353:                             @ %overflow
	.loc	22 4668 0               @ ../../lib/vasnprintf.c:4668:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	beq	.LBB70_355
@ BB#354:                               @ %if.then1456
	.loc	22 4669 0               @ ../../lib/vasnprintf.c:4669:0
	ldr	r0, [r11, #-108]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_355:                             @ %if.end1457
	.loc	22 4670 0               @ ../../lib/vasnprintf.c:4670:0
	ldr	r0, [r11, #-92]
	cmp	r0, #0
	beq	.LBB70_357
@ BB#356:                               @ %if.then1460
	.loc	22 4671 0               @ ../../lib/vasnprintf.c:4671:0
	ldr	r0, [r11, #-92]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_357:                             @ %if.end1461
	.loc	22 4672 0               @ ../../lib/vasnprintf.c:4672:0
	ldr	r0, [r11, #-68]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r11, #-76]
	cmp	r0, #0
	beq	.LBB70_359
@ BB#358:                               @ %if.then1465
	ldr	r0, [r11, #-76]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_359:                             @ %if.end1467
	.loc	22 4673 0               @ ../../lib/vasnprintf.c:4673:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #75
	b	.LBB70_381
.LBB70_360:                             @ %if.else1408
	.loc	22 4643 0               @ ../../lib/vasnprintf.c:4643:0
.Ltmp697:
	ldr	r1, [r11, #-1112]
	ldr	r0, [r11, #-108]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_361:                             @ %if.else1408
	str	r0, [r11, #-1116]
	ldr	r0, [r11, #-1116]
	cmp	r0, #0
	beq	.LBB70_374
@ BB#362:                               @ %if.end1414
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	bne	.LBB70_365
@ BB#363:                               @ %land.lhs.true1417
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB70_365
@ BB#364:                               @ %if.then1420
	ldr	r2, [r11, #-116]
	ldr	r1, [r11, #-108]
	ldr	r0, [r11, #-1116]
	bl	__aeabi_memcpy
.LBB70_365:                             @ %if.end1421
	ldr	r0, [r11, #-1116]
	str	r0, [r11, #-108]
.Ltmp698:
.LBB70_366:                             @ %if.end1422
	.loc	22 4644 0               @ ../../lib/vasnprintf.c:4644:0
	ldr	r0, [r11, #-108]
	ldr	r1, [r11, #-116]
	mov	r2, #0
	strb	r2, [r0, r1]
	.loc	22 4646 0               @ ../../lib/vasnprintf.c:4646:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	beq	.LBB70_369
@ BB#367:                               @ %land.lhs.true1426
	ldr	r0, [r11, #-116]
	ldr	r1, [r11, #-112]
	add	r0, r0, #1
	cmp	r0, r1
	bhs	.LBB70_369
@ BB#368:                               @ %if.then1430
.Ltmp699:
	@DEBUG_VALUE: memory <- [r11+#-1120]+#0
	.loc	22 4651 0               @ ../../lib/vasnprintf.c:4651:0
	ldr	r1, [r11, #-116]
	ldr	r0, [r11, #-108]
	add	r1, r1, #1
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-1120]
	.loc	22 4652 0               @ ../../lib/vasnprintf.c:4652:0
	cmp	r0, #0
	.loc	22 4653 0               @ ../../lib/vasnprintf.c:4653:0
	ldrne	r0, [r11, #-1120]
	strne	r0, [r11, #-108]
.Ltmp700:
.LBB70_369:                             @ %if.end1440
	.loc	22 4656 0               @ ../../lib/vasnprintf.c:4656:0
	ldr	r0, [r11, #-92]
	cmp	r0, #0
	beq	.LBB70_371
@ BB#370:                               @ %if.then1443
	.loc	22 4657 0               @ ../../lib/vasnprintf.c:4657:0
	ldr	r0, [r11, #-92]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_371:                             @ %if.end1444
	.loc	22 4658 0               @ ../../lib/vasnprintf.c:4658:0
	ldr	r0, [r11, #-68]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r11, #-76]
	cmp	r0, #0
	beq	.LBB70_373
@ BB#372:                               @ %if.then1448
	ldr	r0, [r11, #-76]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_373:                             @ %if.end1450
	.loc	22 4659 0               @ ../../lib/vasnprintf.c:4659:0
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-116]
	str	r1, [r0]
	.loc	22 4664 0               @ ../../lib/vasnprintf.c:4664:0
	ldr	r0, [r11, #-108]
	b	.LBB70_383
.LBB70_374:                             @ %out_of_memory
	.loc	22 4678 0               @ ../../lib/vasnprintf.c:4678:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-108]
	cmp	r1, r0
	ldrne	r0, [r11, #-108]
	cmpne	r0, #0
	beq	.LBB70_376
@ BB#375:                               @ %if.then1474
	.loc	22 4679 0               @ ../../lib/vasnprintf.c:4679:0
	ldr	r0, [r11, #-108]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_376:                             @ %if.end1475
	.loc	22 4680 0               @ ../../lib/vasnprintf.c:4680:0
	ldr	r0, [r11, #-92]
	cmp	r0, #0
	beq	.LBB70_378
@ BB#377:                               @ %if.then1478
	.loc	22 4681 0               @ ../../lib/vasnprintf.c:4681:0
	ldr	r0, [r11, #-92]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_378:                             @ %out_of_memory_1
	.loc	22 4683 0               @ ../../lib/vasnprintf.c:4683:0
	ldr	r0, [r11, #-68]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r0, [r11, #-76]
	cmp	r0, #0
	beq	.LBB70_380
@ BB#379:                               @ %if.then1483
	ldr	r0, [r11, #-76]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB70_380:                             @ %if.end1485
	.loc	22 4684 0               @ ../../lib/vasnprintf.c:4684:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #12
.LBB70_381:                             @ %if.end1485
	str	r1, [r0]
.LBB70_382:                             @ %if.end1485
	mov	r0, #0
.LBB70_383:                             @ %if.end1485
	.loc	22 4685 0               @ ../../lib/vasnprintf.c:4685:0
	str	r0, [r11, #-36]
.Ltmp701:
	.loc	22 4687 0               @ ../../lib/vasnprintf.c:4687:0
	ldr	r0, [r11, #-36]
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB70_384:                             @ %sw.default809
	.loc	22 4136 0               @ ../../lib/vasnprintf.c:4136:0
.Ltmp702:
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp703:
.LBB70_385:                             @ %sw.default831
	.loc	22 4142 0               @ ../../lib/vasnprintf.c:4142:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp704:
.LBB70_386:                             @ %sw.default853
	.loc	22 4148 0               @ ../../lib/vasnprintf.c:4148:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp705:
.LBB70_387:                             @ %sw.default875
	.loc	22 4154 0               @ ../../lib/vasnprintf.c:4154:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp706:
.LBB70_388:                             @ %sw.default897
	.loc	22 4160 0               @ ../../lib/vasnprintf.c:4160:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp707:
.LBB70_389:                             @ %sw.default918
	.loc	22 4166 0               @ ../../lib/vasnprintf.c:4166:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp708:
.LBB70_390:                             @ %sw.default939
	.loc	22 4172 0               @ ../../lib/vasnprintf.c:4172:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp709:
.LBB70_391:                             @ %sw.default960
	.loc	22 4178 0               @ ../../lib/vasnprintf.c:4178:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp710:
.LBB70_392:                             @ %sw.default981
	.loc	22 4185 0               @ ../../lib/vasnprintf.c:4185:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp711:
.LBB70_393:                             @ %sw.default1002
	.loc	22 4191 0               @ ../../lib/vasnprintf.c:4191:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp712:
.LBB70_394:                             @ %sw.default1023
	.loc	22 4198 0               @ ../../lib/vasnprintf.c:4198:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp713:
.LBB70_395:                             @ %sw.default1045
	.loc	22 4204 0               @ ../../lib/vasnprintf.c:4204:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp714:
.LBB70_396:                             @ %sw.default1066
	.loc	22 4210 0               @ ../../lib/vasnprintf.c:4210:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp715:
.LBB70_397:                             @ %sw.default1087
	.loc	22 4217 0               @ ../../lib/vasnprintf.c:4217:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp716:
.LBB70_398:                             @ %sw.default1108
	.loc	22 4224 0               @ ../../lib/vasnprintf.c:4224:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp717:
.LBB70_399:                             @ %sw.default1129
	.loc	22 4231 0               @ ../../lib/vasnprintf.c:4231:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp718:
.LBB70_400:                             @ %if.else441
	.loc	22 3063 0               @ ../../lib/vasnprintf.c:3063:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.Ltmp719:
.LBB70_401:                             @ %if.then1165
	.loc	22 4256 0               @ ../../lib/vasnprintf.c:4256:0
	bl	abort
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	cfiid	#14217
.Ltmp720:
.Ltmp721:
	.size	vasnprintf, .Ltmp721-vasnprintf
.Lfunc_end70:

	.align	2
	.type	xsum4,%function
xsum4:                                  @ @xsum4
.Lfunc_begin71:
	.loc	23 78 0                 @ ../../lib/xsize.h:78:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc	23 79 22 prologue_end   @ ../../lib/xsize.h:79:22
.Ltmp722:
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [sp, #4]
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [sp]
	bl	xsum
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	pop	{r11, lr}
	mov	sp, r11
	mov	pc, lr
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp723:
.Ltmp724:
	.size	xsum4, .Ltmp724-xsum4
.Lfunc_end71:

	.align	2
	.type	xsum,%function
xsum:                                   @ @xsum
.Lfunc_begin72:
	.loc	23 57 0                 @ ../../lib/xsize.h:57:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	.loc	23 58 0 prologue_end    @ ../../lib/xsize.h:58:0
.Ltmp725:
	ldr	r0, [sp, #8]
	.loc	23 59 0                 @ ../../lib/xsize.h:59:0
	ldr	r2, [sp, #8]
	.loc	23 58 0                 @ ../../lib/xsize.h:58:0
	add	r1, r0, r1
	mov	r0, #1
	str	r1, [sp]
	.loc	23 59 0                 @ ../../lib/xsize.h:59:0
	cmp	r1, r2
	ldrhs	r0, [sp]
	add	sp, sp, #12
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp726:
.Ltmp727:
	.size	xsum, .Ltmp727-xsum
.Lfunc_end72:

	.align	2
	.type	is_infinitel,%function
is_infinitel:                           @ @is_infinitel
.Lfunc_begin73:
	.loc	22 244 0                @ ../../lib/vasnprintf.c:244:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #8
	stm	sp, {r0, r1}
	.loc	22 245 0 prologue_end   @ ../../lib/vasnprintf.c:245:0
.Ltmp728:
	bl	rpl_isnanl
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r4, #1
	cmp	r0, #0
	bne	.LBB73_3
@ BB#1:                                 @ %lor.rhs
	ldm	sp, {r4, r5}
	mov	r0, r4
	mov	r1, r5
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dcmpeq
	mov	r4, #0
	cmp	r0, #0
	beq	.LBB73_3
@ BB#2:                                 @ %land.rhs
	ldm	sp, {r0, r1}
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	moveq	r4, #1
.LBB73_3:                               @ %lor.end
	.loc	22 246 0                @ ../../lib/vasnprintf.c:246:0
	mov	r0, r4
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp729:
.Ltmp730:
	.size	is_infinitel, .Ltmp730-is_infinitel
.Lfunc_end73:

	.align	2
	.type	xmax,%function
xmax:                                   @ @xmax
.Lfunc_begin74:
	.loc	23 88 0                 @ ../../lib/xsize.h:88:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc	23 91 0 prologue_end    @ ../../lib/xsize.h:91:0
.Ltmp731:
	ldr	r0, [sp, #4]
	cmp	r0, r1
	ldrlo	r0, [sp]
	ldrhs	r0, [sp, #4]
	add	sp, sp, #8
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp732:
.Ltmp733:
	.size	xmax, .Ltmp733-xmax
.Lfunc_end74:

	.align	2
	.type	rpl_isnanl,%function
rpl_isnanl:                             @ @rpl_isnanl
.Lfunc_begin75:
	.loc	26 72 0                 @ ../../lib/isnan.c:72:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	.loc	26 130 0 prologue_end   @ ../../lib/isnan.c:130:0
.Ltmp734:
	ldr	r4, .LCPI75_0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	26 129 0                @ ../../lib/isnan.c:129:0
	stm	sp, {r0, r1}
	.loc	26 130 0                @ ../../lib/isnan.c:130:0
	ldr	r1, [sp, #8]
	ldr	r0, [r4, #32]
	eor	r0, r1, r0
	mov	r1, #255
	orr	r1, r1, #1792
	tst	r0, r1
	beq	.LBB75_2
@ BB#1:                                 @ %if.else
	mov	r0, #0
	b	.LBB75_5
.LBB75_2:                               @ %if.then
	.loc	26 133 0                @ ../../lib/isnan.c:133:0
	add	r1, r4, #32
	mov	r0, sp
	mov	r2, #8
	bl	memcmp
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB75_5
@ BB#3:                                 @ %land.rhs
	.loc	26 134 0                @ ../../lib/isnan.c:134:0
	add	r1, r4, #40
	mov	r0, sp
	mov	r2, #8
	bl	memcmp
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	cmp	r0, #0
	movne	r0, #1
.LBB75_4:                               @ %land.end
.LBB75_5:                               @ %if.else
	.loc	26 136 0                @ ../../lib/isnan.c:136:0
	str	r0, [r11, #-8]
.Ltmp735:
	.loc	26 161 0                @ ../../lib/isnan.c:161:0
	ldr	r0, [r11, #-8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp736:
	.align	2
@ BB#6:
.LCPI75_0:
	.long	_MergedGlobals
.Ltmp737:
	.size	rpl_isnanl, .Ltmp737-rpl_isnanl
.Lfunc_end75:

	.align	2
	.type	printf_fetchargs,%function
printf_fetchargs:                       @ @printf_fetchargs
.Lfunc_begin76:
	.loc	27 37 0                 @ ../../lib/printf-args.c:37:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #24
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	mov	r0, #0
	.loc	27 102 0 prologue_end   @ ../../lib/printf-args.c:102:0
.Ltmp738:
	ldr	r12, .LCPI76_1
	.loc	27 119 0                @ ../../lib/printf-args.c:119:0
.Ltmp739:
	ldr	r1, .LCPI76_0
.Ltmp740:
	.loc	27 41 0                 @ ../../lib/printf-args.c:41:0
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r0, [r0, #4]
	str	r0, [sp, #4]
	b	.LBB76_2
.LBB76_1:                               @ %for.inc
                                        @   in Loop: Header=BB76_2 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #4]
	add	r0, r0, #16
	str	r0, [sp, #4]
.LBB76_2:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	ldr	r2, [r0]
	ldr	r0, [sp, #8]
	cmp	r0, r2
	bhs	.LBB76_14
@ BB#3:                                 @ %for.body
                                        @   in Loop: Header=BB76_2 Depth=1
	.loc	27 42 0                 @ ../../lib/printf-args.c:42:0
	ldr	r0, [sp, #4]
	ldr	r0, [r0]
	sub	r2, r0, #1
	cmp	r2, #21
	bhi	.LBB76_12
@ BB#4:                                 @ %for.body
                                        @   in Loop: Header=BB76_2 Depth=1
	lsl	r2, r2, #2
	adr	r0, .LJTI76_0_0
	ldr	pc, [r2, r0]
.LJTI76_0_0:
	.long	.LBB76_8
	.long	.LBB76_8
	.long	.LBB76_9
	.long	.LBB76_9
	.long	.LBB76_6
	.long	.LBB76_6
	.long	.LBB76_6
	.long	.LBB76_6
	.long	.LBB76_7
	.long	.LBB76_7
	.long	.LBB76_7
	.long	.LBB76_7
	.long	.LBB76_5
	.long	.LBB76_5
	.long	.LBB76_10
	.long	.LBB76_11
	.long	.LBB76_5
	.long	.LBB76_5
	.long	.LBB76_5
	.long	.LBB76_5
	.long	.LBB76_5
	.long	.LBB76_5
.LBB76_5:                               @ %sw.bb64
                                        @   in Loop: Header=BB76_2 Depth=1
	.loc	27 83 0                 @ ../../lib/printf-args.c:83:0
.Ltmp741:
	ldr	r2, [sp, #16]
	add	r0, r2, #4
	str	r0, [sp, #16]
	ldr	r0, [sp, #4]
	ldr	r2, [r2]
	str	r2, [r0, #8]
	b	.LBB76_1
.LBB76_6:                               @ %sw.bb21
                                        @   in Loop: Header=BB76_2 Depth=1
	.loc	27 57 0                 @ ../../lib/printf-args.c:57:0
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r0, r2, #4
	str	r0, [sp, #16]
	ldr	r0, [r2]
	str	r0, [r3, #8]
	b	.LBB76_1
.LBB76_7:                               @ %sw.bb41
                                        @   in Loop: Header=BB76_2 Depth=1
	.loc	27 70 0                 @ ../../lib/printf-args.c:70:0
	ldr	r0, [sp, #16]
	add	r0, r0, #7
	bic	r2, r0, #7
	add	r0, r2, #8
	str	r0, [sp, #16]
	ldr	r0, [sp, #4]
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	str	r3, [r0, #8]
	str	r2, [r0, #12]
	b	.LBB76_1
.LBB76_8:                               @ %sw.bb3
                                        @   in Loop: Header=BB76_2 Depth=1
	.loc	27 48 0                 @ ../../lib/printf-args.c:48:0
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r0, r2, #4
	str	r0, [sp, #16]
	ldr	r0, [r2]
	strb	r0, [r3, #8]
	b	.LBB76_1
.LBB76_9:                               @ %sw.bb15
                                        @   in Loop: Header=BB76_2 Depth=1
	.loc	27 54 0                 @ ../../lib/printf-args.c:54:0
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	add	r0, r2, #4
	str	r0, [sp, #16]
	ldr	r0, [r2]
	strh	r0, [r3, #8]
	b	.LBB76_1
.LBB76_10:                              @ %sw.bb74
                                        @   in Loop: Header=BB76_2 Depth=1
	.loc	27 97 0                 @ ../../lib/printf-args.c:97:0
	ldr	r2, [sp, #16]
	add	r0, r2, #4
	str	r0, [sp, #16]
	ldr	r0, [sp, #4]
	ldr	r2, [r2]
	str	r2, [r0, #8]
	.loc	27 101 0                @ ../../lib/printf-args.c:101:0
	ldr	r0, [sp, #4]
	ldr	r0, [r0, #8]
	cmp	r0, #0
	.loc	27 102 0                @ ../../lib/printf-args.c:102:0
	ldreq	r0, [sp, #4]
	streq	r12, [r0, #8]
	b	.LBB76_1
.LBB76_11:                              @ %sw.bb85
                                        @   in Loop: Header=BB76_2 Depth=1
	.loc	27 106 0                @ ../../lib/printf-args.c:106:0
	ldr	r2, [sp, #16]
	add	r0, r2, #4
	str	r0, [sp, #16]
	ldr	r0, [sp, #4]
	ldr	r2, [r2]
	str	r2, [r0, #8]
	.loc	27 110 0                @ ../../lib/printf-args.c:110:0
	ldr	r0, [sp, #4]
	ldr	r0, [r0, #8]
	cmp	r0, #0
	.loc	27 119 0                @ ../../lib/printf-args.c:119:0
.Ltmp742:
	ldreq	r0, [sp, #4]
	streq	r1, [r0, #8]
	b	.LBB76_1
.Ltmp743:
.LBB76_12:                              @ %sw.default
	mvn	r0, #0
.LBB76_13:                              @ %for.end
	.loc	27 186 0                @ ../../lib/printf-args.c:186:0
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	add	sp, sp, #24
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.Ltmp744:
.LBB76_14:                              @ %for.end
	mov	r0, #0
	b	.LBB76_13
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
	.align	2
@ BB#15:
.LCPI76_0:
	.long	printf_fetchargs.wide_null_string
.LCPI76_1:
	.long	.L.str100
.Ltmp745:
	.size	printf_fetchargs, .Ltmp745-printf_fetchargs
.Lfunc_end76:

	.align	2
	.type	printf_parse,%function
printf_parse:                           @ @printf_parse
.Lfunc_begin77:
	.loc	28 82 0                 @ ../../lib/printf-parse.c:82:0
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #140
	str	r0, [r11, #-36]
	str	r1, [r11, #-40]
	mov	r4, #0
	str	r2, [r11, #-44]
	mov	r5, #1
	mov	r8, #44
	.loc	28 83 0 prologue_end    @ ../../lib/printf-parse.c:83:0
.Ltmp746:
	ldr	r0, [r11, #-36]
	.loc	28 84 0                 @ ../../lib/printf-parse.c:84:0
	str	r4, [r11, #-52]
	.loc	28 87 0                 @ ../../lib/printf-parse.c:87:0
	str	r4, [r11, #-64]
	.loc	28 88 0                 @ ../../lib/printf-parse.c:88:0
	str	r4, [r11, #-68]
	.loc	28 83 0                 @ ../../lib/printf-parse.c:83:0
	str	r0, [r11, #-48]
	.loc	28 90 0                 @ ../../lib/printf-parse.c:90:0
	ldr	r0, [r11, #-40]
	str	r4, [r0]
	mov	r0, #44
	.loc	28 91 0                 @ ../../lib/printf-parse.c:91:0
	str	r5, [r11, #-56]
	.loc	28 92 0                 @ ../../lib/printf-parse.c:92:0
	bl	malloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	ldr	r1, [r11, #-40]
	str	r0, [r1, #4]
	.loc	28 93 0                 @ ../../lib/printf-parse.c:93:0
	ldr	r0, [r11, #-40]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB77_201
@ BB#1:                                 @ %if.end
	.loc	28 97 0                 @ ../../lib/printf-parse.c:97:0
	ldr	r0, [r11, #-44]
	mvn	r7, #0
	mov	r6, #5
	mov	r10, #14
	mov	r9, #16
	str	r4, [r0]
	.loc	28 98 0                 @ ../../lib/printf-parse.c:98:0
	str	r4, [r11, #-60]
	.loc	28 99 0                 @ ../../lib/printf-parse.c:99:0
	ldr	r0, [r11, #-44]
	str	r4, [r0, #4]
	b	.LBB77_3
.LBB77_2:                               @ %if.end766
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 588 0                @ ../../lib/printf-parse.c:588:0
.Ltmp747:
	ldr	r0, [r11, #-40]
	ldr	r1, [sp, #4]
	str	r1, [r0, #4]
.Ltmp748:
.LBB77_3:                               @ %while.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB77_9 Depth 2
                                        @     Child Loop BB77_15 Depth 2
                                        @     Child Loop BB77_62 Depth 2
                                        @     Child Loop BB77_39 Depth 2
                                        @     Child Loop BB77_45 Depth 2
                                        @     Child Loop BB77_70 Depth 2
                                        @     Child Loop BB77_101 Depth 2
                                        @     Child Loop BB77_80 Depth 2
                                        @     Child Loop BB77_86 Depth 2
                                        @     Child Loop BB77_109 Depth 2
                                        @     Child Loop BB77_115 Depth 2
                                        @     Child Loop BB77_190 Depth 2
	.loc	28 133 0                @ ../../lib/printf-parse.c:133:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB77_204
@ BB#4:                                 @ %while.body
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp749:
	@DEBUG_VALUE: c <- [r11+#-69]+#0
	.loc	28 135 0                @ ../../lib/printf-parse.c:135:0
	ldr	r0, [r11, #-48]
	add	r1, r0, #1
	str	r1, [r11, #-48]
	ldrb	r0, [r0]
	strb	r0, [r11, #-69]
	.loc	28 136 0                @ ../../lib/printf-parse.c:136:0
	ldrb	r0, [r11, #-69]
	cmp	r0, #37
	bne	.LBB77_3
@ BB#5:                                 @ %if.then8
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp750:
	@DEBUG_VALUE: arg_index <- [r11+#-76]+#0
	.loc	28 139 0                @ ../../lib/printf-parse.c:139:0
	ldr	r0, [r11, #-40]
.Ltmp751:
	@DEBUG_VALUE: dp <- [r11+#-80]+#0
	.loc	28 138 0                @ ../../lib/printf-parse.c:138:0
	str	r7, [r11, #-76]
	.loc	28 139 0                @ ../../lib/printf-parse.c:139:0
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mla	r2, r1, r8, r0
	str	r2, [r11, #-80]
	mul	r2, r1, r8
	.loc	28 142 0                @ ../../lib/printf-parse.c:142:0
	ldr	r1, [r11, #-48]
	sub	r1, r1, #1
	str	r1, [r0, r2]
	.loc	28 143 0                @ ../../lib/printf-parse.c:143:0
	ldr	r0, [r11, #-80]
	str	r4, [r0, #8]
	.loc	28 144 0                @ ../../lib/printf-parse.c:144:0
	ldr	r0, [r11, #-80]
	str	r4, [r0, #12]
	.loc	28 145 0                @ ../../lib/printf-parse.c:145:0
	ldr	r0, [r11, #-80]
	str	r4, [r0, #16]
	.loc	28 146 0                @ ../../lib/printf-parse.c:146:0
	ldr	r0, [r11, #-80]
	str	r7, [r0, #20]
	.loc	28 147 0                @ ../../lib/printf-parse.c:147:0
	ldr	r0, [r11, #-80]
	str	r4, [r0, #24]
	.loc	28 148 0                @ ../../lib/printf-parse.c:148:0
	ldr	r0, [r11, #-80]
	str	r4, [r0, #28]
	.loc	28 149 0                @ ../../lib/printf-parse.c:149:0
	ldr	r0, [r11, #-80]
	str	r7, [r0, #32]
	.loc	28 150 0                @ ../../lib/printf-parse.c:150:0
	ldr	r0, [r11, #-80]
	str	r7, [r0, #40]
	.loc	28 153 0                @ ../../lib/printf-parse.c:153:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #48
	blt	.LBB77_21
@ BB#6:                                 @ %land.lhs.true
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #57
	bgt	.LBB77_21
@ BB#7:                                 @ %if.then18
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp752:
	@DEBUG_VALUE: np <- [sp+#84]+#0
	.loc	28 157 0                @ ../../lib/printf-parse.c:157:0
	ldr	r0, [r11, #-48]
	b	.LBB77_9
.LBB77_8:                               @ %for.inc
                                        @   in Loop: Header=BB77_9 Depth=2
	ldr	r0, [sp, #84]
	add	r0, r0, #1
.LBB77_9:                               @ %if.then18
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r0, [sp, #84]
	ldr	r0, [sp, #84]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #48
	blt	.LBB77_11
@ BB#10:                                @ %land.rhs
                                        @   in Loop: Header=BB77_9 Depth=2
	ldr	r0, [sp, #84]
	ldrb	r0, [r0]
	cmp	r0, #58
	mov	r0, #0
	movlt	r0, #1
.Ltmp753:
.LBB77_11:                              @ %land.end
                                        @   in Loop: Header=BB77_9 Depth=2
	cmp	r0, #1
	beq	.LBB77_8
@ BB#12:                                @ %for.end
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 159 0                @ ../../lib/printf-parse.c:159:0
	ldr	r0, [sp, #84]
	ldrb	r0, [r0]
	cmp	r0, #36
	bne	.LBB77_21
@ BB#13:                                @ %if.then29
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp754:
	@DEBUG_VALUE: n <- [sp+#80]+#0
	.loc	28 163 0                @ ../../lib/printf-parse.c:163:0
	ldr	r0, [r11, #-48]
.Ltmp755:
	.loc	28 161 0                @ ../../lib/printf-parse.c:161:0
	str	r4, [sp, #80]
	b	.LBB77_15
.LBB77_14:                              @ %for.body39
                                        @   in Loop: Header=BB77_15 Depth=2
	.loc	28 164 11               @ ../../lib/printf-parse.c:164:11
.Ltmp756:
	ldr	r1, [sp, #80]
	mov	r0, #1
	cmp	r1, #0
	ldr	r1, [sp, #84]
	ldreq	r0, [sp, #80]
	ldrb	r1, [r1]
	addeq	r0, r0, r0, lsl #2
	lsleq	r0, r0, #1
	sub	r1, r1, #48
	bl	xsum105
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #80]
	.loc	28 163 0                @ ../../lib/printf-parse.c:163:0
	ldr	r0, [sp, #84]
	add	r0, r0, #1
.LBB77_15:                              @ %if.then29
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r0, [sp, #84]
	ldr	r0, [sp, #84]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #48
	blt	.LBB77_17
@ BB#16:                                @ %land.rhs34
                                        @   in Loop: Header=BB77_15 Depth=2
	ldr	r0, [sp, #84]
	ldrb	r0, [r0]
	cmp	r0, #58
	mov	r0, #0
	movlt	r0, #1
.Ltmp757:
.LBB77_17:                              @ %land.end38
                                        @   in Loop: Header=BB77_15 Depth=2
	cmp	r0, #1
	beq	.LBB77_14
@ BB#18:                                @ %for.end47
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 165 0                @ ../../lib/printf-parse.c:165:0
	ldr	r0, [sp, #80]
	cmp	r0, #0
	.loc	28 168 0                @ ../../lib/printf-parse.c:168:0
	ldrne	r0, [sp, #80]
	cmpne	r0, #1
	beq	.LBB77_205
@ BB#19:                                @ %if.end55
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 171 0                @ ../../lib/printf-parse.c:171:0
	ldr	r0, [sp, #80]
	sub	r0, r0, #1
	str	r0, [r11, #-76]
	.loc	28 172 0                @ ../../lib/printf-parse.c:172:0
	ldr	r0, [sp, #84]
.LBB77_20:                              @ %if.end55
                                        @   in Loop: Header=BB77_3 Depth=1
	add	r0, r0, #1
	str	r0, [r11, #-48]
.Ltmp758:
.LBB77_21:                              @ %for.cond60
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 179 0                @ ../../lib/printf-parse.c:179:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #39
	bne	.LBB77_23
@ BB#22:                                @ %if.then64
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 181 0                @ ../../lib/printf-parse.c:181:0
.Ltmp759:
	ldr	r0, [r11, #-80]
	ldr	r1, [r0, #8]
	orr	r1, r1, #1
	b	.LBB77_33
.Ltmp760:
.LBB77_23:                              @ %if.else
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 184 0                @ ../../lib/printf-parse.c:184:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #45
	bne	.LBB77_25
@ BB#24:                                @ %if.then70
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 186 0                @ ../../lib/printf-parse.c:186:0
.Ltmp761:
	ldr	r0, [r11, #-80]
	ldr	r1, [r0, #8]
	orr	r1, r1, #2
	b	.LBB77_33
.Ltmp762:
.LBB77_25:                              @ %if.else74
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 189 0                @ ../../lib/printf-parse.c:189:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #43
	bne	.LBB77_27
@ BB#26:                                @ %if.then78
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 191 0                @ ../../lib/printf-parse.c:191:0
.Ltmp763:
	ldr	r0, [r11, #-80]
	ldr	r1, [r0, #8]
	orr	r1, r1, #4
	b	.LBB77_33
.Ltmp764:
.LBB77_27:                              @ %if.else82
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 194 0                @ ../../lib/printf-parse.c:194:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #32
	bne	.LBB77_29
@ BB#28:                                @ %if.then86
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 196 0                @ ../../lib/printf-parse.c:196:0
.Ltmp765:
	ldr	r0, [r11, #-80]
	ldr	r1, [r0, #8]
	orr	r1, r1, #8
	b	.LBB77_33
.Ltmp766:
.LBB77_29:                              @ %if.else90
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 199 0                @ ../../lib/printf-parse.c:199:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #35
	bne	.LBB77_31
@ BB#30:                                @ %if.then94
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 201 0                @ ../../lib/printf-parse.c:201:0
.Ltmp767:
	ldr	r0, [r11, #-80]
	ldr	r1, [r0, #8]
	orr	r1, r1, #16
	b	.LBB77_33
.Ltmp768:
.LBB77_31:                              @ %if.else98
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 204 0                @ ../../lib/printf-parse.c:204:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #48
	bne	.LBB77_34
@ BB#32:                                @ %if.then102
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 206 0                @ ../../lib/printf-parse.c:206:0
.Ltmp769:
	ldr	r0, [r11, #-80]
	ldr	r1, [r0, #8]
	orr	r1, r1, #32
.Ltmp770:
.LBB77_33:                              @ %if.then64
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 181 0                @ ../../lib/printf-parse.c:181:0
	str	r1, [r0, #8]
	.loc	28 182 0                @ ../../lib/printf-parse.c:182:0
	ldr	r0, [r11, #-48]
	b	.LBB77_20
.Ltmp771:
.LBB77_34:                              @ %for.end113
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 214 0                @ ../../lib/printf-parse.c:214:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #42
	bne	.LBB77_58
@ BB#35:                                @ %if.then117
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 216 0                @ ../../lib/printf-parse.c:216:0
.Ltmp772:
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-48]
	str	r1, [r0, #12]
	.loc	28 217 0                @ ../../lib/printf-parse.c:217:0
	ldr	r0, [r11, #-48]
	.loc	28 218 0                @ ../../lib/printf-parse.c:218:0
	ldr	r1, [r11, #-80]
	.loc	28 217 0                @ ../../lib/printf-parse.c:217:0
	add	r0, r0, #1
	str	r0, [r11, #-48]
	.loc	28 218 0                @ ../../lib/printf-parse.c:218:0
	str	r0, [r1, #16]
	.loc	28 219 0                @ ../../lib/printf-parse.c:219:0
	ldr	r0, [r11, #-64]
	cmp	r0, #0
	.loc	28 223 0                @ ../../lib/printf-parse.c:223:0
	ldr	r0, [r11, #-48]
	.loc	28 220 0                @ ../../lib/printf-parse.c:220:0
	streq	r5, [r11, #-64]
	.loc	28 223 0                @ ../../lib/printf-parse.c:223:0
	ldrb	r0, [r0]
	cmp	r0, #48
	blt	.LBB77_50
@ BB#36:                                @ %land.lhs.true128
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #57
	bgt	.LBB77_50
@ BB#37:                                @ %if.then132
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp773:
	@DEBUG_VALUE: np <- [sp+#76]+#0
	.loc	28 227 0                @ ../../lib/printf-parse.c:227:0
	ldr	r0, [r11, #-48]
	b	.LBB77_39
.LBB77_38:                              @ %for.inc144
                                        @   in Loop: Header=BB77_39 Depth=2
	ldr	r0, [sp, #76]
	add	r0, r0, #1
.LBB77_39:                              @ %if.then132
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r0, [sp, #76]
	ldr	r0, [sp, #76]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #48
	blt	.LBB77_41
@ BB#40:                                @ %land.rhs138
                                        @   in Loop: Header=BB77_39 Depth=2
	ldr	r0, [sp, #76]
	ldrb	r0, [r0]
	cmp	r0, #58
	mov	r0, #0
	movlt	r0, #1
.Ltmp774:
.LBB77_41:                              @ %land.end142
                                        @   in Loop: Header=BB77_39 Depth=2
	cmp	r0, #1
	beq	.LBB77_38
@ BB#42:                                @ %for.end146
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 229 0                @ ../../lib/printf-parse.c:229:0
	ldr	r0, [sp, #76]
	ldrb	r0, [r0]
	cmp	r0, #36
	bne	.LBB77_50
@ BB#43:                                @ %if.then150
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp775:
	@DEBUG_VALUE: n <- [sp+#72]+#0
	.loc	28 233 0                @ ../../lib/printf-parse.c:233:0
	ldr	r0, [r11, #-48]
.Ltmp776:
	.loc	28 231 0                @ ../../lib/printf-parse.c:231:0
	str	r4, [sp, #72]
	b	.LBB77_45
.LBB77_44:                              @ %for.body161
                                        @   in Loop: Header=BB77_45 Depth=2
	.loc	28 234 8                @ ../../lib/printf-parse.c:234:8
.Ltmp777:
	ldr	r1, [sp, #72]
	mov	r0, #1
	cmp	r1, #0
	ldr	r1, [sp, #76]
	ldreq	r0, [sp, #72]
	ldrb	r1, [r1]
	addeq	r0, r0, r0, lsl #2
	lsleq	r0, r0, #1
	sub	r1, r1, #48
	bl	xsum105
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #72]
	.loc	28 233 0                @ ../../lib/printf-parse.c:233:0
	ldr	r0, [sp, #76]
	add	r0, r0, #1
.LBB77_45:                              @ %if.then150
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r0, [sp, #76]
	ldr	r0, [sp, #76]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #48
	blt	.LBB77_47
@ BB#46:                                @ %land.rhs156
                                        @   in Loop: Header=BB77_45 Depth=2
	ldr	r0, [sp, #76]
	ldrb	r0, [r0]
	cmp	r0, #58
	mov	r0, #0
	movlt	r0, #1
.Ltmp778:
.LBB77_47:                              @ %land.end160
                                        @   in Loop: Header=BB77_45 Depth=2
	cmp	r0, #1
	beq	.LBB77_44
@ BB#48:                                @ %for.end174
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 235 0                @ ../../lib/printf-parse.c:235:0
	ldr	r0, [sp, #72]
	cmp	r0, #0
	.loc	28 238 0                @ ../../lib/printf-parse.c:238:0
	ldrne	r0, [sp, #72]
	cmpne	r0, #1
	beq	.LBB77_205
@ BB#49:                                @ %if.end182
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 241 0                @ ../../lib/printf-parse.c:241:0
	ldr	r0, [sp, #72]
	ldr	r1, [r11, #-80]
	sub	r0, r0, #1
	str	r0, [r1, #20]
	.loc	28 242 0                @ ../../lib/printf-parse.c:242:0
	ldr	r0, [sp, #76]
	add	r0, r0, #1
	str	r0, [r11, #-48]
.Ltmp779:
.LBB77_50:                              @ %if.end187
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 245 0                @ ../../lib/printf-parse.c:245:0
	ldr	r0, [r11, #-80]
	ldr	r0, [r0, #20]
	cmn	r0, #1
	bne	.LBB77_52
@ BB#51:                                @ %if.then191
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 247 0                @ ../../lib/printf-parse.c:247:0
.Ltmp780:
	ldr	r0, [r11, #-52]
	add	r1, r0, #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-80]
	str	r0, [r1, #20]
	.loc	28 248 0                @ ../../lib/printf-parse.c:248:0
	ldr	r0, [r11, #-80]
	ldr	r0, [r0, #20]
	cmn	r0, #1
	beq	.LBB77_205
.Ltmp781:
.LBB77_52:                              @ %if.end198
                                        @   in Loop: Header=BB77_3 Depth=1
	@DEBUG_VALUE: n <- [sp+#68]+#0
	.loc	28 252 0                @ ../../lib/printf-parse.c:252:0
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-60]
	ldr	r0, [r0, #20]
	str	r0, [sp, #68]
	cmp	r0, r1
	blo	.LBB77_70
@ BB#53:                                @ %if.then203
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp782:
	@DEBUG_VALUE: memory_size <- [sp+#64]+#0
	@DEBUG_VALUE: memory <- [sp+#60]+#0
	.loc	28 252 0                @ ../../lib/printf-parse.c:252:0
	ldr	r1, [r11, #-60]
	mov	r0, #1
	cmp	r1, #0
	ldr	r1, [sp, #68]
	ldreq	r0, [r11, #-60]
	lsleq	r0, r0, #1
	str	r0, [r11, #-60]
	cmp	r0, r1
	bhi	.LBB77_55
@ BB#54:                                @ %if.then213
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [sp, #68]
	mov	r1, #1
	bl	xsum105
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-60]
.LBB77_55:                              @ %if.end215
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r1, [r11, #-60]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-60]
	lsleq	r0, r0, #4
	str	r0, [sp, #64]
	cmp	r0, #1
	beq	.LBB77_197
@ BB#56:                                @ %if.end226
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB77_66
@ BB#57:                                @ %cond.true228
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #64]
	ldr	r0, [r0, #4]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB77_67
.Ltmp783:
.LBB77_58:                              @ %if.else268
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 254 0                @ ../../lib/printf-parse.c:254:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #48
	blt	.LBB77_74
@ BB#59:                                @ %land.lhs.true272
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #57
	bgt	.LBB77_74
@ BB#60:                                @ %if.then276
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp784:
	@DEBUG_VALUE: width_length <- [sp+#56]+#0
	.loc	28 258 0                @ ../../lib/printf-parse.c:258:0
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-48]
	str	r1, [r0, #12]
	b	.LBB77_62
.LBB77_61:                              @ %for.inc288
                                        @   in Loop: Header=BB77_62 Depth=2
	.loc	28 259 0                @ ../../lib/printf-parse.c:259:0
.Ltmp785:
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	str	r0, [r11, #-48]
.LBB77_62:                              @ %for.cond278
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-48]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #48
	blt	.LBB77_64
@ BB#63:                                @ %land.rhs282
                                        @   in Loop: Header=BB77_62 Depth=2
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #58
	mov	r0, #0
	movlt	r0, #1
.Ltmp786:
.LBB77_64:                              @ %land.end286
                                        @   in Loop: Header=BB77_62 Depth=2
	cmp	r0, #1
	beq	.LBB77_61
@ BB#65:                                @ %for.end290
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 261 0                @ ../../lib/printf-parse.c:261:0
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-48]
	str	r1, [r0, #16]
	.loc	28 262 0                @ ../../lib/printf-parse.c:262:0
	ldr	r0, [r11, #-80]
	.loc	28 263 0                @ ../../lib/printf-parse.c:263:0
	ldr	r2, [r11, #-64]
	.loc	28 262 0                @ ../../lib/printf-parse.c:262:0
	ldr	r1, [r0, #12]
	ldr	r0, [r0, #16]
	sub	r0, r0, r1
	str	r0, [sp, #56]
	.loc	28 263 0                @ ../../lib/printf-parse.c:263:0
	cmp	r2, r0
	.loc	28 264 0                @ ../../lib/printf-parse.c:264:0
	ldrlo	r0, [sp, #56]
	strlo	r0, [r11, #-64]
	b	.LBB77_74
.Ltmp787:
.LBB77_66:                              @ %cond.false231
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 252 0                @ ../../lib/printf-parse.c:252:0
	ldr	r0, [sp, #64]
	bl	malloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB77_67:                              @ %cond.end233
                                        @   in Loop: Header=BB77_3 Depth=1
	str	r0, [sp, #60]
	cmp	r0, #0
	beq	.LBB77_197
@ BB#68:                                @ %if.end238
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #60]
	str	r1, [r0, #4]
	b	.LBB77_70
.Ltmp788:
.LBB77_69:                              @ %while.body245
                                        @   in Loop: Header=BB77_70 Depth=2
	.loc	28 252 0                @ ../../lib/printf-parse.c:252:0
	ldr	r1, [r11, #-44]
	ldr	r0, [r1]
	add	r2, r0, #1
	str	r2, [r1]
	ldr	r1, [r11, #-44]
	ldr	r1, [r1, #4]
	str	r4, [r1, r0, lsl #4]
.LBB77_70:                              @ %while.cond241
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #68]
	ldr	r0, [r0]
	cmp	r0, r1
	bls	.LBB77_69
@ BB#71:                                @ %while.end
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #68]
	ldr	r0, [r0, #4]
	ldr	r0, [r0, r1, lsl #4]
	cmp	r0, #0
	bne	.LBB77_73
@ BB#72:                                @ %if.then255
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #68]
	ldr	r0, [r0, #4]
	str	r6, [r0, r1, lsl #4]
	b	.LBB77_74
.LBB77_73:                              @ %if.else259
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #68]
	ldr	r0, [r0, #4]
	ldr	r0, [r0, r1, lsl #4]
	cmp	r0, #5
	bne	.LBB77_205
.Ltmp789:
.LBB77_74:                              @ %if.end299
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 268 0                @ ../../lib/printf-parse.c:268:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #46
	bne	.LBB77_113
@ BB#75:                                @ %if.then303
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 270 0                @ ../../lib/printf-parse.c:270:0
.Ltmp790:
	ldr	r0, [r11, #-48]
	add	r1, r0, #1
	str	r1, [r11, #-48]
	.loc	28 271 0                @ ../../lib/printf-parse.c:271:0
	ldrb	r0, [r0, #1]
	cmp	r0, #42
	bne	.LBB77_99
@ BB#76:                                @ %if.then308
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 273 0                @ ../../lib/printf-parse.c:273:0
.Ltmp791:
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-80]
	sub	r0, r0, #1
	str	r0, [r1, #24]
	.loc	28 274 0                @ ../../lib/printf-parse.c:274:0
	ldr	r0, [r11, #-48]
	.loc	28 275 0                @ ../../lib/printf-parse.c:275:0
	ldr	r1, [r11, #-80]
	.loc	28 274 0                @ ../../lib/printf-parse.c:274:0
	add	r0, r0, #1
	str	r0, [r11, #-48]
	.loc	28 275 0                @ ../../lib/printf-parse.c:275:0
	str	r0, [r1, #28]
	.loc	28 276 0                @ ../../lib/printf-parse.c:276:0
	ldr	r0, [r11, #-68]
	cmp	r0, #1
	movls	r0, #2
	.loc	28 277 0                @ ../../lib/printf-parse.c:277:0
	strls	r0, [r11, #-68]
	.loc	28 280 0                @ ../../lib/printf-parse.c:280:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #48
	blt	.LBB77_91
@ BB#77:                                @ %land.lhs.true320
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #57
	bgt	.LBB77_91
@ BB#78:                                @ %if.then324
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp792:
	@DEBUG_VALUE: np <- [sp+#52]+#0
	.loc	28 284 0                @ ../../lib/printf-parse.c:284:0
	ldr	r0, [r11, #-48]
	b	.LBB77_80
.LBB77_79:                              @ %for.inc336
                                        @   in Loop: Header=BB77_80 Depth=2
	ldr	r0, [sp, #52]
	add	r0, r0, #1
.LBB77_80:                              @ %if.then324
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r0, [sp, #52]
	ldr	r0, [sp, #52]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #48
	blt	.LBB77_82
@ BB#81:                                @ %land.rhs330
                                        @   in Loop: Header=BB77_80 Depth=2
	ldr	r0, [sp, #52]
	ldrb	r0, [r0]
	cmp	r0, #58
	mov	r0, #0
	movlt	r0, #1
.Ltmp793:
.LBB77_82:                              @ %land.end334
                                        @   in Loop: Header=BB77_80 Depth=2
	cmp	r0, #1
	beq	.LBB77_79
@ BB#83:                                @ %for.end338
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 286 0                @ ../../lib/printf-parse.c:286:0
	ldr	r0, [sp, #52]
	ldrb	r0, [r0]
	cmp	r0, #36
	bne	.LBB77_91
@ BB#84:                                @ %if.then342
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp794:
	@DEBUG_VALUE: n <- [sp+#48]+#0
	.loc	28 290 0                @ ../../lib/printf-parse.c:290:0
	ldr	r0, [r11, #-48]
.Ltmp795:
	.loc	28 288 0                @ ../../lib/printf-parse.c:288:0
	str	r4, [sp, #48]
	b	.LBB77_86
.LBB77_85:                              @ %for.body353
                                        @   in Loop: Header=BB77_86 Depth=2
	.loc	28 291 12               @ ../../lib/printf-parse.c:291:12
.Ltmp796:
	ldr	r1, [sp, #48]
	mov	r0, #1
	cmp	r1, #0
	ldr	r1, [sp, #52]
	ldreq	r0, [sp, #48]
	ldrb	r1, [r1]
	addeq	r0, r0, r0, lsl #2
	lsleq	r0, r0, #1
	sub	r1, r1, #48
	bl	xsum105
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #48]
	.loc	28 290 0                @ ../../lib/printf-parse.c:290:0
	ldr	r0, [sp, #52]
	add	r0, r0, #1
.LBB77_86:                              @ %if.then342
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	str	r0, [sp, #52]
	ldr	r0, [sp, #52]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #48
	blt	.LBB77_88
@ BB#87:                                @ %land.rhs348
                                        @   in Loop: Header=BB77_86 Depth=2
	ldr	r0, [sp, #52]
	ldrb	r0, [r0]
	cmp	r0, #58
	mov	r0, #0
	movlt	r0, #1
.Ltmp797:
.LBB77_88:                              @ %land.end352
                                        @   in Loop: Header=BB77_86 Depth=2
	cmp	r0, #1
	beq	.LBB77_85
@ BB#89:                                @ %for.end366
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 292 0                @ ../../lib/printf-parse.c:292:0
	ldr	r0, [sp, #48]
	cmp	r0, #0
	.loc	28 295 0                @ ../../lib/printf-parse.c:295:0
	ldrne	r0, [sp, #48]
	cmpne	r0, #1
	beq	.LBB77_205
@ BB#90:                                @ %if.end374
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 299 0                @ ../../lib/printf-parse.c:299:0
	ldr	r0, [sp, #48]
	ldr	r1, [r11, #-80]
	sub	r0, r0, #1
	str	r0, [r1, #32]
	.loc	28 300 0                @ ../../lib/printf-parse.c:300:0
	ldr	r0, [sp, #52]
	add	r0, r0, #1
	str	r0, [r11, #-48]
.Ltmp798:
.LBB77_91:                              @ %if.end379
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 303 0                @ ../../lib/printf-parse.c:303:0
	ldr	r0, [r11, #-80]
	ldr	r0, [r0, #32]
	cmn	r0, #1
	bne	.LBB77_93
@ BB#92:                                @ %if.then383
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 305 0                @ ../../lib/printf-parse.c:305:0
.Ltmp799:
	ldr	r0, [r11, #-52]
	add	r1, r0, #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-80]
	str	r0, [r1, #32]
	.loc	28 306 0                @ ../../lib/printf-parse.c:306:0
	ldr	r0, [r11, #-80]
	ldr	r0, [r0, #32]
	cmn	r0, #1
	beq	.LBB77_205
.Ltmp800:
.LBB77_93:                              @ %if.end391
                                        @   in Loop: Header=BB77_3 Depth=1
	@DEBUG_VALUE: n <- [sp+#44]+#0
	.loc	28 310 0                @ ../../lib/printf-parse.c:310:0
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-60]
	ldr	r0, [r0, #32]
	str	r0, [sp, #44]
	cmp	r0, r1
	blo	.LBB77_109
@ BB#94:                                @ %if.then396
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp801:
	@DEBUG_VALUE: memory_size <- [sp+#40]+#0
	@DEBUG_VALUE: memory <- [sp+#36]+#0
	.loc	28 310 0                @ ../../lib/printf-parse.c:310:0
	ldr	r1, [r11, #-60]
	mov	r0, #1
	cmp	r1, #0
	ldr	r1, [sp, #44]
	ldreq	r0, [r11, #-60]
	lsleq	r0, r0, #1
	str	r0, [r11, #-60]
	cmp	r0, r1
	bhi	.LBB77_96
@ BB#95:                                @ %if.then408
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [sp, #44]
	mov	r1, #1
	bl	xsum105
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-60]
.LBB77_96:                              @ %if.end410
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r1, [r11, #-60]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-60]
	lsleq	r0, r0, #4
	str	r0, [sp, #40]
	cmp	r0, #1
	beq	.LBB77_197
@ BB#97:                                @ %if.end421
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB77_105
@ BB#98:                                @ %cond.true424
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #40]
	ldr	r0, [r0, #4]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB77_106
.Ltmp802:
.LBB77_99:                              @ %if.else466
                                        @   in Loop: Header=BB77_3 Depth=1
	@DEBUG_VALUE: precision_length <- [sp+#32]+#0
	.loc	28 316 0                @ ../../lib/printf-parse.c:316:0
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-80]
	sub	r0, r0, #1
	str	r0, [r1, #24]
	b	.LBB77_101
.LBB77_100:                             @ %for.inc479
                                        @   in Loop: Header=BB77_101 Depth=2
	.loc	28 317 0                @ ../../lib/printf-parse.c:317:0
.Ltmp803:
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	str	r0, [r11, #-48]
.LBB77_101:                             @ %for.cond469
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-48]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #48
	blt	.LBB77_103
@ BB#102:                               @ %land.rhs473
                                        @   in Loop: Header=BB77_101 Depth=2
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #58
	mov	r0, #0
	movlt	r0, #1
.Ltmp804:
.LBB77_103:                             @ %land.end477
                                        @   in Loop: Header=BB77_101 Depth=2
	cmp	r0, #1
	beq	.LBB77_100
@ BB#104:                               @ %for.end481
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 319 0                @ ../../lib/printf-parse.c:319:0
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-48]
	str	r1, [r0, #28]
	.loc	28 320 0                @ ../../lib/printf-parse.c:320:0
	ldr	r0, [r11, #-80]
	.loc	28 321 0                @ ../../lib/printf-parse.c:321:0
	ldr	r2, [r11, #-68]
	.loc	28 320 0                @ ../../lib/printf-parse.c:320:0
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #28]
	sub	r0, r0, r1
	str	r0, [sp, #32]
	.loc	28 321 0                @ ../../lib/printf-parse.c:321:0
	cmp	r2, r0
	.loc	28 322 0                @ ../../lib/printf-parse.c:322:0
	ldrlo	r0, [sp, #32]
	strlo	r0, [r11, #-68]
	b	.LBB77_113
.Ltmp805:
.LBB77_105:                             @ %cond.false427
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 310 0                @ ../../lib/printf-parse.c:310:0
	ldr	r0, [sp, #40]
	bl	malloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB77_106:                             @ %cond.end429
                                        @   in Loop: Header=BB77_3 Depth=1
	str	r0, [sp, #36]
	cmp	r0, #0
	beq	.LBB77_197
@ BB#107:                               @ %if.end434
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #36]
	str	r1, [r0, #4]
	b	.LBB77_109
.Ltmp806:
.LBB77_108:                             @ %while.body441
                                        @   in Loop: Header=BB77_109 Depth=2
	.loc	28 310 0                @ ../../lib/printf-parse.c:310:0
	ldr	r1, [r11, #-44]
	ldr	r0, [r1]
	add	r2, r0, #1
	str	r2, [r1]
	ldr	r1, [r11, #-44]
	ldr	r1, [r1, #4]
	str	r4, [r1, r0, lsl #4]
.LBB77_109:                             @ %while.cond437
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #44]
	ldr	r0, [r0]
	cmp	r0, r1
	bls	.LBB77_108
@ BB#110:                               @ %while.end447
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #44]
	ldr	r0, [r0, #4]
	ldr	r0, [r0, r1, lsl #4]
	cmp	r0, #0
	bne	.LBB77_112
@ BB#111:                               @ %if.then453
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #44]
	ldr	r0, [r0, #4]
	str	r6, [r0, r1, lsl #4]
	b	.LBB77_113
.LBB77_112:                             @ %if.else457
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #44]
	ldr	r0, [r0, #4]
	ldr	r0, [r0, r1, lsl #4]
	cmp	r0, #5
	bne	.LBB77_205
.Ltmp807:
.LBB77_113:                             @ %if.end493
                                        @   in Loop: Header=BB77_3 Depth=1
	@DEBUG_VALUE: type <- [sp+#28]+#0
	@DEBUG_VALUE: flags <- [sp+#24]+#0
	.loc	28 331 0                @ ../../lib/printf-parse.c:331:0
	str	r4, [sp, #24]
	b	.LBB77_115
.LBB77_114:                             @ %if.then530
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 379 0                @ ../../lib/printf-parse.c:379:0
.Ltmp808:
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	str	r0, [r11, #-48]
.Ltmp809:
.LBB77_115:                             @ %for.cond496
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	28 335 0                @ ../../lib/printf-parse.c:335:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #104
	bne	.LBB77_117
@ BB#116:                               @ %if.then500
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 337 0                @ ../../lib/printf-parse.c:337:0
.Ltmp810:
	ldr	r0, [sp, #24]
	and	r1, r0, #1
	orr	r0, r0, r5, lsl r1
.Ltmp811:
	.loc	28 342 0                @ ../../lib/printf-parse.c:342:0
	str	r0, [sp, #24]
	b	.LBB77_114
.Ltmp812:
.LBB77_117:                             @ %if.else503
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 340 0                @ ../../lib/printf-parse.c:340:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #76
	bne	.LBB77_119
@ BB#118:                               @ %if.then507
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 342 0                @ ../../lib/printf-parse.c:342:0
.Ltmp813:
	ldr	r0, [sp, #24]
	orr	r0, r0, #4
	str	r0, [sp, #24]
	b	.LBB77_114
.Ltmp814:
.LBB77_119:                             @ %if.else510
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 345 0                @ ../../lib/printf-parse.c:345:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #108
	bne	.LBB77_121
@ BB#120:                               @ %if.then514
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 347 0                @ ../../lib/printf-parse.c:347:0
.Ltmp815:
	ldr	r0, [sp, #24]
	add	r0, r0, #8
.Ltmp816:
	.loc	28 342 0                @ ../../lib/printf-parse.c:342:0
	str	r0, [sp, #24]
	b	.LBB77_114
.Ltmp817:
.LBB77_121:                             @ %if.else516
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 350 0                @ ../../lib/printf-parse.c:350:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #106
	bne	.LBB77_123
@ BB#122:                               @ %if.then520
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 355 0                @ ../../lib/printf-parse.c:355:0
.Ltmp818:
	ldr	r0, [sp, #24]
	add	r0, r0, #16
.Ltmp819:
	.loc	28 342 0                @ ../../lib/printf-parse.c:342:0
	str	r0, [sp, #24]
	b	.LBB77_114
.Ltmp820:
.LBB77_123:                             @ %if.else523
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 364 0                @ ../../lib/printf-parse.c:364:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #122
	beq	.LBB77_114
@ BB#124:                               @ %lor.lhs.false
                                        @   in Loop: Header=BB77_115 Depth=2
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #90
	beq	.LBB77_114
@ BB#125:                               @ %if.else532
                                        @   in Loop: Header=BB77_115 Depth=2
	.loc	28 381 0                @ ../../lib/printf-parse.c:381:0
	ldr	r0, [r11, #-48]
	ldrb	r0, [r0]
	cmp	r0, #116
	beq	.LBB77_114
.Ltmp821:
@ BB#126:                               @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 438 0                @ ../../lib/printf-parse.c:438:0
	ldr	r0, [r11, #-48]
	add	r1, r0, #1
	str	r1, [r11, #-48]
	ldrb	r0, [r0]
	strb	r0, [r11, #-69]
	.loc	28 439 0                @ ../../lib/printf-parse.c:439:0
	ldrb	r0, [r11, #-69]
	cmp	r0, #64
	bhi	.LBB77_129
@ BB#127:                               @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	cmp	r0, #37
	bne	.LBB77_205
@ BB#128:                               @ %sw.bb643
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 549 0                @ ../../lib/printf-parse.c:549:0
.Ltmp822:
	str	r4, [sp, #28]
	b	.LBB77_177
.LBB77_129:                             @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	cmp	r0, #82
	bhi	.LBB77_134
@ BB#130:                               @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	sub	r1, r0, #69
	cmp	r1, #3
	blo	.LBB77_142
@ BB#131:                               @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	cmp	r0, #65
	beq	.LBB77_142
@ BB#132:                               @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	cmp	r0, #67
	bne	.LBB77_205
@ BB#133:                               @ %sw.bb610
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #99
	.loc	28 496 0                @ ../../lib/printf-parse.c:496:0
	str	r10, [sp, #28]
	.loc	28 497 0                @ ../../lib/printf-parse.c:497:0
	strb	r0, [r11, #-69]
	b	.LBB77_177
.LBB77_134:                             @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	cmp	r0, #87
	bhi	.LBB77_137
@ BB#135:                               @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	cmp	r0, #83
	bne	.LBB77_205
@ BB#136:                               @ %sw.bb617
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #115
	.loc	28 512 0                @ ../../lib/printf-parse.c:512:0
	str	r9, [sp, #28]
	.loc	28 513 0                @ ../../lib/printf-parse.c:513:0
	strb	r0, [r11, #-69]
	b	.LBB77_177
.LBB77_137:                             @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	sub	r0, r0, #88
	cmp	r0, #32
	bhi	.LBB77_205
@ BB#138:                               @ %for.end545
                                        @   in Loop: Header=BB77_3 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI77_0_0
	ldr	pc, [r0, r1]
.LJTI77_0_0:
	.long	.LBB77_139
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_142
	.long	.LBB77_205
	.long	.LBB77_145
	.long	.LBB77_147
	.long	.LBB77_142
	.long	.LBB77_142
	.long	.LBB77_142
	.long	.LBB77_205
	.long	.LBB77_147
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_150
	.long	.LBB77_139
	.long	.LBB77_153
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_154
	.long	.LBB77_205
	.long	.LBB77_139
	.long	.LBB77_205
	.long	.LBB77_205
	.long	.LBB77_139
.LBB77_139:                             @ %sw.bb571
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 462 0                @ ../../lib/printf-parse.c:462:0
	ldr	r0, [sp, #24]
	cmp	r0, #15
	bgt	.LBB77_141
@ BB#140:                               @ %lor.lhs.false574
                                        @   in Loop: Header=BB77_3 Depth=1
	ldrb	r0, [sp, #24]
	tst	r0, #4
	beq	.LBB77_156
.LBB77_141:                             @ %if.then577
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #10
	b	.LBB77_175
.LBB77_142:                             @ %sw.bb595
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 479 0                @ ../../lib/printf-parse.c:479:0
	ldr	r0, [sp, #24]
	cmp	r0, #15
	bgt	.LBB77_144
@ BB#143:                               @ %lor.lhs.false598
                                        @   in Loop: Header=BB77_3 Depth=1
	ldrb	r0, [sp, #24]
	tst	r0, #4
	beq	.LBB77_158
.LBB77_144:                             @ %if.then601
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #12
	b	.LBB77_175
.LBB77_145:                             @ %sw.bb604
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 485 0                @ ../../lib/printf-parse.c:485:0
	ldr	r0, [sp, #24]
	cmp	r0, #8
	blt	.LBB77_159
@ BB#146:                               @ %if.then607
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 487 0                @ ../../lib/printf-parse.c:487:0
	str	r10, [sp, #28]
	b	.LBB77_177
.LBB77_147:                             @ %sw.bb
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 444 0                @ ../../lib/printf-parse.c:444:0
	ldr	r0, [sp, #24]
	cmp	r0, #15
	bgt	.LBB77_149
@ BB#148:                               @ %lor.lhs.false550
                                        @   in Loop: Header=BB77_3 Depth=1
	ldrb	r0, [sp, #24]
	tst	r0, #4
	beq	.LBB77_160
.LBB77_149:                             @ %if.then553
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #9
	b	.LBB77_175
.LBB77_150:                             @ %sw.bb619
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 522 0                @ ../../lib/printf-parse.c:522:0
	ldr	r0, [sp, #24]
	cmp	r0, #15
	bgt	.LBB77_152
@ BB#151:                               @ %lor.lhs.false622
                                        @   in Loop: Header=BB77_3 Depth=1
	ldrb	r0, [sp, #24]
	tst	r0, #4
	beq	.LBB77_162
.LBB77_152:                             @ %if.then625
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #22
	b	.LBB77_175
.LBB77_153:                             @ %sw.bb618
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #17
	b	.LBB77_175
.LBB77_154:                             @ %sw.bb611
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 501 0                @ ../../lib/printf-parse.c:501:0
	ldr	r0, [sp, #24]
	cmp	r0, #8
	blt	.LBB77_164
@ BB#155:                               @ %if.then614
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 503 0                @ ../../lib/printf-parse.c:503:0
	str	r9, [sp, #28]
	b	.LBB77_177
.LBB77_156:                             @ %if.else578
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 468 0                @ ../../lib/printf-parse.c:468:0
	ldr	r0, [sp, #24]
	cmp	r0, #8
	blt	.LBB77_165
@ BB#157:                               @ %if.then581
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #8
	b	.LBB77_175
.LBB77_158:                             @ %if.else602
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #11
	b	.LBB77_175
.LBB77_159:                             @ %if.else608
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #13
	b	.LBB77_175
.LBB77_160:                             @ %if.else554
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 450 0                @ ../../lib/printf-parse.c:450:0
	ldr	r0, [sp, #24]
	cmp	r0, #8
	blt	.LBB77_167
@ BB#161:                               @ %if.then557
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #7
	b	.LBB77_175
.LBB77_162:                             @ %if.else626
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 528 0                @ ../../lib/printf-parse.c:528:0
	ldr	r0, [sp, #24]
	cmp	r0, #8
	blt	.LBB77_169
@ BB#163:                               @ %if.then629
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #21
	b	.LBB77_175
.LBB77_164:                             @ %if.else615
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #15
	b	.LBB77_175
.LBB77_165:                             @ %if.else582
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 470 0                @ ../../lib/printf-parse.c:470:0
	ldrb	r0, [sp, #24]
	tst	r0, #2
	beq	.LBB77_171
@ BB#166:                               @ %if.then585
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #2
	b	.LBB77_175
.LBB77_167:                             @ %if.else558
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 452 0                @ ../../lib/printf-parse.c:452:0
	ldrb	r0, [sp, #24]
	tst	r0, #2
	beq	.LBB77_172
@ BB#168:                               @ %if.then561
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 453 0                @ ../../lib/printf-parse.c:453:0
	str	r5, [sp, #28]
	b	.LBB77_177
.LBB77_169:                             @ %if.else630
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 530 0                @ ../../lib/printf-parse.c:530:0
	ldrb	r0, [sp, #24]
	tst	r0, #2
	beq	.LBB77_174
@ BB#170:                               @ %if.then633
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #18
	b	.LBB77_175
.LBB77_171:                             @ %if.else586
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 472 0                @ ../../lib/printf-parse.c:472:0
	ldrb	r0, [sp, #24]
	tst	r0, #1
	moveq	r0, #6
	movne	r0, #4
	b	.LBB77_175
.LBB77_172:                             @ %if.else562
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 454 0                @ ../../lib/printf-parse.c:454:0
	ldrb	r0, [sp, #24]
	tst	r0, #1
	beq	.LBB77_176
@ BB#173:                               @ %if.then565
                                        @   in Loop: Header=BB77_3 Depth=1
	mov	r0, #3
	b	.LBB77_175
.LBB77_174:                             @ %if.else634
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 532 0                @ ../../lib/printf-parse.c:532:0
	ldrb	r0, [sp, #24]
	tst	r0, #1
	moveq	r0, #20
	movne	r0, #19
.LBB77_175:                             @ %if.else638
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 535 0                @ ../../lib/printf-parse.c:535:0
	str	r0, [sp, #28]
	b	.LBB77_177
.LBB77_176:                             @ %if.else566
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 457 0                @ ../../lib/printf-parse.c:457:0
	str	r6, [sp, #28]
.Ltmp823:
.LBB77_177:                             @ %sw.epilog
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 557 0                @ ../../lib/printf-parse.c:557:0
	ldr	r0, [sp, #28]
	cmp	r0, #0
	beq	.LBB77_194
@ BB#178:                               @ %if.then646
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 559 0                @ ../../lib/printf-parse.c:559:0
.Ltmp824:
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-76]
	str	r1, [r0, #40]
	.loc	28 560 0                @ ../../lib/printf-parse.c:560:0
	ldr	r0, [r11, #-80]
	ldr	r0, [r0, #40]
	cmn	r0, #1
	bne	.LBB77_180
@ BB#179:                               @ %if.then651
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 562 0                @ ../../lib/printf-parse.c:562:0
.Ltmp825:
	ldr	r0, [r11, #-52]
	add	r1, r0, #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-80]
	str	r0, [r1, #40]
	.loc	28 563 0                @ ../../lib/printf-parse.c:563:0
	ldr	r0, [r11, #-80]
	ldr	r0, [r0, #40]
	cmn	r0, #1
	beq	.LBB77_205
.Ltmp826:
.LBB77_180:                             @ %if.end659
                                        @   in Loop: Header=BB77_3 Depth=1
	@DEBUG_VALUE: n <- [sp+#20]+#0
	.loc	28 567 0                @ ../../lib/printf-parse.c:567:0
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-60]
	ldr	r0, [r0, #40]
	str	r0, [sp, #20]
	cmp	r0, r1
	blo	.LBB77_190
@ BB#181:                               @ %if.then664
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp827:
	@DEBUG_VALUE: memory_size <- [sp+#16]+#0
	@DEBUG_VALUE: memory <- [sp+#12]+#0
	.loc	28 567 0                @ ../../lib/printf-parse.c:567:0
	ldr	r1, [r11, #-60]
	mov	r0, #1
	cmp	r1, #0
	ldr	r1, [sp, #20]
	ldreq	r0, [r11, #-60]
	lsleq	r0, r0, #1
	str	r0, [r11, #-60]
	cmp	r0, r1
	bhi	.LBB77_183
@ BB#182:                               @ %if.then676
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [sp, #20]
	mov	r1, #1
	bl	xsum105
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [r11, #-60]
.LBB77_183:                             @ %if.end678
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r1, [r11, #-60]
	mov	r0, #1
	cmp	r1, #0
	ldreq	r0, [r11, #-60]
	lsleq	r0, r0, #4
	str	r0, [sp, #16]
	cmp	r0, #1
	beq	.LBB77_197
@ BB#184:                               @ %if.end689
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB77_186
@ BB#185:                               @ %cond.true692
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #16]
	ldr	r0, [r0, #4]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	b	.LBB77_187
.LBB77_186:                             @ %cond.false695
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [sp, #16]
	bl	malloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB77_187:                             @ %cond.end697
                                        @   in Loop: Header=BB77_3 Depth=1
	str	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB77_197
@ BB#188:                               @ %if.end702
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #12]
	str	r1, [r0, #4]
	b	.LBB77_190
.Ltmp828:
.LBB77_189:                             @ %while.body709
                                        @   in Loop: Header=BB77_190 Depth=2
	.loc	28 567 0                @ ../../lib/printf-parse.c:567:0
	ldr	r1, [r11, #-44]
	ldr	r0, [r1]
	add	r2, r0, #1
	str	r2, [r1]
	ldr	r1, [r11, #-44]
	ldr	r1, [r1, #4]
	str	r4, [r1, r0, lsl #4]
.LBB77_190:                             @ %while.cond705
                                        @   Parent Loop BB77_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #20]
	ldr	r0, [r0]
	cmp	r0, r1
	bls	.LBB77_189
@ BB#191:                               @ %while.end715
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #20]
	ldr	r0, [r0, #4]
	ldr	r0, [r0, r1, lsl #4]
	cmp	r0, #0
	bne	.LBB77_193
@ BB#192:                               @ %if.then721
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r0, [r0, #4]
	str	r2, [r0, r1, lsl #4]
	b	.LBB77_194
.LBB77_193:                             @ %if.else725
                                        @   in Loop: Header=BB77_3 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r0, [r0, #4]
	ldr	r0, [r0, r1, lsl #4]
	cmp	r0, r2
	bne	.LBB77_205
.Ltmp829:
.LBB77_194:                             @ %if.end734
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 569 0                @ ../../lib/printf-parse.c:569:0
	ldr	r0, [r11, #-80]
	ldrb	r1, [r11, #-69]
	strb	r1, [r0, #36]
	.loc	28 570 0                @ ../../lib/printf-parse.c:570:0
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-48]
	str	r1, [r0, #4]
.Ltmp830:
	.loc	28 573 0                @ ../../lib/printf-parse.c:573:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	.loc	28 574 0                @ ../../lib/printf-parse.c:574:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-56]
	ldr	r0, [r0]
	cmp	r0, r1
	blo	.LBB77_3
@ BB#195:                               @ %if.then740
                                        @   in Loop: Header=BB77_3 Depth=1
.Ltmp831:
	@DEBUG_VALUE: memory_size <- [sp+#8]+#0
	@DEBUG_VALUE: memory <- [sp+#4]+#0
	.loc	28 579 0                @ ../../lib/printf-parse.c:579:0
	ldr	r1, [r11, #-56]
	mov	r0, #1
	cmp	r1, #0
	mov	r1, #1
	ldreq	r1, [r11, #-56]
	lsleq	r1, r1, #1
	str	r1, [r11, #-56]
	.loc	28 580 0                @ ../../lib/printf-parse.c:580:0
	cmp	r1, #0
	ldreq	r1, [r11, #-56]
	muleq	r0, r1, r8
	str	r0, [sp, #8]
	.loc	28 581 0                @ ../../lib/printf-parse.c:581:0
	cmp	r0, #1
	beq	.LBB77_197
@ BB#196:                               @ %if.end760
                                        @   in Loop: Header=BB77_3 Depth=1
	.loc	28 584 0                @ ../../lib/printf-parse.c:584:0
	ldr	r0, [r11, #-40]
	ldr	r1, [sp, #8]
	ldr	r0, [r0, #4]
	bl	realloc
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	str	r0, [sp, #4]
	.loc	28 585 0                @ ../../lib/printf-parse.c:585:0
	cmp	r0, #0
	bne	.LBB77_2
.Ltmp832:
.LBB77_197:                             @ %out_of_memory
	.loc	28 614 0                @ ../../lib/printf-parse.c:614:0
	ldr	r0, [r11, #-44]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB77_199
@ BB#198:                               @ %if.then790
	.loc	28 615 0                @ ../../lib/printf-parse.c:615:0
	ldr	r0, [r11, #-44]
	ldr	r0, [r0, #4]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB77_199:                             @ %if.end792
	.loc	28 616 0                @ ../../lib/printf-parse.c:616:0
	ldr	r0, [r11, #-40]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB77_201
@ BB#200:                               @ %if.then795
	.loc	28 617 0                @ ../../lib/printf-parse.c:617:0
	ldr	r0, [r11, #-40]
	ldr	r0, [r0, #4]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB77_201:                             @ %out_of_memory_1
	.loc	28 619 0                @ ../../lib/printf-parse.c:619:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #12
.LBB77_202:                             @ %out_of_memory_1
	str	r1, [r0]
	mvn	r0, #0
.LBB77_203:                             @ %out_of_memory_1
	.loc	28 620 0                @ ../../lib/printf-parse.c:620:0
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.LBB77_204:                             @ %while.end770
	.loc	28 599 0                @ ../../lib/printf-parse.c:599:0
	ldr	r0, [r11, #-40]
	mov	r3, #44
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mul	r2, r1, r3
	ldr	r1, [r11, #-48]
	str	r1, [r0, r2]
	.loc	28 601 0                @ ../../lib/printf-parse.c:601:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-64]
	str	r1, [r0, #8]
	.loc	28 602 0                @ ../../lib/printf-parse.c:602:0
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-68]
	str	r1, [r0, #12]
	mov	r0, #0
	b	.LBB77_203
.LBB77_205:                             @ %error
	.loc	28 606 0                @ ../../lib/printf-parse.c:606:0
	ldr	r0, [r11, #-44]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB77_207
@ BB#206:                               @ %if.then779
	.loc	28 607 0                @ ../../lib/printf-parse.c:607:0
	ldr	r0, [r11, #-44]
	ldr	r0, [r0, #4]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB77_207:                             @ %if.end781
	.loc	28 608 0                @ ../../lib/printf-parse.c:608:0
	ldr	r0, [r11, #-40]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB77_209
@ BB#208:                               @ %if.then784
	.loc	28 609 0                @ ../../lib/printf-parse.c:609:0
	ldr	r0, [r11, #-40]
	ldr	r0, [r0, #4]
	bl	free
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
.LBB77_209:                             @ %if.end786
	.loc	28 610 0                @ ../../lib/printf-parse.c:610:0
	bl	__errno_location
	@ [ ====== CFI ID begin ====== ]
	mov r12, #14217
	@ [ ====== CFI ID end ====== ]
	mov	r1, #22
	b	.LBB77_202
	@ [ ====== CFI ID begin ====== ]
	mov r12, #64781
	@ [ ====== CFI ID end ====== ]
.Ltmp833:
.Ltmp834:
	.size	printf_parse, .Ltmp834-printf_parse
.Lfunc_end77:

	.align	2
	.type	xsum105,%function
xsum105:                                @ @xsum105
.Lfunc_begin78:
	.loc	23 57 0                 @ ../../lib/xsize.h:57:0
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	.loc	23 58 0 prologue_end    @ ../../lib/xsize.h:58:0
.Ltmp835:
	ldr	r0, [sp, #8]
	.loc	23 59 0                 @ ../../lib/xsize.h:59:0
	ldr	r2, [sp, #8]
	.loc	23 58 0                 @ ../../lib/xsize.h:58:0
	add	r1, r0, r1
	mov	r0, #1
	str	r1, [sp]
	.loc	23 59 0                 @ ../../lib/xsize.h:59:0
	cmp	r1, r2
	ldrhs	r0, [sp]
	add	sp, sp, #12
	@ [ ====== CFI checkret begin ====== ]
	@ [ ====== mov pc lr ====== ]
	push {r0}
	ldr r0, [lr, #4] 	@ get destination ID
	ldr r12, #14217 	@ ID first
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	add lr, lr, #8
	mov	pc, lr
	@ [ ====== CFI check end ====== ]
.Ltmp836:
.Ltmp837:
	.size	xsum105, .Ltmp837-xsum105
.Lfunc_end78:

	.globl	cfi_abort
	.align	2
	.type	cfi_abort,%function
cfi_abort:                              @ @cfi_abort
@ BB#0:                                 @ %entry
.LBB79_1:                               @ %loop
                                        @ =>This Inner Loop Header: Depth=1
	b	.LBB79_1
.Ltmp838:
	.size	cfi_abort, .Ltmp838-cfi_abort

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	 "Try `%s --help' for more information.\n"
	.size	.L.str, 39

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	 "Usage: %s [-DIGITS] [OPTION]... [FILE]...\n"
	.size	.L.str1, 43

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	 "Reformat each paragraph in the FILE(s), writing to standard output.\nIf no FILE or if FILE is `-', read standard input.\n\n"
	.size	.L.str2, 121

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	 "Mandatory arguments to long options are mandatory for short options too.\n"
	.size	.L.str3, 74

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	 "  -c, --crown-margin        preserve indentation of first two lines\n  -p, --prefix=STRING       reformat only lines beginning with STRING,\n                              reattaching the prefix to reformatted lines\n  -s, --split-only          split long lines, but do not refill\n"
	.size	.L.str4, 278

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	 "  -t, --tagged-paragraph    indentation of first line different from second\n  -u, --uniform-spacing     one space between words, two after sentences\n  -w, --width=WIDTH         maximum line width (default of 75 columns)\n"
	.size	.L.str5, 221

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	 "      --help     display this help and exit\n"
	.size	.L.str6, 45

	.type	.L.str7,%object         @ @.str7
.L.str7:
	.asciz	 "      --version  output version information and exit\n"
	.size	.L.str7, 54

	.type	.L.str8,%object         @ @.str8
.L.str8:
	.asciz	 "\nWith no FILE, or when FILE is -, read standard input.\n"
	.size	.L.str8, 56

	.type	.L.str9,%object         @ @.str9
.L.str9:
	.zero	1
	.size	.L.str9, 1

	.type	.L.str10,%object        @ @.str10
.L.str10:
	.asciz	 "0123456789cstuw:p:"
	.size	.L.str10, 19

	.type	long_options,%object    @ @long_options
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
long_options:
	.long	.L.str24
	.long	0                       @ 0x0
	.long	0
	.long	99                      @ 0x63
	.long	.L.str25
	.long	1                       @ 0x1
	.long	0
	.long	112                     @ 0x70
	.long	.L.str26
	.long	0                       @ 0x0
	.long	0
	.long	115                     @ 0x73
	.long	.L.str27
	.long	0                       @ 0x0
	.long	0
	.long	116                     @ 0x74
	.long	.L.str28
	.long	0                       @ 0x0
	.long	0
	.long	117                     @ 0x75
	.long	.L.str29
	.long	1                       @ 0x1
	.long	0
	.long	119                     @ 0x77
	.long	.L.str30
	.long	0                       @ 0x0
	.long	0
	.long	4294967294              @ 0xfffffffe
	.long	.L.str31
	.long	0                       @ 0x0
	.long	0
	.long	4294967293              @ 0xfffffffd
	.zero	16
	.size	long_options, 144

	.type	.L.str11,%object        @ @.str11
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str11:
	.asciz	 "invalid option -- %c; -WIDTH is recognized only when it is the first\noption; use -w N instead"
	.size	.L.str11, 94

	.type	.L.str12,%object        @ @.str12
.L.str12:
	.asciz	 "fmt"
	.size	.L.str12, 4

	.type	.L.str13,%object        @ @.str13
.L.str13:
	.asciz	 "GNU coreutils"
	.size	.L.str13, 14

	.type	.L.str14,%object        @ @.str14
.L.str14:
	.asciz	 "6.11"
	.size	.L.str14, 5

	.type	.L.str15,%object        @ @.str15
.L.str15:
	.asciz	 "Ross Paterson"
	.size	.L.str15, 14

	.type	.L.str16,%object        @ @.str16
.L.str16:
	.asciz	 "invalid width: %s"
	.size	.L.str16, 18

	.type	.L.str17,%object        @ @.str17
.L.str17:
	.asciz	 "-"
	.size	.L.str17, 2

	.type	.L.str18,%object        @ @.str18
.L.str18:
	.asciz	 "r"
	.size	.L.str18, 2

	.type	.L.str19,%object        @ @.str19
.L.str19:
	.asciz	 "%s"
	.size	.L.str19, 3

	.type	.L.str20,%object        @ @.str20
.L.str20:
	.asciz	 "cannot open %s for reading"
	.size	.L.str20, 27

	.type	unused_word_type,%object @ @unused_word_type
	.local	unused_word_type
	.comm	unused_word_type,28000,4
	.type	parabuf,%object         @ @parabuf
	.local	parabuf
	.comm	parabuf,5000,1
	.type	.L.str21,%object        @ @.str21
.L.str21:
	.asciz	 "([`'\""
	.size	.L.str21, 6

	.type	.L.str22,%object        @ @.str22
.L.str22:
	.asciz	 ")]'\""
	.size	.L.str22, 5

	.type	.L.str23,%object        @ @.str23
.L.str23:
	.asciz	 ".?!"
	.size	.L.str23, 4

	.type	.L.str24,%object        @ @.str24
.L.str24:
	.asciz	 "crown-margin"
	.size	.L.str24, 13

	.type	.L.str25,%object        @ @.str25
.L.str25:
	.asciz	 "prefix"
	.size	.L.str25, 7

	.type	.L.str26,%object        @ @.str26
.L.str26:
	.asciz	 "split-only"
	.size	.L.str26, 11

	.type	.L.str27,%object        @ @.str27
.L.str27:
	.asciz	 "tagged-paragraph"
	.size	.L.str27, 17

	.type	.L.str28,%object        @ @.str28
.L.str28:
	.asciz	 "uniform-spacing"
	.size	.L.str28, 16

	.type	.L.str29,%object        @ @.str29
.L.str29:
	.asciz	 "width"
	.size	.L.str29, 6

	.type	.L.str30,%object        @ @.str30
.L.str30:
	.asciz	 "help"
	.size	.L.str30, 5

	.type	.L.str31,%object        @ @.str31
.L.str31:
	.asciz	 "version"
	.size	.L.str31, 8

	.type	.L.str32,%object        @ @.str32
.L.str32:
	.asciz	 "\nReport bugs to <%s>.\n"
	.size	.L.str32, 23

	.type	.L.str33,%object        @ @.str33
.L.str33:
	.asciz	 "bug-coreutils@gnu.org"
	.size	.L.str33, 22

	.type	.L.str34,%object        @ @.str34
.L.str34:
	.asciz	 "%s (%s) %s\n"
	.size	.L.str34, 12

	.type	.L.str135,%object       @ @.str135
.L.str135:
	.asciz	 "%s %s\n"
	.size	.L.str135, 7

	.type	.L.str236,%object       @ @.str236
.L.str236:
	.asciz	 "(C)"
	.size	.L.str236, 4

	.type	.L.str337,%object       @ @.str337
.L.str337:
	.asciz	 "\nLicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>\nThis is free software: you are free to change and redistribute it.\nThere is NO WARRANTY, to the extent permitted by law.\n\n"
	.size	.L.str337, 202

	.type	.L.str438,%object       @ @.str438
.L.str438:
	.asciz	 "Written by %s.\n"
	.size	.L.str438, 16

	.type	.L.str539,%object       @ @.str539
.L.str539:
	.asciz	 "Written by %s and %s.\n"
	.size	.L.str539, 23

	.type	.L.str640,%object       @ @.str640
.L.str640:
	.asciz	 "Written by %s, %s, and %s.\n"
	.size	.L.str640, 28

	.type	.L.str741,%object       @ @.str741
.L.str741:
	.asciz	 "Written by %s, %s, %s,\nand %s.\n"
	.size	.L.str741, 32

	.type	.L.str842,%object       @ @.str842
.L.str842:
	.asciz	 "Written by %s, %s, %s,\n%s, and %s.\n"
	.size	.L.str842, 36

	.type	.L.str943,%object       @ @.str943
.L.str943:
	.asciz	 "Written by %s, %s, %s,\n%s, %s, and %s.\n"
	.size	.L.str943, 40

	.type	.L.str1044,%object      @ @.str1044
.L.str1044:
	.asciz	 "Written by %s, %s, %s,\n%s, %s, %s, and %s.\n"
	.size	.L.str1044, 44

	.type	.L.str1145,%object      @ @.str1145
.L.str1145:
	.asciz	 "Written by %s, %s, %s,\n%s, %s, %s, %s,\nand %s.\n"
	.size	.L.str1145, 48

	.type	.L.str1246,%object      @ @.str1246
.L.str1246:
	.asciz	 "Written by %s, %s, %s,\n%s, %s, %s, %s,\n%s, and %s.\n"
	.size	.L.str1246, 52

	.type	.L.str1347,%object      @ @.str1347
.L.str1347:
	.asciz	 "Written by %s, %s, %s,\n%s, %s, %s, %s,\n%s, %s, and others.\n"
	.size	.L.str1347, 60

	.type	version_etc_copyright,%object @ @version_etc_copyright
	.section	.rodata,"a",%progbits
version_etc_copyright:
	.asciz	 "Copyright %s %d Free Software Foundation, Inc."
	.size	version_etc_copyright, 47

	.type	.L.str52,%object        @ @.str52
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str52:
	.asciz	 "write error"
	.size	.L.str52, 12

	.type	.L.str153,%object       @ @.str153
.L.str153:
	.asciz	 "%s: %s"
	.size	.L.str153, 7

	.type	.L.str254,%object       @ @.str254
.L.str254:
	.asciz	 "%s"
	.size	.L.str254, 3

	.type	.L.str61,%object        @ @.str61
.L.str61:
	.asciz	 "literal"
	.size	.L.str61, 8

	.type	.L.str162,%object       @ @.str162
.L.str162:
	.asciz	 "shell"
	.size	.L.str162, 6

	.type	.L.str263,%object       @ @.str263
.L.str263:
	.asciz	 "shell-always"
	.size	.L.str263, 13

	.type	.L.str364,%object       @ @.str364
.L.str364:
	.asciz	 "c"
	.size	.L.str364, 2

	.type	.L.str465,%object       @ @.str465
.L.str465:
	.asciz	 "c-maybe"
	.size	.L.str465, 8

	.type	.L.str566,%object       @ @.str566
.L.str566:
	.asciz	 "escape"
	.size	.L.str566, 7

	.type	.L.str667,%object       @ @.str667
.L.str667:
	.asciz	 "locale"
	.size	.L.str667, 7

	.type	.L.str768,%object       @ @.str768
.L.str768:
	.asciz	 "clocale"
	.size	.L.str768, 8

	.type	quoting_style_args,%object @ @quoting_style_args
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
quoting_style_args:
	.long	.L.str61
	.long	.L.str162
	.long	.L.str263
	.long	.L.str364
	.long	.L.str465
	.long	.L.str566
	.long	.L.str667
	.long	.L.str768
	.long	0
	.size	quoting_style_args, 36

	.type	quoting_style_vals,%object @ @quoting_style_vals
	.section	.rodata,"a",%progbits
	.align	2
quoting_style_vals:
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	2                       @ 0x2
	.long	3                       @ 0x3
	.long	4                       @ 0x4
	.long	5                       @ 0x5
	.long	6                       @ 0x6
	.long	7                       @ 0x7
	.size	quoting_style_vals, 32

	.type	.L.str869,%object       @ @.str869
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str869:
	.asciz	 "\""
	.size	.L.str869, 2

	.type	.L.str970,%object       @ @.str970
.L.str970:
	.asciz	 "`"
	.size	.L.str970, 2

	.type	.L.str1071,%object      @ @.str1071
.L.str1071:
	.asciz	 "'"
	.size	.L.str1071, 2

	.type	.L.str84,%object        @ @.str84
.L.str84:
	.asciz	 "0 <= strtol_base && strtol_base <= 36"
	.size	.L.str84, 38

	.type	.L.str185,%object       @ @.str185
.L.str185:
	.asciz	 "../../lib/xstrtol.c"
	.size	.L.str185, 20

	.type	.L__PRETTY_FUNCTION__.xstrtoul,%object @ @__PRETTY_FUNCTION__.xstrtoul
.L__PRETTY_FUNCTION__.xstrtoul:
	.asciz	 "strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)"
	.size	.L__PRETTY_FUNCTION__.xstrtoul, 81

	.type	.L.str90,%object        @ @.str90
.L.str90:
	.asciz	 "%s"
	.size	.L.str90, 3

	.type	.L.str191,%object       @ @.str191
.L.str191:
	.asciz	 "memory exhausted"
	.size	.L.str191, 17

	.type	.L.str100,%object       @ @.str100
.L.str100:
	.asciz	 "(NULL)"
	.size	.L.str100, 7

	.type	printf_fetchargs.wide_null_string,%object @ @printf_fetchargs.wide_null_string
	.section	.rodata,"a",%progbits
	.align	2
printf_fetchargs.wide_null_string:
	.long	40                      @ 0x28
	.long	78                      @ 0x4e
	.long	85                      @ 0x55
	.long	76                      @ 0x4c
	.long	76                      @ 0x4c
	.long	41                      @ 0x29
	.long	0                       @ 0x0
	.size	printf_fetchargs.wide_null_string, 28

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.section	.data.rel.local,"aw",%progbits
	.align	4
_MergedGlobals:
	.long	1                       @ 0x1
	.long	_MergedGlobals+12
	.long	1                       @ 0x1
	.long	256                     @ 0x100
	.long	_MergedGlobals1+120
	.zero	4
	.long	0                       @ double NaN
	.long	2146959360
	.long	0                       @ double +Inf
	.long	2146435072
	.long	0                       @ double -Inf
	.long	4293918720
	.size	_MergedGlobals, 48

	.type	_MergedGlobals1,%object @ @_MergedGlobals1
	.local	_MergedGlobals1
	.comm	_MergedGlobals1,376,16
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",%progbits
.L.debug_info_begin0:
	.long	3183                    @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0xc68 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.byte	2                       @ Abbrev [2] 0x22:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x29:0x5 DW_TAG_const_type
	.long	34                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x2e:0x5 DW_TAG_pointer_type
	.long	41                      @ DW_AT_type
	.byte	5                       @ Abbrev [5] 0x33:0x14 DW_TAG_variable
	.long	.Linfo_string3          @ DW_AT_name
	.long	46                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	171                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	8
	.byte	34
	.byte	2                       @ Abbrev [2] 0x47:0x7 DW_TAG_base_type
	.long	.Linfo_string6          @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x4e:0x14 DW_TAG_variable
	.long	.Linfo_string5          @ DW_AT_name
	.long	71                      @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	176                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	3
	.byte	34
	.byte	6                       @ Abbrev [6] 0x62:0x14 DW_TAG_variable
	.long	.Linfo_string7          @ DW_AT_name
	.long	71                      @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	179                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	2
	.byte	34
	.byte	6                       @ Abbrev [6] 0x76:0x14 DW_TAG_variable
	.long	.Linfo_string8          @ DW_AT_name
	.long	71                      @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	182                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	1
	.byte	34
	.byte	6                       @ Abbrev [6] 0x8a:0x14 DW_TAG_variable
	.long	.Linfo_string9          @ DW_AT_name
	.long	71                      @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	185                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	0
	.byte	34
	.byte	6                       @ Abbrev [6] 0x9e:0x14 DW_TAG_variable
	.long	.Linfo_string10         @ DW_AT_name
	.long	46                      @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	188                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	16
	.byte	34
	.byte	2                       @ Abbrev [2] 0xb2:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0xb9:0x14 DW_TAG_variable
	.long	.Linfo_string11         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	12
	.byte	34
	.byte	6                       @ Abbrev [6] 0xcd:0x14 DW_TAG_variable
	.long	.Linfo_string13         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	197                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	20
	.byte	34
	.byte	6                       @ Abbrev [6] 0xe1:0x14 DW_TAG_variable
	.long	.Linfo_string14         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	200                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	24
	.byte	34
	.byte	6                       @ Abbrev [6] 0xf5:0x14 DW_TAG_variable
	.long	.Linfo_string15         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	28
	.byte	34
	.byte	6                       @ Abbrev [6] 0x109:0x14 DW_TAG_variable
	.long	.Linfo_string16         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	206                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	32
	.byte	34
	.byte	2                       @ Abbrev [2] 0x11d:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x124:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x12b:0xb DW_TAG_typedef
	.long	292                     @ DW_AT_type
	.long	.Linfo_string29         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0x136:0xab DW_TAG_structure_type
	.long	.Linfo_string31         @ DW_AT_name
	.byte	28                      @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	130                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x13e:0xf DW_TAG_member
	.long	.Linfo_string18         @ DW_AT_name
	.long	46                      @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	135                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x14d:0xf DW_TAG_member
	.long	.Linfo_string19         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	136                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x15c:0xf DW_TAG_member
	.long	.Linfo_string20         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x16b:0x12 DW_TAG_member
	.long	.Linfo_string21         @ DW_AT_name
	.long	285                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_bit_size
	.byte	31                      @ DW_AT_bit_offset
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x17d:0x12 DW_TAG_member
	.long	.Linfo_string23         @ DW_AT_name
	.long	285                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_bit_size
	.byte	30                      @ DW_AT_bit_offset
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x18f:0x12 DW_TAG_member
	.long	.Linfo_string24         @ DW_AT_name
	.long	285                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_bit_size
	.byte	29                      @ DW_AT_bit_offset
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x1a1:0x12 DW_TAG_member
	.long	.Linfo_string25         @ DW_AT_name
	.long	285                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_bit_size
	.byte	28                      @ DW_AT_bit_offset
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x1b3:0xf DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	145                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x1c2:0xf DW_TAG_member
	.long	.Linfo_string27         @ DW_AT_name
	.long	299                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x1d1:0xf DW_TAG_member
	.long	.Linfo_string30         @ DW_AT_name
	.long	492                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x1e1:0xb DW_TAG_typedef
	.long	310                     @ DW_AT_type
	.long	.Linfo_string32         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x1ec:0x5 DW_TAG_pointer_type
	.long	481                     @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x1f1:0x14 DW_TAG_variable
	.long	.Linfo_string17         @ DW_AT_name
	.long	492                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	230                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	44
	.byte	34
	.byte	6                       @ Abbrev [6] 0x205:0x14 DW_TAG_variable
	.long	.Linfo_string33         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	240                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	48
	.byte	34
	.byte	11                      @ Abbrev [11] 0x219:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0x220:0xd DW_TAG_array_type
	.long	481                     @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0x225:0x7 DW_TAG_subrange_type
	.long	537                     @ DW_AT_type
	.short	999                     @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x22d:0x11 DW_TAG_variable
	.long	.Linfo_string34         @ DW_AT_name
	.long	544                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	225                     @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	unused_word_type
	.byte	14                      @ Abbrev [14] 0x23e:0x15 DW_TAG_variable
	.long	.Linfo_string35         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	262                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	60
	.byte	34
	.byte	6                       @ Abbrev [6] 0x253:0x14 DW_TAG_variable
	.long	.Linfo_string36         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	237                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	56
	.byte	34
	.byte	6                       @ Abbrev [6] 0x267:0x14 DW_TAG_variable
	.long	.Linfo_string37         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	214                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	52
	.byte	34
	.byte	4                       @ Abbrev [4] 0x27b:0x5 DW_TAG_pointer_type
	.long	34                      @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x280:0x14 DW_TAG_variable
	.long	.Linfo_string38         @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	72
	.byte	34
	.byte	12                      @ Abbrev [12] 0x294:0xd DW_TAG_array_type
	.long	34                      @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0x299:0x7 DW_TAG_subrange_type
	.long	537                     @ DW_AT_type
	.short	4999                    @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x2a1:0x11 DW_TAG_variable
	.long	.Linfo_string39         @ DW_AT_name
	.long	660                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	218                     @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	parabuf
	.byte	6                       @ Abbrev [6] 0x2b2:0x14 DW_TAG_variable
	.long	.Linfo_string40         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	211                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	68
	.byte	34
	.byte	14                      @ Abbrev [14] 0x2c6:0x15 DW_TAG_variable
	.long	.Linfo_string41         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	257                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	64
	.byte	34
	.byte	6                       @ Abbrev [6] 0x2db:0x14 DW_TAG_variable
	.long	.Linfo_string42         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	253                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	40
	.byte	34
	.byte	6                       @ Abbrev [6] 0x2ef:0x14 DW_TAG_variable
	.long	.Linfo_string43         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	243                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	36
	.byte	34
	.byte	6                       @ Abbrev [6] 0x303:0x14 DW_TAG_variable
	.long	.Linfo_string44         @ DW_AT_name
	.long	71                      @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	234                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	4
	.byte	34
	.byte	4                       @ Abbrev [4] 0x317:0x5 DW_TAG_pointer_type
	.long	178                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x31c:0x45 DW_TAG_structure_type
	.long	.Linfo_string50         @ DW_AT_name
	.byte	16                      @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x324:0xf DW_TAG_member
	.long	.Linfo_string46         @ DW_AT_name
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x333:0xf DW_TAG_member
	.long	.Linfo_string47         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x342:0xf DW_TAG_member
	.long	.Linfo_string48         @ DW_AT_name
	.long	791                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x351:0xf DW_TAG_member
	.long	.Linfo_string49         @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x361:0x5 DW_TAG_const_type
	.long	796                     @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x366:0xc DW_TAG_array_type
	.long	865                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x36b:0x6 DW_TAG_subrange_type
	.long	537                     @ DW_AT_type
	.byte	8                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x372:0x12 DW_TAG_variable
	.long	.Linfo_string45         @ DW_AT_name
	.long	870                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	long_options
	.byte	16                      @ Abbrev [16] 0x384:0x22 DW_TAG_subprogram
	.long	.Linfo_string51         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	265                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x396:0xf DW_TAG_formal_parameter
	.long	.Linfo_string240        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	265                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x3a6:0xb9 DW_TAG_subprogram
	.long	.Linfo_string52         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	320                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	178                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x3bc:0xf DW_TAG_formal_parameter
	.long	.Linfo_string241        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	320                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	36
	.byte	17                      @ Abbrev [17] 0x3cb:0xf DW_TAG_formal_parameter
	.long	.Linfo_string242        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	320                     @ DW_AT_decl_line
	.long	2523                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	32
	.byte	19                      @ Abbrev [19] 0x3da:0xf DW_TAG_variable
	.long	.Linfo_string243        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.byte	19                      @ Abbrev [19] 0x3e9:0xf DW_TAG_variable
	.long	.Linfo_string244        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	323                     @ DW_AT_decl_line
	.long	71                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	27
	.byte	19                      @ Abbrev [19] 0x3f8:0xf DW_TAG_variable
	.long	.Linfo_string245        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	324                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.byte	20                      @ Abbrev [20] 0x407:0x19 DW_TAG_lexical_block
	.long	.Ltmp14                 @ DW_AT_low_pc
	.long	.Ltmp15                 @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x410:0xf DW_TAG_variable
	.long	.Linfo_string246        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	396                     @ DW_AT_decl_line
	.long	2528                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x420:0x3e DW_TAG_lexical_block
	.long	.Ltmp16                 @ DW_AT_low_pc
	.long	.Ltmp26                 @ DW_AT_high_pc
	.byte	20                      @ Abbrev [20] 0x429:0x34 DW_TAG_lexical_block
	.long	.Ltmp16                 @ DW_AT_low_pc
	.long	.Ltmp26                 @ DW_AT_high_pc
	.byte	21                      @ Abbrev [21] 0x432:0x2a DW_TAG_lexical_block
	.long	.Ldebug_range+24        @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x437:0xf DW_TAG_variable
	.long	.Linfo_string248        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	412                     @ DW_AT_decl_line
	.long	635                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	21                      @ Abbrev [21] 0x446:0x15 DW_TAG_lexical_block
	.long	.Ldebug_range           @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x44b:0xf DW_TAG_variable
	.long	.Linfo_string249        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	417                     @ DW_AT_decl_line
	.long	3174                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x45f:0x22 DW_TAG_subprogram
	.long	.Linfo_string53         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	467                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x471:0xf DW_TAG_formal_parameter
	.long	.Linfo_string293        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	467                     @ DW_AT_decl_line
	.long	3174                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x481:0x31 DW_TAG_subprogram
	.long	.Linfo_string54         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	943                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin8           @ DW_AT_low_pc
	.long	.Lfunc_end8             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x493:0xf DW_TAG_formal_parameter
	.long	.Linfo_string303        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	943                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	19                      @ Abbrev [19] 0x4a2:0xf DW_TAG_variable
	.long	.Linfo_string298        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	945                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x4b2:0x40 DW_TAG_subprogram
	.long	.Linfo_string55         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	956                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin9           @ DW_AT_low_pc
	.long	.Lfunc_end9             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x4c4:0xf DW_TAG_formal_parameter
	.long	.Linfo_string298        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	956                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	17                      @ Abbrev [17] 0x4d3:0xf DW_TAG_formal_parameter
	.long	.Linfo_string304        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	956                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	19                      @ Abbrev [19] 0x4e2:0xf DW_TAG_variable
	.long	.Linfo_string305        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	958                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x4f2:0x40 DW_TAG_subprogram
	.long	.Linfo_string56         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	980                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin11          @ DW_AT_low_pc
	.long	.Lfunc_end11            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x504:0xf DW_TAG_formal_parameter
	.long	.Linfo_string298        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	980                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	19                      @ Abbrev [19] 0x513:0xf DW_TAG_variable
	.long	.Linfo_string292        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	982                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	19                      @ Abbrev [19] 0x522:0xf DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	983                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x532:0x40 DW_TAG_subprogram
	.long	.Linfo_string57         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	994                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin10          @ DW_AT_low_pc
	.long	.Lfunc_end10            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x544:0xf DW_TAG_formal_parameter
	.long	.Linfo_string20         @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	994                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	19                      @ Abbrev [19] 0x553:0xf DW_TAG_variable
	.long	.Linfo_string306        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	996                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	19                      @ Abbrev [19] 0x562:0xf DW_TAG_variable
	.long	.Linfo_string307        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	996                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x572:0x6d DW_TAG_subprogram
	.long	.Linfo_string58         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	833                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin7           @ DW_AT_low_pc
	.long	.Lfunc_end7             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	19                      @ Abbrev [19] 0x584:0xf DW_TAG_variable
	.long	.Linfo_string297        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	835                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.byte	19                      @ Abbrev [19] 0x593:0xf DW_TAG_variable
	.long	.Linfo_string298        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	835                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	19                      @ Abbrev [19] 0x5a2:0xf DW_TAG_variable
	.long	.Linfo_string299        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	836                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	19                      @ Abbrev [19] 0x5b1:0xf DW_TAG_variable
	.long	.Linfo_string300        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	837                     @ DW_AT_decl_line
	.long	299                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	19                      @ Abbrev [19] 0x5c0:0xf DW_TAG_variable
	.long	.Linfo_string301        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	837                     @ DW_AT_decl_line
	.long	299                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	19                      @ Abbrev [19] 0x5cf:0xf DW_TAG_variable
	.long	.Linfo_string302        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	838                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x5df:0x35 DW_TAG_subprogram
	.long	.Linfo_string59         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	889                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	299                     @ DW_AT_type
	.long	.Lfunc_begin13          @ DW_AT_low_pc
	.long	.Lfunc_end13            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x5f5:0xf DW_TAG_formal_parameter
	.long	.Linfo_string311        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	889                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	19                      @ Abbrev [19] 0x604:0xf DW_TAG_variable
	.long	.Linfo_string310        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	891                     @ DW_AT_decl_line
	.long	299                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x614:0x53 DW_TAG_subprogram
	.long	.Linfo_string60         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	922                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	299                     @ DW_AT_type
	.long	.Lfunc_begin12          @ DW_AT_low_pc
	.long	.Lfunc_end12            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	17                      @ Abbrev [17] 0x62a:0xf DW_TAG_formal_parameter
	.long	.Linfo_string309        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	922                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	12
	.byte	17                      @ Abbrev [17] 0x639:0xf DW_TAG_formal_parameter
	.long	.Linfo_string299        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	922                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.byte	19                      @ Abbrev [19] 0x648:0xf DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	924                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	19                      @ Abbrev [19] 0x657:0xf DW_TAG_variable
	.long	.Linfo_string310        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	925                     @ DW_AT_decl_line
	.long	299                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x667:0x35 DW_TAG_subprogram
	.long	.Linfo_string61         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	528                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	71                      @ DW_AT_type
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x67d:0xf DW_TAG_formal_parameter
	.long	.Linfo_string293        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	528                     @ DW_AT_decl_line
	.long	3174                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	19                      @ Abbrev [19] 0x68c:0xf DW_TAG_variable
	.long	.Linfo_string294        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	530                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x69c:0x26 DW_TAG_subprogram
	.long	.Linfo_string62         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	632                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	71                      @ DW_AT_type
	.long	.Lfunc_begin17          @ DW_AT_low_pc
	.long	.Lfunc_end17            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	17                      @ Abbrev [17] 0x6b2:0xf DW_TAG_formal_parameter
	.long	.Linfo_string294        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	632                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x6c2:0x22 DW_TAG_subprogram
	.long	.Linfo_string63         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	483                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin16          @ DW_AT_low_pc
	.long	.Lfunc_end16            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	17                      @ Abbrev [17] 0x6d4:0xf DW_TAG_formal_parameter
	.long	.Linfo_string314        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	483                     @ DW_AT_decl_line
	.long	71                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	3
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x6e4:0x62 DW_TAG_subprogram
	.long	.Linfo_string64         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	648                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	178                     @ DW_AT_type
	.long	.Lfunc_begin15          @ DW_AT_low_pc
	.long	.Lfunc_end15            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x6fa:0xf DW_TAG_formal_parameter
	.long	.Linfo_string293        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	648                     @ DW_AT_decl_line
	.long	3174                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	17                      @ Abbrev [17] 0x709:0xf DW_TAG_formal_parameter
	.long	.Linfo_string294        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	648                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	19                      @ Abbrev [19] 0x718:0xf DW_TAG_variable
	.long	.Linfo_string297        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	650                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	19                      @ Abbrev [19] 0x727:0xf DW_TAG_variable
	.long	.Linfo_string312        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	651                     @ DW_AT_decl_line
	.long	635                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	19                      @ Abbrev [19] 0x736:0xf DW_TAG_variable
	.long	.Linfo_string313        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	652                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x746:0x35 DW_TAG_subprogram
	.long	.Linfo_string65         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	732                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	178                     @ DW_AT_type
	.long	.Lfunc_begin20          @ DW_AT_low_pc
	.long	.Lfunc_end20            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x75c:0xf DW_TAG_formal_parameter
	.long	.Linfo_string293        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	732                     @ DW_AT_decl_line
	.long	3174                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	17                      @ Abbrev [17] 0x76b:0xf DW_TAG_formal_parameter
	.long	.Linfo_string294        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	732                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x77b:0x4f DW_TAG_subprogram
	.long	.Linfo_string66         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	752                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin19          @ DW_AT_low_pc
	.long	.Lfunc_end19            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x78d:0xf DW_TAG_formal_parameter
	.long	.Linfo_string298        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	752                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	19                      @ Abbrev [19] 0x79c:0xf DW_TAG_variable
	.long	.Linfo_string297        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	754                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	19                      @ Abbrev [19] 0x7ab:0xf DW_TAG_variable
	.long	.Linfo_string303        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	755                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	19                      @ Abbrev [19] 0x7ba:0xf DW_TAG_variable
	.long	.Linfo_string318        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	756                     @ DW_AT_decl_line
	.long	3179                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	7
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x7ca:0x4f DW_TAG_subprogram
	.long	.Linfo_string67         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	769                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin18          @ DW_AT_low_pc
	.long	.Lfunc_end18            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	19                      @ Abbrev [19] 0x7dc:0xf DW_TAG_variable
	.long	.Linfo_string315        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	771                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	19                      @ Abbrev [19] 0x7eb:0xf DW_TAG_variable
	.long	.Linfo_string298        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	772                     @ DW_AT_decl_line
	.long	492                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	19                      @ Abbrev [19] 0x7fa:0xf DW_TAG_variable
	.long	.Linfo_string316        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	773                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	19                      @ Abbrev [19] 0x809:0xf DW_TAG_variable
	.long	.Linfo_string317        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	774                     @ DW_AT_decl_line
	.long	299                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x819:0x44 DW_TAG_subprogram
	.long	.Linfo_string68         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	604                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	178                     @ DW_AT_type
	.long	.Lfunc_begin14          @ DW_AT_low_pc
	.long	.Lfunc_end14            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x82f:0xf DW_TAG_formal_parameter
	.long	.Linfo_string293        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	604                     @ DW_AT_decl_line
	.long	3174                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	17                      @ Abbrev [17] 0x83e:0xf DW_TAG_formal_parameter
	.long	.Linfo_string294        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	604                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	19                      @ Abbrev [19] 0x84d:0xf DW_TAG_variable
	.long	.Linfo_string292        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	606                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x85d:0x69 DW_TAG_subprogram
	.long	.Linfo_string69         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	702                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	178                     @ DW_AT_type
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x873:0xf DW_TAG_formal_parameter
	.long	.Linfo_string293        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	702                     @ DW_AT_decl_line
	.long	3174                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	19                      @ Abbrev [19] 0x882:0xf DW_TAG_variable
	.long	.Linfo_string294        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	704                     @ DW_AT_decl_line
	.long	178                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	21                      @ Abbrev [21] 0x891:0x34 DW_TAG_lexical_block
	.long	.Ldebug_range+72        @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x896:0xf DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	713                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	20                      @ Abbrev [20] 0x8a5:0x1f DW_TAG_lexical_block
	.long	.Ltmp43                 @ DW_AT_low_pc
	.long	.Ltmp47                 @ DW_AT_high_pc
	.byte	21                      @ Abbrev [21] 0x8ae:0x15 DW_TAG_lexical_block
	.long	.Ldebug_range+48        @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x8b3:0xf DW_TAG_variable
	.long	.Linfo_string295        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	717                     @ DW_AT_decl_line
	.long	3179                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	7
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x8c6:0x31 DW_TAG_subprogram
	.long	.Linfo_string70         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	445                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x8d8:0xf DW_TAG_formal_parameter
	.long	.Linfo_string291        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	445                     @ DW_AT_decl_line
	.long	635                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	19                      @ Abbrev [19] 0x8e7:0xf DW_TAG_variable
	.long	.Linfo_string292        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.short	447                     @ DW_AT_decl_line
	.long	635                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	24                      @ Abbrev [24] 0x8f7:0x12 DW_TAG_subprogram
	.long	.Linfo_string71         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	605                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	25                      @ Abbrev [25] 0x909:0x53 DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x90d:0x6 DW_TAG_enumerator
	.long	.Linfo_string72         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x913:0x6 DW_TAG_enumerator
	.long	.Linfo_string73         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x919:0x6 DW_TAG_enumerator
	.long	.Linfo_string74         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x91f:0x6 DW_TAG_enumerator
	.long	.Linfo_string75         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x925:0x6 DW_TAG_enumerator
	.long	.Linfo_string76         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x92b:0x6 DW_TAG_enumerator
	.long	.Linfo_string77         @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x931:0x6 DW_TAG_enumerator
	.long	.Linfo_string78         @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x937:0x6 DW_TAG_enumerator
	.long	.Linfo_string79         @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x93d:0x6 DW_TAG_enumerator
	.long	.Linfo_string80         @ DW_AT_name
	.byte	8                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x943:0x6 DW_TAG_enumerator
	.long	.Linfo_string81         @ DW_AT_name
	.byte	9                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x949:0x6 DW_TAG_enumerator
	.long	.Linfo_string82         @ DW_AT_name
	.byte	10                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x94f:0x6 DW_TAG_enumerator
	.long	.Linfo_string83         @ DW_AT_name
	.byte	11                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x955:0x6 DW_TAG_enumerator
	.long	.Linfo_string84         @ DW_AT_name
	.byte	12                      @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x95c:0x27 DW_TAG_enumeration_type
	.long	.Linfo_string90         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x964:0x6 DW_TAG_enumerator
	.long	.Linfo_string85         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x96a:0x6 DW_TAG_enumerator
	.long	.Linfo_string86         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x970:0x6 DW_TAG_enumerator
	.long	.Linfo_string87         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x976:0x6 DW_TAG_enumerator
	.long	.Linfo_string88         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x97c:0x6 DW_TAG_enumerator
	.long	.Linfo_string89         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x983:0x58 DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x987:0x7 DW_TAG_enumerator
	.long	.Linfo_string91         @ DW_AT_name
	.ascii	 "\200\002"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x98e:0x7 DW_TAG_enumerator
	.long	.Linfo_string92         @ DW_AT_name
	.ascii	 "\200\004"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x995:0x7 DW_TAG_enumerator
	.long	.Linfo_string93         @ DW_AT_name
	.ascii	 "\200\b"               @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x99c:0x7 DW_TAG_enumerator
	.long	.Linfo_string94         @ DW_AT_name
	.ascii	 "\200\020"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9a3:0x7 DW_TAG_enumerator
	.long	.Linfo_string95         @ DW_AT_name
	.ascii	 "\200 "                @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9aa:0x8 DW_TAG_enumerator
	.long	.Linfo_string96         @ DW_AT_name
	.asciz	 "\200\300"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9b2:0x8 DW_TAG_enumerator
	.long	.Linfo_string97         @ DW_AT_name
	.ascii	 "\200\200\001"         @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9ba:0x8 DW_TAG_enumerator
	.long	.Linfo_string98         @ DW_AT_name
	.ascii	 "\200\200\002"         @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9c2:0x6 DW_TAG_enumerator
	.long	.Linfo_string99         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9c8:0x6 DW_TAG_enumerator
	.long	.Linfo_string100        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9ce:0x6 DW_TAG_enumerator
	.long	.Linfo_string101        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9d4:0x6 DW_TAG_enumerator
	.long	.Linfo_string102        @ DW_AT_name
	.byte	8                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x9db:0x5 DW_TAG_pointer_type
	.long	635                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x9e0:0x7 DW_TAG_base_type
	.long	.Linfo_string247        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0x9e7:0x5 DW_TAG_pointer_type
	.long	2689                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x9ec:0x36 DW_TAG_structure_type
	.long	.Linfo_string266        @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	32                      @ DW_AT_decl_file
	.byte	188                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x9f4:0xf DW_TAG_member
	.long	.Linfo_string263        @ DW_AT_name
	.long	2594                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xa03:0xf DW_TAG_member
	.long	.Linfo_string264        @ DW_AT_name
	.long	2535                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.byte	190                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xa12:0xf DW_TAG_member
	.long	.Linfo_string265        @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0xa22:0x5 DW_TAG_pointer_type
	.long	2540                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0xa27:0xb DW_TAG_typedef
	.long	292                     @ DW_AT_type
	.long	.Linfo_string271        @ DW_AT_name
	.byte	32                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0xa32:0x7 DW_TAG_base_type
	.long	.Linfo_string273        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa39:0x7 DW_TAG_base_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0xa40:0xc DW_TAG_array_type
	.long	34                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xa45:0x6 DW_TAG_subrange_type
	.long	537                     @ DW_AT_type
	.byte	0                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xa4c:0x1 DW_TAG_pointer_type
	.byte	2                       @ Abbrev [2] 0xa4d:0x7 DW_TAG_base_type
	.long	.Linfo_string279        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0xa54:0xb DW_TAG_typedef
	.long	2637                    @ DW_AT_type
	.long	.Linfo_string280        @ DW_AT_name
	.byte	32                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0xa5f:0xb DW_TAG_typedef
	.long	2644                    @ DW_AT_type
	.long	.Linfo_string281        @ DW_AT_name
	.byte	32                      @ DW_AT_decl_file
	.byte	142                     @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0xa6a:0xb DW_TAG_typedef
	.long	285                     @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	32                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0xa75:0xc DW_TAG_array_type
	.long	34                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xa7a:0x6 DW_TAG_subrange_type
	.long	537                     @ DW_AT_type
	.byte	39                      @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xa81:0x1da DW_TAG_structure_type
	.long	.Linfo_string289        @ DW_AT_name
	.byte	152                     @ DW_AT_byte_size
	.byte	32                      @ DW_AT_decl_file
	.short	273                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0xa8a:0x10 DW_TAG_member
	.long	.Linfo_string250        @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	274                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xa9a:0x10 DW_TAG_member
	.long	.Linfo_string251        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xaaa:0x10 DW_TAG_member
	.long	.Linfo_string252        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	280                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xaba:0x10 DW_TAG_member
	.long	.Linfo_string253        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	281                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xaca:0x10 DW_TAG_member
	.long	.Linfo_string254        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	282                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xada:0x10 DW_TAG_member
	.long	.Linfo_string255        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	283                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xaea:0x10 DW_TAG_member
	.long	.Linfo_string256        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	284                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xafa:0x10 DW_TAG_member
	.long	.Linfo_string257        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	285                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	28
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb0a:0x10 DW_TAG_member
	.long	.Linfo_string258        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	286                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb1a:0x10 DW_TAG_member
	.long	.Linfo_string259        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	288                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	36
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb2a:0x10 DW_TAG_member
	.long	.Linfo_string260        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb3a:0x10 DW_TAG_member
	.long	.Linfo_string261        @ DW_AT_name
	.long	635                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	290                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	44
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb4a:0x10 DW_TAG_member
	.long	.Linfo_string262        @ DW_AT_name
	.long	2594                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	48
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb5a:0x10 DW_TAG_member
	.long	.Linfo_string267        @ DW_AT_name
	.long	2535                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	52
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb6a:0x10 DW_TAG_member
	.long	.Linfo_string268        @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	296                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	56
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb7a:0x10 DW_TAG_member
	.long	.Linfo_string269        @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	300                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	60
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb8a:0x10 DW_TAG_member
	.long	.Linfo_string270        @ DW_AT_name
	.long	2599                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	302                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	64
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xb9a:0x10 DW_TAG_member
	.long	.Linfo_string272        @ DW_AT_name
	.long	2610                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	68
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xbaa:0x10 DW_TAG_member
	.long	.Linfo_string274        @ DW_AT_name
	.long	2617                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	307                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	70
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xbba:0x10 DW_TAG_member
	.long	.Linfo_string276        @ DW_AT_name
	.long	2624                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	71
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xbca:0x10 DW_TAG_member
	.long	.Linfo_string277        @ DW_AT_name
	.long	2636                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	312                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	72
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xbda:0x10 DW_TAG_member
	.long	.Linfo_string278        @ DW_AT_name
	.long	2655                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	321                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	80
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xbea:0x10 DW_TAG_member
	.long	.Linfo_string282        @ DW_AT_name
	.long	2636                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	88
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xbfa:0x10 DW_TAG_member
	.long	.Linfo_string283        @ DW_AT_name
	.long	2636                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	331                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	92
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xc0a:0x10 DW_TAG_member
	.long	.Linfo_string284        @ DW_AT_name
	.long	2636                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	332                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	96
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xc1a:0x10 DW_TAG_member
	.long	.Linfo_string285        @ DW_AT_name
	.long	2636                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	333                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	100
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xc2a:0x10 DW_TAG_member
	.long	.Linfo_string286        @ DW_AT_name
	.long	2666                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	334                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	104
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xc3a:0x10 DW_TAG_member
	.long	.Linfo_string287        @ DW_AT_name
	.long	178                     @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	336                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	108
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0xc4a:0x10 DW_TAG_member
	.long	.Linfo_string288        @ DW_AT_name
	.long	2677                    @ DW_AT_type
	.byte	32                      @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	112
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0xc5b:0xb DW_TAG_typedef
	.long	2689                    @ DW_AT_type
	.long	.Linfo_string290        @ DW_AT_name
	.byte	30                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0xc66:0x5 DW_TAG_pointer_type
	.long	3163                    @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0xc6b:0x7 DW_TAG_base_type
	.long	.Linfo_string296        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	0                       @ End Of Children Mark
.L.debug_info_end0:
.L.debug_info_begin1:
	.long	1008                    @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x3e9 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string103        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	31                      @ Abbrev [31] 0x22:0x7e DW_TAG_subprogram
	.long	.Linfo_string105        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin21          @ DW_AT_low_pc
	.long	.Lfunc_end21            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x33:0xe DW_TAG_formal_parameter
	.long	.Linfo_string319        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.long	939                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	32                      @ Abbrev [32] 0x41:0xe DW_TAG_formal_parameter
	.long	.Linfo_string320        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.long	949                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	32                      @ Abbrev [32] 0x4f:0xe DW_TAG_formal_parameter
	.long	.Linfo_string321        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.long	949                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	32                      @ Abbrev [32] 0x5d:0xe DW_TAG_formal_parameter
	.long	.Linfo_string322        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.long	949                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	112
	.byte	32                      @ Abbrev [32] 0x6b:0xe DW_TAG_formal_parameter
	.long	.Linfo_string323        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.long	1000                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	33                      @ Abbrev [33] 0x79:0xe DW_TAG_variable
	.long	.Linfo_string329        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	431                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	20                      @ Abbrev [20] 0x87:0x18 DW_TAG_lexical_block
	.long	.Ltmp181                @ DW_AT_low_pc
	.long	.Ltmp182                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0x90:0xe DW_TAG_variable
	.long	.Linfo_string330        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	1000                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	31                      @ Abbrev [31] 0xa0:0x58 DW_TAG_subprogram
	.long	.Linfo_string106        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	164                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin22          @ DW_AT_low_pc
	.long	.Lfunc_end22            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0xb1:0xe DW_TAG_formal_parameter
	.long	.Linfo_string319        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	164                     @ DW_AT_decl_line
	.long	939                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	32                      @ Abbrev [32] 0xbf:0xe DW_TAG_formal_parameter
	.long	.Linfo_string320        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	165                     @ DW_AT_decl_line
	.long	949                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	32                      @ Abbrev [32] 0xcd:0xe DW_TAG_formal_parameter
	.long	.Linfo_string321        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	165                     @ DW_AT_decl_line
	.long	949                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	32                      @ Abbrev [32] 0xdb:0xe DW_TAG_formal_parameter
	.long	.Linfo_string322        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	166                     @ DW_AT_decl_line
	.long	949                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	33                      @ Abbrev [33] 0xe9:0xe DW_TAG_variable
	.long	.Linfo_string323        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	168                     @ DW_AT_decl_line
	.long	1000                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xf8:0xc DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0xfc:0x7 DW_TAG_enumerator
	.long	.Linfo_string107        @ DW_AT_name
	.ascii	 "\330\017"             @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x104:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x10b:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0x112:0x5 DW_TAG_pointer_type
	.long	267                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x117:0x5 DW_TAG_pointer_type
	.long	454                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x11c:0x36 DW_TAG_structure_type
	.long	.Linfo_string266        @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	33                      @ DW_AT_decl_file
	.byte	188                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x124:0xf DW_TAG_member
	.long	.Linfo_string263        @ DW_AT_name
	.long	338                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x133:0xf DW_TAG_member
	.long	.Linfo_string264        @ DW_AT_name
	.long	279                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	190                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x142:0xf DW_TAG_member
	.long	.Linfo_string265        @ DW_AT_name
	.long	260                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x152:0x5 DW_TAG_pointer_type
	.long	284                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x157:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x15e:0xb DW_TAG_typedef
	.long	343                     @ DW_AT_type
	.long	.Linfo_string271        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x169:0x7 DW_TAG_base_type
	.long	.Linfo_string273        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x170:0x7 DW_TAG_base_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	11                      @ Abbrev [11] 0x177:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0x17e:0xc DW_TAG_array_type
	.long	267                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x183:0x6 DW_TAG_subrange_type
	.long	375                     @ DW_AT_type
	.byte	0                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x18a:0x1 DW_TAG_pointer_type
	.byte	2                       @ Abbrev [2] 0x18b:0x7 DW_TAG_base_type
	.long	.Linfo_string279        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x192:0xb DW_TAG_typedef
	.long	395                     @ DW_AT_type
	.long	.Linfo_string280        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x19d:0xb DW_TAG_typedef
	.long	402                     @ DW_AT_type
	.long	.Linfo_string281        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	142                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x1a8:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x1af:0xb DW_TAG_typedef
	.long	424                     @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x1ba:0xc DW_TAG_array_type
	.long	267                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x1bf:0x6 DW_TAG_subrange_type
	.long	375                     @ DW_AT_type
	.byte	39                      @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1c6:0x1da DW_TAG_structure_type
	.long	.Linfo_string289        @ DW_AT_name
	.byte	152                     @ DW_AT_byte_size
	.byte	33                      @ DW_AT_decl_file
	.short	273                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1cf:0x10 DW_TAG_member
	.long	.Linfo_string250        @ DW_AT_name
	.long	260                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	274                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1df:0x10 DW_TAG_member
	.long	.Linfo_string251        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1ef:0x10 DW_TAG_member
	.long	.Linfo_string252        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	280                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1ff:0x10 DW_TAG_member
	.long	.Linfo_string253        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	281                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x20f:0x10 DW_TAG_member
	.long	.Linfo_string254        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	282                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x21f:0x10 DW_TAG_member
	.long	.Linfo_string255        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	283                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x22f:0x10 DW_TAG_member
	.long	.Linfo_string256        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	284                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x23f:0x10 DW_TAG_member
	.long	.Linfo_string257        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	285                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	28
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x24f:0x10 DW_TAG_member
	.long	.Linfo_string258        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	286                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x25f:0x10 DW_TAG_member
	.long	.Linfo_string259        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	288                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	36
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x26f:0x10 DW_TAG_member
	.long	.Linfo_string260        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x27f:0x10 DW_TAG_member
	.long	.Linfo_string261        @ DW_AT_name
	.long	274                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	290                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	44
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x28f:0x10 DW_TAG_member
	.long	.Linfo_string262        @ DW_AT_name
	.long	338                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	48
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x29f:0x10 DW_TAG_member
	.long	.Linfo_string267        @ DW_AT_name
	.long	279                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	52
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2af:0x10 DW_TAG_member
	.long	.Linfo_string268        @ DW_AT_name
	.long	260                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	296                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	56
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2bf:0x10 DW_TAG_member
	.long	.Linfo_string269        @ DW_AT_name
	.long	260                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	300                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	60
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2cf:0x10 DW_TAG_member
	.long	.Linfo_string270        @ DW_AT_name
	.long	350                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	302                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	64
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2df:0x10 DW_TAG_member
	.long	.Linfo_string272        @ DW_AT_name
	.long	361                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	68
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2ef:0x10 DW_TAG_member
	.long	.Linfo_string274        @ DW_AT_name
	.long	368                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	307                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	70
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2ff:0x10 DW_TAG_member
	.long	.Linfo_string276        @ DW_AT_name
	.long	382                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	71
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x30f:0x10 DW_TAG_member
	.long	.Linfo_string277        @ DW_AT_name
	.long	394                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	312                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	72
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x31f:0x10 DW_TAG_member
	.long	.Linfo_string278        @ DW_AT_name
	.long	413                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	321                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	80
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x32f:0x10 DW_TAG_member
	.long	.Linfo_string282        @ DW_AT_name
	.long	394                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	88
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x33f:0x10 DW_TAG_member
	.long	.Linfo_string283        @ DW_AT_name
	.long	394                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	331                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	92
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x34f:0x10 DW_TAG_member
	.long	.Linfo_string284        @ DW_AT_name
	.long	394                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	332                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	96
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x35f:0x10 DW_TAG_member
	.long	.Linfo_string285        @ DW_AT_name
	.long	394                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	333                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	100
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x36f:0x10 DW_TAG_member
	.long	.Linfo_string286        @ DW_AT_name
	.long	431                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	334                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	104
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x37f:0x10 DW_TAG_member
	.long	.Linfo_string287        @ DW_AT_name
	.long	260                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	336                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	108
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x38f:0x10 DW_TAG_member
	.long	.Linfo_string288        @ DW_AT_name
	.long	442                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	112
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x3a0:0xb DW_TAG_typedef
	.long	454                     @ DW_AT_type
	.long	.Linfo_string290        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x3ab:0x5 DW_TAG_pointer_type
	.long	928                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x3b0:0x5 DW_TAG_const_type
	.long	267                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x3b5:0x5 DW_TAG_pointer_type
	.long	944                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x3ba:0x18 DW_TAG_structure_type
	.long	.Linfo_string325        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x3c2:0xf DW_TAG_member
	.long	.Linfo_string324        @ DW_AT_name
	.long	394                     @ DW_AT_type
	.byte	7                       @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x3d2:0xb DW_TAG_typedef
	.long	954                     @ DW_AT_type
	.long	.Linfo_string326        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x3dd:0xb DW_TAG_typedef
	.long	978                     @ DW_AT_type
	.long	.Linfo_string327        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x3e8:0xb DW_TAG_typedef
	.long	989                     @ DW_AT_type
	.long	.Linfo_string328        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.byte	0                       @ End Of Children Mark
.L.debug_info_end1:
.L.debug_info_begin2:
	.long	79                      @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x48 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string108        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	2                       @ Abbrev [2] 0x22:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x29:0x5 DW_TAG_const_type
	.long	34                      @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x2e:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0x35:0xc DW_TAG_array_type
	.long	41                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x3a:0x6 DW_TAG_subrange_type
	.long	46                      @ DW_AT_type
	.byte	46                      @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x41:0x11 DW_TAG_variable
	.long	.Linfo_string109        @ DW_AT_name
	.long	53                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	8                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	version_etc_copyright
	.byte	0                       @ End Of Children Mark
.L.debug_info_end2:
.L.debug_info_begin3:
	.long	142                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x87 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string110        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	2                       @ Abbrev [2] 0x22:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x29:0x5 DW_TAG_const_type
	.long	34                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x2e:0x5 DW_TAG_pointer_type
	.long	41                      @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x33:0x14 DW_TAG_variable
	.long	.Linfo_string111        @ DW_AT_name
	.long	46                      @ DW_AT_type
	.byte	9                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	76
	.byte	34
	.byte	31                      @ Abbrev [31] 0x47:0x20 DW_TAG_subprogram
	.long	.Linfo_string112        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin23          @ DW_AT_low_pc
	.long	.Lfunc_end23            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x58:0xe DW_TAG_formal_parameter
	.long	.Linfo_string248        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	31                      @ Abbrev [31] 0x67:0x2a DW_TAG_subprogram
	.long	.Linfo_string113        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin24          @ DW_AT_low_pc
	.long	.Lfunc_end24            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	20                      @ Abbrev [20] 0x78:0x18 DW_TAG_lexical_block
	.long	.Ltmp195                @ DW_AT_low_pc
	.long	.Ltmp196                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0x81:0xe DW_TAG_variable
	.long	.Linfo_string331        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
.L.debug_info_end3:
.L.debug_info_begin4:
	.long	63                      @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x38 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string114        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	2                       @ Abbrev [2] 0x22:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	34                      @ Abbrev [34] 0x29:0x5 DW_TAG_volatile_type
	.long	34                      @ DW_AT_type
	.byte	5                       @ Abbrev [5] 0x2e:0x14 DW_TAG_variable
	.long	.Linfo_string115        @ DW_AT_name
	.long	41                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                      @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals
	.byte	16
	.byte	0
	.byte	34
	.byte	0                       @ End Of Children Mark
.L.debug_info_end4:
.L.debug_info_begin5:
	.long	198                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0xbf DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string116        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	35                      @ Abbrev [35] 0x22:0x32 DW_TAG_subprogram
	.long	.Linfo_string117        @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	96                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin25          @ DW_AT_low_pc
	.long	.Lfunc_end25            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x37:0xe DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.long	194                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	32                      @ Abbrev [32] 0x45:0xe DW_TAG_formal_parameter
	.long	.Linfo_string46         @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.long	96                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x54:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x5b:0x5 DW_TAG_const_type
	.long	84                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x60:0x5 DW_TAG_pointer_type
	.long	91                      @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x65:0x24 DW_TAG_subprogram
	.long	.Linfo_string118        @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	96                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin26          @ DW_AT_low_pc
	.long	.Lfunc_end26            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x7a:0xe DW_TAG_formal_parameter
	.long	.Linfo_string46         @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	96                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x89:0x39 DW_TAG_enumeration_type
	.long	.Linfo_string127        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	12                      @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x91:0x6 DW_TAG_enumerator
	.long	.Linfo_string119        @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x97:0x6 DW_TAG_enumerator
	.long	.Linfo_string120        @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x9d:0x6 DW_TAG_enumerator
	.long	.Linfo_string121        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xa3:0x6 DW_TAG_enumerator
	.long	.Linfo_string122        @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xa9:0x6 DW_TAG_enumerator
	.long	.Linfo_string123        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xaf:0x6 DW_TAG_enumerator
	.long	.Linfo_string124        @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb5:0x6 DW_TAG_enumerator
	.long	.Linfo_string125        @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xbb:0x6 DW_TAG_enumerator
	.long	.Linfo_string126        @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0xc2:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	0                       @ End Of Children Mark
.L.debug_info_end5:
.L.debug_info_begin6:
	.long	3038                    @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0xbd7 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string128        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	2                       @ Abbrev [2] 0x22:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x29:0x5 DW_TAG_const_type
	.long	34                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x2e:0x5 DW_TAG_pointer_type
	.long	41                      @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x33:0x5 DW_TAG_const_type
	.long	46                      @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x38:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0x3f:0xc DW_TAG_array_type
	.long	51                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x44:0x6 DW_TAG_subrange_type
	.long	56                      @ DW_AT_type
	.byte	8                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x4b:0x11 DW_TAG_variable
	.long	.Linfo_string129        @ DW_AT_name
	.long	63                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	13                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	quoting_style_args
	.byte	27                      @ Abbrev [27] 0x5c:0x39 DW_TAG_enumeration_type
	.long	.Linfo_string127        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	12                      @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x64:0x6 DW_TAG_enumerator
	.long	.Linfo_string119        @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x6a:0x6 DW_TAG_enumerator
	.long	.Linfo_string120        @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x70:0x6 DW_TAG_enumerator
	.long	.Linfo_string121        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x76:0x6 DW_TAG_enumerator
	.long	.Linfo_string122        @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x7c:0x6 DW_TAG_enumerator
	.long	.Linfo_string123        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x82:0x6 DW_TAG_enumerator
	.long	.Linfo_string124        @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x88:0x6 DW_TAG_enumerator
	.long	.Linfo_string125        @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8e:0x6 DW_TAG_enumerator
	.long	.Linfo_string126        @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x95:0x5 DW_TAG_const_type
	.long	92                      @ DW_AT_type
	.byte	12                      @ Abbrev [12] 0x9a:0xc DW_TAG_array_type
	.long	149                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x9f:0x6 DW_TAG_subrange_type
	.long	56                      @ DW_AT_type
	.byte	7                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0xa6:0x11 DW_TAG_variable
	.long	.Linfo_string130        @ DW_AT_name
	.long	154                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	13                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	quoting_style_vals
	.byte	2                       @ Abbrev [2] 0xb7:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xbe:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0xc5:0xc DW_TAG_array_type
	.long	190                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xca:0x6 DW_TAG_subrange_type
	.long	56                      @ DW_AT_type
	.byte	7                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xd1:0x36 DW_TAG_structure_type
	.long	.Linfo_string135        @ DW_AT_name
	.byte	40                      @ DW_AT_byte_size
	.byte	13                      @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0xd9:0xf DW_TAG_member
	.long	.Linfo_string132        @ DW_AT_name
	.long	92                      @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xe8:0xf DW_TAG_member
	.long	.Linfo_string133        @ DW_AT_name
	.long	183                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xf7:0xf DW_TAG_member
	.long	.Linfo_string134        @ DW_AT_name
	.long	197                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x107:0x14 DW_TAG_variable
	.long	.Linfo_string131        @ DW_AT_name
	.long	209                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.byte	104                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	80
	.byte	34
	.byte	12                      @ Abbrev [12] 0x11b:0xc DW_TAG_array_type
	.long	34                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x120:0x6 DW_TAG_subrange_type
	.long	56                      @ DW_AT_type
	.byte	255                     @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x127:0x15 DW_TAG_variable
	.long	.Linfo_string136        @ DW_AT_name
	.long	283                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.short	650                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals1
	.byte	16
	.byte	120
	.byte	34
	.byte	7                       @ Abbrev [7] 0x13c:0xb DW_TAG_typedef
	.long	190                     @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x147:0x5 DW_TAG_pointer_type
	.long	34                      @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x14c:0x2a DW_TAG_structure_type
	.long	.Linfo_string140        @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	13                      @ DW_AT_decl_file
	.short	642                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x155:0x10 DW_TAG_member
	.long	.Linfo_string138        @ DW_AT_name
	.long	316                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.short	644                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x165:0x10 DW_TAG_member
	.long	.Linfo_string49         @ DW_AT_name
	.long	327                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.short	645                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x176:0x15 DW_TAG_variable
	.long	.Linfo_string137        @ DW_AT_name
	.long	332                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.short	652                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals
	.byte	16
	.byte	12
	.byte	34
	.byte	14                      @ Abbrev [14] 0x18b:0x15 DW_TAG_variable
	.long	.Linfo_string141        @ DW_AT_name
	.long	190                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.short	651                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals
	.byte	16
	.byte	8
	.byte	34
	.byte	4                       @ Abbrev [4] 0x1a0:0x5 DW_TAG_pointer_type
	.long	332                     @ DW_AT_type
	.byte	14                      @ Abbrev [14] 0x1a5:0x15 DW_TAG_variable
	.long	.Linfo_string140        @ DW_AT_name
	.long	416                     @ DW_AT_type
	.byte	13                      @ DW_AT_decl_file
	.short	653                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals
	.byte	16
	.byte	4
	.byte	34
	.byte	35                      @ Abbrev [35] 0x1ba:0x40 DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	110                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	506                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin27          @ DW_AT_low_pc
	.long	.Lfunc_end27            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x1cf:0xe DW_TAG_formal_parameter
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	110                     @ DW_AT_decl_line
	.long	506                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	33                      @ Abbrev [33] 0x1dd:0xe DW_TAG_variable
	.long	.Linfo_string333        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	33                      @ Abbrev [33] 0x1eb:0xe DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.long	506                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x1fa:0x5 DW_TAG_pointer_type
	.long	209                     @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x1ff:0x24 DW_TAG_subprogram
	.long	.Linfo_string143        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	121                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	92                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin28          @ DW_AT_low_pc
	.long	.Lfunc_end28            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x214:0xe DW_TAG_formal_parameter
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	121                     @ DW_AT_decl_line
	.long	506                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	31                      @ Abbrev [31] 0x223:0x2e DW_TAG_subprogram
	.long	.Linfo_string144        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin29          @ DW_AT_low_pc
	.long	.Lfunc_end29            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x234:0xe DW_TAG_formal_parameter
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	506                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	32                      @ Abbrev [32] 0x242:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	92                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x251:0x78 DW_TAG_subprogram
	.long	.Linfo_string145        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	183                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin30          @ DW_AT_low_pc
	.long	.Lfunc_end30            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x266:0xe DW_TAG_formal_parameter
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.long	506                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	24
	.byte	32                      @ Abbrev [32] 0x274:0xe DW_TAG_formal_parameter
	.long	.Linfo_string294        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.long	34                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	23
	.byte	32                      @ Abbrev [32] 0x282:0xe DW_TAG_formal_parameter
	.long	.Linfo_string334        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	16
	.byte	33                      @ Abbrev [33] 0x290:0xe DW_TAG_variable
	.long	.Linfo_string335        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	142                     @ DW_AT_decl_line
	.long	2882                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	15
	.byte	33                      @ Abbrev [33] 0x29e:0xe DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.long	2889                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.byte	33                      @ Abbrev [33] 0x2ac:0xe DW_TAG_variable
	.long	.Linfo_string316        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	145                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	33                      @ Abbrev [33] 0x2ba:0xe DW_TAG_variable
	.long	.Linfo_string336        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x2c9:0x40 DW_TAG_subprogram
	.long	.Linfo_string146        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	156                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	183                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin31          @ DW_AT_low_pc
	.long	.Lfunc_end31            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x2de:0xe DW_TAG_formal_parameter
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	156                     @ DW_AT_decl_line
	.long	506                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.byte	32                      @ Abbrev [32] 0x2ec:0xe DW_TAG_formal_parameter
	.long	.Linfo_string334        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	156                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	33                      @ Abbrev [33] 0x2fa:0xe DW_TAG_variable
	.long	.Linfo_string336        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x309:0x8f DW_TAG_subprogram
	.long	.Linfo_string147        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	596                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	316                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin32          @ DW_AT_low_pc
	.long	.Lfunc_end32            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x31f:0xf DW_TAG_formal_parameter
	.long	.Linfo_string337        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	596                     @ DW_AT_decl_line
	.long	327                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	17                      @ Abbrev [17] 0x32e:0xf DW_TAG_formal_parameter
	.long	.Linfo_string338        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	596                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	17                      @ Abbrev [17] 0x33d:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	597                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	112
	.byte	17                      @ Abbrev [17] 0x34c:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	597                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	108
	.byte	17                      @ Abbrev [17] 0x35b:0xf DW_TAG_formal_parameter
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	598                     @ DW_AT_decl_line
	.long	2899                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.byte	19                      @ Abbrev [19] 0x36a:0xf DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	600                     @ DW_AT_decl_line
	.long	2899                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.byte	19                      @ Abbrev [19] 0x379:0xf DW_TAG_variable
	.long	.Linfo_string333        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	601                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	19                      @ Abbrev [19] 0x388:0xf DW_TAG_variable
	.long	.Linfo_string336        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	602                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x398:0x44 DW_TAG_subprogram
	.long	.Linfo_string148        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	610                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin34          @ DW_AT_low_pc
	.long	.Lfunc_end34            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x3ae:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	610                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	17                      @ Abbrev [17] 0x3bd:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	610                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	17                      @ Abbrev [17] 0x3cc:0xf DW_TAG_formal_parameter
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	611                     @ DW_AT_decl_line
	.long	2899                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x3dc:0x9e DW_TAG_subprogram
	.long	.Linfo_string149        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	623                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin35          @ DW_AT_low_pc
	.long	.Lfunc_end35            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x3f2:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	623                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	17                      @ Abbrev [17] 0x401:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	623                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	17                      @ Abbrev [17] 0x410:0xf DW_TAG_formal_parameter
	.long	.Linfo_string138        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	623                     @ DW_AT_decl_line
	.long	3036                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	112
	.byte	17                      @ Abbrev [17] 0x41f:0xf DW_TAG_formal_parameter
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	624                     @ DW_AT_decl_line
	.long	2899                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	108
	.byte	19                      @ Abbrev [19] 0x42e:0xf DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	626                     @ DW_AT_decl_line
	.long	2899                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	104
	.byte	19                      @ Abbrev [19] 0x43d:0xf DW_TAG_variable
	.long	.Linfo_string333        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	627                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.byte	19                      @ Abbrev [19] 0x44c:0xf DW_TAG_variable
	.long	.Linfo_string133        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	629                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.byte	19                      @ Abbrev [19] 0x45b:0xf DW_TAG_variable
	.long	.Linfo_string361        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	630                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.byte	19                      @ Abbrev [19] 0x46a:0xf DW_TAG_variable
	.long	.Linfo_string362        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	632                     @ DW_AT_decl_line
	.long	327                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x47a:0x31 DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	656                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin36          @ DW_AT_low_pc
	.long	.Lfunc_end36            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	19                      @ Abbrev [19] 0x48c:0xf DW_TAG_variable
	.long	.Linfo_string363        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	658                     @ DW_AT_decl_line
	.long	416                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	19                      @ Abbrev [19] 0x49b:0xf DW_TAG_variable
	.long	.Linfo_string334        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	659                     @ DW_AT_decl_line
	.long	190                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x4ab:0x35 DW_TAG_subprogram
	.long	.Linfo_string151        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	741                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin37          @ DW_AT_low_pc
	.long	.Lfunc_end37            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x4c1:0xf DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	741                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	17                      @ Abbrev [17] 0x4d0:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	741                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x4e0:0x44 DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	747                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin39          @ DW_AT_low_pc
	.long	.Lfunc_end39            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x4f6:0xf DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	747                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	17                      @ Abbrev [17] 0x505:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	747                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	17                      @ Abbrev [17] 0x514:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	747                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x524:0x26 DW_TAG_subprogram
	.long	.Linfo_string153        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	753                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin40          @ DW_AT_low_pc
	.long	.Lfunc_end40            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x53a:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	753                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x54a:0x35 DW_TAG_subprogram
	.long	.Linfo_string154        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	759                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin41          @ DW_AT_low_pc
	.long	.Lfunc_end41            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x560:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	759                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	17                      @ Abbrev [17] 0x56f:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	759                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x57f:0x53 DW_TAG_subprogram
	.long	.Linfo_string155        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	765                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin42          @ DW_AT_low_pc
	.long	.Lfunc_end42            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x595:0xf DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	765                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	17                      @ Abbrev [17] 0x5a4:0xf DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	765                     @ DW_AT_decl_line
	.long	92                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	17                      @ Abbrev [17] 0x5b3:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	765                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	112
	.byte	19                      @ Abbrev [19] 0x5c2:0xf DW_TAG_variable
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	767                     @ DW_AT_decl_line
	.long	2894                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x5d2:0x62 DW_TAG_subprogram
	.long	.Linfo_string156        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	772                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin44          @ DW_AT_low_pc
	.long	.Lfunc_end44            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x5e8:0xf DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	772                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	17                      @ Abbrev [17] 0x5f7:0xf DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	772                     @ DW_AT_decl_line
	.long	92                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	17                      @ Abbrev [17] 0x606:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	773                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	112
	.byte	17                      @ Abbrev [17] 0x615:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	773                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	108
	.byte	19                      @ Abbrev [19] 0x624:0xf DW_TAG_variable
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	775                     @ DW_AT_decl_line
	.long	2894                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x634:0x35 DW_TAG_subprogram
	.long	.Linfo_string157        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	780                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin45          @ DW_AT_low_pc
	.long	.Lfunc_end45            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x64a:0xf DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	780                     @ DW_AT_decl_line
	.long	92                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	17                      @ Abbrev [17] 0x659:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	780                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x669:0x44 DW_TAG_subprogram
	.long	.Linfo_string158        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	786                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin46          @ DW_AT_low_pc
	.long	.Lfunc_end46            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x67f:0xf DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	786                     @ DW_AT_decl_line
	.long	92                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	17                      @ Abbrev [17] 0x68e:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	786                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	17                      @ Abbrev [17] 0x69d:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	786                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x6ad:0x53 DW_TAG_subprogram
	.long	.Linfo_string159        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	792                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin47          @ DW_AT_low_pc
	.long	.Lfunc_end47            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x6c3:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	792                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	17                      @ Abbrev [17] 0x6d2:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	792                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	17                      @ Abbrev [17] 0x6e1:0xf DW_TAG_formal_parameter
	.long	.Linfo_string369        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	792                     @ DW_AT_decl_line
	.long	34                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	115
	.byte	19                      @ Abbrev [19] 0x6f0:0xf DW_TAG_variable
	.long	.Linfo_string364        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	794                     @ DW_AT_decl_line
	.long	209                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x700:0x35 DW_TAG_subprogram
	.long	.Linfo_string160        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	801                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin48          @ DW_AT_low_pc
	.long	.Lfunc_end48            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x716:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	801                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	17                      @ Abbrev [17] 0x725:0xf DW_TAG_formal_parameter
	.long	.Linfo_string369        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	801                     @ DW_AT_decl_line
	.long	34                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	3
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x735:0x26 DW_TAG_subprogram
	.long	.Linfo_string161        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	807                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin49          @ DW_AT_low_pc
	.long	.Lfunc_end49            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x74b:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	807                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x75b:0x35 DW_TAG_subprogram
	.long	.Linfo_string162        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	813                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin50          @ DW_AT_low_pc
	.long	.Lfunc_end50            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x771:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	813                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	17                      @ Abbrev [17] 0x780:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	813                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0x790:0x32 DW_TAG_subprogram
	.long	.Linfo_string163        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	168                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	209                     @ DW_AT_type
	.long	.Lfunc_begin43          @ DW_AT_low_pc
	.long	.Lfunc_end43            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x7a5:0xe DW_TAG_formal_parameter
	.long	.Linfo_string132        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	168                     @ DW_AT_decl_line
	.long	92                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	44
	.byte	33                      @ Abbrev [33] 0x7b3:0xe DW_TAG_variable
	.long	.Linfo_string332        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	170                     @ DW_AT_decl_line
	.long	209                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x7c2:0xea DW_TAG_subprogram
	.long	.Linfo_string164        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	685                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	327                     @ DW_AT_type
	.long	.Lfunc_begin38          @ DW_AT_low_pc
	.long	.Lfunc_end38            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x7d8:0xf DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	685                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	17                      @ Abbrev [17] 0x7e7:0xf DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	685                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	17                      @ Abbrev [17] 0x7f6:0xf DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	685                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	112
	.byte	17                      @ Abbrev [17] 0x805:0xf DW_TAG_formal_parameter
	.long	.Linfo_string364        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	686                     @ DW_AT_decl_line
	.long	2899                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	108
	.byte	19                      @ Abbrev [19] 0x814:0xf DW_TAG_variable
	.long	.Linfo_string333        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	688                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	104
	.byte	19                      @ Abbrev [19] 0x823:0xf DW_TAG_variable
	.long	.Linfo_string365        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	690                     @ DW_AT_decl_line
	.long	190                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	100
	.byte	19                      @ Abbrev [19] 0x832:0xf DW_TAG_variable
	.long	.Linfo_string363        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	691                     @ DW_AT_decl_line
	.long	416                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	96
	.byte	21                      @ Abbrev [21] 0x841:0x24 DW_TAG_lexical_block
	.long	.Ldebug_range+192       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x846:0xf DW_TAG_variable
	.long	.Linfo_string366        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	703                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	36
	.byte	19                      @ Abbrev [19] 0x855:0xf DW_TAG_variable
	.long	.Linfo_string367        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	704                     @ DW_AT_decl_line
	.long	2914                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	35
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x865:0x46 DW_TAG_lexical_block
	.long	.Ltmp358                @ DW_AT_low_pc
	.long	.Ltmp364                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x86e:0xf DW_TAG_variable
	.long	.Linfo_string138        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	717                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.byte	19                      @ Abbrev [19] 0x87d:0xf DW_TAG_variable
	.long	.Linfo_string49         @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	718                     @ DW_AT_decl_line
	.long	327                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.byte	19                      @ Abbrev [19] 0x88c:0xf DW_TAG_variable
	.long	.Linfo_string133        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	720                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.byte	19                      @ Abbrev [19] 0x89b:0xf DW_TAG_variable
	.long	.Linfo_string368        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	721                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0x8ac:0x1e3 DW_TAG_subprogram
	.long	.Linfo_string165        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	202                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	316                     @ DW_AT_type
	.long	.Lfunc_begin33          @ DW_AT_low_pc
	.long	.Lfunc_end33            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x8c1:0xe DW_TAG_formal_parameter
	.long	.Linfo_string337        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	202                     @ DW_AT_decl_line
	.long	327                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	92
	.byte	32                      @ Abbrev [32] 0x8cf:0xe DW_TAG_formal_parameter
	.long	.Linfo_string338        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	202                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	88
	.byte	32                      @ Abbrev [32] 0x8dd:0xe DW_TAG_formal_parameter
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	84
	.byte	32                      @ Abbrev [32] 0x8eb:0xe DW_TAG_formal_parameter
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	80
	.byte	32                      @ Abbrev [32] 0x8f9:0xe DW_TAG_formal_parameter
	.long	.Linfo_string127        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	204                     @ DW_AT_decl_line
	.long	92                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	76
	.byte	32                      @ Abbrev [32] 0x907:0xe DW_TAG_formal_parameter
	.long	.Linfo_string133        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	204                     @ DW_AT_decl_line
	.long	183                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	72
	.byte	32                      @ Abbrev [32] 0x915:0xe DW_TAG_formal_parameter
	.long	.Linfo_string134        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	205                     @ DW_AT_decl_line
	.long	2909                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	68
	.byte	33                      @ Abbrev [33] 0x923:0xe DW_TAG_variable
	.long	.Linfo_string334        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	207                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	64
	.byte	33                      @ Abbrev [33] 0x931:0xf DW_TAG_variable
	.long	.Linfo_string299        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	208                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\274\177"
	.byte	33                      @ Abbrev [33] 0x940:0xf DW_TAG_variable
	.long	.Linfo_string341        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	209                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\310"
	.byte	33                      @ Abbrev [33] 0x94f:0xf DW_TAG_variable
	.long	.Linfo_string342        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	210                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\304"
	.byte	33                      @ Abbrev [33] 0x95e:0xf DW_TAG_variable
	.long	.Linfo_string343        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	211                     @ DW_AT_decl_line
	.long	2914                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\303"
	.byte	33                      @ Abbrev [33] 0x96d:0xf DW_TAG_variable
	.long	.Linfo_string344        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	212                     @ DW_AT_decl_line
	.long	2914                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\302"
	.byte	33                      @ Abbrev [33] 0x97c:0xf DW_TAG_variable
	.long	.Linfo_string345        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	213                     @ DW_AT_decl_line
	.long	2914                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\301"
	.byte	21                      @ Abbrev [21] 0x98b:0x2a DW_TAG_lexical_block
	.long	.Ldebug_range+120       @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x990:0x24 DW_TAG_lexical_block
	.long	.Ldebug_range+96        @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x995:0xf DW_TAG_variable
	.long	.Linfo_string346        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	266                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	60
	.byte	19                      @ Abbrev [19] 0x9a4:0xf DW_TAG_variable
	.long	.Linfo_string347        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	267                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	56
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x9b5:0xd9 DW_TAG_lexical_block
	.long	.Ltmp241                @ DW_AT_low_pc
	.long	.Ltmp325                @ DW_AT_high_pc
	.byte	20                      @ Abbrev [20] 0x9be:0xcf DW_TAG_lexical_block
	.long	.Ltmp242                @ DW_AT_low_pc
	.long	.Ltmp325                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x9c7:0xf DW_TAG_variable
	.long	.Linfo_string294        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	298                     @ DW_AT_decl_line
	.long	2882                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	55
	.byte	19                      @ Abbrev [19] 0x9d6:0xf DW_TAG_variable
	.long	.Linfo_string348        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	299                     @ DW_AT_decl_line
	.long	2882                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	54
	.byte	21                      @ Abbrev [21] 0x9e5:0xa7 DW_TAG_lexical_block
	.long	.Ldebug_range+168       @ DW_AT_ranges
	.byte	20                      @ Abbrev [20] 0x9ea:0xa1 DW_TAG_lexical_block
	.long	.Ltmp248                @ DW_AT_low_pc
	.long	.Ltmp275                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x9f3:0xf DW_TAG_variable
	.long	.Linfo_string349        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	456                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	48
	.byte	19                      @ Abbrev [19] 0xa02:0xf DW_TAG_variable
	.long	.Linfo_string350        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	458                     @ DW_AT_decl_line
	.long	2914                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	47
	.byte	20                      @ Abbrev [20] 0xa11:0x19 DW_TAG_lexical_block
	.long	.Ltmp252                @ DW_AT_low_pc
	.long	.Ltmp267                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0xa1a:0xf DW_TAG_variable
	.long	.Linfo_string351        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	528                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0xa2a:0x60 DW_TAG_lexical_block
	.long	.Ltmp267                @ DW_AT_low_pc
	.long	.Ltmp275                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0xa33:0xf DW_TAG_variable
	.long	.Linfo_string352        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	467                     @ DW_AT_decl_line
	.long	3014                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	32
	.byte	21                      @ Abbrev [21] 0xa42:0x47 DW_TAG_lexical_block
	.long	.Ldebug_range+144       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0xa47:0xf DW_TAG_variable
	.long	.Linfo_string298        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	477                     @ DW_AT_decl_line
	.long	3025                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.byte	19                      @ Abbrev [19] 0xa56:0xf DW_TAG_variable
	.long	.Linfo_string359        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	478                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.byte	20                      @ Abbrev [20] 0xa65:0x23 DW_TAG_lexical_block
	.long	.Ltmp269                @ DW_AT_low_pc
	.long	.Ltmp272                @ DW_AT_high_pc
	.byte	20                      @ Abbrev [20] 0xa6e:0x19 DW_TAG_lexical_block
	.long	.Ltmp270                @ DW_AT_low_pc
	.long	.Ltmp271                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0xa77:0xf DW_TAG_variable
	.long	.Linfo_string360        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	503                     @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0xa8f:0x40 DW_TAG_subprogram
	.long	.Linfo_string166        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	46                      @ DW_AT_type
	.long	.Lfunc_begin51          @ DW_AT_low_pc
	.long	.Lfunc_end51            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0xaa4:0xe DW_TAG_formal_parameter
	.long	.Linfo_string370        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.byte	32                      @ Abbrev [32] 0xab2:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	92                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	33                      @ Abbrev [33] 0xac0:0xe DW_TAG_variable
	.long	.Linfo_string371        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	182                     @ DW_AT_decl_line
	.long	46                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xacf:0x1b DW_TAG_enumeration_type
	.long	.Linfo_string170        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	12                      @ DW_AT_decl_file
	.byte	164                     @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0xad7:0x6 DW_TAG_enumerator
	.long	.Linfo_string167        @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xadd:0x6 DW_TAG_enumerator
	.long	.Linfo_string168        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xae3:0x6 DW_TAG_enumerator
	.long	.Linfo_string169        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0xaea:0x58 DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0xaee:0x7 DW_TAG_enumerator
	.long	.Linfo_string91         @ DW_AT_name
	.ascii	 "\200\002"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xaf5:0x7 DW_TAG_enumerator
	.long	.Linfo_string92         @ DW_AT_name
	.ascii	 "\200\004"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xafc:0x7 DW_TAG_enumerator
	.long	.Linfo_string93         @ DW_AT_name
	.ascii	 "\200\b"               @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb03:0x7 DW_TAG_enumerator
	.long	.Linfo_string94         @ DW_AT_name
	.ascii	 "\200\020"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb0a:0x7 DW_TAG_enumerator
	.long	.Linfo_string95         @ DW_AT_name
	.ascii	 "\200 "                @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb11:0x8 DW_TAG_enumerator
	.long	.Linfo_string96         @ DW_AT_name
	.asciz	 "\200\300"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb19:0x8 DW_TAG_enumerator
	.long	.Linfo_string97         @ DW_AT_name
	.ascii	 "\200\200\001"         @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb21:0x8 DW_TAG_enumerator
	.long	.Linfo_string98         @ DW_AT_name
	.ascii	 "\200\200\002"         @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb29:0x6 DW_TAG_enumerator
	.long	.Linfo_string99         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb2f:0x6 DW_TAG_enumerator
	.long	.Linfo_string100        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb35:0x6 DW_TAG_enumerator
	.long	.Linfo_string101        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xb3b:0x6 DW_TAG_enumerator
	.long	.Linfo_string102        @ DW_AT_name
	.byte	8                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0xb42:0x7 DW_TAG_base_type
	.long	.Linfo_string296        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0xb49:0x5 DW_TAG_pointer_type
	.long	190                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0xb4e:0x5 DW_TAG_const_type
	.long	209                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xb53:0x5 DW_TAG_pointer_type
	.long	2894                    @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0xb58:0x5 DW_TAG_const_type
	.long	190                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xb5d:0x5 DW_TAG_pointer_type
	.long	2904                    @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0xb62:0x7 DW_TAG_base_type
	.long	.Linfo_string6          @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0xb69:0xc DW_TAG_array_type
	.long	34                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xb6e:0x6 DW_TAG_subrange_type
	.long	56                      @ DW_AT_type
	.byte	3                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xb75:0x46 DW_TAG_structure_type
	.byte	8                       @ DW_AT_byte_size
	.byte	34                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0xb79:0xf DW_TAG_member
	.long	.Linfo_string353        @ DW_AT_name
	.long	183                     @ DW_AT_type
	.byte	34                      @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	38                      @ Abbrev [38] 0xb88:0x23 DW_TAG_union_type
	.byte	4                       @ DW_AT_byte_size
	.byte	34                      @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0xb8c:0xf DW_TAG_member
	.long	.Linfo_string355        @ DW_AT_name
	.long	190                     @ DW_AT_type
	.byte	34                      @ DW_AT_decl_file
	.byte	89                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb9b:0xf DW_TAG_member
	.long	.Linfo_string356        @ DW_AT_name
	.long	2921                    @ DW_AT_type
	.byte	34                      @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xbab:0xf DW_TAG_member
	.long	.Linfo_string354        @ DW_AT_name
	.long	2952                    @ DW_AT_type
	.byte	34                      @ DW_AT_decl_file
	.byte	94                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0xbbb:0xb DW_TAG_typedef
	.long	2933                    @ DW_AT_type
	.long	.Linfo_string357        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0xbc6:0xb DW_TAG_typedef
	.long	3003                    @ DW_AT_type
	.long	.Linfo_string358        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0xbd1:0xb DW_TAG_typedef
	.long	190                     @ DW_AT_type
	.long	.Linfo_string236        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0xbdc:0x5 DW_TAG_pointer_type
	.long	316                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.L.debug_info_end6:
.L.debug_info_begin7:
	.long	949                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x3ae DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string171        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	35                      @ Abbrev [35] 0x22:0x9a DW_TAG_subprogram
	.long	.Linfo_string172        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	188                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin52          @ DW_AT_low_pc
	.long	.Lfunc_end52            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x37:0xe DW_TAG_formal_parameter
	.long	.Linfo_string372        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	867                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	108
	.byte	32                      @ Abbrev [32] 0x45:0xe DW_TAG_formal_parameter
	.long	.Linfo_string373        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	877                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	104
	.byte	32                      @ Abbrev [32] 0x53:0xe DW_TAG_formal_parameter
	.long	.Linfo_string374        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	928                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	96
	.byte	33                      @ Abbrev [33] 0x61:0xe DW_TAG_variable
	.long	.Linfo_string362        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	939                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	33                      @ Abbrev [33] 0x6f:0xe DW_TAG_variable
	.long	.Linfo_string375        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.long	202                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	33                      @ Abbrev [33] 0x7d:0xe DW_TAG_variable
	.long	.Linfo_string299        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	40                      @ DW_AT_decl_line
	.long	359                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	33                      @ Abbrev [33] 0x8b:0xe DW_TAG_variable
	.long	.Linfo_string376        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.long	359                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	20                      @ Abbrev [20] 0x99:0x22 DW_TAG_lexical_block
	.long	.Ltmp408                @ DW_AT_low_pc
	.long	.Ltmp410                @ DW_AT_high_pc
	.byte	20                      @ Abbrev [20] 0xa2:0x18 DW_TAG_lexical_block
	.long	.Ltmp409                @ DW_AT_low_pc
	.long	.Ltmp410                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0xab:0xe DW_TAG_variable
	.long	.Linfo_string377        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	188                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0xbc:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xc3:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0xca:0x5 DW_TAG_pointer_type
	.long	195                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xcf:0x5 DW_TAG_pointer_type
	.long	382                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xd4:0x36 DW_TAG_structure_type
	.long	.Linfo_string266        @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	33                      @ DW_AT_decl_file
	.byte	188                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0xdc:0xf DW_TAG_member
	.long	.Linfo_string263        @ DW_AT_name
	.long	266                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xeb:0xf DW_TAG_member
	.long	.Linfo_string264        @ DW_AT_name
	.long	207                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	190                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xfa:0xf DW_TAG_member
	.long	.Linfo_string265        @ DW_AT_name
	.long	188                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x10a:0x5 DW_TAG_pointer_type
	.long	212                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x10f:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x116:0xb DW_TAG_typedef
	.long	271                     @ DW_AT_type
	.long	.Linfo_string271        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x121:0x7 DW_TAG_base_type
	.long	.Linfo_string273        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x128:0x7 DW_TAG_base_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	11                      @ Abbrev [11] 0x12f:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0x136:0xc DW_TAG_array_type
	.long	195                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x13b:0x6 DW_TAG_subrange_type
	.long	303                     @ DW_AT_type
	.byte	0                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x142:0x1 DW_TAG_pointer_type
	.byte	2                       @ Abbrev [2] 0x143:0x7 DW_TAG_base_type
	.long	.Linfo_string279        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x14a:0xb DW_TAG_typedef
	.long	323                     @ DW_AT_type
	.long	.Linfo_string280        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x155:0xb DW_TAG_typedef
	.long	330                     @ DW_AT_type
	.long	.Linfo_string281        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	142                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x160:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x167:0xb DW_TAG_typedef
	.long	352                     @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x172:0xc DW_TAG_array_type
	.long	195                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x177:0x6 DW_TAG_subrange_type
	.long	303                     @ DW_AT_type
	.byte	39                      @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x17e:0x1da DW_TAG_structure_type
	.long	.Linfo_string289        @ DW_AT_name
	.byte	152                     @ DW_AT_byte_size
	.byte	33                      @ DW_AT_decl_file
	.short	273                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x187:0x10 DW_TAG_member
	.long	.Linfo_string250        @ DW_AT_name
	.long	188                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	274                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x197:0x10 DW_TAG_member
	.long	.Linfo_string251        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1a7:0x10 DW_TAG_member
	.long	.Linfo_string252        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	280                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1b7:0x10 DW_TAG_member
	.long	.Linfo_string253        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	281                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1c7:0x10 DW_TAG_member
	.long	.Linfo_string254        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	282                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1d7:0x10 DW_TAG_member
	.long	.Linfo_string255        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	283                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1e7:0x10 DW_TAG_member
	.long	.Linfo_string256        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	284                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1f7:0x10 DW_TAG_member
	.long	.Linfo_string257        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	285                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	28
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x207:0x10 DW_TAG_member
	.long	.Linfo_string258        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	286                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x217:0x10 DW_TAG_member
	.long	.Linfo_string259        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	288                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	36
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x227:0x10 DW_TAG_member
	.long	.Linfo_string260        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x237:0x10 DW_TAG_member
	.long	.Linfo_string261        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	290                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	44
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x247:0x10 DW_TAG_member
	.long	.Linfo_string262        @ DW_AT_name
	.long	266                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	48
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x257:0x10 DW_TAG_member
	.long	.Linfo_string267        @ DW_AT_name
	.long	207                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	52
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x267:0x10 DW_TAG_member
	.long	.Linfo_string268        @ DW_AT_name
	.long	188                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	296                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	56
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x277:0x10 DW_TAG_member
	.long	.Linfo_string269        @ DW_AT_name
	.long	188                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	300                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	60
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x287:0x10 DW_TAG_member
	.long	.Linfo_string270        @ DW_AT_name
	.long	278                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	302                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	64
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x297:0x10 DW_TAG_member
	.long	.Linfo_string272        @ DW_AT_name
	.long	289                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	68
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2a7:0x10 DW_TAG_member
	.long	.Linfo_string274        @ DW_AT_name
	.long	296                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	307                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	70
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2b7:0x10 DW_TAG_member
	.long	.Linfo_string276        @ DW_AT_name
	.long	310                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	71
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2c7:0x10 DW_TAG_member
	.long	.Linfo_string277        @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	312                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	72
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2d7:0x10 DW_TAG_member
	.long	.Linfo_string278        @ DW_AT_name
	.long	341                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	321                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	80
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2e7:0x10 DW_TAG_member
	.long	.Linfo_string282        @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	88
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2f7:0x10 DW_TAG_member
	.long	.Linfo_string283        @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	331                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	92
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x307:0x10 DW_TAG_member
	.long	.Linfo_string284        @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	332                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	96
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x317:0x10 DW_TAG_member
	.long	.Linfo_string285        @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	333                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	100
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x327:0x10 DW_TAG_member
	.long	.Linfo_string286        @ DW_AT_name
	.long	359                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	334                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	104
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x337:0x10 DW_TAG_member
	.long	.Linfo_string287        @ DW_AT_name
	.long	188                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	336                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	108
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x347:0x10 DW_TAG_member
	.long	.Linfo_string288        @ DW_AT_name
	.long	370                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	112
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x358:0xb DW_TAG_typedef
	.long	382                     @ DW_AT_type
	.long	.Linfo_string290        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x363:0x5 DW_TAG_pointer_type
	.long	856                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x368:0x5 DW_TAG_const_type
	.long	195                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x36d:0x5 DW_TAG_pointer_type
	.long	872                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x372:0x18 DW_TAG_structure_type
	.long	.Linfo_string325        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	14                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x37a:0xf DW_TAG_member
	.long	.Linfo_string324        @ DW_AT_name
	.long	322                     @ DW_AT_type
	.byte	14                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x38a:0xb DW_TAG_typedef
	.long	882                     @ DW_AT_type
	.long	.Linfo_string326        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x395:0xb DW_TAG_typedef
	.long	906                     @ DW_AT_type
	.long	.Linfo_string327        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x3a0:0xb DW_TAG_typedef
	.long	917                     @ DW_AT_type
	.long	.Linfo_string328        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x3ab:0xd DW_TAG_array_type
	.long	195                     @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0x3b0:0x7 DW_TAG_subrange_type
	.long	303                     @ DW_AT_type
	.short	1999                    @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
.L.debug_info_end7:
.L.debug_info_begin8:
	.long	659                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x28c DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string173        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	35                      @ Abbrev [35] 0x22:0x32 DW_TAG_subprogram
	.long	.Linfo_string174        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin53          @ DW_AT_low_pc
	.long	.Lfunc_end53            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x37:0xe DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	32                      @ Abbrev [32] 0x45:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x54:0x1 DW_TAG_pointer_type
	.byte	35                      @ Abbrev [35] 0x55:0x40 DW_TAG_subprogram
	.long	.Linfo_string175        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin55          @ DW_AT_low_pc
	.long	.Lfunc_end55            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x6a:0xe DW_TAG_formal_parameter
	.long	.Linfo_string291        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	84                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	32                      @ Abbrev [32] 0x78:0xe DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	32                      @ Abbrev [32] 0x86:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x95:0x5a DW_TAG_subprogram
	.long	.Linfo_string176        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin57          @ DW_AT_low_pc
	.long	.Lfunc_end57            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	25                      @ Abbrev [25] 0xaa:0xc DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	16                      @ DW_AT_decl_file
	.byte	198                     @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0xae:0x7 DW_TAG_enumerator
	.long	.Linfo_string185        @ DW_AT_name
	.asciz	 "\300"                 @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xb6:0xe DW_TAG_formal_parameter
	.long	.Linfo_string291        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.long	84                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	32                      @ Abbrev [32] 0xc4:0xe DW_TAG_formal_parameter
	.long	.Linfo_string378        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.long	641                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	32                      @ Abbrev [32] 0xd2:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	33                      @ Abbrev [33] 0xe0:0xe DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	188                     @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0xef:0x24 DW_TAG_subprogram
	.long	.Linfo_string177        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	223                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	282                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin58          @ DW_AT_low_pc
	.long	.Lfunc_end58            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x104:0xe DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	223                     @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x113:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0x11a:0x5 DW_TAG_pointer_type
	.long	275                     @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x11f:0x32 DW_TAG_subprogram
	.long	.Linfo_string178        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin54          @ DW_AT_low_pc
	.long	.Lfunc_end54            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x134:0xe DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	33                      @ Abbrev [33] 0x142:0xe DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	84                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x151:0x32 DW_TAG_subprogram
	.long	.Linfo_string179        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin56          @ DW_AT_low_pc
	.long	.Lfunc_end56            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x166:0xe DW_TAG_formal_parameter
	.long	.Linfo_string291        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.long	84                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	32                      @ Abbrev [32] 0x174:0xe DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x183:0x32 DW_TAG_subprogram
	.long	.Linfo_string180        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin59          @ DW_AT_low_pc
	.long	.Lfunc_end59            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x198:0xe DW_TAG_formal_parameter
	.long	.Linfo_string291        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.long	84                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	32                      @ Abbrev [32] 0x1a6:0xe DW_TAG_formal_parameter
	.long	.Linfo_string378        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.long	641                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x1b5:0x24 DW_TAG_subprogram
	.long	.Linfo_string181        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin60          @ DW_AT_low_pc
	.long	.Lfunc_end60            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x1ca:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x1d9:0x40 DW_TAG_subprogram
	.long	.Linfo_string182        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin61          @ DW_AT_low_pc
	.long	.Lfunc_end61            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x1ee:0xe DW_TAG_formal_parameter
	.long	.Linfo_string308        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	32                      @ Abbrev [32] 0x1fc:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	33                      @ Abbrev [33] 0x20a:0xe DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.long	84                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x219:0x32 DW_TAG_subprogram
	.long	.Linfo_string183        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	84                      @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin62          @ DW_AT_low_pc
	.long	.Lfunc_end62            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x22e:0xe DW_TAG_formal_parameter
	.long	.Linfo_string291        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.long	647                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	32                      @ Abbrev [32] 0x23c:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.long	630                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x24b:0x24 DW_TAG_subprogram
	.long	.Linfo_string184        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	282                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin63          @ DW_AT_low_pc
	.long	.Lfunc_end63            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x260:0xe DW_TAG_formal_parameter
	.long	.Linfo_string379        @ DW_AT_name
	.byte	15                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.long	657                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x26f:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x276:0xb DW_TAG_typedef
	.long	623                     @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	16                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x281:0x5 DW_TAG_pointer_type
	.long	630                     @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x286:0x1 DW_TAG_const_type
	.byte	4                       @ Abbrev [4] 0x287:0x5 DW_TAG_pointer_type
	.long	646                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x28c:0x5 DW_TAG_const_type
	.long	275                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x291:0x5 DW_TAG_pointer_type
	.long	652                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.L.debug_info_end8:
.L.debug_info_begin9:
	.long	584                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x241 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string186        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	35                      @ Abbrev [35] 0x22:0xea DW_TAG_subprogram
	.long	.Linfo_string187        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	307                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin64          @ DW_AT_low_pc
	.long	.Lfunc_end64            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x37:0xe DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	546                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.byte	32                      @ Abbrev [32] 0x45:0xe DW_TAG_formal_parameter
	.long	.Linfo_string380        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	556                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	112
	.byte	32                      @ Abbrev [32] 0x53:0xe DW_TAG_formal_parameter
	.long	.Linfo_string381        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	561                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	108
	.byte	32                      @ Abbrev [32] 0x61:0xe DW_TAG_formal_parameter
	.long	.Linfo_string49         @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	575                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	104
	.byte	32                      @ Abbrev [32] 0x6f:0xe DW_TAG_formal_parameter
	.long	.Linfo_string382        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	546                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	100
	.byte	33                      @ Abbrev [33] 0x7d:0xe DW_TAG_variable
	.long	.Linfo_string383        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.long	551                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	32
	.byte	33                      @ Abbrev [33] 0x8b:0xe DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	556                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.byte	33                      @ Abbrev [33] 0x99:0xe DW_TAG_variable
	.long	.Linfo_string246        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	568                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.byte	33                      @ Abbrev [33] 0xa7:0xe DW_TAG_variable
	.long	.Linfo_string384        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	307                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.byte	20                      @ Abbrev [20] 0xb5:0x26 DW_TAG_lexical_block
	.long	.Ltmp457                @ DW_AT_low_pc
	.long	.Ltmp459                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0xbe:0xe DW_TAG_variable
	.long	.Linfo_string385        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	89                      @ DW_AT_decl_line
	.long	546                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	33                      @ Abbrev [33] 0xcc:0xe DW_TAG_variable
	.long	.Linfo_string369        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	580                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	15
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0xdb:0x30 DW_TAG_lexical_block
	.long	.Ldebug_range+216       @ DW_AT_ranges
	.byte	33                      @ Abbrev [33] 0xe0:0xe DW_TAG_variable
	.long	.Linfo_string386        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	127                     @ DW_AT_decl_line
	.long	561                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	33                      @ Abbrev [33] 0xee:0xe DW_TAG_variable
	.long	.Linfo_string387        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	561                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	33                      @ Abbrev [33] 0xfc:0xe DW_TAG_variable
	.long	.Linfo_string388        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	307                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x10c:0x27 DW_TAG_enumeration_type
	.long	.Linfo_string90         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x114:0x6 DW_TAG_enumerator
	.long	.Linfo_string85         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x11a:0x6 DW_TAG_enumerator
	.long	.Linfo_string86         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x120:0x6 DW_TAG_enumerator
	.long	.Linfo_string87         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x126:0x6 DW_TAG_enumerator
	.long	.Linfo_string88         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x12c:0x6 DW_TAG_enumerator
	.long	.Linfo_string89         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x133:0xb DW_TAG_typedef
	.long	268                     @ DW_AT_type
	.long	.Linfo_string90         @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.byte	36                      @ Abbrev [36] 0x13e:0x4e DW_TAG_subprogram
	.long	.Linfo_string188        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	307                     @ DW_AT_type
	.long	.Lfunc_begin66          @ DW_AT_low_pc
	.long	.Lfunc_end66            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x153:0xe DW_TAG_formal_parameter
	.long	.Linfo_string389        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	575                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	32                      @ Abbrev [32] 0x161:0xe DW_TAG_formal_parameter
	.long	.Linfo_string386        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	561                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	32                      @ Abbrev [32] 0x16f:0xe DW_TAG_formal_parameter
	.long	.Linfo_string391        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	561                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	33                      @ Abbrev [33] 0x17d:0xe DW_TAG_variable
	.long	.Linfo_string384        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.long	307                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0x18c:0x32 DW_TAG_subprogram
	.long	.Linfo_string189        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	307                     @ DW_AT_type
	.long	.Lfunc_begin65          @ DW_AT_low_pc
	.long	.Lfunc_end65            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x1a1:0xe DW_TAG_formal_parameter
	.long	.Linfo_string389        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.long	575                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	32                      @ Abbrev [32] 0x1af:0xe DW_TAG_formal_parameter
	.long	.Linfo_string390        @ DW_AT_name
	.byte	18                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.long	561                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x1be:0x58 DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x1c2:0x7 DW_TAG_enumerator
	.long	.Linfo_string91         @ DW_AT_name
	.ascii	 "\200\002"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x1c9:0x7 DW_TAG_enumerator
	.long	.Linfo_string92         @ DW_AT_name
	.ascii	 "\200\004"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x1d0:0x7 DW_TAG_enumerator
	.long	.Linfo_string93         @ DW_AT_name
	.ascii	 "\200\b"               @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x1d7:0x7 DW_TAG_enumerator
	.long	.Linfo_string94         @ DW_AT_name
	.ascii	 "\200\020"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x1de:0x7 DW_TAG_enumerator
	.long	.Linfo_string95         @ DW_AT_name
	.ascii	 "\200 "                @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x1e5:0x8 DW_TAG_enumerator
	.long	.Linfo_string96         @ DW_AT_name
	.asciz	 "\200\300"             @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x1ed:0x8 DW_TAG_enumerator
	.long	.Linfo_string97         @ DW_AT_name
	.ascii	 "\200\200\001"         @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x1f5:0x8 DW_TAG_enumerator
	.long	.Linfo_string98         @ DW_AT_name
	.ascii	 "\200\200\002"         @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x1fd:0x6 DW_TAG_enumerator
	.long	.Linfo_string99         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x203:0x6 DW_TAG_enumerator
	.long	.Linfo_string100        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x209:0x6 DW_TAG_enumerator
	.long	.Linfo_string101        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x20f:0x6 DW_TAG_enumerator
	.long	.Linfo_string102        @ DW_AT_name
	.byte	8                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x216:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x21d:0x5 DW_TAG_const_type
	.long	534                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x222:0x5 DW_TAG_pointer_type
	.long	541                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x227:0x5 DW_TAG_pointer_type
	.long	534                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x22c:0x5 DW_TAG_pointer_type
	.long	551                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x231:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x238:0x7 DW_TAG_base_type
	.long	.Linfo_string247        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0x23f:0x5 DW_TAG_pointer_type
	.long	568                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x244:0x7 DW_TAG_base_type
	.long	.Linfo_string296        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	0                       @ End Of Children Mark
.L.debug_info_end9:
.L.debug_info_begin10:
	.long	747                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x2e4 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string190        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	31                      @ Abbrev [31] 0x22:0x20 DW_TAG_subprogram
	.long	.Linfo_string191        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	25                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin67          @ DW_AT_low_pc
	.long	.Lfunc_end67            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x33:0xe DW_TAG_formal_parameter
	.long	.Linfo_string372        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	25                      @ DW_AT_decl_line
	.long	745                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x42:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x49:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0x50:0x5 DW_TAG_pointer_type
	.long	73                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x55:0x5 DW_TAG_pointer_type
	.long	260                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x5a:0x36 DW_TAG_structure_type
	.long	.Linfo_string266        @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	33                      @ DW_AT_decl_file
	.byte	188                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x62:0xf DW_TAG_member
	.long	.Linfo_string263        @ DW_AT_name
	.long	144                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x71:0xf DW_TAG_member
	.long	.Linfo_string264        @ DW_AT_name
	.long	85                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	190                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x80:0xf DW_TAG_member
	.long	.Linfo_string265        @ DW_AT_name
	.long	66                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x90:0x5 DW_TAG_pointer_type
	.long	90                      @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x95:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x9c:0xb DW_TAG_typedef
	.long	149                     @ DW_AT_type
	.long	.Linfo_string271        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0xa7:0x7 DW_TAG_base_type
	.long	.Linfo_string273        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xae:0x7 DW_TAG_base_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	11                      @ Abbrev [11] 0xb5:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0xbc:0xc DW_TAG_array_type
	.long	73                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xc1:0x6 DW_TAG_subrange_type
	.long	181                     @ DW_AT_type
	.byte	0                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xc8:0x1 DW_TAG_pointer_type
	.byte	2                       @ Abbrev [2] 0xc9:0x7 DW_TAG_base_type
	.long	.Linfo_string279        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0xd0:0xb DW_TAG_typedef
	.long	201                     @ DW_AT_type
	.long	.Linfo_string280        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0xdb:0xb DW_TAG_typedef
	.long	208                     @ DW_AT_type
	.long	.Linfo_string281        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	142                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0xe6:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0xed:0xb DW_TAG_typedef
	.long	230                     @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0xf8:0xc DW_TAG_array_type
	.long	73                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xfd:0x6 DW_TAG_subrange_type
	.long	181                     @ DW_AT_type
	.byte	39                      @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x104:0x1da DW_TAG_structure_type
	.long	.Linfo_string289        @ DW_AT_name
	.byte	152                     @ DW_AT_byte_size
	.byte	33                      @ DW_AT_decl_file
	.short	273                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x10d:0x10 DW_TAG_member
	.long	.Linfo_string250        @ DW_AT_name
	.long	66                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	274                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x11d:0x10 DW_TAG_member
	.long	.Linfo_string251        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x12d:0x10 DW_TAG_member
	.long	.Linfo_string252        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	280                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x13d:0x10 DW_TAG_member
	.long	.Linfo_string253        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	281                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x14d:0x10 DW_TAG_member
	.long	.Linfo_string254        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	282                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x15d:0x10 DW_TAG_member
	.long	.Linfo_string255        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	283                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x16d:0x10 DW_TAG_member
	.long	.Linfo_string256        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	284                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x17d:0x10 DW_TAG_member
	.long	.Linfo_string257        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	285                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	28
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x18d:0x10 DW_TAG_member
	.long	.Linfo_string258        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	286                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x19d:0x10 DW_TAG_member
	.long	.Linfo_string259        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	288                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	36
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1ad:0x10 DW_TAG_member
	.long	.Linfo_string260        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1bd:0x10 DW_TAG_member
	.long	.Linfo_string261        @ DW_AT_name
	.long	80                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	290                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	44
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1cd:0x10 DW_TAG_member
	.long	.Linfo_string262        @ DW_AT_name
	.long	144                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	48
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1dd:0x10 DW_TAG_member
	.long	.Linfo_string267        @ DW_AT_name
	.long	85                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	52
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1ed:0x10 DW_TAG_member
	.long	.Linfo_string268        @ DW_AT_name
	.long	66                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	296                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	56
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1fd:0x10 DW_TAG_member
	.long	.Linfo_string269        @ DW_AT_name
	.long	66                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	300                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	60
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x20d:0x10 DW_TAG_member
	.long	.Linfo_string270        @ DW_AT_name
	.long	156                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	302                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	64
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x21d:0x10 DW_TAG_member
	.long	.Linfo_string272        @ DW_AT_name
	.long	167                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	68
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x22d:0x10 DW_TAG_member
	.long	.Linfo_string274        @ DW_AT_name
	.long	174                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	307                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	70
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x23d:0x10 DW_TAG_member
	.long	.Linfo_string276        @ DW_AT_name
	.long	188                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	71
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x24d:0x10 DW_TAG_member
	.long	.Linfo_string277        @ DW_AT_name
	.long	200                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	312                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	72
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x25d:0x10 DW_TAG_member
	.long	.Linfo_string278        @ DW_AT_name
	.long	219                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	321                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	80
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x26d:0x10 DW_TAG_member
	.long	.Linfo_string282        @ DW_AT_name
	.long	200                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	88
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x27d:0x10 DW_TAG_member
	.long	.Linfo_string283        @ DW_AT_name
	.long	200                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	331                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	92
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x28d:0x10 DW_TAG_member
	.long	.Linfo_string284        @ DW_AT_name
	.long	200                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	332                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	96
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x29d:0x10 DW_TAG_member
	.long	.Linfo_string285        @ DW_AT_name
	.long	200                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	333                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	100
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2ad:0x10 DW_TAG_member
	.long	.Linfo_string286        @ DW_AT_name
	.long	237                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	334                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	104
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2bd:0x10 DW_TAG_member
	.long	.Linfo_string287        @ DW_AT_name
	.long	66                      @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	336                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	108
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2cd:0x10 DW_TAG_member
	.long	.Linfo_string288        @ DW_AT_name
	.long	248                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	112
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x2de:0xb DW_TAG_typedef
	.long	260                     @ DW_AT_type
	.long	.Linfo_string290        @ DW_AT_name
	.byte	19                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x2e9:0x5 DW_TAG_pointer_type
	.long	734                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.L.debug_info_end10:
.L.debug_info_begin11:
	.long	48                      @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x29 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string192        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	40                      @ Abbrev [40] 0x22:0x11 DW_TAG_subprogram
	.long	.Linfo_string193        @ DW_AT_name
	.byte	20                      @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin68          @ DW_AT_low_pc
	.long	.Lfunc_end68            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	0                       @ End Of Children Mark
.L.debug_info_end11:
.L.debug_info_begin12:
	.long	800                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x319 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string194        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	35                      @ Abbrev [35] 0x22:0x4e DW_TAG_subprogram
	.long	.Linfo_string195        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	112                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin69          @ DW_AT_low_pc
	.long	.Lfunc_end69            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x37:0xe DW_TAG_formal_parameter
	.long	.Linfo_string319        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.long	791                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	33                      @ Abbrev [33] 0x45:0xe DW_TAG_variable
	.long	.Linfo_string392        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	796                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	7
	.byte	33                      @ Abbrev [33] 0x53:0xe DW_TAG_variable
	.long	.Linfo_string393        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	796                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	6
	.byte	33                      @ Abbrev [33] 0x61:0xe DW_TAG_variable
	.long	.Linfo_string394        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	57                      @ DW_AT_decl_line
	.long	796                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	5
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x70:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x77:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0x7e:0x5 DW_TAG_pointer_type
	.long	119                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x83:0x5 DW_TAG_pointer_type
	.long	306                     @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x88:0x36 DW_TAG_structure_type
	.long	.Linfo_string266        @ DW_AT_name
	.byte	12                      @ DW_AT_byte_size
	.byte	33                      @ DW_AT_decl_file
	.byte	188                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x90:0xf DW_TAG_member
	.long	.Linfo_string263        @ DW_AT_name
	.long	190                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x9f:0xf DW_TAG_member
	.long	.Linfo_string264        @ DW_AT_name
	.long	131                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	190                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xae:0xf DW_TAG_member
	.long	.Linfo_string265        @ DW_AT_name
	.long	112                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0xbe:0x5 DW_TAG_pointer_type
	.long	136                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0xc3:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0xca:0xb DW_TAG_typedef
	.long	195                     @ DW_AT_type
	.long	.Linfo_string271        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0xd5:0x7 DW_TAG_base_type
	.long	.Linfo_string273        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xdc:0x7 DW_TAG_base_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	11                      @ Abbrev [11] 0xe3:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0xea:0xc DW_TAG_array_type
	.long	119                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xef:0x6 DW_TAG_subrange_type
	.long	227                     @ DW_AT_type
	.byte	0                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xf6:0x1 DW_TAG_pointer_type
	.byte	2                       @ Abbrev [2] 0xf7:0x7 DW_TAG_base_type
	.long	.Linfo_string279        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0xfe:0xb DW_TAG_typedef
	.long	247                     @ DW_AT_type
	.long	.Linfo_string280        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x109:0xb DW_TAG_typedef
	.long	254                     @ DW_AT_type
	.long	.Linfo_string281        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	142                     @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x114:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x11b:0xb DW_TAG_typedef
	.long	276                     @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	33                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	12                      @ Abbrev [12] 0x126:0xc DW_TAG_array_type
	.long	119                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x12b:0x6 DW_TAG_subrange_type
	.long	227                     @ DW_AT_type
	.byte	39                      @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x132:0x1da DW_TAG_structure_type
	.long	.Linfo_string289        @ DW_AT_name
	.byte	152                     @ DW_AT_byte_size
	.byte	33                      @ DW_AT_decl_file
	.short	273                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x13b:0x10 DW_TAG_member
	.long	.Linfo_string250        @ DW_AT_name
	.long	112                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	274                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x14b:0x10 DW_TAG_member
	.long	.Linfo_string251        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x15b:0x10 DW_TAG_member
	.long	.Linfo_string252        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	280                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x16b:0x10 DW_TAG_member
	.long	.Linfo_string253        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	281                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x17b:0x10 DW_TAG_member
	.long	.Linfo_string254        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	282                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x18b:0x10 DW_TAG_member
	.long	.Linfo_string255        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	283                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x19b:0x10 DW_TAG_member
	.long	.Linfo_string256        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	284                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1ab:0x10 DW_TAG_member
	.long	.Linfo_string257        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	285                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	28
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1bb:0x10 DW_TAG_member
	.long	.Linfo_string258        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	286                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1cb:0x10 DW_TAG_member
	.long	.Linfo_string259        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	288                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	36
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1db:0x10 DW_TAG_member
	.long	.Linfo_string260        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1eb:0x10 DW_TAG_member
	.long	.Linfo_string261        @ DW_AT_name
	.long	126                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	290                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	44
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x1fb:0x10 DW_TAG_member
	.long	.Linfo_string262        @ DW_AT_name
	.long	190                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	48
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x20b:0x10 DW_TAG_member
	.long	.Linfo_string267        @ DW_AT_name
	.long	131                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	52
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x21b:0x10 DW_TAG_member
	.long	.Linfo_string268        @ DW_AT_name
	.long	112                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	296                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	56
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x22b:0x10 DW_TAG_member
	.long	.Linfo_string269        @ DW_AT_name
	.long	112                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	300                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	60
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x23b:0x10 DW_TAG_member
	.long	.Linfo_string270        @ DW_AT_name
	.long	202                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	302                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	64
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x24b:0x10 DW_TAG_member
	.long	.Linfo_string272        @ DW_AT_name
	.long	213                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	68
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x25b:0x10 DW_TAG_member
	.long	.Linfo_string274        @ DW_AT_name
	.long	220                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	307                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	70
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x26b:0x10 DW_TAG_member
	.long	.Linfo_string276        @ DW_AT_name
	.long	234                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	71
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x27b:0x10 DW_TAG_member
	.long	.Linfo_string277        @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	312                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	72
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x28b:0x10 DW_TAG_member
	.long	.Linfo_string278        @ DW_AT_name
	.long	265                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	321                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	80
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x29b:0x10 DW_TAG_member
	.long	.Linfo_string282        @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	88
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2ab:0x10 DW_TAG_member
	.long	.Linfo_string283        @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	331                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	92
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2bb:0x10 DW_TAG_member
	.long	.Linfo_string284        @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	332                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	96
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2cb:0x10 DW_TAG_member
	.long	.Linfo_string285        @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	333                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	100
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2db:0x10 DW_TAG_member
	.long	.Linfo_string286        @ DW_AT_name
	.long	283                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	334                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	104
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2eb:0x10 DW_TAG_member
	.long	.Linfo_string287        @ DW_AT_name
	.long	112                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	336                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	108
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	30                      @ Abbrev [30] 0x2fb:0x10 DW_TAG_member
	.long	.Linfo_string288        @ DW_AT_name
	.long	294                     @ DW_AT_type
	.byte	33                      @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	112
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x30c:0xb DW_TAG_typedef
	.long	306                     @ DW_AT_type
	.long	.Linfo_string290        @ DW_AT_name
	.byte	21                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x317:0x5 DW_TAG_pointer_type
	.long	780                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x31c:0x7 DW_TAG_base_type
	.long	.Linfo_string6          @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	0                       @ End Of Children Mark
.L.debug_info_end12:
.L.debug_info_begin13:
	.long	3224                    @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0xc91 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string196        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	18                      @ Abbrev [18] 0x22:0x71f DW_TAG_subprogram
	.long	.Linfo_string197        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1410                    @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	1864                    @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin70          @ DW_AT_low_pc
	.long	.Lfunc_end70            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	17                      @ Abbrev [17] 0x38:0xf DW_TAG_formal_parameter
	.long	.Linfo_string395        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1410                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	88
	.byte	17                      @ Abbrev [17] 0x47:0xf DW_TAG_formal_parameter
	.long	.Linfo_string396        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1410                    @ DW_AT_decl_line
	.long	2265                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	84
	.byte	17                      @ Abbrev [17] 0x56:0xf DW_TAG_formal_parameter
	.long	.Linfo_string373        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1411                    @ DW_AT_decl_line
	.long	2275                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	80
	.byte	17                      @ Abbrev [17] 0x65:0xf DW_TAG_formal_parameter
	.long	.Linfo_string374        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1411                    @ DW_AT_decl_line
	.long	2330                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	72
	.byte	19                      @ Abbrev [19] 0x74:0x10 DW_TAG_variable
	.long	.Linfo_string397        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1413                    @ DW_AT_decl_line
	.long	2592                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\270\177"
	.byte	19                      @ Abbrev [19] 0x84:0x10 DW_TAG_variable
	.long	.Linfo_string414        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1414                    @ DW_AT_decl_line
	.long	3184                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\260\177"
	.byte	21                      @ Abbrev [21] 0x94:0x6ac DW_TAG_lexical_block
	.long	.Ldebug_range+1712      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x99:0x10 DW_TAG_variable
	.long	.Linfo_string447        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1433                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\254\177"
	.byte	19                      @ Abbrev [19] 0xa9:0x10 DW_TAG_variable
	.long	.Linfo_string362        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1434                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\250\177"
	.byte	19                      @ Abbrev [19] 0xb9:0x10 DW_TAG_variable
	.long	.Linfo_string448        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1435                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\244\177"
	.byte	19                      @ Abbrev [19] 0xc9:0x10 DW_TAG_variable
	.long	.Linfo_string449        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1436                    @ DW_AT_decl_line
	.long	2275                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\240\177"
	.byte	19                      @ Abbrev [19] 0xd9:0x10 DW_TAG_variable
	.long	.Linfo_string334        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1437                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\234\177"
	.byte	19                      @ Abbrev [19] 0xe9:0x10 DW_TAG_variable
	.long	.Linfo_string450        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1438                    @ DW_AT_decl_line
	.long	2522                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\230\177"
	.byte	19                      @ Abbrev [19] 0xf9:0x10 DW_TAG_variable
	.long	.Linfo_string451        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1440                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\224\177"
	.byte	19                      @ Abbrev [19] 0x109:0x10 DW_TAG_variable
	.long	.Linfo_string452        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1441                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\220\177"
	.byte	19                      @ Abbrev [19] 0x119:0x10 DW_TAG_variable
	.long	.Linfo_string19         @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1442                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\214\177"
	.byte	21                      @ Abbrev [21] 0x129:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+240       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x12e:0x10 DW_TAG_variable
	.long	.Linfo_string453        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1457                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\210\177"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x13f:0x5c0 DW_TAG_lexical_block
	.long	.Ldebug_range+1648      @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x144:0x5ba DW_TAG_lexical_block
	.long	.Ldebug_range+1616      @ DW_AT_ranges
	.byte	20                      @ Abbrev [20] 0x149:0x54 DW_TAG_lexical_block
	.long	.Ltmp511                @ DW_AT_low_pc
	.long	.Ltmp515                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x152:0x10 DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1510                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\204\177"
	.byte	19                      @ Abbrev [19] 0x162:0x10 DW_TAG_variable
	.long	.Linfo_string454        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1511                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\200\177"
	.byte	20                      @ Abbrev [20] 0x172:0x2a DW_TAG_lexical_block
	.long	.Ltmp513                @ DW_AT_low_pc
	.long	.Ltmp514                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x17b:0x10 DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1513                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\374~"
	.byte	19                      @ Abbrev [19] 0x18b:0x10 DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1513                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\370~"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x19d:0x3c DW_TAG_lexical_block
	.long	.Ldebug_range+288       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x1a2:0x10 DW_TAG_variable
	.long	.Linfo_string454        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1535                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\364~"
	.byte	21                      @ Abbrev [21] 0x1b2:0x26 DW_TAG_lexical_block
	.long	.Ldebug_range+264       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x1b7:0x10 DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1540                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\360~"
	.byte	19                      @ Abbrev [19] 0x1c7:0x10 DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1540                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\354~"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x1d9:0x524 DW_TAG_lexical_block
	.long	.Ldebug_range+1576      @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x1de:0x218 DW_TAG_lexical_block
	.long	.Ldebug_range+456       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x1e3:0x10 DW_TAG_variable
	.long	.Linfo_string133        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2558                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\350~"
	.byte	19                      @ Abbrev [19] 0x1f3:0x10 DW_TAG_variable
	.long	.Linfo_string457        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2559                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\344~"
	.byte	19                      @ Abbrev [19] 0x203:0x10 DW_TAG_variable
	.long	.Linfo_string458        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2560                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\340~"
	.byte	19                      @ Abbrev [19] 0x213:0x10 DW_TAG_variable
	.long	.Linfo_string459        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2561                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\334~"
	.byte	19                      @ Abbrev [19] 0x223:0x10 DW_TAG_variable
	.long	.Linfo_string460        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2562                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\330~"
	.byte	19                      @ Abbrev [19] 0x233:0x10 DW_TAG_variable
	.long	.Linfo_string461        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2563                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\324~"
	.byte	19                      @ Abbrev [19] 0x243:0x10 DW_TAG_variable
	.long	.Linfo_string462        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2564                    @ DW_AT_decl_line
	.long	3202                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\230y"
	.byte	19                      @ Abbrev [19] 0x253:0x10 DW_TAG_variable
	.long	.Linfo_string246        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2565                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\224y"
	.byte	19                      @ Abbrev [19] 0x263:0x10 DW_TAG_variable
	.long	.Linfo_string463        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2566                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\220y"
	.byte	19                      @ Abbrev [19] 0x273:0x10 DW_TAG_variable
	.long	.Linfo_string291        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2567                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\214y"
	.byte	21                      @ Abbrev [21] 0x283:0x36 DW_TAG_lexical_block
	.long	.Ldebug_range+336       @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x288:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+312       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x28d:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2575                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\210y"
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x29e:0x1a DW_TAG_lexical_block
	.long	.Ltmp645                @ DW_AT_low_pc
	.long	.Ltmp646                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x2a7:0x10 DW_TAG_variable
	.long	.Linfo_string464        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2592                    @ DW_AT_decl_line
	.long	2275                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\204y"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x2b9:0x3e DW_TAG_lexical_block
	.long	.Ltmp652                @ DW_AT_low_pc
	.long	.Ltmp656                @ DW_AT_high_pc
	.byte	20                      @ Abbrev [20] 0x2c2:0x1a DW_TAG_lexical_block
	.long	.Ltmp653                @ DW_AT_low_pc
	.long	.Ltmp655                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x2cb:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2607                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\200y"
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x2dc:0x1a DW_TAG_lexical_block
	.long	.Ltmp655                @ DW_AT_low_pc
	.long	.Ltmp656                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x2e5:0x10 DW_TAG_variable
	.long	.Linfo_string464        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2622                    @ DW_AT_decl_line
	.long	2275                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\374x"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x2f7:0x1a DW_TAG_lexical_block
	.long	.Ltmp657                @ DW_AT_low_pc
	.long	.Ltmp658                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x300:0x10 DW_TAG_variable
	.long	.Linfo_string465        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2695                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\370x"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x311:0x2c DW_TAG_lexical_block
	.long	.Ldebug_range+400       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x316:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2714                    @ DW_AT_decl_line
	.long	2684                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\360x"
	.byte	21                      @ Abbrev [21] 0x326:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+368       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x32b:0x10 DW_TAG_variable
	.long	.Linfo_string466        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	2729                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\354x"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x33d:0x5a DW_TAG_lexical_block
	.long	.Ltmp675                @ DW_AT_low_pc
	.long	.Ltmp684                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x346:0x10 DW_TAG_variable
	.long	.Linfo_string467        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3503                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\350x"
	.byte	19                      @ Abbrev [19] 0x356:0x10 DW_TAG_variable
	.long	.Linfo_string468        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3504                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\344x"
	.byte	21                      @ Abbrev [21] 0x366:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+432       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x36b:0x10 DW_TAG_variable
	.long	.Linfo_string385        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3525                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\334x"
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x37c:0x1a DW_TAG_lexical_block
	.long	.Ltmp681                @ DW_AT_low_pc
	.long	.Ltmp683                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x385:0x10 DW_TAG_variable
	.long	.Linfo_string385        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3515                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\340x"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x397:0x5e DW_TAG_lexical_block
	.long	.Ltmp684                @ DW_AT_low_pc
	.long	.Ltmp688                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x3a0:0x10 DW_TAG_variable
	.long	.Linfo_string398        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3537                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\330x"
	.byte	20                      @ Abbrev [20] 0x3b0:0x44 DW_TAG_lexical_block
	.long	.Ltmp685                @ DW_AT_low_pc
	.long	.Ltmp687                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x3b9:0x10 DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3547                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\324x"
	.byte	20                      @ Abbrev [20] 0x3c9:0x2a DW_TAG_lexical_block
	.long	.Ltmp686                @ DW_AT_low_pc
	.long	.Ltmp687                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x3d2:0x10 DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3549                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\320x"
	.byte	19                      @ Abbrev [19] 0x3e2:0x10 DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3549                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\314x"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x3f6:0x306 DW_TAG_lexical_block
	.long	.Ldebug_range+1504      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x3fb:0x10 DW_TAG_variable
	.long	.Linfo_string415        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3562                    @ DW_AT_decl_line
	.long	2603                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\310x"
	.byte	19                      @ Abbrev [19] 0x40b:0x10 DW_TAG_variable
	.long	.Linfo_string133        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3563                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\304x"
	.byte	19                      @ Abbrev [19] 0x41b:0x10 DW_TAG_variable
	.long	.Linfo_string469        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3584                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\300x"
	.byte	19                      @ Abbrev [19] 0x42b:0x10 DW_TAG_variable
	.long	.Linfo_string470        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3585                    @ DW_AT_decl_line
	.long	1919                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\274x"
	.byte	19                      @ Abbrev [19] 0x43b:0x10 DW_TAG_variable
	.long	.Linfo_string471        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3586                    @ DW_AT_decl_line
	.long	3215                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\264x"
	.byte	20                      @ Abbrev [20] 0x44b:0x24 DW_TAG_lexical_block
	.long	.Ltmp530                @ DW_AT_low_pc
	.long	.Ltmp535                @ DW_AT_high_pc
	.byte	20                      @ Abbrev [20] 0x454:0x1a DW_TAG_lexical_block
	.long	.Ltmp531                @ DW_AT_low_pc
	.long	.Ltmp535                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x45d:0x10 DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3935                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\260x"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x46f:0x24 DW_TAG_lexical_block
	.long	.Ltmp535                @ DW_AT_low_pc
	.long	.Ltmp540                @ DW_AT_high_pc
	.byte	20                      @ Abbrev [20] 0x478:0x1a DW_TAG_lexical_block
	.long	.Ltmp536                @ DW_AT_low_pc
	.long	.Ltmp540                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x481:0x10 DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	3956                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\254x"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x493:0x26 DW_TAG_lexical_block
	.long	.Ldebug_range+496       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x498:0x10 DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4070                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\250x"
	.byte	19                      @ Abbrev [19] 0x4a8:0x10 DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4070                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\244x"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x4b9:0x242 DW_TAG_lexical_block
	.long	.Ldebug_range+1440      @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x4be:0x23c DW_TAG_lexical_block
	.long	.Ldebug_range+1376      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x4c3:0x10 DW_TAG_variable
	.long	.Linfo_string398        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4080                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\240x"
	.byte	19                      @ Abbrev [19] 0x4d3:0x10 DW_TAG_variable
	.long	.Linfo_string472        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4083                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\234x"
	.byte	19                      @ Abbrev [19] 0x4e3:0x10 DW_TAG_variable
	.long	.Linfo_string473        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4084                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\230x"
	.byte	21                      @ Abbrev [21] 0x4f3:0x42 DW_TAG_lexical_block
	.long	.Ldebug_range+568       @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x4f8:0x3c DW_TAG_lexical_block
	.long	.Ldebug_range+544       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x4fd:0x10 DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4329                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\264w"
	.byte	21                      @ Abbrev [21] 0x50d:0x26 DW_TAG_lexical_block
	.long	.Ldebug_range+520       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x512:0x10 DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4336                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\260w"
	.byte	19                      @ Abbrev [19] 0x522:0x10 DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4336                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\254w"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x535:0x17c DW_TAG_lexical_block
	.long	.Ldebug_range+1240      @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x53a:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+592       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x53f:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4135                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\224x"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x550:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+664       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x555:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4141                    @ DW_AT_decl_line
	.long	1919                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\220x"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x566:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+696       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x56b:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4147                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\214x"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x57c:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+728       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x581:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4153                    @ DW_AT_decl_line
	.long	1919                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\210x"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x592:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+760       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x597:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4159                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\204x"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x5a8:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+792       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x5ad:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4165                    @ DW_AT_decl_line
	.long	1919                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\200x"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x5be:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+824       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x5c3:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4171                    @ DW_AT_decl_line
	.long	2642                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\374w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x5d4:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+856       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x5d9:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4177                    @ DW_AT_decl_line
	.long	2649                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\370w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x5ea:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+896       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x5ef:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4184                    @ DW_AT_decl_line
	.long	2656                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\360w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x600:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+952       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x605:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4190                    @ DW_AT_decl_line
	.long	2663                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\350w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x616:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+984       @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x61b:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4197                    @ DW_AT_decl_line
	.long	2677                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\340w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x62c:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+1024      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x631:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4203                    @ DW_AT_decl_line
	.long	2684                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\330w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x642:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+1064      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x647:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4209                    @ DW_AT_decl_line
	.long	1973                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\324w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x658:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+1112      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x65d:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4216                    @ DW_AT_decl_line
	.long	2691                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\320w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x66e:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+1144      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x673:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4223                    @ DW_AT_decl_line
	.long	2275                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\314w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x684:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+1176      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x689:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4230                    @ DW_AT_decl_line
	.long	2718                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\310w"
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x69a:0x16 DW_TAG_lexical_block
	.long	.Ldebug_range+1208      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x69f:0x10 DW_TAG_variable
	.long	.Linfo_string339        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4237                    @ DW_AT_decl_line
	.long	2280                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\304w"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x6b1:0x48 DW_TAG_lexical_block
	.long	.Ldebug_range+1352      @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x6b6:0x42 DW_TAG_lexical_block
	.long	.Ldebug_range+1328      @ DW_AT_ranges
	.byte	21                      @ Abbrev [21] 0x6bb:0x3c DW_TAG_lexical_block
	.long	.Ldebug_range+1304      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x6c0:0x10 DW_TAG_variable
	.long	.Linfo_string474        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4282                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\300w"
	.byte	21                      @ Abbrev [21] 0x6d0:0x26 DW_TAG_lexical_block
	.long	.Ldebug_range+1280      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x6d5:0x10 DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4284                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\274w"
	.byte	19                      @ Abbrev [19] 0x6e5:0x10 DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4284                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\270w"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x6ff:0x26 DW_TAG_lexical_block
	.long	.Ldebug_range+1688      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x704:0x10 DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4643                    @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\250w"
	.byte	19                      @ Abbrev [19] 0x714:0x10 DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4643                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\244w"
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x725:0x1a DW_TAG_lexical_block
	.long	.Ltmp699                @ DW_AT_low_pc
	.long	.Ltmp700                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x72e:0x10 DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	4649                    @ DW_AT_decl_line
	.long	1864                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\240w"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x741:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	4                       @ Abbrev [4] 0x748:0x5 DW_TAG_pointer_type
	.long	1857                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x74d:0x32 DW_TAG_subprogram
	.long	.Linfo_string198        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	1926                    @ DW_AT_type
	.long	.Lfunc_begin74          @ DW_AT_low_pc
	.long	.Lfunc_end74            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x762:0xe DW_TAG_formal_parameter
	.long	.Linfo_string475        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	32                      @ Abbrev [32] 0x770:0xe DW_TAG_formal_parameter
	.long	.Linfo_string476        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x77f:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x786:0xb DW_TAG_typedef
	.long	1919                    @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	36                      @ Abbrev [36] 0x791:0x24 DW_TAG_subprogram
	.long	.Linfo_string199        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	243                     @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	1973                    @ DW_AT_type
	.long	.Lfunc_begin73          @ DW_AT_low_pc
	.long	.Lfunc_end73            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x7a6:0xe DW_TAG_formal_parameter
	.long	.Linfo_string389        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	243                     @ DW_AT_decl_line
	.long	2684                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x7b5:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	36                      @ Abbrev [36] 0x7bc:0x40 DW_TAG_subprogram
	.long	.Linfo_string200        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	1926                    @ DW_AT_type
	.long	.Lfunc_begin72          @ DW_AT_low_pc
	.long	.Lfunc_end72            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x7d1:0xe DW_TAG_formal_parameter
	.long	.Linfo_string475        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.byte	32                      @ Abbrev [32] 0x7df:0xe DW_TAG_formal_parameter
	.long	.Linfo_string476        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	33                      @ Abbrev [33] 0x7ed:0xe DW_TAG_variable
	.long	.Linfo_string479        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0x7fc:0x4e DW_TAG_subprogram
	.long	.Linfo_string201        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	1926                    @ DW_AT_type
	.long	.Lfunc_begin71          @ DW_AT_low_pc
	.long	.Lfunc_end71            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x811:0xe DW_TAG_formal_parameter
	.long	.Linfo_string475        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	124
	.byte	32                      @ Abbrev [32] 0x81f:0xe DW_TAG_formal_parameter
	.long	.Linfo_string476        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	32                      @ Abbrev [32] 0x82d:0xe DW_TAG_formal_parameter
	.long	.Linfo_string477        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	32                      @ Abbrev [32] 0x83b:0xe DW_TAG_formal_parameter
	.long	.Linfo_string478        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	1926                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x84a:0x8f DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x84e:0x6 DW_TAG_enumerator
	.long	.Linfo_string202        @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x854:0x6 DW_TAG_enumerator
	.long	.Linfo_string203        @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x85a:0x6 DW_TAG_enumerator
	.long	.Linfo_string204        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x860:0x6 DW_TAG_enumerator
	.long	.Linfo_string205        @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x866:0x6 DW_TAG_enumerator
	.long	.Linfo_string206        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x86c:0x6 DW_TAG_enumerator
	.long	.Linfo_string207        @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x872:0x6 DW_TAG_enumerator
	.long	.Linfo_string208        @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x878:0x6 DW_TAG_enumerator
	.long	.Linfo_string209        @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x87e:0x6 DW_TAG_enumerator
	.long	.Linfo_string210        @ DW_AT_name
	.byte	8                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x884:0x6 DW_TAG_enumerator
	.long	.Linfo_string211        @ DW_AT_name
	.byte	9                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x88a:0x6 DW_TAG_enumerator
	.long	.Linfo_string212        @ DW_AT_name
	.byte	10                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x890:0x6 DW_TAG_enumerator
	.long	.Linfo_string213        @ DW_AT_name
	.byte	11                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x896:0x6 DW_TAG_enumerator
	.long	.Linfo_string214        @ DW_AT_name
	.byte	12                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x89c:0x6 DW_TAG_enumerator
	.long	.Linfo_string215        @ DW_AT_name
	.byte	13                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8a2:0x6 DW_TAG_enumerator
	.long	.Linfo_string216        @ DW_AT_name
	.byte	14                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8a8:0x6 DW_TAG_enumerator
	.long	.Linfo_string217        @ DW_AT_name
	.byte	15                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8ae:0x6 DW_TAG_enumerator
	.long	.Linfo_string218        @ DW_AT_name
	.byte	16                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8b4:0x6 DW_TAG_enumerator
	.long	.Linfo_string219        @ DW_AT_name
	.byte	17                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8ba:0x6 DW_TAG_enumerator
	.long	.Linfo_string220        @ DW_AT_name
	.byte	18                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8c0:0x6 DW_TAG_enumerator
	.long	.Linfo_string221        @ DW_AT_name
	.byte	19                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8c6:0x6 DW_TAG_enumerator
	.long	.Linfo_string222        @ DW_AT_name
	.byte	20                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8cc:0x6 DW_TAG_enumerator
	.long	.Linfo_string223        @ DW_AT_name
	.byte	21                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x8d2:0x6 DW_TAG_enumerator
	.long	.Linfo_string224        @ DW_AT_name
	.byte	22                      @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x8d9:0x5 DW_TAG_pointer_type
	.long	1926                    @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x8de:0x5 DW_TAG_const_type
	.long	1857                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x8e3:0x5 DW_TAG_pointer_type
	.long	2270                    @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x8e8:0x1 DW_TAG_pointer_type
	.byte	29                      @ Abbrev [29] 0x8e9:0x1a DW_TAG_structure_type
	.long	.Linfo_string325        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	22                      @ DW_AT_decl_file
	.short	1412                    @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x8f2:0x10 DW_TAG_member
	.long	.Linfo_string324        @ DW_AT_name
	.long	2280                    @ DW_AT_type
	.byte	22                      @ DW_AT_decl_file
	.short	1412                    @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	41                      @ Abbrev [41] 0x903:0xc DW_TAG_typedef
	.long	2281                    @ DW_AT_type
	.long	.Linfo_string326        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.short	1412                    @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x90f:0xb DW_TAG_typedef
	.long	2307                    @ DW_AT_type
	.long	.Linfo_string327        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x91a:0xb DW_TAG_typedef
	.long	2319                    @ DW_AT_type
	.long	.Linfo_string328        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.byte	37                      @ Abbrev [37] 0x925:0xaa DW_TAG_structure_type
	.byte	44                      @ DW_AT_byte_size
	.byte	29                      @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x929:0xf DW_TAG_member
	.long	.Linfo_string400        @ DW_AT_name
	.long	2275                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x938:0xf DW_TAG_member
	.long	.Linfo_string401        @ DW_AT_name
	.long	2275                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x947:0xf DW_TAG_member
	.long	.Linfo_string133        @ DW_AT_name
	.long	1973                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x956:0xf DW_TAG_member
	.long	.Linfo_string402        @ DW_AT_name
	.long	2275                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x965:0xf DW_TAG_member
	.long	.Linfo_string403        @ DW_AT_name
	.long	2275                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x974:0xf DW_TAG_member
	.long	.Linfo_string404        @ DW_AT_name
	.long	1926                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x983:0xf DW_TAG_member
	.long	.Linfo_string405        @ DW_AT_name
	.long	2275                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x992:0xf DW_TAG_member
	.long	.Linfo_string406        @ DW_AT_name
	.long	2275                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	28
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x9a1:0xf DW_TAG_member
	.long	.Linfo_string407        @ DW_AT_name
	.long	1926                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x9b0:0xf DW_TAG_member
	.long	.Linfo_string408        @ DW_AT_name
	.long	1857                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	36
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x9bf:0xf DW_TAG_member
	.long	.Linfo_string409        @ DW_AT_name
	.long	1926                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x9cf:0xb DW_TAG_typedef
	.long	2341                    @ DW_AT_type
	.long	.Linfo_string410        @ DW_AT_name
	.byte	29                      @ DW_AT_decl_file
	.byte	57                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x9da:0x5 DW_TAG_pointer_type
	.long	2511                    @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x9df:0x41 DW_TAG_structure_type
	.byte	16                      @ DW_AT_byte_size
	.byte	29                      @ DW_AT_decl_file
	.byte	60                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x9e3:0xf DW_TAG_member
	.long	.Linfo_string398        @ DW_AT_name
	.long	1926                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x9f2:0xf DW_TAG_member
	.long	.Linfo_string399        @ DW_AT_name
	.long	2522                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xa01:0xf DW_TAG_member
	.long	.Linfo_string411        @ DW_AT_name
	.long	1926                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xa10:0xf DW_TAG_member
	.long	.Linfo_string412        @ DW_AT_name
	.long	1926                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0xa20:0xb DW_TAG_typedef
	.long	2527                    @ DW_AT_type
	.long	.Linfo_string413        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0xa2b:0xb DW_TAG_typedef
	.long	2122                    @ DW_AT_type
	.long	.Linfo_string416        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0xa36:0x7 DW_TAG_base_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa3d:0x7 DW_TAG_base_type
	.long	.Linfo_string296        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa44:0x7 DW_TAG_base_type
	.long	.Linfo_string420        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa4b:0x7 DW_TAG_base_type
	.long	.Linfo_string273        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa52:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa59:0x7 DW_TAG_base_type
	.long	.Linfo_string247        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa60:0x7 DW_TAG_base_type
	.long	.Linfo_string279        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa67:0x7 DW_TAG_base_type
	.long	.Linfo_string428        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa6e:0x7 DW_TAG_base_type
	.long	.Linfo_string430        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa75:0x7 DW_TAG_base_type
	.long	.Linfo_string432        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0xa7c:0x7 DW_TAG_base_type
	.long	.Linfo_string228        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0xa83:0xb DW_TAG_typedef
	.long	1919                    @ DW_AT_type
	.long	.Linfo_string436        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0xa8e:0xb DW_TAG_typedef
	.long	1919                    @ DW_AT_type
	.long	.Linfo_string236        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0xa99:0x5 DW_TAG_const_type
	.long	2702                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xa9e:0x5 DW_TAG_pointer_type
	.long	2713                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xaa3:0x5 DW_TAG_pointer_type
	.long	2614                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xaa8:0x5 DW_TAG_pointer_type
	.long	2628                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xaad:0x5 DW_TAG_pointer_type
	.long	1973                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xab2:0x5 DW_TAG_pointer_type
	.long	2642                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0xab7:0x5 DW_TAG_pointer_type
	.long	2656                    @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0xabc:0x181 DW_TAG_structure_type
	.byte	16                      @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0xac0:0xf DW_TAG_member
	.long	.Linfo_string415        @ DW_AT_name
	.long	2603                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	38                      @ Abbrev [38] 0xacf:0x15e DW_TAG_union_type
	.byte	8                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	94                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0xad3:0xf DW_TAG_member
	.long	.Linfo_string417        @ DW_AT_name
	.long	2614                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	96                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xae2:0xf DW_TAG_member
	.long	.Linfo_string418        @ DW_AT_name
	.long	2621                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	97                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xaf1:0xf DW_TAG_member
	.long	.Linfo_string419        @ DW_AT_name
	.long	2628                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb00:0xf DW_TAG_member
	.long	.Linfo_string421        @ DW_AT_name
	.long	2635                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb0f:0xf DW_TAG_member
	.long	.Linfo_string422        @ DW_AT_name
	.long	1973                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb1e:0xf DW_TAG_member
	.long	.Linfo_string423        @ DW_AT_name
	.long	1919                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb2d:0xf DW_TAG_member
	.long	.Linfo_string424        @ DW_AT_name
	.long	2642                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	102                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb3c:0xf DW_TAG_member
	.long	.Linfo_string425        @ DW_AT_name
	.long	2649                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb4b:0xf DW_TAG_member
	.long	.Linfo_string426        @ DW_AT_name
	.long	2656                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb5a:0xf DW_TAG_member
	.long	.Linfo_string427        @ DW_AT_name
	.long	2663                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb69:0xf DW_TAG_member
	.long	.Linfo_string429        @ DW_AT_name
	.long	2670                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb78:0xf DW_TAG_member
	.long	.Linfo_string431        @ DW_AT_name
	.long	2677                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb87:0xf DW_TAG_member
	.long	.Linfo_string433        @ DW_AT_name
	.long	2684                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	110                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xb96:0xf DW_TAG_member
	.long	.Linfo_string434        @ DW_AT_name
	.long	1973                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xba5:0xf DW_TAG_member
	.long	.Linfo_string435        @ DW_AT_name
	.long	2691                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xbb4:0xf DW_TAG_member
	.long	.Linfo_string437        @ DW_AT_name
	.long	2275                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xbc3:0xf DW_TAG_member
	.long	.Linfo_string438        @ DW_AT_name
	.long	2718                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xbd2:0xf DW_TAG_member
	.long	.Linfo_string439        @ DW_AT_name
	.long	2280                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xbe1:0xf DW_TAG_member
	.long	.Linfo_string440        @ DW_AT_name
	.long	2723                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	120                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xbf0:0xf DW_TAG_member
	.long	.Linfo_string441        @ DW_AT_name
	.long	2728                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	121                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xbff:0xf DW_TAG_member
	.long	.Linfo_string442        @ DW_AT_name
	.long	2733                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xc0e:0xf DW_TAG_member
	.long	.Linfo_string443        @ DW_AT_name
	.long	2738                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xc1d:0xf DW_TAG_member
	.long	.Linfo_string444        @ DW_AT_name
	.long	2743                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0xc2d:0xf DW_TAG_member
	.long	.Linfo_string414        @ DW_AT_name
	.long	2767                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0xc3d:0xb DW_TAG_typedef
	.long	2748                    @ DW_AT_type
	.long	.Linfo_string445        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	136                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0xc48:0x5 DW_TAG_pointer_type
	.long	3133                    @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0xc4d:0x23 DW_TAG_structure_type
	.byte	8                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0xc51:0xf DW_TAG_member
	.long	.Linfo_string398        @ DW_AT_name
	.long	1926                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0xc60:0xf DW_TAG_member
	.long	.Linfo_string339        @ DW_AT_name
	.long	3144                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0xc70:0xb DW_TAG_typedef
	.long	3149                    @ DW_AT_type
	.long	.Linfo_string446        @ DW_AT_name
	.byte	22                      @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.byte	11                      @ Abbrev [11] 0xc7b:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0xc82:0xd DW_TAG_array_type
	.long	1857                    @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0xc87:0x7 DW_TAG_subrange_type
	.long	3195                    @ DW_AT_type
	.short	699                     @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0xc8f:0xc DW_TAG_array_type
	.long	1973                    @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0xc94:0x6 DW_TAG_subrange_type
	.long	3195                    @ DW_AT_type
	.byte	1                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
.L.debug_info_end13:
.L.debug_info_begin14:
	.long	237                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0xe6 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string225        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	2                       @ Abbrev [2] 0x22:0x7 DW_TAG_base_type
	.long	.Linfo_string228        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x29:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	11                      @ Abbrev [11] 0x30:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0x37:0xc DW_TAG_array_type
	.long	41                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x3c:0x6 DW_TAG_subrange_type
	.long	48                      @ DW_AT_type
	.byte	1                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	38                      @ Abbrev [38] 0x43:0x23 DW_TAG_union_type
	.byte	8                       @ DW_AT_byte_size
	.byte	26                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x47:0xf DW_TAG_member
	.long	.Linfo_string227        @ DW_AT_name
	.long	34                      @ DW_AT_type
	.byte	26                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x56:0xf DW_TAG_member
	.long	.Linfo_string229        @ DW_AT_name
	.long	55                      @ DW_AT_type
	.byte	26                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x66:0xb DW_TAG_typedef
	.long	67                      @ DW_AT_type
	.long	.Linfo_string230        @ DW_AT_name
	.byte	26                      @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.byte	35                      @ Abbrev [35] 0x71:0x78 DW_TAG_subprogram
	.long	.Linfo_string231        @ DW_AT_name
	.byte	26                      @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	233                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin75          @ DW_AT_low_pc
	.long	.Lfunc_end75            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	6                       @ Abbrev [6] 0x86:0x14 DW_TAG_variable
	.long	.Linfo_string226        @ DW_AT_name
	.long	102                     @ DW_AT_type
	.byte	26                      @ DW_AT_decl_file
	.byte	120                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals
	.byte	16
	.byte	24
	.byte	34
	.byte	6                       @ Abbrev [6] 0x9a:0x14 DW_TAG_variable
	.long	.Linfo_string232        @ DW_AT_name
	.long	34                      @ DW_AT_type
	.byte	26                      @ DW_AT_decl_file
	.byte	121                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals
	.byte	16
	.byte	32
	.byte	34
	.byte	6                       @ Abbrev [6] 0xae:0x14 DW_TAG_variable
	.long	.Linfo_string233        @ DW_AT_name
	.long	34                      @ DW_AT_type
	.byte	26                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	_MergedGlobals
	.byte	16
	.byte	40
	.byte	34
	.byte	32                      @ Abbrev [32] 0xc2:0xe DW_TAG_formal_parameter
	.long	.Linfo_string389        @ DW_AT_name
	.byte	26                      @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	34                      @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	20                      @ Abbrev [20] 0xd0:0x18 DW_TAG_lexical_block
	.long	.Ltmp734                @ DW_AT_low_pc
	.long	.Ltmp735                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0xd9:0xe DW_TAG_variable
	.long	.Linfo_string349        @ DW_AT_name
	.byte	26                      @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	102                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0xe9:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	0                       @ End Of Children Mark
.L.debug_info_end14:
.L.debug_info_begin15:
	.long	974                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x3c7 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string234        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	2                       @ Abbrev [2] 0x22:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x29:0xb DW_TAG_typedef
	.long	34                      @ DW_AT_type
	.long	.Linfo_string236        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x34:0x5 DW_TAG_const_type
	.long	41                      @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x39:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0x40:0xc DW_TAG_array_type
	.long	52                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x45:0x6 DW_TAG_subrange_type
	.long	57                      @ DW_AT_type
	.byte	6                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x4c:0x5f DW_TAG_subprogram
	.long	.Linfo_string237        @ DW_AT_name
	.byte	27                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	171                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin76          @ DW_AT_low_pc
	.long	.Lfunc_end76            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	6                       @ Abbrev [6] 0x61:0x11 DW_TAG_variable
	.long	.Linfo_string235        @ DW_AT_name
	.long	64                      @ DW_AT_type
	.byte	27                      @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	printf_fetchargs.wide_null_string
	.byte	32                      @ Abbrev [32] 0x72:0xe DW_TAG_formal_parameter
	.long	.Linfo_string374        @ DW_AT_name
	.byte	27                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	357                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	16
	.byte	32                      @ Abbrev [32] 0x80:0xe DW_TAG_formal_parameter
	.long	.Linfo_string414        @ DW_AT_name
	.byte	27                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	972                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	12
	.byte	33                      @ Abbrev [33] 0x8e:0xe DW_TAG_variable
	.long	.Linfo_string334        @ DW_AT_name
	.byte	27                      @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	368                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.byte	33                      @ Abbrev [33] 0x9c:0xe DW_TAG_variable
	.long	.Linfo_string480        @ DW_AT_name
	.byte	27                      @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.long	921                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0xab:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	25                      @ Abbrev [25] 0xb2:0x8f DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0xb6:0x6 DW_TAG_enumerator
	.long	.Linfo_string202        @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xbc:0x6 DW_TAG_enumerator
	.long	.Linfo_string203        @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xc2:0x6 DW_TAG_enumerator
	.long	.Linfo_string204        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xc8:0x6 DW_TAG_enumerator
	.long	.Linfo_string205        @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xce:0x6 DW_TAG_enumerator
	.long	.Linfo_string206        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xd4:0x6 DW_TAG_enumerator
	.long	.Linfo_string207        @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xda:0x6 DW_TAG_enumerator
	.long	.Linfo_string208        @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xe0:0x6 DW_TAG_enumerator
	.long	.Linfo_string209        @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xe6:0x6 DW_TAG_enumerator
	.long	.Linfo_string210        @ DW_AT_name
	.byte	8                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xec:0x6 DW_TAG_enumerator
	.long	.Linfo_string211        @ DW_AT_name
	.byte	9                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xf2:0x6 DW_TAG_enumerator
	.long	.Linfo_string212        @ DW_AT_name
	.byte	10                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xf8:0x6 DW_TAG_enumerator
	.long	.Linfo_string213        @ DW_AT_name
	.byte	11                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0xfe:0x6 DW_TAG_enumerator
	.long	.Linfo_string214        @ DW_AT_name
	.byte	12                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x104:0x6 DW_TAG_enumerator
	.long	.Linfo_string215        @ DW_AT_name
	.byte	13                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x10a:0x6 DW_TAG_enumerator
	.long	.Linfo_string216        @ DW_AT_name
	.byte	14                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x110:0x6 DW_TAG_enumerator
	.long	.Linfo_string217        @ DW_AT_name
	.byte	15                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x116:0x6 DW_TAG_enumerator
	.long	.Linfo_string218        @ DW_AT_name
	.byte	16                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x11c:0x6 DW_TAG_enumerator
	.long	.Linfo_string219        @ DW_AT_name
	.byte	17                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x122:0x6 DW_TAG_enumerator
	.long	.Linfo_string220        @ DW_AT_name
	.byte	18                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x128:0x6 DW_TAG_enumerator
	.long	.Linfo_string221        @ DW_AT_name
	.byte	19                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x12e:0x6 DW_TAG_enumerator
	.long	.Linfo_string222        @ DW_AT_name
	.byte	20                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x134:0x6 DW_TAG_enumerator
	.long	.Linfo_string223        @ DW_AT_name
	.byte	21                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x13a:0x6 DW_TAG_enumerator
	.long	.Linfo_string224        @ DW_AT_name
	.byte	22                      @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x141:0x1 DW_TAG_pointer_type
	.byte	8                       @ Abbrev [8] 0x142:0x18 DW_TAG_structure_type
	.long	.Linfo_string325        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	27                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x14a:0xf DW_TAG_member
	.long	.Linfo_string324        @ DW_AT_name
	.long	321                     @ DW_AT_type
	.byte	27                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x15a:0xb DW_TAG_typedef
	.long	322                     @ DW_AT_type
	.long	.Linfo_string326        @ DW_AT_name
	.byte	27                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x165:0xb DW_TAG_typedef
	.long	346                     @ DW_AT_type
	.long	.Linfo_string328        @ DW_AT_name
	.byte	27                      @ DW_AT_decl_file
	.byte	30                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x170:0xb DW_TAG_typedef
	.long	34                      @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x17b:0xb DW_TAG_typedef
	.long	178                     @ DW_AT_type
	.long	.Linfo_string416        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x186:0x7 DW_TAG_base_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x18d:0x7 DW_TAG_base_type
	.long	.Linfo_string296        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x194:0x7 DW_TAG_base_type
	.long	.Linfo_string420        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x19b:0x7 DW_TAG_base_type
	.long	.Linfo_string273        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x1a2:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x1a9:0x7 DW_TAG_base_type
	.long	.Linfo_string247        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x1b0:0x7 DW_TAG_base_type
	.long	.Linfo_string279        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x1b7:0x7 DW_TAG_base_type
	.long	.Linfo_string428        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x1be:0x7 DW_TAG_base_type
	.long	.Linfo_string430        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x1c5:0x7 DW_TAG_base_type
	.long	.Linfo_string432        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x1cc:0x7 DW_TAG_base_type
	.long	.Linfo_string228        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x1d3:0xb DW_TAG_typedef
	.long	34                      @ DW_AT_type
	.long	.Linfo_string436        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x1de:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x1e5:0x5 DW_TAG_const_type
	.long	478                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x1ea:0x5 DW_TAG_pointer_type
	.long	485                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x1ef:0x5 DW_TAG_pointer_type
	.long	52                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x1f4:0x5 DW_TAG_pointer_type
	.long	390                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x1f9:0x5 DW_TAG_pointer_type
	.long	404                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x1fe:0x5 DW_TAG_pointer_type
	.long	171                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x203:0x5 DW_TAG_pointer_type
	.long	418                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x208:0x5 DW_TAG_pointer_type
	.long	432                     @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x20d:0x181 DW_TAG_structure_type
	.byte	16                      @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x211:0xf DW_TAG_member
	.long	.Linfo_string415        @ DW_AT_name
	.long	379                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	38                      @ Abbrev [38] 0x220:0x15e DW_TAG_union_type
	.byte	8                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	94                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x224:0xf DW_TAG_member
	.long	.Linfo_string417        @ DW_AT_name
	.long	390                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	96                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x233:0xf DW_TAG_member
	.long	.Linfo_string418        @ DW_AT_name
	.long	397                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	97                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x242:0xf DW_TAG_member
	.long	.Linfo_string419        @ DW_AT_name
	.long	404                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x251:0xf DW_TAG_member
	.long	.Linfo_string421        @ DW_AT_name
	.long	411                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x260:0xf DW_TAG_member
	.long	.Linfo_string422        @ DW_AT_name
	.long	171                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x26f:0xf DW_TAG_member
	.long	.Linfo_string423        @ DW_AT_name
	.long	34                      @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x27e:0xf DW_TAG_member
	.long	.Linfo_string424        @ DW_AT_name
	.long	418                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	102                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x28d:0xf DW_TAG_member
	.long	.Linfo_string425        @ DW_AT_name
	.long	425                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x29c:0xf DW_TAG_member
	.long	.Linfo_string426        @ DW_AT_name
	.long	432                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x2ab:0xf DW_TAG_member
	.long	.Linfo_string427        @ DW_AT_name
	.long	439                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x2ba:0xf DW_TAG_member
	.long	.Linfo_string429        @ DW_AT_name
	.long	446                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x2c9:0xf DW_TAG_member
	.long	.Linfo_string431        @ DW_AT_name
	.long	453                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x2d8:0xf DW_TAG_member
	.long	.Linfo_string433        @ DW_AT_name
	.long	460                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	110                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x2e7:0xf DW_TAG_member
	.long	.Linfo_string434        @ DW_AT_name
	.long	171                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x2f6:0xf DW_TAG_member
	.long	.Linfo_string435        @ DW_AT_name
	.long	467                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x305:0xf DW_TAG_member
	.long	.Linfo_string437        @ DW_AT_name
	.long	490                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x314:0xf DW_TAG_member
	.long	.Linfo_string438        @ DW_AT_name
	.long	495                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x323:0xf DW_TAG_member
	.long	.Linfo_string439        @ DW_AT_name
	.long	321                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x332:0xf DW_TAG_member
	.long	.Linfo_string440        @ DW_AT_name
	.long	500                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	120                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x341:0xf DW_TAG_member
	.long	.Linfo_string441        @ DW_AT_name
	.long	505                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	121                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x350:0xf DW_TAG_member
	.long	.Linfo_string442        @ DW_AT_name
	.long	510                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x35f:0xf DW_TAG_member
	.long	.Linfo_string443        @ DW_AT_name
	.long	515                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x36e:0xf DW_TAG_member
	.long	.Linfo_string444        @ DW_AT_name
	.long	520                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x37e:0xf DW_TAG_member
	.long	.Linfo_string414        @ DW_AT_name
	.long	544                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x38e:0xb DW_TAG_typedef
	.long	525                     @ DW_AT_type
	.long	.Linfo_string445        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	136                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x399:0x5 DW_TAG_pointer_type
	.long	910                     @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x39e:0x23 DW_TAG_structure_type
	.byte	8                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x3a2:0xf DW_TAG_member
	.long	.Linfo_string398        @ DW_AT_name
	.long	368                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x3b1:0xf DW_TAG_member
	.long	.Linfo_string339        @ DW_AT_name
	.long	921                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x3c1:0xb DW_TAG_typedef
	.long	926                     @ DW_AT_type
	.long	.Linfo_string446        @ DW_AT_name
	.byte	27                      @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x3cc:0x5 DW_TAG_pointer_type
	.long	961                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.L.debug_info_end15:
.L.debug_info_begin16:
	.long	1847                    @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x730 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string238        @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string104        @ DW_AT_comp_dir
	.byte	35                      @ Abbrev [35] 0x22:0x2be DW_TAG_subprogram
	.long	.Linfo_string239        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	736                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin77          @ DW_AT_low_pc
	.long	.Lfunc_end77            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	32                      @ Abbrev [32] 0x37:0xe DW_TAG_formal_parameter
	.long	.Linfo_string373        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	980                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	92
	.byte	32                      @ Abbrev [32] 0x45:0xe DW_TAG_formal_parameter
	.long	.Linfo_string397        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	1247                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	88
	.byte	32                      @ Abbrev [32] 0x53:0xe DW_TAG_formal_parameter
	.long	.Linfo_string414        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	1845                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	84
	.byte	33                      @ Abbrev [33] 0x61:0xe DW_TAG_variable
	.long	.Linfo_string449        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.long	980                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	80
	.byte	33                      @ Abbrev [33] 0x6f:0xe DW_TAG_variable
	.long	.Linfo_string481        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	76
	.byte	33                      @ Abbrev [33] 0x7d:0xe DW_TAG_variable
	.long	.Linfo_string482        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	72
	.byte	33                      @ Abbrev [33] 0x8b:0xe DW_TAG_variable
	.long	.Linfo_string483        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	86                      @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	68
	.byte	33                      @ Abbrev [33] 0x99:0xe DW_TAG_variable
	.long	.Linfo_string411        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	64
	.byte	33                      @ Abbrev [33] 0xa7:0xf DW_TAG_variable
	.long	.Linfo_string412        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\274\177"
	.byte	21                      @ Abbrev [21] 0xb6:0x229 DW_TAG_lexical_block
	.long	.Ldebug_range+1944      @ DW_AT_ranges
	.byte	33                      @ Abbrev [33] 0xbb:0xf DW_TAG_variable
	.long	.Linfo_string294        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	135                     @ DW_AT_decl_line
	.long	968                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\273\177"
	.byte	21                      @ Abbrev [21] 0xca:0x214 DW_TAG_lexical_block
	.long	.Ldebug_range+1920      @ DW_AT_ranges
	.byte	33                      @ Abbrev [33] 0xcf:0xf DW_TAG_variable
	.long	.Linfo_string409        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\264\177"
	.byte	33                      @ Abbrev [33] 0xde:0xf DW_TAG_variable
	.long	.Linfo_string450        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
	.long	1166                    @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	145
	.ascii	 "\260\177"
	.byte	21                      @ Abbrev [21] 0xed:0x24 DW_TAG_lexical_block
	.long	.Ldebug_range+1752      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0xf2:0xf DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	576                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	19                      @ Abbrev [19] 0x101:0xf DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	577                     @ DW_AT_decl_line
	.long	1166                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x111:0x32 DW_TAG_lexical_block
	.long	.Ltmp752                @ DW_AT_low_pc
	.long	.Ltmp758                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0x11a:0xf DW_TAG_variable
	.long	.Linfo_string484        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	980                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\324"
	.byte	20                      @ Abbrev [20] 0x129:0x19 DW_TAG_lexical_block
	.long	.Ltmp754                @ DW_AT_low_pc
	.long	.Ltmp758                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0x132:0xf DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	161                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\320"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x143:0x70 DW_TAG_lexical_block
	.long	.Ldebug_range+1824      @ DW_AT_ranges
	.byte	20                      @ Abbrev [20] 0x148:0x32 DW_TAG_lexical_block
	.long	.Ltmp773                @ DW_AT_low_pc
	.long	.Ltmp779                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0x151:0xf DW_TAG_variable
	.long	.Linfo_string484        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	225                     @ DW_AT_decl_line
	.long	980                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\314"
	.byte	20                      @ Abbrev [20] 0x160:0x19 DW_TAG_lexical_block
	.long	.Ltmp775                @ DW_AT_low_pc
	.long	.Ltmp779                @ DW_AT_high_pc
	.byte	33                      @ Abbrev [33] 0x169:0xf DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	231                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\310"
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x17a:0x38 DW_TAG_lexical_block
	.long	.Ldebug_range+1800      @ DW_AT_ranges
	.byte	33                      @ Abbrev [33] 0x17f:0xf DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	252                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\304"
	.byte	21                      @ Abbrev [21] 0x18e:0x23 DW_TAG_lexical_block
	.long	.Ldebug_range+1776      @ DW_AT_ranges
	.byte	33                      @ Abbrev [33] 0x193:0xf DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	252                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	3                       @ DW_AT_location
	.byte	125
	.asciz	 "\300"
	.byte	33                      @ Abbrev [33] 0x1a2:0xe DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	252                     @ DW_AT_decl_line
	.long	1794                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	60
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1b3:0x19 DW_TAG_lexical_block
	.long	.Ltmp784                @ DW_AT_low_pc
	.long	.Ltmp787                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x1bc:0xf DW_TAG_variable
	.long	.Linfo_string485        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	256                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	56
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1cc:0x94 DW_TAG_lexical_block
	.long	.Ltmp790                @ DW_AT_low_pc
	.long	.Ltmp807                @ DW_AT_high_pc
	.byte	21                      @ Abbrev [21] 0x1d5:0x71 DW_TAG_lexical_block
	.long	.Ldebug_range+1896      @ DW_AT_ranges
	.byte	20                      @ Abbrev [20] 0x1da:0x32 DW_TAG_lexical_block
	.long	.Ltmp792                @ DW_AT_low_pc
	.long	.Ltmp798                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x1e3:0xf DW_TAG_variable
	.long	.Linfo_string484        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	282                     @ DW_AT_decl_line
	.long	980                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	52
	.byte	20                      @ Abbrev [20] 0x1f2:0x19 DW_TAG_lexical_block
	.long	.Ltmp794                @ DW_AT_low_pc
	.long	.Ltmp798                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x1fb:0xf DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	288                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	48
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x20c:0x39 DW_TAG_lexical_block
	.long	.Ldebug_range+1872      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x211:0xf DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	310                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	44
	.byte	21                      @ Abbrev [21] 0x220:0x24 DW_TAG_lexical_block
	.long	.Ldebug_range+1848      @ DW_AT_ranges
	.byte	19                      @ Abbrev [19] 0x225:0xf DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	310                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	40
	.byte	19                      @ Abbrev [19] 0x234:0xf DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	310                     @ DW_AT_decl_line
	.long	1794                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	36
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x246:0x19 DW_TAG_lexical_block
	.long	.Ltmp802                @ DW_AT_low_pc
	.long	.Ltmp805                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x24f:0xf DW_TAG_variable
	.long	.Linfo_string486        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	314                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	32
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x260:0x7d DW_TAG_lexical_block
	.long	.Ltmp807                @ DW_AT_low_pc
	.long	.Ltmp830                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x269:0xf DW_TAG_variable
	.long	.Linfo_string415        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	327                     @ DW_AT_decl_line
	.long	1252                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	28
	.byte	20                      @ Abbrev [20] 0x278:0x19 DW_TAG_lexical_block
	.long	.Ltmp807                @ DW_AT_low_pc
	.long	.Ltmp823                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x281:0xf DW_TAG_variable
	.long	.Linfo_string133        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	331                     @ DW_AT_decl_line
	.long	736                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	24
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x291:0x4b DW_TAG_lexical_block
	.long	.Ltmp824                @ DW_AT_low_pc
	.long	.Ltmp829                @ DW_AT_high_pc
	.byte	20                      @ Abbrev [20] 0x29a:0x41 DW_TAG_lexical_block
	.long	.Ltmp826                @ DW_AT_low_pc
	.long	.Ltmp829                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x2a3:0xf DW_TAG_variable
	.long	.Linfo_string308        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	567                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	20
	.byte	20                      @ Abbrev [20] 0x2b2:0x28 DW_TAG_lexical_block
	.long	.Ltmp827                @ DW_AT_low_pc
	.long	.Ltmp828                @ DW_AT_high_pc
	.byte	19                      @ Abbrev [19] 0x2bb:0xf DW_TAG_variable
	.long	.Linfo_string455        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	567                     @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	16
	.byte	19                      @ Abbrev [19] 0x2ca:0xf DW_TAG_variable
	.long	.Linfo_string456        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.short	567                     @ DW_AT_decl_line
	.long	1794                    @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x2e0:0x7 DW_TAG_base_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	36                      @ Abbrev [36] 0x2e7:0x40 DW_TAG_subprogram
	.long	.Linfo_string200        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	814                     @ DW_AT_type
	.long	.Lfunc_begin78          @ DW_AT_low_pc
	.long	.Lfunc_end78            @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.byte	32                      @ Abbrev [32] 0x2fc:0xe DW_TAG_formal_parameter
	.long	.Linfo_string475        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	8
	.byte	32                      @ Abbrev [32] 0x30a:0xe DW_TAG_formal_parameter
	.long	.Linfo_string476        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.byte	33                      @ Abbrev [33] 0x318:0xe DW_TAG_variable
	.long	.Linfo_string479        @ DW_AT_name
	.byte	23                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	814                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x327:0x7 DW_TAG_base_type
	.long	.Linfo_string22         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x32e:0xb DW_TAG_typedef
	.long	807                     @ DW_AT_type
	.long	.Linfo_string139        @ DW_AT_name
	.byte	29                      @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	25                      @ Abbrev [25] 0x339:0x8f DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x33d:0x6 DW_TAG_enumerator
	.long	.Linfo_string202        @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x343:0x6 DW_TAG_enumerator
	.long	.Linfo_string203        @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x349:0x6 DW_TAG_enumerator
	.long	.Linfo_string204        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x34f:0x6 DW_TAG_enumerator
	.long	.Linfo_string205        @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x355:0x6 DW_TAG_enumerator
	.long	.Linfo_string206        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x35b:0x6 DW_TAG_enumerator
	.long	.Linfo_string207        @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x361:0x6 DW_TAG_enumerator
	.long	.Linfo_string208        @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x367:0x6 DW_TAG_enumerator
	.long	.Linfo_string209        @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x36d:0x6 DW_TAG_enumerator
	.long	.Linfo_string210        @ DW_AT_name
	.byte	8                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x373:0x6 DW_TAG_enumerator
	.long	.Linfo_string211        @ DW_AT_name
	.byte	9                       @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x379:0x6 DW_TAG_enumerator
	.long	.Linfo_string212        @ DW_AT_name
	.byte	10                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x37f:0x6 DW_TAG_enumerator
	.long	.Linfo_string213        @ DW_AT_name
	.byte	11                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x385:0x6 DW_TAG_enumerator
	.long	.Linfo_string214        @ DW_AT_name
	.byte	12                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x38b:0x6 DW_TAG_enumerator
	.long	.Linfo_string215        @ DW_AT_name
	.byte	13                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x391:0x6 DW_TAG_enumerator
	.long	.Linfo_string216        @ DW_AT_name
	.byte	14                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x397:0x6 DW_TAG_enumerator
	.long	.Linfo_string217        @ DW_AT_name
	.byte	15                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x39d:0x6 DW_TAG_enumerator
	.long	.Linfo_string218        @ DW_AT_name
	.byte	16                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x3a3:0x6 DW_TAG_enumerator
	.long	.Linfo_string219        @ DW_AT_name
	.byte	17                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x3a9:0x6 DW_TAG_enumerator
	.long	.Linfo_string220        @ DW_AT_name
	.byte	18                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x3af:0x6 DW_TAG_enumerator
	.long	.Linfo_string221        @ DW_AT_name
	.byte	19                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x3b5:0x6 DW_TAG_enumerator
	.long	.Linfo_string222        @ DW_AT_name
	.byte	20                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x3bb:0x6 DW_TAG_enumerator
	.long	.Linfo_string223        @ DW_AT_name
	.byte	21                      @ DW_AT_const_value
	.byte	26                      @ Abbrev [26] 0x3c1:0x6 DW_TAG_enumerator
	.long	.Linfo_string224        @ DW_AT_name
	.byte	22                      @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x3c8:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	3                       @ Abbrev [3] 0x3cf:0x5 DW_TAG_const_type
	.long	968                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x3d4:0x5 DW_TAG_pointer_type
	.long	975                     @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x3d9:0xaa DW_TAG_structure_type
	.byte	44                      @ DW_AT_byte_size
	.byte	29                      @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x3dd:0xf DW_TAG_member
	.long	.Linfo_string400        @ DW_AT_name
	.long	980                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	45                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x3ec:0xf DW_TAG_member
	.long	.Linfo_string401        @ DW_AT_name
	.long	980                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x3fb:0xf DW_TAG_member
	.long	.Linfo_string133        @ DW_AT_name
	.long	736                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	47                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x40a:0xf DW_TAG_member
	.long	.Linfo_string402        @ DW_AT_name
	.long	980                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x419:0xf DW_TAG_member
	.long	.Linfo_string403        @ DW_AT_name
	.long	980                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x428:0xf DW_TAG_member
	.long	.Linfo_string404        @ DW_AT_name
	.long	814                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x437:0xf DW_TAG_member
	.long	.Linfo_string405        @ DW_AT_name
	.long	980                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x446:0xf DW_TAG_member
	.long	.Linfo_string406        @ DW_AT_name
	.long	980                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	28
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x455:0xf DW_TAG_member
	.long	.Linfo_string407        @ DW_AT_name
	.long	814                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x464:0xf DW_TAG_member
	.long	.Linfo_string408        @ DW_AT_name
	.long	968                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	36
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x473:0xf DW_TAG_member
	.long	.Linfo_string409        @ DW_AT_name
	.long	814                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x483:0xb DW_TAG_typedef
	.long	985                     @ DW_AT_type
	.long	.Linfo_string410        @ DW_AT_name
	.byte	29                      @ DW_AT_decl_file
	.byte	57                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x48e:0x5 DW_TAG_pointer_type
	.long	1155                    @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x493:0x41 DW_TAG_structure_type
	.byte	16                      @ DW_AT_byte_size
	.byte	29                      @ DW_AT_decl_file
	.byte	60                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x497:0xf DW_TAG_member
	.long	.Linfo_string398        @ DW_AT_name
	.long	814                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x4a6:0xf DW_TAG_member
	.long	.Linfo_string399        @ DW_AT_name
	.long	1166                    @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x4b5:0xf DW_TAG_member
	.long	.Linfo_string411        @ DW_AT_name
	.long	814                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x4c4:0xf DW_TAG_member
	.long	.Linfo_string412        @ DW_AT_name
	.long	814                     @ DW_AT_type
	.byte	29                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	12
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x4d4:0xb DW_TAG_typedef
	.long	1171                    @ DW_AT_type
	.long	.Linfo_string413        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x4df:0x5 DW_TAG_pointer_type
	.long	1236                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x4e4:0xb DW_TAG_typedef
	.long	825                     @ DW_AT_type
	.long	.Linfo_string416        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.byte	2                       @ Abbrev [2] 0x4ef:0x7 DW_TAG_base_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x4f6:0x7 DW_TAG_base_type
	.long	.Linfo_string296        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x4fd:0x7 DW_TAG_base_type
	.long	.Linfo_string420        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x504:0x7 DW_TAG_base_type
	.long	.Linfo_string273        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x50b:0x7 DW_TAG_base_type
	.long	.Linfo_string28         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x512:0x7 DW_TAG_base_type
	.long	.Linfo_string247        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x519:0x7 DW_TAG_base_type
	.long	.Linfo_string279        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x520:0x7 DW_TAG_base_type
	.long	.Linfo_string428        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x527:0x7 DW_TAG_base_type
	.long	.Linfo_string430        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x52e:0x7 DW_TAG_base_type
	.long	.Linfo_string432        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x535:0x7 DW_TAG_base_type
	.long	.Linfo_string228        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x53c:0xb DW_TAG_typedef
	.long	807                     @ DW_AT_type
	.long	.Linfo_string436        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x547:0xb DW_TAG_typedef
	.long	807                     @ DW_AT_type
	.long	.Linfo_string236        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x552:0x5 DW_TAG_const_type
	.long	1351                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x557:0x5 DW_TAG_pointer_type
	.long	1362                    @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x55c:0x1 DW_TAG_pointer_type
	.byte	4                       @ Abbrev [4] 0x55d:0x5 DW_TAG_pointer_type
	.long	1263                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x562:0x5 DW_TAG_pointer_type
	.long	1277                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x567:0x5 DW_TAG_pointer_type
	.long	736                     @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x56c:0x5 DW_TAG_pointer_type
	.long	1291                    @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x571:0x5 DW_TAG_pointer_type
	.long	1305                    @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x576:0x181 DW_TAG_structure_type
	.byte	16                      @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	91                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x57a:0xf DW_TAG_member
	.long	.Linfo_string415        @ DW_AT_name
	.long	1252                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	93                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	38                      @ Abbrev [38] 0x589:0x15e DW_TAG_union_type
	.byte	8                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	94                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x58d:0xf DW_TAG_member
	.long	.Linfo_string417        @ DW_AT_name
	.long	1263                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	96                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x59c:0xf DW_TAG_member
	.long	.Linfo_string418        @ DW_AT_name
	.long	1270                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	97                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x5ab:0xf DW_TAG_member
	.long	.Linfo_string419        @ DW_AT_name
	.long	1277                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x5ba:0xf DW_TAG_member
	.long	.Linfo_string421        @ DW_AT_name
	.long	1284                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x5c9:0xf DW_TAG_member
	.long	.Linfo_string422        @ DW_AT_name
	.long	736                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x5d8:0xf DW_TAG_member
	.long	.Linfo_string423        @ DW_AT_name
	.long	807                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x5e7:0xf DW_TAG_member
	.long	.Linfo_string424        @ DW_AT_name
	.long	1291                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	102                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x5f6:0xf DW_TAG_member
	.long	.Linfo_string425        @ DW_AT_name
	.long	1298                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x605:0xf DW_TAG_member
	.long	.Linfo_string426        @ DW_AT_name
	.long	1305                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x614:0xf DW_TAG_member
	.long	.Linfo_string427        @ DW_AT_name
	.long	1312                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x623:0xf DW_TAG_member
	.long	.Linfo_string429        @ DW_AT_name
	.long	1319                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x632:0xf DW_TAG_member
	.long	.Linfo_string431        @ DW_AT_name
	.long	1326                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x641:0xf DW_TAG_member
	.long	.Linfo_string433        @ DW_AT_name
	.long	1333                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	110                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x650:0xf DW_TAG_member
	.long	.Linfo_string434        @ DW_AT_name
	.long	736                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	111                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x65f:0xf DW_TAG_member
	.long	.Linfo_string435        @ DW_AT_name
	.long	1340                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x66e:0xf DW_TAG_member
	.long	.Linfo_string437        @ DW_AT_name
	.long	980                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x67d:0xf DW_TAG_member
	.long	.Linfo_string438        @ DW_AT_name
	.long	1367                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x68c:0xf DW_TAG_member
	.long	.Linfo_string439        @ DW_AT_name
	.long	1372                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x69b:0xf DW_TAG_member
	.long	.Linfo_string440        @ DW_AT_name
	.long	1373                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	120                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x6aa:0xf DW_TAG_member
	.long	.Linfo_string441        @ DW_AT_name
	.long	1378                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	121                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x6b9:0xf DW_TAG_member
	.long	.Linfo_string442        @ DW_AT_name
	.long	1383                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	122                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x6c8:0xf DW_TAG_member
	.long	.Linfo_string443        @ DW_AT_name
	.long	1388                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x6d7:0xf DW_TAG_member
	.long	.Linfo_string444        @ DW_AT_name
	.long	1393                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x6e7:0xf DW_TAG_member
	.long	.Linfo_string414        @ DW_AT_name
	.long	1417                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x6f7:0xb DW_TAG_typedef
	.long	1398                    @ DW_AT_type
	.long	.Linfo_string445        @ DW_AT_name
	.byte	24                      @ DW_AT_decl_file
	.byte	136                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x702:0x5 DW_TAG_pointer_type
	.long	1783                    @ DW_AT_type
	.byte	37                      @ Abbrev [37] 0x707:0x23 DW_TAG_structure_type
	.byte	8                       @ DW_AT_byte_size
	.byte	24                      @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0x70b:0xf DW_TAG_member
	.long	.Linfo_string398        @ DW_AT_name
	.long	814                     @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	9                       @ Abbrev [9] 0x71a:0xf DW_TAG_member
	.long	.Linfo_string339        @ DW_AT_name
	.long	1794                    @ DW_AT_type
	.byte	24                      @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	2                       @ DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x72a:0xb DW_TAG_typedef
	.long	1799                    @ DW_AT_type
	.long	.Linfo_string446        @ DW_AT_name
	.byte	28                      @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x735:0x5 DW_TAG_pointer_type
	.long	1834                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.L.debug_info_end16:
	.section	.debug_abbrev,"",%progbits
.L.debug_abbrev_begin:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	16                      @ DW_AT_stmt_list
	.byte	6                       @ DW_FORM_data4
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	10                      @ DW_FORM_block1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	13                      @ DW_AT_bit_size
	.byte	11                      @ DW_FORM_data1
	.byte	12                      @ DW_AT_bit_offset
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	10                      @ DW_FORM_block1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	47                      @ DW_AT_upper_bound
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	47                      @ DW_AT_upper_bound
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	85                      @ DW_AT_ranges
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	27                      @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	29                      @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	56                      @ DW_AT_data_member_location
	.byte	10                      @ DW_FORM_block1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	32                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	33                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
	.byte	53                      @ DW_TAG_volatile_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	35                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	36                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	37                      @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
	.byte	23                      @ DW_TAG_union_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	39                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	40                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	41                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
.L.debug_abbrev_end:
	.section	.debug_aranges,"",%progbits
	.section	.debug_ranges,"",%progbits
	.long	.Ltmp17
	.long	.Ltmp20
	.long	.Ltmp22
	.long	.Ltmp26
	.long	0
	.long	0
	.long	.Ltmp16
	.long	.Ltmp20
	.long	.Ltmp21
	.long	.Ltmp26
	.long	0
	.long	0
	.long	.Ltmp44
	.long	.Ltmp45
	.long	.Ltmp46
	.long	.Ltmp47
	.long	0
	.long	0
	.long	.Ltmp42
	.long	.Ltmp47
	.long	.Ltmp48
	.long	.Ltmp49
	.long	0
	.long	0
	.long	.Ltmp227
	.long	.Ltmp233
	.long	.Ltmp238
	.long	.Ltmp239
	.long	0
	.long	0
	.long	.Ltmp227
	.long	.Ltmp240
	.long	.Ltmp330
	.long	.Ltmp331
	.long	0
	.long	0
	.long	.Ltmp268
	.long	.Ltmp272
	.long	.Ltmp273
	.long	.Ltmp275
	.long	0
	.long	0
	.long	.Ltmp247
	.long	.Ltmp321
	.long	.Ltmp324
	.long	.Ltmp325
	.long	0
	.long	0
	.long	.Ltmp356
	.long	.Ltmp358
	.long	.Ltmp365
	.long	.Ltmp366
	.long	0
	.long	0
	.long	.Ltmp464
	.long	.Ltmp472
	.long	.Ltmp473
	.long	.Ltmp475
	.long	0
	.long	0
	.long	.Ltmp500
	.long	.Ltmp501
	.long	.Ltmp502
	.long	.Ltmp503
	.long	0
	.long	0
	.long	.Ltmp517
	.long	.Ltmp518
	.long	.Ltmp548
	.long	.Ltmp549
	.long	0
	.long	0
	.long	.Ltmp516
	.long	.Ltmp518
	.long	.Ltmp548
	.long	.Ltmp550
	.long	0
	.long	0
	.long	.Ltmp525
	.long	.Ltmp527
	.long	.Ltmp649
	.long	.Ltmp650
	.long	0
	.long	0
	.long	.Ltmp524
	.long	.Ltmp527
	.long	.Ltmp645
	.long	.Ltmp646
	.long	.Ltmp649
	.long	.Ltmp651
	.long	0
	.long	0
	.long	.Ltmp665
	.long	.Ltmp668
	.long	.Ltmp670
	.long	.Ltmp674
	.long	.Ltmp718
	.long	.Ltmp719
	.long	0
	.long	0
	.long	.Ltmp659
	.long	.Ltmp660
	.long	.Ltmp661
	.long	.Ltmp674
	.long	.Ltmp718
	.long	.Ltmp719
	.long	0
	.long	0
	.long	.Ltmp677
	.long	.Ltmp678
	.long	.Ltmp679
	.long	.Ltmp681
	.long	0
	.long	0
	.long	.Ltmp522
	.long	.Ltmp527
	.long	.Ltmp645
	.long	.Ltmp646
	.long	.Ltmp649
	.long	.Ltmp688
	.long	.Ltmp718
	.long	.Ltmp719
	.long	0
	.long	0
	.long	.Ltmp547
	.long	.Ltmp548
	.long	.Ltmp552
	.long	.Ltmp553
	.long	0
	.long	0
	.long	.Ltmp554
	.long	.Ltmp555
	.long	.Ltmp643
	.long	.Ltmp644
	.long	0
	.long	0
	.long	.Ltmp554
	.long	.Ltmp555
	.long	.Ltmp642
	.long	.Ltmp644
	.long	0
	.long	0
	.long	.Ltmp554
	.long	.Ltmp555
	.long	.Ltmp641
	.long	.Ltmp644
	.long	0
	.long	0
	.long	.Ltmp558
	.long	.Ltmp560
	.long	.Ltmp592
	.long	.Ltmp593
	.long	.Ltmp601
	.long	.Ltmp602
	.long	.Ltmp604
	.long	.Ltmp605
	.long	.Ltmp625
	.long	.Ltmp626
	.long	.Ltmp629
	.long	.Ltmp630
	.long	.Ltmp631
	.long	.Ltmp632
	.long	.Ltmp702
	.long	.Ltmp703
	.long	0
	.long	0
	.long	.Ltmp560
	.long	.Ltmp562
	.long	.Ltmp593
	.long	.Ltmp594
	.long	.Ltmp703
	.long	.Ltmp704
	.long	0
	.long	0
	.long	.Ltmp562
	.long	.Ltmp564
	.long	.Ltmp594
	.long	.Ltmp595
	.long	.Ltmp704
	.long	.Ltmp705
	.long	0
	.long	0
	.long	.Ltmp564
	.long	.Ltmp566
	.long	.Ltmp595
	.long	.Ltmp596
	.long	.Ltmp705
	.long	.Ltmp706
	.long	0
	.long	0
	.long	.Ltmp566
	.long	.Ltmp568
	.long	.Ltmp596
	.long	.Ltmp597
	.long	.Ltmp706
	.long	.Ltmp707
	.long	0
	.long	0
	.long	.Ltmp568
	.long	.Ltmp570
	.long	.Ltmp597
	.long	.Ltmp598
	.long	.Ltmp707
	.long	.Ltmp708
	.long	0
	.long	0
	.long	.Ltmp570
	.long	.Ltmp572
	.long	.Ltmp598
	.long	.Ltmp599
	.long	.Ltmp708
	.long	.Ltmp709
	.long	0
	.long	0
	.long	.Ltmp572
	.long	.Ltmp574
	.long	.Ltmp599
	.long	.Ltmp600
	.long	.Ltmp603
	.long	.Ltmp604
	.long	.Ltmp709
	.long	.Ltmp710
	.long	0
	.long	0
	.long	.Ltmp574
	.long	.Ltmp576
	.long	.Ltmp605
	.long	.Ltmp606
	.long	.Ltmp609
	.long	.Ltmp610
	.long	.Ltmp613
	.long	.Ltmp614
	.long	.Ltmp617
	.long	.Ltmp618
	.long	.Ltmp710
	.long	.Ltmp711
	.long	0
	.long	0
	.long	.Ltmp576
	.long	.Ltmp578
	.long	.Ltmp606
	.long	.Ltmp607
	.long	.Ltmp711
	.long	.Ltmp712
	.long	0
	.long	0
	.long	.Ltmp578
	.long	.Ltmp580
	.long	.Ltmp607
	.long	.Ltmp608
	.long	.Ltmp611
	.long	.Ltmp612
	.long	.Ltmp712
	.long	.Ltmp713
	.long	0
	.long	0
	.long	.Ltmp580
	.long	.Ltmp582
	.long	.Ltmp612
	.long	.Ltmp613
	.long	.Ltmp615
	.long	.Ltmp616
	.long	.Ltmp713
	.long	.Ltmp714
	.long	0
	.long	0
	.long	.Ltmp582
	.long	.Ltmp584
	.long	.Ltmp618
	.long	.Ltmp619
	.long	.Ltmp624
	.long	.Ltmp625
	.long	.Ltmp628
	.long	.Ltmp629
	.long	.Ltmp714
	.long	.Ltmp715
	.long	0
	.long	0
	.long	.Ltmp584
	.long	.Ltmp586
	.long	.Ltmp619
	.long	.Ltmp620
	.long	.Ltmp715
	.long	.Ltmp716
	.long	0
	.long	0
	.long	.Ltmp586
	.long	.Ltmp588
	.long	.Ltmp620
	.long	.Ltmp621
	.long	.Ltmp716
	.long	.Ltmp717
	.long	0
	.long	0
	.long	.Ltmp588
	.long	.Ltmp590
	.long	.Ltmp621
	.long	.Ltmp622
	.long	.Ltmp717
	.long	.Ltmp718
	.long	0
	.long	0
	.long	.Ltmp590
	.long	.Ltmp592
	.long	.Ltmp622
	.long	.Ltmp623
	.long	.Ltmp627
	.long	.Ltmp628
	.long	0
	.long	0
	.long	.Ltmp558
	.long	.Ltmp630
	.long	.Ltmp631
	.long	.Ltmp632
	.long	.Ltmp689
	.long	.Ltmp690
	.long	.Ltmp702
	.long	.Ltmp718
	.long	0
	.long	0
	.long	.Ltmp638
	.long	.Ltmp639
	.long	.Ltmp644
	.long	.Ltmp645
	.long	0
	.long	0
	.long	.Ltmp637
	.long	.Ltmp639
	.long	.Ltmp644
	.long	.Ltmp645
	.long	0
	.long	0
	.long	.Ltmp636
	.long	.Ltmp640
	.long	.Ltmp644
	.long	.Ltmp645
	.long	0
	.long	0
	.long	.Ltmp634
	.long	.Ltmp640
	.long	.Ltmp644
	.long	.Ltmp645
	.long	0
	.long	0
	.long	.Ltmp550
	.long	.Ltmp551
	.long	.Ltmp554
	.long	.Ltmp645
	.long	.Ltmp646
	.long	.Ltmp647
	.long	.Ltmp688
	.long	.Ltmp690
	.long	.Ltmp693
	.long	.Ltmp694
	.long	.Ltmp702
	.long	.Ltmp718
	.long	.Ltmp719
	.long	.Ltmp720
	.long	0
	.long	0
	.long	.Ltmp550
	.long	.Ltmp551
	.long	.Ltmp554
	.long	.Ltmp645
	.long	.Ltmp646
	.long	.Ltmp647
	.long	.Ltmp688
	.long	.Ltmp690
	.long	.Ltmp693
	.long	.Ltmp694
	.long	.Ltmp702
	.long	.Ltmp718
	.long	.Ltmp719
	.long	.Ltmp720
	.long	0
	.long	0
	.long	.Ltmp527
	.long	.Ltmp548
	.long	.Ltmp550
	.long	.Ltmp551
	.long	.Ltmp552
	.long	.Ltmp645
	.long	.Ltmp646
	.long	.Ltmp649
	.long	.Ltmp688
	.long	.Ltmp690
	.long	.Ltmp693
	.long	.Ltmp694
	.long	.Ltmp702
	.long	.Ltmp718
	.long	.Ltmp719
	.long	.Ltmp720
	.long	0
	.long	0
	.long	.Ltmp518
	.long	.Ltmp548
	.long	.Ltmp550
	.long	.Ltmp690
	.long	.Ltmp692
	.long	.Ltmp694
	.long	.Ltmp702
	.long	.Ltmp720
	.long	0
	.long	0
	.long	.Ltmp510
	.long	.Ltmp690
	.long	.Ltmp692
	.long	.Ltmp694
	.long	.Ltmp702
	.long	.Ltmp720
	.long	0
	.long	0
	.long	.Ltmp507
	.long	.Ltmp508
	.long	.Ltmp509
	.long	.Ltmp690
	.long	.Ltmp692
	.long	.Ltmp694
	.long	.Ltmp702
	.long	.Ltmp720
	.long	0
	.long	0
	.long	.Ltmp691
	.long	.Ltmp692
	.long	.Ltmp697
	.long	.Ltmp698
	.long	0
	.long	0
	.long	.Ltmp497
	.long	.Ltmp499
	.long	.Ltmp500
	.long	.Ltmp694
	.long	.Ltmp696
	.long	.Ltmp701
	.long	.Ltmp702
	.long	.Ltmp720
	.long	0
	.long	0
	.long	.Ltmp747
	.long	.Ltmp748
	.long	.Ltmp831
	.long	.Ltmp832
	.long	0
	.long	0
	.long	.Ltmp782
	.long	.Ltmp783
	.long	.Ltmp787
	.long	.Ltmp788
	.long	0
	.long	0
	.long	.Ltmp781
	.long	.Ltmp783
	.long	.Ltmp787
	.long	.Ltmp789
	.long	0
	.long	0
	.long	.Ltmp772
	.long	.Ltmp783
	.long	.Ltmp787
	.long	.Ltmp789
	.long	0
	.long	0
	.long	.Ltmp801
	.long	.Ltmp802
	.long	.Ltmp805
	.long	.Ltmp806
	.long	0
	.long	0
	.long	.Ltmp800
	.long	.Ltmp802
	.long	.Ltmp805
	.long	.Ltmp807
	.long	0
	.long	0
	.long	.Ltmp791
	.long	.Ltmp802
	.long	.Ltmp805
	.long	.Ltmp807
	.long	0
	.long	0
	.long	.Ltmp747
	.long	.Ltmp748
	.long	.Ltmp750
	.long	.Ltmp832
	.long	0
	.long	0
	.long	.Ltmp747
	.long	.Ltmp748
	.long	.Ltmp749
	.long	.Ltmp832
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	 "clang version 3.3.1 (tags/RELEASE_33/final)"
.Linfo_string1:
	.asciz	 "../../src/fmt.c"
.Linfo_string2:
	.asciz	 "/home/lynn/coreutils-6.11/obj-llvm/src"
.Linfo_string3:
	.asciz	 "program_name"
.Linfo_string4:
	.asciz	 "char"
.Linfo_string5:
	.asciz	 "crown"
.Linfo_string6:
	.asciz	 "_Bool"
.Linfo_string7:
	.asciz	 "tagged"
.Linfo_string8:
	.asciz	 "split"
.Linfo_string9:
	.asciz	 "uniform"
.Linfo_string10:
	.asciz	 "prefix"
.Linfo_string11:
	.asciz	 "max_width"
.Linfo_string12:
	.asciz	 "int"
.Linfo_string13:
	.asciz	 "prefix_full_length"
.Linfo_string14:
	.asciz	 "prefix_lead_space"
.Linfo_string15:
	.asciz	 "prefix_length"
.Linfo_string16:
	.asciz	 "best_width"
.Linfo_string17:
	.asciz	 "word_limit"
.Linfo_string18:
	.asciz	 "text"
.Linfo_string19:
	.asciz	 "length"
.Linfo_string20:
	.asciz	 "space"
.Linfo_string21:
	.asciz	 "paren"
.Linfo_string22:
	.asciz	 "unsigned int"
.Linfo_string23:
	.asciz	 "period"
.Linfo_string24:
	.asciz	 "punct"
.Linfo_string25:
	.asciz	 "final"
.Linfo_string26:
	.asciz	 "line_length"
.Linfo_string27:
	.asciz	 "best_cost"
.Linfo_string28:
	.asciz	 "long int"
.Linfo_string29:
	.asciz	 "COST"
.Linfo_string30:
	.asciz	 "next_break"
.Linfo_string31:
	.asciz	 "Word"
.Linfo_string32:
	.asciz	 "WORD"
.Linfo_string33:
	.asciz	 "first_indent"
.Linfo_string34:
	.asciz	 "unused_word_type"
.Linfo_string35:
	.asciz	 "last_line_length"
.Linfo_string36:
	.asciz	 "prefix_indent"
.Linfo_string37:
	.asciz	 "out_column"
.Linfo_string38:
	.asciz	 "wptr"
.Linfo_string39:
	.asciz	 "parabuf"
.Linfo_string40:
	.asciz	 "in_column"
.Linfo_string41:
	.asciz	 "next_prefix_indent"
.Linfo_string42:
	.asciz	 "next_char"
.Linfo_string43:
	.asciz	 "other_indent"
.Linfo_string44:
	.asciz	 "tabs"
.Linfo_string45:
	.asciz	 "long_options"
.Linfo_string46:
	.asciz	 "name"
.Linfo_string47:
	.asciz	 "has_arg"
.Linfo_string48:
	.asciz	 "flag"
.Linfo_string49:
	.asciz	 "val"
.Linfo_string50:
	.asciz	 "option"
.Linfo_string51:
	.asciz	 "usage"
.Linfo_string52:
	.asciz	 "main"
.Linfo_string53:
	.asciz	 "fmt"
.Linfo_string54:
	.asciz	 "put_paragraph"
.Linfo_string55:
	.asciz	 "put_line"
.Linfo_string56:
	.asciz	 "put_word"
.Linfo_string57:
	.asciz	 "put_space"
.Linfo_string58:
	.asciz	 "fmt_paragraph"
.Linfo_string59:
	.asciz	 "base_cost"
.Linfo_string60:
	.asciz	 "line_cost"
.Linfo_string61:
	.asciz	 "get_paragraph"
.Linfo_string62:
	.asciz	 "same_para"
.Linfo_string63:
	.asciz	 "set_other_indent"
.Linfo_string64:
	.asciz	 "get_line"
.Linfo_string65:
	.asciz	 "get_space"
.Linfo_string66:
	.asciz	 "check_punctuation"
.Linfo_string67:
	.asciz	 "flush_paragraph"
.Linfo_string68:
	.asciz	 "copy_rest"
.Linfo_string69:
	.asciz	 "get_prefix"
.Linfo_string70:
	.asciz	 "set_prefix"
.Linfo_string71:
	.asciz	 "emit_bug_reporting_address"
.Linfo_string72:
	.asciz	 "__LC_CTYPE"
.Linfo_string73:
	.asciz	 "__LC_NUMERIC"
.Linfo_string74:
	.asciz	 "__LC_TIME"
.Linfo_string75:
	.asciz	 "__LC_COLLATE"
.Linfo_string76:
	.asciz	 "__LC_MONETARY"
.Linfo_string77:
	.asciz	 "__LC_MESSAGES"
.Linfo_string78:
	.asciz	 "__LC_ALL"
.Linfo_string79:
	.asciz	 "__LC_PAPER"
.Linfo_string80:
	.asciz	 "__LC_NAME"
.Linfo_string81:
	.asciz	 "__LC_ADDRESS"
.Linfo_string82:
	.asciz	 "__LC_TELEPHONE"
.Linfo_string83:
	.asciz	 "__LC_MEASUREMENT"
.Linfo_string84:
	.asciz	 "__LC_IDENTIFICATION"
.Linfo_string85:
	.asciz	 "LONGINT_OK"
.Linfo_string86:
	.asciz	 "LONGINT_OVERFLOW"
.Linfo_string87:
	.asciz	 "LONGINT_INVALID_SUFFIX_CHAR"
.Linfo_string88:
	.asciz	 "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.Linfo_string89:
	.asciz	 "LONGINT_INVALID"
.Linfo_string90:
	.asciz	 "strtol_error"
.Linfo_string91:
	.asciz	 "_ISupper"
.Linfo_string92:
	.asciz	 "_ISlower"
.Linfo_string93:
	.asciz	 "_ISalpha"
.Linfo_string94:
	.asciz	 "_ISdigit"
.Linfo_string95:
	.asciz	 "_ISxdigit"
.Linfo_string96:
	.asciz	 "_ISspace"
.Linfo_string97:
	.asciz	 "_ISprint"
.Linfo_string98:
	.asciz	 "_ISgraph"
.Linfo_string99:
	.asciz	 "_ISblank"
.Linfo_string100:
	.asciz	 "_IScntrl"
.Linfo_string101:
	.asciz	 "_ISpunct"
.Linfo_string102:
	.asciz	 "_ISalnum"
.Linfo_string103:
	.asciz	 "../../lib/version-etc.c"
.Linfo_string104:
	.asciz	 "/home/lynn/coreutils-6.11/obj-llvm/lib"
.Linfo_string105:
	.asciz	 "version_etc_va"
.Linfo_string106:
	.asciz	 "version_etc"
.Linfo_string107:
	.asciz	 "COPYRIGHT_YEAR"
.Linfo_string108:
	.asciz	 "../../lib/version-etc-fsf.c"
.Linfo_string109:
	.asciz	 "version_etc_copyright"
.Linfo_string110:
	.asciz	 "../../lib/closeout.c"
.Linfo_string111:
	.asciz	 "file_name"
.Linfo_string112:
	.asciz	 "close_stdout_set_file_name"
.Linfo_string113:
	.asciz	 "close_stdout"
.Linfo_string114:
	.asciz	 "../../lib/exitfail.c"
.Linfo_string115:
	.asciz	 "exit_failure"
.Linfo_string116:
	.asciz	 "../../lib/quote.c"
.Linfo_string117:
	.asciz	 "quote_n"
.Linfo_string118:
	.asciz	 "quote"
.Linfo_string119:
	.asciz	 "literal_quoting_style"
.Linfo_string120:
	.asciz	 "shell_quoting_style"
.Linfo_string121:
	.asciz	 "shell_always_quoting_style"
.Linfo_string122:
	.asciz	 "c_quoting_style"
.Linfo_string123:
	.asciz	 "c_maybe_quoting_style"
.Linfo_string124:
	.asciz	 "escape_quoting_style"
.Linfo_string125:
	.asciz	 "locale_quoting_style"
.Linfo_string126:
	.asciz	 "clocale_quoting_style"
.Linfo_string127:
	.asciz	 "quoting_style"
.Linfo_string128:
	.asciz	 "../../lib/quotearg.c"
.Linfo_string129:
	.asciz	 "quoting_style_args"
.Linfo_string130:
	.asciz	 "quoting_style_vals"
.Linfo_string131:
	.asciz	 "default_quoting_options"
.Linfo_string132:
	.asciz	 "style"
.Linfo_string133:
	.asciz	 "flags"
.Linfo_string134:
	.asciz	 "quote_these_too"
.Linfo_string135:
	.asciz	 "quoting_options"
.Linfo_string136:
	.asciz	 "slot0"
.Linfo_string137:
	.asciz	 "slotvec0"
.Linfo_string138:
	.asciz	 "size"
.Linfo_string139:
	.asciz	 "size_t"
.Linfo_string140:
	.asciz	 "slotvec"
.Linfo_string141:
	.asciz	 "nslots"
.Linfo_string142:
	.asciz	 "clone_quoting_options"
.Linfo_string143:
	.asciz	 "get_quoting_style"
.Linfo_string144:
	.asciz	 "set_quoting_style"
.Linfo_string145:
	.asciz	 "set_char_quoting"
.Linfo_string146:
	.asciz	 "set_quoting_flags"
.Linfo_string147:
	.asciz	 "quotearg_buffer"
.Linfo_string148:
	.asciz	 "quotearg_alloc"
.Linfo_string149:
	.asciz	 "quotearg_alloc_mem"
.Linfo_string150:
	.asciz	 "quotearg_free"
.Linfo_string151:
	.asciz	 "quotearg_n"
.Linfo_string152:
	.asciz	 "quotearg_n_mem"
.Linfo_string153:
	.asciz	 "quotearg"
.Linfo_string154:
	.asciz	 "quotearg_mem"
.Linfo_string155:
	.asciz	 "quotearg_n_style"
.Linfo_string156:
	.asciz	 "quotearg_n_style_mem"
.Linfo_string157:
	.asciz	 "quotearg_style"
.Linfo_string158:
	.asciz	 "quotearg_style_mem"
.Linfo_string159:
	.asciz	 "quotearg_char_mem"
.Linfo_string160:
	.asciz	 "quotearg_char"
.Linfo_string161:
	.asciz	 "quotearg_colon"
.Linfo_string162:
	.asciz	 "quotearg_colon_mem"
.Linfo_string163:
	.asciz	 "quoting_options_from_style"
.Linfo_string164:
	.asciz	 "quotearg_n_options"
.Linfo_string165:
	.asciz	 "quotearg_buffer_restyled"
.Linfo_string166:
	.asciz	 "gettext_quote"
.Linfo_string167:
	.asciz	 "QA_ELIDE_NULL_BYTES"
.Linfo_string168:
	.asciz	 "QA_ELIDE_OUTER_QUOTES"
.Linfo_string169:
	.asciz	 "QA_SPLIT_TRIGRAPHS"
.Linfo_string170:
	.asciz	 "quoting_flags"
.Linfo_string171:
	.asciz	 "../../lib/vfprintf.c"
.Linfo_string172:
	.asciz	 "rpl_vfprintf"
.Linfo_string173:
	.asciz	 "../../lib/xmalloc.c"
.Linfo_string174:
	.asciz	 "xnmalloc"
.Linfo_string175:
	.asciz	 "xnrealloc"
.Linfo_string176:
	.asciz	 "x2nrealloc"
.Linfo_string177:
	.asciz	 "xcharalloc"
.Linfo_string178:
	.asciz	 "xmalloc"
.Linfo_string179:
	.asciz	 "xrealloc"
.Linfo_string180:
	.asciz	 "x2realloc"
.Linfo_string181:
	.asciz	 "xzalloc"
.Linfo_string182:
	.asciz	 "xcalloc"
.Linfo_string183:
	.asciz	 "xmemdup"
.Linfo_string184:
	.asciz	 "xstrdup"
.Linfo_string185:
	.asciz	 "DEFAULT_MXFAST"
.Linfo_string186:
	.asciz	 "../../lib/xstrtoul.c"
.Linfo_string187:
	.asciz	 "xstrtoul"
.Linfo_string188:
	.asciz	 "bkm_scale_by_power"
.Linfo_string189:
	.asciz	 "bkm_scale"
.Linfo_string190:
	.asciz	 "../../lib/fseterr.c"
.Linfo_string191:
	.asciz	 "fseterr"
.Linfo_string192:
	.asciz	 "../../lib/xalloc-die.c"
.Linfo_string193:
	.asciz	 "xalloc_die"
.Linfo_string194:
	.asciz	 "../../lib/close-stream.c"
.Linfo_string195:
	.asciz	 "close_stream"
.Linfo_string196:
	.asciz	 "../../lib/vasnprintf.c"
.Linfo_string197:
	.asciz	 "vasnprintf"
.Linfo_string198:
	.asciz	 "xmax"
.Linfo_string199:
	.asciz	 "is_infinitel"
.Linfo_string200:
	.asciz	 "xsum"
.Linfo_string201:
	.asciz	 "xsum4"
.Linfo_string202:
	.asciz	 "TYPE_NONE"
.Linfo_string203:
	.asciz	 "TYPE_SCHAR"
.Linfo_string204:
	.asciz	 "TYPE_UCHAR"
.Linfo_string205:
	.asciz	 "TYPE_SHORT"
.Linfo_string206:
	.asciz	 "TYPE_USHORT"
.Linfo_string207:
	.asciz	 "TYPE_INT"
.Linfo_string208:
	.asciz	 "TYPE_UINT"
.Linfo_string209:
	.asciz	 "TYPE_LONGINT"
.Linfo_string210:
	.asciz	 "TYPE_ULONGINT"
.Linfo_string211:
	.asciz	 "TYPE_LONGLONGINT"
.Linfo_string212:
	.asciz	 "TYPE_ULONGLONGINT"
.Linfo_string213:
	.asciz	 "TYPE_DOUBLE"
.Linfo_string214:
	.asciz	 "TYPE_LONGDOUBLE"
.Linfo_string215:
	.asciz	 "TYPE_CHAR"
.Linfo_string216:
	.asciz	 "TYPE_WIDE_CHAR"
.Linfo_string217:
	.asciz	 "TYPE_STRING"
.Linfo_string218:
	.asciz	 "TYPE_WIDE_STRING"
.Linfo_string219:
	.asciz	 "TYPE_POINTER"
.Linfo_string220:
	.asciz	 "TYPE_COUNT_SCHAR_POINTER"
.Linfo_string221:
	.asciz	 "TYPE_COUNT_SHORT_POINTER"
.Linfo_string222:
	.asciz	 "TYPE_COUNT_INT_POINTER"
.Linfo_string223:
	.asciz	 "TYPE_COUNT_LONGINT_POINTER"
.Linfo_string224:
	.asciz	 "TYPE_COUNT_LONGLONGINT_POINTER"
.Linfo_string225:
	.asciz	 "../../lib/isnanl.c"
.Linfo_string226:
	.asciz	 "nan"
.Linfo_string227:
	.asciz	 "value"
.Linfo_string228:
	.asciz	 "long double"
.Linfo_string229:
	.asciz	 "word"
.Linfo_string230:
	.asciz	 "memory_double"
.Linfo_string231:
	.asciz	 "rpl_isnanl"
.Linfo_string232:
	.asciz	 "plus_inf"
.Linfo_string233:
	.asciz	 "minus_inf"
.Linfo_string234:
	.asciz	 "../../lib/printf-args.c"
.Linfo_string235:
	.asciz	 "wide_null_string"
.Linfo_string236:
	.asciz	 "wchar_t"
.Linfo_string237:
	.asciz	 "printf_fetchargs"
.Linfo_string238:
	.asciz	 "../../lib/printf-parse.c"
.Linfo_string239:
	.asciz	 "printf_parse"
.Linfo_string240:
	.asciz	 "status"
.Linfo_string241:
	.asciz	 "argc"
.Linfo_string242:
	.asciz	 "argv"
.Linfo_string243:
	.asciz	 "optchar"
.Linfo_string244:
	.asciz	 "ok"
.Linfo_string245:
	.asciz	 "max_width_option"
.Linfo_string246:
	.asciz	 "tmp"
.Linfo_string247:
	.asciz	 "long unsigned int"
.Linfo_string248:
	.asciz	 "file"
.Linfo_string249:
	.asciz	 "in_stream"
.Linfo_string250:
	.asciz	 "_flags"
.Linfo_string251:
	.asciz	 "_IO_read_ptr"
.Linfo_string252:
	.asciz	 "_IO_read_end"
.Linfo_string253:
	.asciz	 "_IO_read_base"
.Linfo_string254:
	.asciz	 "_IO_write_base"
.Linfo_string255:
	.asciz	 "_IO_write_ptr"
.Linfo_string256:
	.asciz	 "_IO_write_end"
.Linfo_string257:
	.asciz	 "_IO_buf_base"
.Linfo_string258:
	.asciz	 "_IO_buf_end"
.Linfo_string259:
	.asciz	 "_IO_save_base"
.Linfo_string260:
	.asciz	 "_IO_backup_base"
.Linfo_string261:
	.asciz	 "_IO_save_end"
.Linfo_string262:
	.asciz	 "_markers"
.Linfo_string263:
	.asciz	 "_next"
.Linfo_string264:
	.asciz	 "_sbuf"
.Linfo_string265:
	.asciz	 "_pos"
.Linfo_string266:
	.asciz	 "_IO_marker"
.Linfo_string267:
	.asciz	 "_chain"
.Linfo_string268:
	.asciz	 "_fileno"
.Linfo_string269:
	.asciz	 "_flags2"
.Linfo_string270:
	.asciz	 "_old_offset"
.Linfo_string271:
	.asciz	 "__off_t"
.Linfo_string272:
	.asciz	 "_cur_column"
.Linfo_string273:
	.asciz	 "unsigned short"
.Linfo_string274:
	.asciz	 "_vtable_offset"
.Linfo_string275:
	.asciz	 "signed char"
.Linfo_string276:
	.asciz	 "_shortbuf"
.Linfo_string277:
	.asciz	 "_lock"
.Linfo_string278:
	.asciz	 "_offset"
.Linfo_string279:
	.asciz	 "long long int"
.Linfo_string280:
	.asciz	 "__quad_t"
.Linfo_string281:
	.asciz	 "__off64_t"
.Linfo_string282:
	.asciz	 "__pad1"
.Linfo_string283:
	.asciz	 "__pad2"
.Linfo_string284:
	.asciz	 "__pad3"
.Linfo_string285:
	.asciz	 "__pad4"
.Linfo_string286:
	.asciz	 "__pad5"
.Linfo_string287:
	.asciz	 "_mode"
.Linfo_string288:
	.asciz	 "_unused2"
.Linfo_string289:
	.asciz	 "_IO_FILE"
.Linfo_string290:
	.asciz	 "FILE"
.Linfo_string291:
	.asciz	 "p"
.Linfo_string292:
	.asciz	 "s"
.Linfo_string293:
	.asciz	 "f"
.Linfo_string294:
	.asciz	 "c"
.Linfo_string295:
	.asciz	 "pc"
.Linfo_string296:
	.asciz	 "unsigned char"
.Linfo_string297:
	.asciz	 "start"
.Linfo_string298:
	.asciz	 "w"
.Linfo_string299:
	.asciz	 "len"
.Linfo_string300:
	.asciz	 "wcost"
.Linfo_string301:
	.asciz	 "best"
.Linfo_string302:
	.asciz	 "saved_length"
.Linfo_string303:
	.asciz	 "finish"
.Linfo_string304:
	.asciz	 "indent"
.Linfo_string305:
	.asciz	 "endline"
.Linfo_string306:
	.asciz	 "space_target"
.Linfo_string307:
	.asciz	 "tab_target"
.Linfo_string308:
	.asciz	 "n"
.Linfo_string309:
	.asciz	 "next"
.Linfo_string310:
	.asciz	 "cost"
.Linfo_string311:
	.asciz	 "this"
.Linfo_string312:
	.asciz	 "end_of_parabuf"
.Linfo_string313:
	.asciz	 "end_of_word"
.Linfo_string314:
	.asciz	 "same_paragraph"
.Linfo_string315:
	.asciz	 "split_point"
.Linfo_string316:
	.asciz	 "shift"
.Linfo_string317:
	.asciz	 "best_break"
.Linfo_string318:
	.asciz	 "fin"
.Linfo_string319:
	.asciz	 "stream"
.Linfo_string320:
	.asciz	 "command_name"
.Linfo_string321:
	.asciz	 "package"
.Linfo_string322:
	.asciz	 "version"
.Linfo_string323:
	.asciz	 "authors"
.Linfo_string324:
	.asciz	 "__ap"
.Linfo_string325:
	.asciz	 "__va_list"
.Linfo_string326:
	.asciz	 "__builtin_va_list"
.Linfo_string327:
	.asciz	 "__gnuc_va_list"
.Linfo_string328:
	.asciz	 "va_list"
.Linfo_string329:
	.asciz	 "n_authors"
.Linfo_string330:
	.asciz	 "tmp_authors"
.Linfo_string331:
	.asciz	 "write_error"
.Linfo_string332:
	.asciz	 "o"
.Linfo_string333:
	.asciz	 "e"
.Linfo_string334:
	.asciz	 "i"
.Linfo_string335:
	.asciz	 "uc"
.Linfo_string336:
	.asciz	 "r"
.Linfo_string337:
	.asciz	 "buffer"
.Linfo_string338:
	.asciz	 "buffersize"
.Linfo_string339:
	.asciz	 "arg"
.Linfo_string340:
	.asciz	 "argsize"
.Linfo_string341:
	.asciz	 "quote_string"
.Linfo_string342:
	.asciz	 "quote_string_len"
.Linfo_string343:
	.asciz	 "backslash_escapes"
.Linfo_string344:
	.asciz	 "unibyte_locale"
.Linfo_string345:
	.asciz	 "elide_outer_quotes"
.Linfo_string346:
	.asciz	 "left"
.Linfo_string347:
	.asciz	 "right"
.Linfo_string348:
	.asciz	 "esc"
.Linfo_string349:
	.asciz	 "m"
.Linfo_string350:
	.asciz	 "printable"
.Linfo_string351:
	.asciz	 "ilim"
.Linfo_string352:
	.asciz	 "mbstate"
.Linfo_string353:
	.asciz	 "__count"
.Linfo_string354:
	.asciz	 "__value"
.Linfo_string355:
	.asciz	 "__wch"
.Linfo_string356:
	.asciz	 "__wchb"
.Linfo_string357:
	.asciz	 "__mbstate_t"
.Linfo_string358:
	.asciz	 "mbstate_t"
.Linfo_string359:
	.asciz	 "bytes"
.Linfo_string360:
	.asciz	 "j"
.Linfo_string361:
	.asciz	 "bufsize"
.Linfo_string362:
	.asciz	 "buf"
.Linfo_string363:
	.asciz	 "sv"
.Linfo_string364:
	.asciz	 "options"
.Linfo_string365:
	.asciz	 "n0"
.Linfo_string366:
	.asciz	 "n1"
.Linfo_string367:
	.asciz	 "preallocated"
.Linfo_string368:
	.asciz	 "qsize"
.Linfo_string369:
	.asciz	 "ch"
.Linfo_string370:
	.asciz	 "msgid"
.Linfo_string371:
	.asciz	 "translation"
.Linfo_string372:
	.asciz	 "fp"
.Linfo_string373:
	.asciz	 "format"
.Linfo_string374:
	.asciz	 "args"
.Linfo_string375:
	.asciz	 "output"
.Linfo_string376:
	.asciz	 "lenbuf"
.Linfo_string377:
	.asciz	 "saved_errno"
.Linfo_string378:
	.asciz	 "pn"
.Linfo_string379:
	.asciz	 "string"
.Linfo_string380:
	.asciz	 "ptr"
.Linfo_string381:
	.asciz	 "strtol_base"
.Linfo_string382:
	.asciz	 "valid_suffixes"
.Linfo_string383:
	.asciz	 "t_ptr"
.Linfo_string384:
	.asciz	 "err"
.Linfo_string385:
	.asciz	 "q"
.Linfo_string386:
	.asciz	 "base"
.Linfo_string387:
	.asciz	 "suffixes"
.Linfo_string388:
	.asciz	 "overflow"
.Linfo_string389:
	.asciz	 "x"
.Linfo_string390:
	.asciz	 "scale_factor"
.Linfo_string391:
	.asciz	 "power"
.Linfo_string392:
	.asciz	 "some_pending"
.Linfo_string393:
	.asciz	 "prev_fail"
.Linfo_string394:
	.asciz	 "fclose_fail"
.Linfo_string395:
	.asciz	 "resultbuf"
.Linfo_string396:
	.asciz	 "lengthp"
.Linfo_string397:
	.asciz	 "d"
.Linfo_string398:
	.asciz	 "count"
.Linfo_string399:
	.asciz	 "dir"
.Linfo_string400:
	.asciz	 "dir_start"
.Linfo_string401:
	.asciz	 "dir_end"
.Linfo_string402:
	.asciz	 "width_start"
.Linfo_string403:
	.asciz	 "width_end"
.Linfo_string404:
	.asciz	 "width_arg_index"
.Linfo_string405:
	.asciz	 "precision_start"
.Linfo_string406:
	.asciz	 "precision_end"
.Linfo_string407:
	.asciz	 "precision_arg_index"
.Linfo_string408:
	.asciz	 "conversion"
.Linfo_string409:
	.asciz	 "arg_index"
.Linfo_string410:
	.asciz	 "char_directive"
.Linfo_string411:
	.asciz	 "max_width_length"
.Linfo_string412:
	.asciz	 "max_precision_length"
.Linfo_string413:
	.asciz	 "char_directives"
.Linfo_string414:
	.asciz	 "a"
.Linfo_string415:
	.asciz	 "type"
.Linfo_string416:
	.asciz	 "arg_type"
.Linfo_string417:
	.asciz	 "a_schar"
.Linfo_string418:
	.asciz	 "a_uchar"
.Linfo_string419:
	.asciz	 "a_short"
.Linfo_string420:
	.asciz	 "short"
.Linfo_string421:
	.asciz	 "a_ushort"
.Linfo_string422:
	.asciz	 "a_int"
.Linfo_string423:
	.asciz	 "a_uint"
.Linfo_string424:
	.asciz	 "a_longint"
.Linfo_string425:
	.asciz	 "a_ulongint"
.Linfo_string426:
	.asciz	 "a_longlongint"
.Linfo_string427:
	.asciz	 "a_ulonglongint"
.Linfo_string428:
	.asciz	 "long long unsigned int"
.Linfo_string429:
	.asciz	 "a_float"
.Linfo_string430:
	.asciz	 "float"
.Linfo_string431:
	.asciz	 "a_double"
.Linfo_string432:
	.asciz	 "double"
.Linfo_string433:
	.asciz	 "a_longdouble"
.Linfo_string434:
	.asciz	 "a_char"
.Linfo_string435:
	.asciz	 "a_wide_char"
.Linfo_string436:
	.asciz	 "wint_t"
.Linfo_string437:
	.asciz	 "a_string"
.Linfo_string438:
	.asciz	 "a_wide_string"
.Linfo_string439:
	.asciz	 "a_pointer"
.Linfo_string440:
	.asciz	 "a_count_schar_pointer"
.Linfo_string441:
	.asciz	 "a_count_short_pointer"
.Linfo_string442:
	.asciz	 "a_count_int_pointer"
.Linfo_string443:
	.asciz	 "a_count_longint_pointer"
.Linfo_string444:
	.asciz	 "a_count_longlongint_pointer"
.Linfo_string445:
	.asciz	 "argument"
.Linfo_string446:
	.asciz	 "arguments"
.Linfo_string447:
	.asciz	 "buf_neededlength"
.Linfo_string448:
	.asciz	 "buf_malloced"
.Linfo_string449:
	.asciz	 "cp"
.Linfo_string450:
	.asciz	 "dp"
.Linfo_string451:
	.asciz	 "result"
.Linfo_string452:
	.asciz	 "allocated"
.Linfo_string453:
	.asciz	 "buf_memsize"
.Linfo_string454:
	.asciz	 "augmented_length"
.Linfo_string455:
	.asciz	 "memory_size"
.Linfo_string456:
	.asciz	 "memory"
.Linfo_string457:
	.asciz	 "has_width"
.Linfo_string458:
	.asciz	 "width"
.Linfo_string459:
	.asciz	 "has_precision"
.Linfo_string460:
	.asciz	 "precision"
.Linfo_string461:
	.asciz	 "tmp_length"
.Linfo_string462:
	.asciz	 "tmpbuf"
.Linfo_string463:
	.asciz	 "pad_ptr"
.Linfo_string464:
	.asciz	 "digitp"
.Linfo_string465:
	.asciz	 "tmp_memsize"
.Linfo_string466:
	.asciz	 "sign"
.Linfo_string467:
	.asciz	 "pad"
.Linfo_string468:
	.asciz	 "end"
.Linfo_string469:
	.asciz	 "fbp"
.Linfo_string470:
	.asciz	 "prefix_count"
.Linfo_string471:
	.asciz	 "prefixes"
.Linfo_string472:
	.asciz	 "retcount"
.Linfo_string473:
	.asciz	 "maxlen"
.Linfo_string474:
	.asciz	 "bigger_need"
.Linfo_string475:
	.asciz	 "size1"
.Linfo_string476:
	.asciz	 "size2"
.Linfo_string477:
	.asciz	 "size3"
.Linfo_string478:
	.asciz	 "size4"
.Linfo_string479:
	.asciz	 "sum"
.Linfo_string480:
	.asciz	 "ap"
.Linfo_string481:
	.asciz	 "arg_posn"
.Linfo_string482:
	.asciz	 "d_allocated"
.Linfo_string483:
	.asciz	 "a_allocated"
.Linfo_string484:
	.asciz	 "np"
.Linfo_string485:
	.asciz	 "width_length"
.Linfo_string486:
	.asciz	 "precision_length"

