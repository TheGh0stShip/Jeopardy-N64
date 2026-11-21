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
glabel func_8003AE2C
    /* 8003AE2C 18A00011 */ blez $a1, .L8003AE74
    /* 8003AE30 00000000 */ nop
    /* 8003AE34 240B2000 */ addiu $t3, $zero, 0x2000
    /* 8003AE38 00AB082B */ sltu $at, $a1, $t3
    /* 8003AE3C 1020000F */ beqz $at, func_8003AE7C
    /* 8003AE40 00000000 */ nop
    /* 8003AE44 00804021 */ addu $t0, $a0, $zero
    /* 8003AE48 00854821 */ addu $t1, $a0, $a1
    /* 8003AE4C 0109082B */ sltu $at, $t0, $t1
    /* 8003AE50 10200008 */ beqz $at, .L8003AE74
    /* 8003AE54 00000000 */ nop
    /* 8003AE58 310A000F */ andi $t2, $t0, 0xF
    /* 8003AE5C 2529FFF0 */ addiu $t1, $t1, -0x10
    /* 8003AE60 010A4023 */ subu $t0, $t0, $t2
.L8003AE64:
    /* 8003AE64 BD190000 */ cache 0x19, 0x0($t0)
    /* 8003AE68 0109082B */ sltu $at, $t0, $t1
    /* 8003AE6C 1420FFFD */ bnez $at, .L8003AE64
    /* 8003AE70 25080010 */ addiu $t0, $t0, 0x10
.L8003AE74:
    /* 8003AE74 03E00008 */ jr $ra
    /* 8003AE78 00000000 */ nop
