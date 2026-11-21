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
glabel func_80048078
    /* 80048078 40846000 */ mtc0 $a0, $12 /* Status */
    /* 8004807C 00000000 */ nop
    /* 80048080 03E00008 */ jr $ra
    /* 80048084 00000000 */ nop
