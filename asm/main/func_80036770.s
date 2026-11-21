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
glabel func_80036770
    /* 80036770 40082000 */ mfc0 $t0, $4 /* Context */
    /* 80036774 31080080 */ andi $t0, $t0, 0x80
    /* 80036778 15000002 */ bnez $t0, .L80036784
    /* 8003677C 00000000 */ nop
    /* 80036780 03E00008 */ jr $ra
.L80036784:
    /* 80036784 40803800 */ mtc0 $zero, $7 /* Reserved07 */
