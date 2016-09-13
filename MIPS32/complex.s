	.file	1 "src/complex.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.text
	.align	2
	.globl	complex_create
	.ent	complex_create
complex_create:
	.frame	$fp,16,$ra		# vars= 0, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,16
	.cprestore 0
	sw	$fp,12($sp)
	sw	$gp,8($sp)
	move	$fp,$sp
	sw	$a0,16($fp)
	sw	$a2,24($fp)
	sw	$a3,28($fp)
	lw	$v0,16($fp)
	l.d	$f0,24($fp)
	s.d	$f0,0($v0)
	lw	$v0,16($fp)
	l.d	$f0,32($fp)
	s.d	$f0,8($v0)
	move	$sp,$fp
	lw	$fp,12($sp)
	addu	$sp,$sp,16
	j	$ra
	.end	complex_create
	.size	complex_create, .-complex_create
	.align	2
	.globl	complex_destroy
	.ent	complex_destroy
complex_destroy:
	.frame	$fp,16,$ra		# vars= 0, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,16
	.cprestore 0
	sw	$fp,12($sp)
	sw	$gp,8($sp)
	move	$fp,$sp
	sw	$a0,16($fp)
	move	$sp,$fp
	lw	$fp,12($sp)
	addu	$sp,$sp,16
	j	$ra
	.end	complex_destroy
	.size	complex_destroy, .-complex_destroy
	.align	2
	.globl	complex_add
	.ent	complex_add
complex_add:
	.frame	$fp,16,$ra		# vars= 0, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,16
	.cprestore 0
	sw	$fp,12($sp)
	sw	$gp,8($sp)
	move	$fp,$sp
	sw	$a0,16($fp)
	sw	$a2,24($fp)
	sw	$a3,28($fp)
	lw	$v1,16($fp)
	lw	$v0,16($fp)
	l.d	$f2,0($v0)
	l.d	$f0,24($fp)
	add.d	$f0,$f2,$f0
	s.d	$f0,0($v1)
	lw	$v1,16($fp)
	lw	$v0,16($fp)
	l.d	$f2,8($v0)
	l.d	$f0,32($fp)
	add.d	$f0,$f2,$f0
	s.d	$f0,8($v1)
	move	$sp,$fp
	lw	$fp,12($sp)
	addu	$sp,$sp,16
	j	$ra
	.end	complex_add
	.size	complex_add, .-complex_add
	.align	2
	.globl	complex_mult
	.ent	complex_mult
complex_mult:
	.frame	$fp,32,$ra		# vars= 16, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,32
	.cprestore 0
	sw	$fp,28($sp)
	sw	$gp,24($sp)
	move	$fp,$sp
	sw	$a0,32($fp)
	sw	$a2,40($fp)
	sw	$a3,44($fp)
	lw	$v0,32($fp)
	l.d	$f0,0($v0)
	s.d	$f0,8($fp)
	lw	$v0,32($fp)
	l.d	$f0,8($v0)
	s.d	$f0,16($fp)
	lw	$v0,32($fp)
	l.d	$f2,8($fp)
	l.d	$f0,40($fp)
	mul.d	$f4,$f2,$f0
	l.d	$f2,16($fp)
	l.d	$f0,48($fp)
	mul.d	$f0,$f2,$f0
	sub.d	$f0,$f4,$f0
	s.d	$f0,0($v0)
	lw	$v0,32($fp)
	l.d	$f2,8($fp)
	l.d	$f0,48($fp)
	mul.d	$f4,$f2,$f0
	l.d	$f2,16($fp)
	l.d	$f0,40($fp)
	mul.d	$f0,$f2,$f0
	add.d	$f0,$f4,$f0
	s.d	$f0,8($v0)
	move	$sp,$fp
	lw	$fp,28($sp)
	addu	$sp,$sp,32
	j	$ra
	.end	complex_mult
	.size	complex_mult, .-complex_mult
	.align	2
	.globl	complex_abs
	.ent	complex_abs
complex_abs:
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
	lw	$v0,48($fp)
	lw	$v1,48($fp)
	l.d	$f2,0($v0)
	l.d	$f0,0($v1)
	mul.d	$f4,$f2,$f0
	lw	$v0,48($fp)
	lw	$v1,48($fp)
	l.d	$f2,8($v0)
	l.d	$f0,8($v1)
	mul.d	$f0,$f2,$f0
	add.d	$f0,$f4,$f0
	mov.d	$f12,$f0
	la	$t9,sqrt
	jal	$ra,$t9
	s.d	$f0,24($fp)
	l.d	$f0,24($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	complex_abs
	.size	complex_abs, .-complex_abs
	.rdata
	.align	3
$LC0:
	.word	0
	.word	1073741824
	.text
	.align	2
	.globl	complex_map
	.ent	complex_map
complex_map:
	.frame	$fp,32,$ra		# vars= 16, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,32
	.cprestore 0
	sw	$fp,28($sp)
	sw	$gp,24($sp)
	move	$fp,$sp
	sw	$a0,32($fp)
	sw	$a1,36($fp)
	sw	$a2,40($fp)
	l.d	$f2,48($fp)
	l.d	$f0,$LC0
	div.d	$f2,$f2,$f0
	l.d	$f0,64($fp)
	add.d	$f4,$f2,$f0
	l.s	$f0,36($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,48($fp)
	mul.d	$f0,$f2,$f0
	add.d	$f0,$f4,$f0
	s.d	$f0,8($fp)
	l.d	$f2,56($fp)
	l.d	$f0,$LC0
	div.d	$f2,$f2,$f0
	l.d	$f0,72($fp)
	sub.d	$f4,$f0,$f2
	l.s	$f0,40($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,56($fp)
	mul.d	$f0,$f2,$f0
	sub.d	$f0,$f4,$f0
	s.d	$f0,16($fp)
	lw	$v0,32($fp)
	l.d	$f0,8($fp)
	s.d	$f0,0($v0)
	lw	$v0,32($fp)
	l.d	$f0,16($fp)
	s.d	$f0,8($v0)
	move	$sp,$fp
	lw	$fp,28($sp)
	addu	$sp,$sp,32
	j	$ra
	.end	complex_map
	.size	complex_map, .-complex_map
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
