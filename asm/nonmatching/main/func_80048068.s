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
glabel func_80048068
    /* 80048068 4442F800 */ cfc1 $v0, $31 /* FpcCsr */
    /* 8004806C 44C4F800 */ ctc1 $a0, $31 /* FpcCsr */
    /* 80048070 03E00008 */ jr $ra
    /* 80048074 00000000 */ nop
