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
glabel func_8003FE38
    /* 8003FE38 3C1A800D */ lui $k0, %hi(D_800D2F80)
    /* 8003FE3C 275A2F80 */ addiu $k0, $k0, %lo(D_800D2F80)
    /* 8003FE40 FF410020 */ sd $at, 0x20($k0)
    /* 8003FE44 401B6000 */ mfc0 $k1, $12 /* Status */
    /* 8003FE48 AF5B0118 */ sw $k1, 0x118($k0)
    /* 8003FE4C 2401FFFC */ addiu $at, $zero, -0x4
    /* 8003FE50 0361D824 */ and $k1, $k1, $at
    /* 8003FE54 409B6000 */ mtc0 $k1, $12 /* Status */
    /* 8003FE58 FF480058 */ sd $t0, 0x58($k0)
    /* 8003FE5C FF490060 */ sd $t1, 0x60($k0)
    /* 8003FE60 FF4A0068 */ sd $t2, 0x68($k0)
