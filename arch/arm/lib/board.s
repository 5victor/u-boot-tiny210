	.arch armv5
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"board.c"
	.text
	.align	2
	.type	getenv_IPaddr, %function
getenv_IPaddr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	getenv
	mov	r3, r0
	mov	r0, r3
	bl	string_to_ip
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.size	getenv_IPaddr, .-getenv_IPaddr
	.global	monitor_flash_len
	.bss
	.align	2
	.type	monitor_flash_len, %object
	.size	monitor_flash_len, 4
monitor_flash_len:
	.space	4
	.text
	.align	2
	.global	__coloured_LED_init
	.type	__coloured_LED_init, %function
__coloured_LED_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__coloured_LED_init, .-__coloured_LED_init
	.align	2
	.global	__red_LED_on
	.type	__red_LED_on, %function
__red_LED_on:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__red_LED_on, .-__red_LED_on
	.align	2
	.global	__red_LED_off
	.type	__red_LED_off, %function
__red_LED_off:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__red_LED_off, .-__red_LED_off
	.align	2
	.global	__green_LED_on
	.type	__green_LED_on, %function
__green_LED_on:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__green_LED_on, .-__green_LED_on
	.align	2
	.global	__green_LED_off
	.type	__green_LED_off, %function
__green_LED_off:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__green_LED_off, .-__green_LED_off
	.align	2
	.global	__yellow_LED_on
	.type	__yellow_LED_on, %function
__yellow_LED_on:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__yellow_LED_on, .-__yellow_LED_on
	.align	2
	.global	__yellow_LED_off
	.type	__yellow_LED_off, %function
__yellow_LED_off:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__yellow_LED_off, .-__yellow_LED_off
	.align	2
	.global	__blue_LED_on
	.type	__blue_LED_on, %function
__blue_LED_on:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__blue_LED_on, .-__blue_LED_on
	.align	2
	.global	__blue_LED_off
	.type	__blue_LED_off, %function
__blue_LED_off:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__blue_LED_off, .-__blue_LED_off
	.section	.rodata
	.align	2
.LC0:
	.ascii	"baudrate\000"
	.text
	.align	2
	.type	init_baudrate, %function
init_baudrate:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #76
	sub	r3, fp, #80
	ldr	r0, .L14
	mov	r1, r3
	mov	r2, #64
	bl	getenv_f
	str	r0, [fp, #-16]
	mov	r4, r8
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	ble	.L12
	sub	r3, fp, #80
	mov	r0, r3
	mov	r1, #0
	mov	r2, #10
	bl	simple_strtoul
	mov	r3, r0
	b	.L13
.L12:
	ldr	r3, .L14+4
.L13:
	str	r3, [r4, #8]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L15:
	.align	2
.L14:
	.word	.LC0
	.word	115200
	.size	init_baudrate, .-init_baudrate
	.section	.rodata
	.align	2
.LC1:
	.ascii	"\012\012%s\012\012\000"
	.text
	.align	2
	.type	display_banner, %function
display_banner:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r0, .L17
	ldr	r1, .L17+4
	bl	printf
	mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
.L18:
	.align	2
.L17:
	.word	.LC1
	.word	version_string
	.size	display_banner, .-display_banner
	.section	.rodata
	.align	2
.LC2:
	.ascii	"DRAM:  \000"
	.align	2
.LC3:
	.ascii	"\012\000"
	.text
	.align	2
	.type	display_dram_config, %function
display_dram_config:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L20
.L21:
	mov	r3, r8
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #2
	mov	r3, #4
	mov	r2, r2, asl #3
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L20:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	ble	.L21
	ldr	r0, .L22
	bl	puts
	ldr	r3, [fp, #-20]
	mov	r4, #0
	mov	r0, r3
	mov	r1, r4
	ldr	r2, .L22+4
	bl	print_size
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L23:
	.align	2
.L22:
	.word	.LC2
	.word	.LC3
	.size	display_dram_config, .-display_dram_config
	.align	2
	.global	__dram_init_banksize
	.type	__dram_init_banksize, %function
__dram_init_banksize:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, r8
	ldr	r3, [r3, #0]
	mov	r2, #536870912
	str	r2, [r3, #16]
	mov	r3, r8
	ldr	r3, [r3, #0]
	mov	r2, r8
	ldr	r2, [r2, #56]
	str	r2, [r3, #20]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	__dram_init_banksize, .-__dram_init_banksize
	.global	init_sequence
	.data
	.align	2
	.type	init_sequence, %object
	.size	init_sequence, 44
init_sequence:
	.word	arch_cpu_init
	.word	timer_init
	.word	env_init
	.word	init_baudrate
	.word	serial_init
	.word	console_init_f
	.word	display_banner
	.word	print_cpuinfo
	.word	checkboard
	.word	dram_init
	.word	0
	.text
	.align	2
	.global	board_init_f_nand
	.type	board_init_f_nand, %function
board_init_f_nand:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
.L26:
	b	.L26
	.size	board_init_f_nand, .-board_init_f_nand
	.align	2
	.global	board_init_f
	.type	board_init_f, %function
board_init_f:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	ldr	r8, .L31
	mov	r3, r8
	mov	r0, r3
	mov	r1, #0
	mov	r2, #120
	bl	memset
	mov	r3, r8
	ldr	r2, .L31+4
	ldr	r2, [r2, #0]
	str	r2, [r3, #60]
	ldr	r3, .L31+8
	str	r3, [fp, #-8]
	b	.L28
.L30:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #0]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L29
	bl	hang
.L29:
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L28:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L30
	mov	r3, r8
	ldr	r3, [r3, #56]
	add	r3, r3, #536870912
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #16384
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	str	r3, [fp, #-12]
	mov	r3, r8
	ldr	r2, [fp, #-12]
	str	r2, [r3, #76]
	ldr	r3, [fp, #-12]
	bic	r3, r3, #4080
	bic	r3, r3, #15
	str	r3, [fp, #-12]
	mov	r3, r8
	ldr	r3, [r3, #60]
	ldr	r2, [fp, #-12]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	bic	r3, r3, #4080
	bic	r3, r3, #15
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #950272
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #24
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-20]
	mov	r3, r8
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	mov	r3, r8
	ldr	r3, [r3, #0]
	ldr	r2, .L31+12
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #120
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
	mov	r3, r8
	ldr	r2, [fp, #-16]
	str	r2, [r3, #64]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #12
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	bic	r3, r3, #7
	str	r3, [fp, #-16]
	mov	r3, r8
	ldr	r3, [r3, #0]
	mov	r2, r8
	ldr	r2, [r2, #8]
	str	r2, [r3, #0]
	bl	dram_init_banksize
	bl	display_dram_config
	mov	r3, r8
	ldr	r2, [fp, #-12]
	str	r2, [r3, #52]
	mov	r3, r8
	ldr	r2, [fp, #-16]
	str	r2, [r3, #68]
	mov	r3, r8
	ldr	r2, .L31+16
	ldr	r2, [r2, #0]
	ldr	r1, [fp, #-12]
	rsb	r2, r2, r1
	str	r2, [r3, #72]
	mov	r3, r8
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #120
	bl	memcpy
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-12]
	bl	relocate_code
.L32:
	.align	2
.L31:
	.word	553648000
	.word	_bss_end_ofs
	.word	init_sequence
	.word	2456
	.word	_TEXT_BASE
	.size	board_init_f, .-board_init_f
	.section	.rodata
	.align	2
.LC4:
	.ascii	"NAND:  \000"
	.align	2
.LC5:
	.ascii	"MMC:   \000"
	.align	2
.LC6:
	.ascii	"ipaddr\000"
	.align	2
.LC7:
	.ascii	"loadaddr\000"
	.align	2
.LC8:
	.ascii	"bootfile\000"
	.align	2
.LC9:
	.ascii	"Net:   \000"
	.align	2
.LC10:
	.ascii	"\012 \000"
	.text
	.align	2
	.global	board_init_r
	.type	board_init_r, %function
board_init_r:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r8, r3
	mov	r3, r8
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	mov	r3, r8
	mov	r2, r8
	ldr	r2, [r2, #4]
	orr	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, .L37
	ldr	r2, [r3, #0]
	ldr	r3, .L37+4
	str	r2, [r3, #0]
	bl	enable_caches
	bl	board_init
	bl	serial_initialize
	ldr	r3, [fp, #-36]
	sub	r3, r3, #950272
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-20]
	mov	r1, #950272
	bl	mem_malloc_init
	ldr	r0, .L37+8
	bl	puts
	bl	nand_init
	ldr	r0, .L37+12
	bl	puts
	ldr	r0, [fp, #-16]
	bl	mmc_initialize
	bl	env_relocate
	mov	r3, r8
	ldr	r4, [r3, #0]
	ldr	r0, .L37+16
	bl	getenv_IPaddr
	mov	r3, r0
	str	r3, [r4, #4]
	bl	stdio_init
	bl	jumptable_init
	bl	console_init_r
	bl	interrupt_init
	bl	enable_interrupts
	ldr	r0, .L37+20
	bl	getenv
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L34
	ldr	r0, [fp, #-24]
	mov	r1, #0
	mov	r2, #16
	bl	simple_strtoul
	mov	r2, r0
	ldr	r3, .L37+24
	str	r2, [r3, #0]
.L34:
	ldr	r0, .L37+28
	bl	getenv
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L35
	ldr	r0, .L37+32
	ldr	r1, [fp, #-24]
	mov	r2, #128
	bl	copy_filename
.L35:
	bl	board_late_init
	ldr	r0, .L37+36
	bl	puts
	mov	r3, r8
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	eth_initialize
	ldr	r0, .L37+40
	bl	puts
	ldr	r0, .L37+44
	bl	puts
.L36:
	bl	main_loop
	b	.L36
.L38:
	.align	2
.L37:
	.word	_end_ofs
	.word	monitor_flash_len
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	load_addr
	.word	.LC8
	.word	BootFile
	.word	.LC9
	.word	.LC10
	.word	.LC3
	.size	board_init_r, .-board_init_r
	.section	.rodata
	.align	2
.LC11:
	.ascii	"### ERROR ### Please RESET the board ###\012\000"
	.text
	.align	2
	.global	hang
	.type	hang, %function
hang:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r0, .L41
	bl	puts
.L40:
	b	.L40
.L42:
	.align	2
.L41:
	.word	.LC11
	.size	hang, .-hang
	.weak	coloured_LED_init
coloured_LED_init = __coloured_LED_init
	.weak	red_LED_on
red_LED_on = __red_LED_on
	.weak	red_LED_off
red_LED_off = __red_LED_off
	.weak	green_LED_on
green_LED_on = __green_LED_on
	.weak	green_LED_off
green_LED_off = __green_LED_off
	.weak	yellow_LED_on
yellow_LED_on = __yellow_LED_on
	.weak	yellow_LED_off
yellow_LED_off = __yellow_LED_off
	.weak	blue_LED_on
blue_LED_on = __blue_LED_on
	.weak	blue_LED_off
blue_LED_off = __blue_LED_off
	.weak	dram_init_banksize
dram_init_banksize = __dram_init_banksize
	.ident	"GCC: (ctng-1.8.1-FA) 4.5.1"
	.section	.note.GNU-stack,"",%progbits
