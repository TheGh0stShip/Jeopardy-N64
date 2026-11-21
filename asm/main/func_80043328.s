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
glabel func_80043328
    /* 80043328 40024800 */ mfc0 $v0, $9 /* Count */
    /* 8004332C 03E00008 */ jr $ra
    /* 80043330 00000000 */ nop
