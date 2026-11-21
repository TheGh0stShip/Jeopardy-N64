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
glabel func_8003AEF0
    /* 8003AEF0 3C088000 */ lui $t0, %hi(D_80004000)
    /* 8003AEF4 25094000 */ addiu $t1, $t0, %lo(D_80004000)
    /* 8003AEF8 2529FFE0 */ addiu $t1, $t1, -0x20
.L8003AEFC:
    /* 8003AEFC BD000000 */ cache 0x00, 0x0($t0)
    /* 8003AF00 0109082B */ sltu $at, $t0, $t1
    /* 8003AF04 1420FFFD */ bnez $at, .L8003AEFC
    /* 8003AF08 25080020 */ addiu $t0, $t0, %lo(D_80000020)
    /* 8003AF0C 03E00008 */ jr $ra
    /* 8003AF10 00000000 */ nop
