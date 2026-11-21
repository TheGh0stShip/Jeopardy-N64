.macro glabel label
    .global \label
    \label:
.endm
.macro jlabel label
    \label:
.endm

.set noat
.set noreorder
.section .text
glabel func_8003E3F8
    /* 8003E3F8 8CAE0000 */ lw $t6, 0x0($a1)
    /* 8003E3FC 00801825 */ move $v1, $a0
    /* 8003E400 00803825 */ move $a3, $a0
    /* 8003E404 AC8E0004 */ sw $t6, 0x4($a0)
    /* 8003E408 8CAF0004 */ lw $t7, 0x4($a1)
    /* 8003E40C 00001025 */ move $v0, $zero
    /* 8003E410 00A03025 */ move $a2, $a1
    /* 8003E414 AC8F000C */ sw $t7, 0xC($a0)
    /* 8003E418 8CB80008 */ lw $t8, 0x8($a1)
    /* 8003E41C 00A04025 */ move $t0, $a1
    /* 8003E420 AC980010 */ sw $t8, 0x10($a0)
    /* 8003E424 24040010 */ addiu $a0, $zero, 0x10
.L8003E428:
    /* 8003E428 8CD9000C */ lw $t9, 0xC($a2)
    /* 8003E42C 24420002 */ addiu $v0, $v0, 0x2
    /* 8003E430 24630008 */ addiu $v1, $v1, 0x8
    /* 8003E434 AC790010 */ sw $t9, 0x10($v1)
    /* 8003E438 8CC9004C */ lw $t1, 0x4C($a2)
    /* 8003E43C 24C60008 */ addiu $a2, $a2, 0x8
    /* 8003E440 24E70002 */ addiu $a3, $a3, 0x2
    /* 8003E444 AC690050 */ sw $t1, 0x50($v1)
    /* 8003E448 910A008C */ lbu $t2, 0x8C($t0)
    /* 8003E44C 25080002 */ addiu $t0, $t0, 0x2
    /* 8003E450 A0EA0096 */ sb $t2, 0x96($a3)
    /* 8003E454 910B009A */ lbu $t3, 0x9A($t0)
    /* 8003E458 A0EB00A6 */ sb $t3, 0xA6($a3)
    /* 8003E45C 8CCC00A4 */ lw $t4, 0xA4($a2)
    /* 8003E460 AC6C00B0 */ sw $t4, 0xB0($v1)
    /* 8003E464 8CCD0008 */ lw $t5, 0x8($a2)
    /* 8003E468 AC6D0014 */ sw $t5, 0x14($v1)
    /* 8003E46C 8CCE0048 */ lw $t6, 0x48($a2)
    /* 8003E470 AC6E0054 */ sw $t6, 0x54($v1)
    /* 8003E474 910F008B */ lbu $t7, 0x8B($t0)
    /* 8003E478 A0EF0097 */ sb $t7, 0x97($a3)
    /* 8003E47C 9118009B */ lbu $t8, 0x9B($t0)
    /* 8003E480 A0F800A7 */ sb $t8, 0xA7($a3)
    /* 8003E484 8CD900A8 */ lw $t9, 0xA8($a2)
    /* 8003E488 1444FFE7 */ bne $v0, $a0, .L8003E428
    /* 8003E48C AC7900B4 */ sw $t9, 0xB4($v1)
    /* 8003E490 03E00008 */ jr $ra
    /* 8003E494 00000000 */ nop
