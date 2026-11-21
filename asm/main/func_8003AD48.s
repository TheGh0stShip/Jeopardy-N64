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
glabel func_8003AD48
    /* 8003AD48 409AF000 */ mtc0 $k0, $30 /* ErrorEPC */
    /* 8003AD4C 3C1A8004 */ lui $k0, 0x8004
