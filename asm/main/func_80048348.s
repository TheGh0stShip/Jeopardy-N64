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
glabel func_80048348
    /* 80048348 40026000 */ mfc0 $v0, $12 /* Status */
    /* 8004834C 03E00008 */ jr $ra
    /* 80048350 00000000 */ nop
