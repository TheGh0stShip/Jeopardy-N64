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
glabel func_8003AD38
    /* 8003AD38 3C1A8000 */ lui $k0, 0x8000
    /* 8003AD3C 375A0194 */ ori $k0, $k0, 0x194
    /* 8003AD40 03400008 */ jr $k0
    /* 8003AD44 00000000 */ nop
