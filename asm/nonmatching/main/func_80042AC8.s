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
glabel func_80042AC8
    /* 80042AC8 24010002 */ addiu $at, $zero, 0x2
    /* 80042ACC 14A10008 */ bne $a1, $at, .L80042AF0
    /* 80042AD0 8C82001C */ lw $v0, 0x1C($a0)
    /* 80042AD4 8C8E0014 */ lw $t6, 0x14($a0)
    /* 80042AD8 000E7880 */ sll $t7, $t6, 2
    /* 80042ADC 004FC021 */ addu $t8, $v0, $t7
    /* 80042AE0 AF060000 */ sw $a2, 0x0($t8)
    /* 80042AE4 8C990014 */ lw $t9, 0x14($a0)
    /* 80042AE8 27280001 */ addiu $t0, $t9, 0x1
    /* 80042AEC AC880014 */ sw $t0, 0x14($a0)
.L80042AF0:
    /* 80042AF0 03E00008 */ jr $ra
    /* 80042AF4 00001025 */ move $v0, $zero
