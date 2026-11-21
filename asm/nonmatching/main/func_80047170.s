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
glabel func_80047170
    /* 80047170 8C830008 */ lw $v1, 0x8($a0)
    /* 80047174 90620000 */ lbu $v0, 0x0($v1)
    /* 80047178 246E0001 */ addiu $t6, $v1, 0x1
    /* 8004717C AC8E0008 */ sw $t6, 0x8($a0)
    /* 80047180 304F0080 */ andi $t7, $v0, 0x80
    /* 80047184 11E0000B */ beqz $t7, .L800471B4
    /* 80047188 00402825 */ move $a1, $v0
    /* 8004718C 3045007F */ andi $a1, $v0, 0x7F
.L80047190:
    /* 80047190 8C830008 */ lw $v1, 0x8($a0)
    /* 80047194 0005C9C0 */ sll $t9, $a1, 7
    /* 80047198 90620000 */ lbu $v0, 0x0($v1)
    /* 8004719C 24780001 */ addiu $t8, $v1, 0x1
    /* 800471A0 AC980008 */ sw $t8, 0x8($a0)
    /* 800471A4 304E007F */ andi $t6, $v0, 0x7F
    /* 800471A8 304F0080 */ andi $t7, $v0, 0x80
    /* 800471AC 15E0FFF8 */ bnez $t7, .L80047190
    /* 800471B0 032E2821 */ addu $a1, $t9, $t6
.L800471B4:
    /* 800471B4 03E00008 */ jr $ra
    /* 800471B8 00A01025 */ move $v0, $a1
