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
glabel func_8004059C
    /* 8004059C 8C820000 */ lw $v0, 0x0($a0)
    /* 800405A0 8C590000 */ lw $t9, 0x0($v0)
    /* 800405A4 03E00008 */ jr $ra
    /* 800405A8 AC990000 */ sw $t9, 0x0($a0)
