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
glabel func_8003AF14
    /* 8003AF14 40026000 */ mfc0 $v0, $12 /* Status */
    /* 8003AF18 03E00008 */ jr $ra
    /* 8003AF1C 00000000 */ nop
