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
glabel func_8004C4F8
    /* 8004C4F8 3C088000 */ lui $t0, %hi(D_80000010)
    /* 8004C4FC 240A2000 */ addiu $t2, $zero, 0x2000
    /* 8004C500 010A4821 */ addu $t1, $t0, $t2
    /* 8004C504 2529FFF0 */ addiu $t1, $t1, -0x10
.L8004C508:
    /* 8004C508 BD010000 */ cache 0x01, 0x0($t0)
    /* 8004C50C 0109082B */ sltu $at, $t0, $t1
    /* 8004C510 1420FFFD */ bnez $at, .L8004C508
    /* 8004C514 25080010 */ addiu $t0, $t0, %lo(D_80000010)
    /* 8004C518 03E00008 */ jr $ra
    /* 8004C51C 00000000 */ nop
