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
glabel func_8003E1D8
    /* 8003E1D8 24010002 */ addiu $at, $zero, 0x2
    /* 8003E1DC 14A10008 */ bne $a1, $at, .L8003E200
    /* 8003E1E0 8C82001C */ lw $v0, 0x1C($a0)
    /* 8003E1E4 8C8E0014 */ lw $t6, 0x14($a0)
    /* 8003E1E8 000E7880 */ sll $t7, $t6, 2
    /* 8003E1EC 004FC021 */ addu $t8, $v0, $t7
    /* 8003E1F0 AF060000 */ sw $a2, 0x0($t8)
    /* 8003E1F4 8C990014 */ lw $t9, 0x14($a0)
    /* 8003E1F8 27280001 */ addiu $t0, $t9, 0x1
    /* 8003E1FC AC880014 */ sw $t0, 0x14($a0)
.L8003E200:
    /* 8003E200 03E00008 */ jr $ra
    /* 8003E204 00001025 */ move $v0, $zero
