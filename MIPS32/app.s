	.file	1 "src/app.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"hvr:c:C:w:H:o:\000"
	.globl	short_options
	.data
	.align	2
	.type	short_options, @object
	.size	short_options, 4
short_options:
	.word	$LC0
	.rdata
	.align	2
$LC1:
	.ascii	"help\000"
	.align	2
$LC2:
	.ascii	"version\000"
	.align	2
$LC3:
	.ascii	"resolution\000"
	.align	2
$LC4:
	.ascii	"center\000"
	.align	2
$LC5:
	.ascii	"param\000"
	.align	2
$LC6:
	.ascii	"width\000"
	.align	2
$LC7:
	.ascii	"height\000"
	.align	2
$LC8:
	.ascii	"output\000"
	.data
	.align	2
	.type	options, @object
	.size	options, 144
options:
	.word	$LC1
	.word	0
	.word	0
	.word	104
	.word	$LC2
	.word	0
	.word	0
	.word	118
	.word	$LC3
	.word	1
	.word	0
	.word	114
	.word	$LC4
	.word	1
	.word	0
	.word	99
	.word	$LC5
	.word	1
	.word	0
	.word	67
	.word	$LC6
	.word	1
	.word	0
	.word	119
	.word	$LC7
	.word	1
	.word	0
	.word	72
	.word	$LC8
	.word	1
	.word	0
	.word	111
	.word	0
	.word	0
	.space	8
	.rdata
	.align	2
$LC12:
	.ascii	"w\000"
	.align	2
$LC13:
	.ascii	"Error on fopen\000"
	.align	3
$LC9:
	.word	-1546188227
	.word	1070742896
	.align	3
$LC10:
	.word	1202590843
	.word	-1081836831
	.align	3
$LC11:
	.word	0
	.word	1074790400
	.text
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$fp,168,$ra		# vars= 80, regs= 3/0, args= 64, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,168
	.cprestore 64
	sw	$ra,160($sp)
	sw	$fp,156($sp)
	sw	$gp,152($sp)
	move	$fp,$sp
	sw	$a0,168($fp)
	sw	$a1,172($fp)
	la	$v0,__sF+88
	sw	$v0,72($fp)
	sw	$zero,80($fp)
	sw	$zero,84($fp)
	sw	$zero,88($fp)
	sw	$zero,92($fp)
	l.d	$f0,$LC9
	s.d	$f0,96($fp)
	l.d	$f0,$LC10
	s.d	$f0,104($fp)
	li	$v0,640			# 0x280
	sw	$v0,112($fp)
	li	$v0,480			# 0x1e0
	sw	$v0,116($fp)
	l.d	$f0,$LC11
	s.d	$f0,120($fp)
	l.d	$f0,$LC11
	s.d	$f0,128($fp)
	sw	$zero,136($fp)
	sw	$zero,140($fp)
$L18:
	addu	$v0,$fp,140
	sw	$v0,16($sp)
	lw	$a0,168($fp)
	lw	$a1,172($fp)
	lw	$a2,short_options
	la	$a3,options
	la	$t9,getopt_long
	jal	$ra,$t9
	sw	$v0,136($fp)
	lw	$v1,136($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L20
	b	$L19
$L20:
	lw	$v0,136($fp)
	addu	$v0,$v0,-63
	sw	$v0,148($fp)
	lw	$v1,148($fp)
	sltu	$v0,$v1,57
	beq	$v0,$zero,$L38
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	la	$v0,$L39
	addu	$v0,$v1,$v0
	lw	$v0,0($v0)
	.cpadd	$v0
	j	$v0
	.rdata
	.align	2
$L39:
	.gpword	$L37
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L28
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L32
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L26
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L22
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L34
	.gpword	$L38
	.gpword	$L38
	.gpword	$L24
	.gpword	$L38
	.gpword	$L38
	.gpword	$L38
	.gpword	$L23
	.gpword	$L30
	.text
$L22:
	la	$t9,print_help
	jal	$ra,$t9
	sw	$zero,144($fp)
	b	$L17
$L23:
	la	$t9,print_version
	jal	$ra,$t9
	sw	$zero,144($fp)
	b	$L17
$L24:
	addu	$v0,$fp,112
	addu	$v1,$fp,116
	lw	$a0,optarg
	move	$a1,$v0
	move	$a2,$v1
	la	$t9,set_resolution
	jal	$ra,$t9
	beq	$v0,$zero,$L18
	lw	$a0,136($fp)
	lw	$a1,optarg
	la	$t9,print_invalid_arg
	jal	$ra,$t9
	la	$t9,print_help
	jal	$ra,$t9
	li	$v0,1			# 0x1
	sw	$v0,144($fp)
	b	$L17
$L26:
	addu	$v0,$fp,80
	lw	$a0,optarg
	move	$a1,$v0
	la	$t9,set_complex
	jal	$ra,$t9
	beq	$v0,$zero,$L18
	lw	$a0,136($fp)
	lw	$a1,optarg
	la	$t9,print_invalid_arg
	jal	$ra,$t9
	la	$t9,print_help
	jal	$ra,$t9
	li	$v1,1			# 0x1
	sw	$v1,144($fp)
	b	$L17
$L28:
	addu	$v0,$fp,96
	lw	$a0,optarg
	move	$a1,$v0
	la	$t9,set_complex
	jal	$ra,$t9
	beq	$v0,$zero,$L18
	lw	$a0,136($fp)
	lw	$a1,optarg
	la	$t9,print_invalid_arg
	jal	$ra,$t9
	la	$t9,print_help
	jal	$ra,$t9
	li	$v0,1			# 0x1
	sw	$v0,144($fp)
	b	$L17
$L30:
	addu	$v0,$fp,120
	lw	$a0,optarg
	move	$a1,$v0
	la	$t9,set_size
	jal	$ra,$t9
	beq	$v0,$zero,$L18
	lw	$a0,136($fp)
	lw	$a1,optarg
	la	$t9,print_invalid_arg
	jal	$ra,$t9
	la	$t9,print_help
	jal	$ra,$t9
	li	$v1,1			# 0x1
	sw	$v1,144($fp)
	b	$L17
$L32:
	addu	$v0,$fp,128
	lw	$a0,optarg
	move	$a1,$v0
	la	$t9,set_size
	jal	$ra,$t9
	beq	$v0,$zero,$L18
	lw	$a0,136($fp)
	lw	$a1,optarg
	la	$t9,print_invalid_arg
	jal	$ra,$t9
	la	$t9,print_help
	jal	$ra,$t9
	li	$v0,1			# 0x1
	sw	$v0,144($fp)
	b	$L17
$L34:
	lw	$v0,optarg
	lb	$v0,0($v0)
	beq	$v0,$zero,$L35
	lw	$v0,optarg
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	bne	$v1,$v0,$L35
	b	$L18
$L35:
	la	$t9,__errno
	jal	$ra,$t9
	sw	$zero,0($v0)
	lw	$a0,optarg
	la	$a1,$LC12
	la	$t9,fopen
	jal	$ra,$t9
	sw	$v0,72($fp)
	lw	$v0,72($fp)
	bne	$v0,$zero,$L18
	la	$a0,$LC13
	la	$t9,perror
	jal	$ra,$t9
	li	$v1,1			# 0x1
	sw	$v1,144($fp)
	b	$L17
$L37:
	la	$t9,print_help
	jal	$ra,$t9
	li	$v0,1			# 0x1
	sw	$v0,144($fp)
	b	$L17
$L38:
	la	$t9,print_help
	jal	$ra,$t9
	sw	$zero,144($fp)
	b	$L17
$L19:
	l.d	$f0,128($fp)
	s.d	$f0,16($sp)
	lw	$v0,80($fp)
	sw	$v0,24($sp)
	lw	$v0,84($fp)
	sw	$v0,28($sp)
	lw	$v0,88($fp)
	sw	$v0,32($sp)
	lw	$v0,92($fp)
	sw	$v0,36($sp)
	lw	$v0,96($fp)
	sw	$v0,40($sp)
	lw	$v0,100($fp)
	sw	$v0,44($sp)
	lw	$v0,104($fp)
	sw	$v0,48($sp)
	lw	$v0,108($fp)
	sw	$v0,52($sp)
	li	$v0,255			# 0xff
	sw	$v0,56($sp)
	lw	$v0,72($fp)
	sw	$v0,60($sp)
	lw	$a0,112($fp)
	lw	$a1,116($fp)
	lw	$a2,120($fp)
	lw	$a3,124($fp)
	la	$t9,drawJulia
	jal	$ra,$t9
	lw	$a0,72($fp)
	la	$t9,fclose
	jal	$ra,$t9
	sw	$zero,144($fp)
$L17:
	lw	$v0,144($fp)
	move	$sp,$fp
	lw	$ra,160($sp)
	lw	$fp,156($sp)
	addu	$sp,$sp,168
	j	$ra
	.end	main
	.size	main, .-main
	.rdata
	.align	2
$LC14:
	.ascii	"Version: %-1.1f\n\000"
	.align	3
$LC15:
	.word	0
	.word	1072693248
	.text
	.align	2
	.ent	print_version
print_version:
	.frame	$fp,40,$ra		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$ra,32($sp)
	sw	$fp,28($sp)
	sw	$gp,24($sp)
	move	$fp,$sp
	l.d	$f0,$LC15
	la	$a0,$LC14
	mfc1	$a2,$f0
	mfc1	$a3,$f1
	la	$t9,printf
	jal	$ra,$t9
	move	$sp,$fp
	lw	$ra,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$ra
	.end	print_version
	.size	print_version, .-print_version
	.rdata
	.align	2
$LC16:
	.ascii	"Usage:\n"
	.ascii	"  tp0 -h\n"
	.ascii	"  tp0 -v\n"
	.ascii	"  tp0 -r <axb> -c <> -C <> -w <width> -H <height> -o <fi"
	.ascii	"lepath>\n"
	.ascii	"  tp0 < in_file > out_file\n"
	.ascii	"Options:\n"
	.ascii	"  -r               Set resolution. [640x480] by default."
	.ascii	"\n"
	.ascii	"  -c               Set image center. [0+0i] by default.\n"
	.ascii	"  -C               Set c value. [0.285-0.01i] by default"
	.ascii	".\n"
	.ascii	"  -w               Set width. [4] by default.\n"
	.ascii	"  -H               Set height. [4] by default.\n"
	.ascii	"  -o               Set output file. [std] by default.\n"
	.ascii	"  -h, --help       Print this information and quit.\n"
	.ascii	"Examples:\n"
	.ascii	"  tp0 -r 1024x800 -w 24 -H 16 -o out.pgm\n"
	.ascii	"  cat in.txt | tp0 > out.txt\n\000"
	.text
	.align	2
	.ent	print_help
print_help:
	.frame	$fp,40,$ra		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$ra,32($sp)
	sw	$fp,28($sp)
	sw	$gp,24($sp)
	move	$fp,$sp
	la	$a0,$LC16
	la	$t9,printf
	jal	$ra,$t9
	move	$sp,$fp
	lw	$ra,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$ra
	.end	print_help
	.size	print_help, .-print_help
	.rdata
	.align	2
$LC17:
	.ascii	"Invalid argument <%s> for the option <%c>\n\000"
	.text
	.align	2
	.ent	print_invalid_arg
print_invalid_arg:
	.frame	$fp,40,$ra		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$ra,32($sp)
	sw	$fp,28($sp)
	sw	$gp,24($sp)
	move	$fp,$sp
	sw	$a0,40($fp)
	sw	$a1,44($fp)
	la	$a0,$LC17
	lw	$a1,44($fp)
	lw	$a2,40($fp)
	la	$t9,printf
	jal	$ra,$t9
	move	$sp,$fp
	lw	$ra,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$ra
	.end	print_invalid_arg
	.size	print_invalid_arg, .-print_invalid_arg
	.align	2
	.ent	set_resolution
set_resolution:
	.frame	$fp,56,$ra		# vars= 16, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,56
	.cprestore 16
	sw	$ra,48($sp)
	sw	$fp,44($sp)
	sw	$gp,40($sp)
	move	$fp,$sp
	sw	$a0,56($fp)
	sw	$a1,60($fp)
	sw	$a2,64($fp)
	sw	$zero,24($fp)
	sw	$zero,28($fp)
	sw	$zero,32($fp)
$L44:
	lw	$v1,56($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,120			# 0x78
	beq	$v1,$v0,$L45
	lw	$v1,56($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,88			# 0x58
	beq	$v1,$v0,$L45
	lw	$v1,56($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	bne	$v0,$zero,$L46
	b	$L45
$L46:
	lw	$v1,56($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	lw	$v0,_ctype_
	addu	$v0,$v1,$v0
	addu	$v0,$v0,1
	lbu	$v0,0($v0)
	srl	$v0,$v0,2
	andi	$v0,$v0,0x1
	bne	$v0,$zero,$L48
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,36($fp)
	b	$L43
$L48:
	lw	$v1,28($fp)
	move	$v0,$v1
	sll	$v0,$v0,2
	addu	$v0,$v0,$v1
	sll	$a0,$v0,1
	lw	$v1,56($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	addu	$v0,$a0,$v0
	addu	$v0,$v0,-48
	sw	$v0,28($fp)
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	sw	$v0,24($fp)
	b	$L44
$L45:
	lw	$v0,28($fp)
	beq	$v0,$zero,$L50
	lw	$a0,56($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,24($fp)
	beq	$v0,$v1,$L50
	b	$L49
$L50:
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,36($fp)
	b	$L43
$L49:
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	sw	$v0,24($fp)
$L51:
	lw	$v1,56($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	bne	$v0,$zero,$L53
	b	$L52
$L53:
	lw	$v1,56($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	lw	$v0,_ctype_
	addu	$v0,$v1,$v0
	addu	$v0,$v0,1
	lbu	$v0,0($v0)
	srl	$v0,$v0,2
	andi	$v0,$v0,0x1
	bne	$v0,$zero,$L54
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,36($fp)
	b	$L43
$L54:
	lw	$v1,32($fp)
	move	$v0,$v1
	sll	$v0,$v0,2
	addu	$v0,$v0,$v1
	sll	$a0,$v0,1
	lw	$v1,56($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	addu	$v0,$a0,$v0
	addu	$v0,$v0,-48
	sw	$v0,32($fp)
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	sw	$v0,24($fp)
	b	$L51
$L52:
	lw	$v0,32($fp)
	bne	$v0,$zero,$L55
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,36($fp)
	b	$L43
$L55:
	lw	$v1,60($fp)
	lw	$v0,28($fp)
	sw	$v0,0($v1)
	lw	$v1,64($fp)
	lw	$v0,32($fp)
	sw	$v0,0($v1)
	sw	$zero,36($fp)
$L43:
	lw	$v0,36($fp)
	move	$sp,$fp
	lw	$ra,48($sp)
	lw	$fp,44($sp)
	addu	$sp,$sp,56
	j	$ra
	.end	set_resolution
	.size	set_resolution, .-set_resolution
	.rdata
	.align	2
$LC18:
	.ascii	"A\n\000"
	.align	2
$LC19:
	.ascii	"out of range\000"
	.align	2
$LC20:
	.ascii	"Re value not a number: <%s>\n\000"
	.align	2
$LC21:
	.ascii	"Complex number must follow the a+bi notation.\n\000"
	.text
	.align	2
	.ent	set_complex
set_complex:
	.frame	$fp,88,$ra		# vars= 48, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,88
	.cprestore 16
	sw	$ra,80($sp)
	sw	$fp,76($sp)
	sw	$gp,72($sp)
	move	$fp,$sp
	sw	$a0,88($fp)
	sw	$a1,92($fp)
	lw	$v0,88($fp)
	lb	$v0,0($v0)
	bne	$v0,$zero,$L57
	la	$a0,$LC18
	la	$t9,printf
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,64($fp)
	b	$L56
$L57:
	sw	$zero,24($fp)
	sw	$zero,32($fp)
	sw	$zero,36($fp)
	sw	$zero,40($fp)
	sw	$zero,44($fp)
	li	$v0,1			# 0x1
	sw	$v0,24($fp)
$L58:
	lw	$v1,88($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L59
	lw	$v1,88($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L59
	lw	$v1,88($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	bne	$v0,$zero,$L60
	b	$L59
$L60:
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	sw	$v0,24($fp)
	b	$L58
$L59:
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,48($fp)
	sw	$zero,52($fp)
$L63:
	lw	$v0,52($fp)
	lw	$v1,24($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L66
	b	$L64
$L66:
	lw	$v1,48($fp)
	lw	$v0,52($fp)
	addu	$a0,$v1,$v0
	lw	$v1,88($fp)
	lw	$v0,52($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,52($fp)
	addu	$v0,$v0,1
	sw	$v0,52($fp)
	b	$L63
$L64:
	lw	$v1,48($fp)
	lw	$v0,52($fp)
	addu	$v0,$v1,$v0
	sb	$zero,0($v0)
	la	$t9,__errno
	jal	$ra,$t9
	sw	$zero,0($v0)
	addu	$v0,$fp,56
	lw	$a0,48($fp)
	move	$a1,$v0
	la	$t9,strtod
	jal	$ra,$t9
	s.d	$f0,32($fp)
	la	$t9,__errno
	jal	$ra,$t9
	lw	$v1,0($v0)
	li	$v0,34			# 0x22
	bne	$v1,$v0,$L67
	la	$a0,$LC19
	la	$t9,perror
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,64($fp)
	b	$L56
$L67:
	lw	$v0,56($fp)
	lb	$v0,0($v0)
	beq	$v0,$zero,$L68
	la	$a0,$LC20
	lw	$a1,56($fp)
	la	$t9,printf
	jal	$ra,$t9
	lw	$a0,48($fp)
	la	$t9,free
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,64($fp)
	b	$L56
$L68:
	lw	$a0,48($fp)
	la	$t9,free
	jal	$ra,$t9
	lw	$v1,88($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	sw	$v0,60($fp)
	lw	$v0,60($fp)
	lb	$v0,0($v0)
	beq	$v0,$zero,$L69
	lw	$a0,60($fp)
	la	$t9,strlen
	jal	$ra,$t9
	move	$v1,$v0
	lw	$v0,60($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	lb	$v1,0($v0)
	li	$v0,105			# 0x69
	beq	$v1,$v0,$L69
	la	$a0,$LC21
	la	$t9,printf
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,64($fp)
	b	$L56
$L69:
	addu	$v0,$fp,56
	lw	$a0,60($fp)
	move	$a1,$v0
	la	$t9,strtod
	jal	$ra,$t9
	s.d	$f0,40($fp)
	lw	$v0,56($fp)
	lb	$v1,0($v0)
	li	$v0,105			# 0x69
	beq	$v1,$v0,$L70
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,64($fp)
	b	$L56
$L70:
	lw	$v0,92($fp)
	l.d	$f0,32($fp)
	s.d	$f0,0($v0)
	lw	$v0,92($fp)
	l.d	$f0,40($fp)
	s.d	$f0,8($v0)
	sw	$zero,64($fp)
$L56:
	lw	$v0,64($fp)
	move	$sp,$fp
	lw	$ra,80($sp)
	lw	$fp,76($sp)
	addu	$sp,$sp,88
	j	$ra
	.end	set_complex
	.size	set_complex, .-set_complex
	.rdata
	.align	2
$LC22:
	.ascii	"set_size val argument not a number: <%s>\n\000"
	.text
	.align	2
	.ent	set_size
set_size:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	la	$t9,__errno
	jal	$ra,$t9
	sw	$zero,0($v0)
	lw	$a0,48($fp)
	addu	$a1,$fp,24
	la	$t9,strtod
	jal	$ra,$t9
	lw	$v0,52($fp)
	s.d	$f0,0($v0)
	la	$t9,__errno
	jal	$ra,$t9
	lw	$v1,0($v0)
	li	$v0,34			# 0x22
	bne	$v1,$v0,$L72
	la	$a0,$LC19
	la	$t9,perror
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,28($fp)
	b	$L71
$L72:
	lw	$v0,24($fp)
	lb	$v0,0($v0)
	beq	$v0,$zero,$L73
	la	$a0,$LC22
	lw	$a1,24($fp)
	la	$t9,printf
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,28($fp)
	b	$L71
$L73:
	sw	$zero,28($fp)
$L71:
	lw	$v0,28($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	set_size
	.size	set_size, .-set_size
	.rdata
	.align	2
$LC24:
	.ascii	"P2\n\000"
	.align	2
$LC25:
	.ascii	"%d\n\000"
	.align	2
$LC26:
	.ascii	"%d \000"
	.align	2
$LC27:
	.ascii	"\n\000"
	.align	3
$LC23:
	.word	0
	.word	1073741824
	.text
	.align	2
	.ent	drawJulia
drawJulia:
	.frame	$fp,136,$ra		# vars= 64, regs= 3/0, args= 48, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,136
	.cprestore 48
	sw	$ra,128($sp)
	sw	$fp,124($sp)
	sw	$gp,120($sp)
	move	$fp,$sp
	sw	$a0,136($fp)
	sw	$a1,140($fp)
	sw	$a2,144($fp)
	sw	$a3,148($fp)
	l.s	$f0,136($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,144($fp)
	div.d	$f0,$f0,$f2
	s.d	$f0,56($fp)
	l.s	$f0,140($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,152($fp)
	div.d	$f0,$f0,$f2
	s.d	$f0,64($fp)
	l.d	$f2,144($fp)
	l.d	$f0,$LC23
	div.d	$f2,$f2,$f0
	l.d	$f0,160($fp)
	sub.d	$f0,$f0,$f2
	s.d	$f0,72($fp)
	l.d	$f2,152($fp)
	l.d	$f0,$LC23
	div.d	$f2,$f2,$f0
	l.d	$f0,168($fp)
	add.d	$f0,$f0,$f2
	s.d	$f0,80($fp)
	lw	$a0,196($fp)
	la	$a1,$LC24
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,196($fp)
	la	$a1,$LC25
	lw	$a2,136($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,196($fp)
	la	$a1,$LC25
	lw	$a2,140($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$a0,196($fp)
	la	$a1,$LC25
	lw	$a2,192($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	sw	$zero,88($fp)
$L75:
	lw	$v0,88($fp)
	lw	$v1,140($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L78
	b	$L74
$L78:
	sw	$zero,92($fp)
$L79:
	lw	$v0,92($fp)
	lw	$v1,136($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L82
	b	$L80
$L82:
	addu	$v0,$fp,96
	l.d	$f0,56($fp)
	s.d	$f0,16($sp)
	l.d	$f0,64($fp)
	s.d	$f0,24($sp)
	l.d	$f0,72($fp)
	s.d	$f0,32($sp)
	l.d	$f0,80($fp)
	s.d	$f0,40($sp)
	move	$a0,$v0
	lw	$a1,92($fp)
	lw	$a2,88($fp)
	la	$t9,complex_map
	jal	$ra,$t9
	lw	$v0,192($fp)
	sw	$v0,112($fp)
	sw	$zero,116($fp)
$L83:
	lw	$v0,192($fp)
	addu	$v1,$v0,-1
	lw	$v0,116($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L86
	b	$L84
$L86:
	addu	$v0,$fp,96
	move	$a0,$v0
	la	$t9,complex_abs
	jal	$ra,$t9
	mov.d	$f2,$f0
	l.d	$f0,$LC23
	c.lt.d	$f0,$f2
	bc1t	$L88
	b	$L87
$L88:
	lw	$v0,116($fp)
	sw	$v0,112($fp)
	b	$L84
$L87:
	addu	$v1,$fp,96
	lw	$v0,104($fp)
	sw	$v0,16($sp)
	lw	$v0,108($fp)
	sw	$v0,20($sp)
	lw	$a2,96($fp)
	lw	$a3,100($fp)
	move	$a0,$v1
	la	$t9,complex_mult
	jal	$ra,$t9
	addu	$v1,$fp,96
	lw	$v0,184($fp)
	sw	$v0,16($sp)
	lw	$v0,188($fp)
	sw	$v0,20($sp)
	lw	$a2,176($fp)
	lw	$a3,180($fp)
	move	$a0,$v1
	la	$t9,complex_add
	jal	$ra,$t9
	lw	$v0,116($fp)
	addu	$v0,$v0,1
	sw	$v0,116($fp)
	b	$L83
$L84:
	lw	$a0,196($fp)
	la	$a1,$LC26
	lw	$a2,112($fp)
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$v0,92($fp)
	addu	$v0,$v0,1
	sw	$v0,92($fp)
	b	$L79
$L80:
	lw	$a0,196($fp)
	la	$a1,$LC27
	la	$t9,fprintf
	jal	$ra,$t9
	lw	$v0,88($fp)
	addu	$v0,$v0,1
	sw	$v0,88($fp)
	b	$L75
$L74:
	move	$sp,$fp
	lw	$ra,128($sp)
	lw	$fp,124($sp)
	addu	$sp,$sp,136
	j	$ra
	.end	drawJulia
	.size	drawJulia, .-drawJulia
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
