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
glabel func_8003AF2C
    /* 8003AF2C 3C1A800D */ lui $k0, %hi(D_800D0220)
    /* 8003AF30 275A0220 */ addiu $k0, $k0, %lo(D_800D0220)
    /* 8003AF34 FF410328 */ sd $at, 0x328($k0)
    /* 8003AF38 FF420330 */ sd $v0, 0x330($k0)
