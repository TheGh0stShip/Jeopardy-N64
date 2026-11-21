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
glabel func_8003D4D8
    /* 8003D4D8 8CAE0000 */ lw $t6, 0x0($a1)
    /* 8003D4DC AC850004 */ sw $a1, 0x4($a0)
    /* 8003D4E0 AC8E0000 */ sw $t6, 0x0($a0)
    /* 8003D4E4 8CA20000 */ lw $v0, 0x0($a1)
    /* 8003D4E8 10400002 */ beqz $v0, .L8003D4F4
    /* 8003D4EC 00000000 */ nop
    /* 8003D4F0 AC440004 */ sw $a0, 0x4($v0)
.L8003D4F4:
    /* 8003D4F4 03E00008 */ jr $ra
    /* 8003D4F8 ACA40000 */ sw $a0, 0x0($a1)
