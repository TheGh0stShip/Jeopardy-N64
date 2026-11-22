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
glabel func_80040554
    /* 80040554 8C980000 */ lw $t8, 0x0($a0)
    /* 80040558 8CAF0004 */ lw $t7, 0x4($a1)
    /* 8004055C 0080C825 */ move $t9, $a0
    /* 80040560 8F0E0004 */ lw $t6, 0x4($t8)
    /* 80040564 01CF082A */ slt $at, $t6, $t7
    /* 80040568 14200007 */ bnez $at, .L80040588
    /* 8004056C 00000000 */ nop
.L80040570:
    /* 80040570 0300C825 */ move $t9, $t8
    /* 80040574 8F180000 */ lw $t8, 0x0($t8)
    /* 80040578 8F0E0004 */ lw $t6, 0x4($t8)
    /* 8004057C 01CF082A */ slt $at, $t6, $t7
    /* 80040580 1020FFFB */ beqz $at, .L80040570
    /* 80040584 00000000 */ nop
.L80040588:
    /* 80040588 8F380000 */ lw $t8, 0x0($t9)
    /* 8004058C ACB80000 */ sw $t8, 0x0($a1)
    /* 80040590 AF250000 */ sw $a1, 0x0($t9)
    /* 80040594 03E00008 */ jr $ra
    /* 80040598 ACA40008 */ sw $a0, 0x8($a1)
