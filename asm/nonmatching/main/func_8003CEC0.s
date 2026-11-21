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
glabel func_8003CEC0
    /* 8003CEC0 3C028007 */ lui $v0, %hi(D_80071FF8)
    /* 8003CEC4 8C421FF8 */ lw $v0, %lo(D_80071FF8)($v0)
    /* 8003CEC8 8C4E002C */ lw $t6, 0x2C($v0)
    /* 8003CECC AC8E0000 */ sw $t6, 0x0($a0)
    /* 8003CED0 03E00008 */ jr $ra
    /* 8003CED4 AC44002C */ sw $a0, 0x2C($v0)
