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
glabel func_80040420
    /* 80040420 3C013000 */ lui $at, 0x3000
    /* 80040424 01014824 */ and $t1, $t0, $at
    /* 80040428 00094F02 */ srl $t1, $t1, 28
    /* 8004042C 240A0001 */ addiu $t2, $zero, 0x1
    /* 80040430 152AFFC2 */ bne $t1, $t2, L_8004033C
    /* 80040434 00000000 */ nop
    /* 80040438 8F5B0118 */ lw $k1, 0x118($k0)
    /* 8004043C 3C012000 */ lui $at, 0x2000
    /* 80040440 24090001 */ addiu $t1, $zero, 0x1
    /* 80040444 0361D825 */ or $k1, $k1, $at
    /* 80040448 AF490018 */ sw $t1, 0x18($k0)
    /* 8004044C 1000FFB5 */ b L_80040324
    /* 80040450 AF5B0118 */ sw $k1, 0x118($k0)
