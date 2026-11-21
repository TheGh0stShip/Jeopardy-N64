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
glabel func_8003FE28
    /* 8003FE28 3C1A8004 */ lui $k0, %hi(func_8003FE38)
    /* 8003FE2C 275AFE38 */ addiu $k0, $k0, %lo(func_8003FE38)
    /* 8003FE30 03400008 */ jr $k0
    /* 8003FE34 00000000 */ nop
