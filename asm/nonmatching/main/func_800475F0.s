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
glabel func_800475F0
    /* 800475F0 8C850008 */ lw $a1, 0x8($a0)
    /* 800475F4 90A30000 */ lbu $v1, 0x0($a1)
    /* 800475F8 24AF0001 */ addiu $t7, $a1, 0x1
    /* 800475FC AC8F0008 */ sw $t7, 0x8($a0)
    /* 80047600 91F80000 */ lbu $t8, 0x0($t7)
    /* 80047604 00037600 */ sll $t6, $v1, 24
    /* 80047608 0018CC00 */ sll $t9, $t8, 16
    /* 8004760C 01D91825 */ or $v1, $t6, $t9
    /* 80047610 25EE0001 */ addiu $t6, $t7, 0x1
    /* 80047614 AC8E0008 */ sw $t6, 0x8($a0)
    /* 80047618 91CF0000 */ lbu $t7, 0x0($t6)
    /* 8004761C 25D90001 */ addiu $t9, $t6, 0x1
    /* 80047620 AC990008 */ sw $t9, 0x8($a0)
    /* 80047624 000FC200 */ sll $t8, $t7, 8
    /* 80047628 932E0000 */ lbu $t6, 0x0($t9)
    /* 8004762C 00781825 */ or $v1, $v1, $t8
    /* 80047630 272F0001 */ addiu $t7, $t9, 0x1
    /* 80047634 AC8F0008 */ sw $t7, 0x8($a0)
    /* 80047638 03E00008 */ jr $ra
    /* 8004763C 006E1025 */ or $v0, $v1, $t6
