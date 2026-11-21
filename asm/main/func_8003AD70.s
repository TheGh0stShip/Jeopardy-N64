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
glabel func_8003AD70
    /* 8003AD70 3C1A8000 */ lui $k0, 0x8000
    /* 8003AD74 375A0014 */ ori $k0, $k0, 0x14
    /* 8003AD78 03400008 */ jr $k0
    /* 8003AD7C 00000000 */ nop
