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
glabel func_8003C498
    /* 8003C498 28A1000C */ slti $at, $a1, 0xC
    /* 8003C49C 1420001D */ bnez $at, .L8003C514
    /* 8003C4A0 00041823 */ negu $v1, $a0
    /* 8003C4A4 30630003 */ andi $v1, $v1, 0x3
    /* 8003C4A8 10600003 */ beqz $v1, .L8003C4B8
    /* 8003C4AC 00A32823 */ subu $a1, $a1, $v1
    /* 8003C4B0 A8800000 */ swl $zero, 0x0($a0)
    /* 8003C4B4 00832021 */ addu $a0, $a0, $v1
.L8003C4B8:
    /* 8003C4B8 2401FFE0 */ addiu $at, $zero, -0x20
    /* 8003C4BC 00A13824 */ and $a3, $a1, $at
    /* 8003C4C0 10E0000C */ beqz $a3, .L8003C4F4
    /* 8003C4C4 00A72823 */ subu $a1, $a1, $a3
    /* 8003C4C8 00E43821 */ addu $a3, $a3, $a0
.L8003C4CC:
    /* 8003C4CC 24840020 */ addiu $a0, $a0, 0x20
    /* 8003C4D0 AC80FFE0 */ sw $zero, -0x20($a0)
    /* 8003C4D4 AC80FFE4 */ sw $zero, -0x1C($a0)
    /* 8003C4D8 AC80FFE8 */ sw $zero, -0x18($a0)
    /* 8003C4DC AC80FFEC */ sw $zero, -0x14($a0)
    /* 8003C4E0 AC80FFF0 */ sw $zero, -0x10($a0)
    /* 8003C4E4 AC80FFF4 */ sw $zero, -0xC($a0)
    /* 8003C4E8 AC80FFF8 */ sw $zero, -0x8($a0)
    /* 8003C4EC 1487FFF7 */ bne $a0, $a3, .L8003C4CC
    /* 8003C4F0 AC80FFFC */ sw $zero, -0x4($a0)
.L8003C4F4:
    /* 8003C4F4 2401FFFC */ addiu $at, $zero, -0x4
    /* 8003C4F8 00A13824 */ and $a3, $a1, $at
    /* 8003C4FC 10E00005 */ beqz $a3, .L8003C514
    /* 8003C500 00A72823 */ subu $a1, $a1, $a3
    /* 8003C504 00E43821 */ addu $a3, $a3, $a0
.L8003C508:
    /* 8003C508 24840004 */ addiu $a0, $a0, 0x4
    /* 8003C50C 1487FFFE */ bne $a0, $a3, .L8003C508
    /* 8003C510 AC80FFFC */ sw $zero, -0x4($a0)
.L8003C514:
    /* 8003C514 18A00005 */ blez $a1, .L8003C52C
    /* 8003C518 00000000 */ nop
    /* 8003C51C 00A42821 */ addu $a1, $a1, $a0
.L8003C520:
    /* 8003C520 24840001 */ addiu $a0, $a0, 0x1
    /* 8003C524 1485FFFE */ bne $a0, $a1, .L8003C520
    /* 8003C528 A080FFFF */ sb $zero, -0x1($a0)
.L8003C52C:
    /* 8003C52C 03E00008 */ jr $ra
    /* 8003C530 00000000 */ nop
    /* 8003C534 00000000 */ nop
