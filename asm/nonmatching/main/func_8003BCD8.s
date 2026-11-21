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
glabel func_8003BCD8
    /* 8003BCD8 3C0EA450 */ lui $t6, %hi(D_A4500004)
    /* 8003BCDC 03E00008 */ jr $ra
    /* 8003BCE0 8DC20004 */ lw $v0, %lo(D_A4500004)($t6)
    /* 8003BCE4 00000000 */ nop
