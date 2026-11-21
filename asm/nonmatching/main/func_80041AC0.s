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
glabel func_80041AC0
    /* 80041AC0 848E0002 */ lh $t6, 0x2($a0)
    /* 80041AC4 00001025 */ move $v0, $zero
    /* 80041AC8 00801825 */ move $v1, $a0
    /* 80041ACC 19C0000A */ blez $t6, .L80041AF8
    /* 80041AD0 00000000 */ nop
    /* 80041AD4 8C6F0004 */ lw $t7, 0x4($v1)
.L80041AD8:
    /* 80041AD8 24420001 */ addiu $v0, $v0, 0x1
    /* 80041ADC 24630008 */ addiu $v1, $v1, 0x8
    /* 80041AE0 01E5C021 */ addu $t8, $t7, $a1
    /* 80041AE4 AC78FFFC */ sw $t8, -0x4($v1)
    /* 80041AE8 84990002 */ lh $t9, 0x2($a0)
    /* 80041AEC 0059082A */ slt $at, $v0, $t9
    /* 80041AF0 5420FFF9 */ bnel $at, $zero, .L80041AD8
    /* 80041AF4 8C6F0004 */ lw $t7, 0x4($v1)
.L80041AF8:
    /* 80041AF8 03E00008 */ jr $ra
    /* 80041AFC 00000000 */ nop
    /* 80041B00 00000000 */ nop
    /* 80041B04 00000000 */ nop
