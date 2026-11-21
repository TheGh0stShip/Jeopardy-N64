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
glabel func_8003AD50
    /* 8003AD50 275AAF8C */ addiu $k0, $k0, -0x5074
    /* 8003AD54 03400008 */ jr $k0
    /* 8003AD58 00000000 */ nop
