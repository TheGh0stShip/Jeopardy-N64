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
glabel func_8004CBB8
    /* 8004CBB8 03E00008 */ jr $ra
    /* 8004CBBC 46006004 */ sqrt.s $f0, $f12
    /* 8004CBC0 00000000 */ nop
    /* 8004CBC4 00000000 */ nop
