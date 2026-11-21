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
glabel func_80047640
    /* 80047640 8C850008 */ lw $a1, 0x8($a0)
    /* 80047644 90A30000 */ lbu $v1, 0x0($a1)
    /* 80047648 24B90001 */ addiu $t9, $a1, 0x1
    /* 8004764C AC990008 */ sw $t9, 0x8($a0)
    /* 80047650 932E0000 */ lbu $t6, 0x0($t9)
    /* 80047654 0003C200 */ sll $t8, $v1, 8
    /* 80047658 27390001 */ addiu $t9, $t9, 0x1
    /* 8004765C 030E1825 */ or $v1, $t8, $t6
    /* 80047660 00037C00 */ sll $t7, $v1, 16
    /* 80047664 000F1403 */ sra $v0, $t7, 16
    /* 80047668 03E00008 */ jr $ra
    /* 8004766C AC990008 */ sw $t9, 0x8($a0)
