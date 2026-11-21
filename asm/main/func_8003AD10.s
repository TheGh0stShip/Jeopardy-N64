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
glabel func_8003AD10
    /* 8003AD10 409AF000 */ mtc0 $k0, $30 /* ErrorEPC */
    /* 8003AD14 3C1A8004 */ lui $k0, %hi(func_8003AF2C)
    /* 8003AD18 275AAF2C */ addiu $k0, $k0, %lo(func_8003AF2C)
    /* 8003AD1C 03400008 */ jr $k0
    /* 8003AD20 00000000 */ nop
