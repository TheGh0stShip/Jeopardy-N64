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
glabel func_80036764
    /* 80036764 00000000 */ nop
    /* 80036768 00E00008 */ jr $a3
    /* 8003676C 40803800 */ mtc0 $zero, $7 /* Reserved07 */
