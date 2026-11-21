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
glabel func_80043318
    /* 80043318 40845800 */ mtc0 $a0, $11 /* Compare */
    /* 8004331C 03E00008 */ jr $ra
    /* 80043320 00000000 */ nop
