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
glabel func_80049534
    /* 80049534 908E0000 */ lbu $t6, 0x0($a0)
    /* 80049538 00801825 */ move $v1, $a0
    /* 8004953C 11C00005 */ beqz $t6, .L80049554
    /* 80049540 00000000 */ nop
    /* 80049544 906F0001 */ lbu $t7, 0x1($v1)
.L80049548:
    /* 80049548 24630001 */ addiu $v1, $v1, 0x1
    /* 8004954C 55E0FFFE */ bnel $t7, $zero, .L80049548
    /* 80049550 906F0001 */ lbu $t7, 0x1($v1)
.L80049554:
    /* 80049554 03E00008 */ jr $ra
    /* 80049558 00641023 */ subu $v0, $v1, $a0
