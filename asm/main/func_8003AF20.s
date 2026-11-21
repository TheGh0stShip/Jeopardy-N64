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
glabel func_8003AF20
    /* 8003AF20 40846000 */ mtc0 $a0, $12 /* Status */
    /* 8003AF24 03E00008 */ jr $ra
    /* 8003AF28 00000000 */ nop
