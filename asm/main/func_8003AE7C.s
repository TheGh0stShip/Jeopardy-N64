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
glabel func_8003AE7C
    /* 8003AE7C 3C088000 */ lui $t0, %hi(D_80002000)
    /* 8003AE80 25092000 */ addiu $t1, $t0, %lo(D_80002000)
    /* 8003AE84 2529FFF0 */ addiu $t1, $t1, -0x10
.L8003AE88:
    /* 8003AE88 BD010000 */ cache 0x01, 0x0($t0)
    /* 8003AE8C 0109082B */ sltu $at, $t0, $t1
    /* 8003AE90 1420FFFD */ bnez $at, .L8003AE88
    /* 8003AE94 25080010 */ addiu $t0, $t0, %lo(D_80000010)
    /* 8003AE98 03E00008 */ jr $ra
    /* 8003AE9C 00000000 */ nop
