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
glabel func_8004955C
    /* 8004955C 90830000 */ lbu $v1, 0x0($a0)
    /* 80049560 30AE00FF */ andi $t6, $a1, 0xFF
    /* 80049564 30A200FF */ andi $v0, $a1, 0xFF
    /* 80049568 51C3000A */ beql $t6, $v1, .L80049594
    /* 8004956C 00801025 */ move $v0, $a0
.L80049570:
    /* 80049570 54600004 */ bnel $v1, $zero, .L80049584
    /* 80049574 90830001 */ lbu $v1, 0x1($a0)
    /* 80049578 03E00008 */ jr $ra
    /* 8004957C 00001025 */ move $v0, $zero
    /* 80049580 90830001 */ lbu $v1, 0x1($a0)
.L80049584:
    /* 80049584 24840001 */ addiu $a0, $a0, 0x1
    /* 80049588 1443FFF9 */ bne $v0, $v1, .L80049570
    /* 8004958C 00000000 */ nop
    /* 80049590 00801025 */ move $v0, $a0
.L80049594:
    /* 80049594 03E00008 */ jr $ra
    /* 80049598 00000000 */ nop
    /* 8004959C 00000000 */ nop
    /* 800495A0 00000000 */ nop
    /* 800495A4 00000000 */ nop
