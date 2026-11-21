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
glabel func_80045DBC
    /* 80045DBC 908F0031 */ lbu $t7, 0x31($a0)
    /* 80045DC0 8CAE0060 */ lw $t6, 0x60($a1)
    /* 80045DC4 8C890020 */ lw $t1, 0x20($a0)
    /* 80045DC8 000FC100 */ sll $t8, $t7, 4
    /* 80045DCC 01D8C821 */ addu $t9, $t6, $t8
    /* 80045DD0 93280007 */ lbu $t0, 0x7($t9)
    /* 80045DD4 912A000C */ lbu $t2, 0xC($t1)
    /* 80045DD8 010A1821 */ addu $v1, $t0, $t2
    /* 80045DDC 2463FFC0 */ addiu $v1, $v1, -0x40
    /* 80045DE0 5C600003 */ bgtzl $v1, .L80045DF0
    /* 80045DE4 2861007F */ slti $at, $v1, 0x7F
    /* 80045DE8 00001825 */ move $v1, $zero
    /* 80045DEC 2861007F */ slti $at, $v1, 0x7F
.L80045DF0:
    /* 80045DF0 14200002 */ bnez $at, .L80045DFC
    /* 80045DF4 00000000 */ nop
    /* 80045DF8 2403007F */ addiu $v1, $zero, 0x7F
.L80045DFC:
    /* 80045DFC 03E00008 */ jr $ra
    /* 80045E00 306200FF */ andi $v0, $v1, 0xFF
