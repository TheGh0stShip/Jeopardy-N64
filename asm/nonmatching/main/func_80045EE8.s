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
glabel func_80045EE8
    /* 80045EE8 AFA50004 */ sw $a1, 0x4($sp)
    /* 80045EEC AFA60008 */ sw $a2, 0x8($sp)
    /* 80045EF0 AFA7000C */ sw $a3, 0xC($sp)
    /* 80045EF4 8C980060 */ lw $t8, 0x60($a0)
    /* 80045EF8 30EF00FF */ andi $t7, $a3, 0xFF
    /* 80045EFC 000FC900 */ sll $t9, $t7, 4
    /* 80045F00 03196021 */ addu $t4, $t8, $t9
    /* 80045F04 8D820000 */ lw $v0, 0x0($t4)
    /* 80045F08 30AE00FF */ andi $t6, $a1, 0xFF
    /* 80045F0C 30CB00FF */ andi $t3, $a2, 0xFF
    /* 80045F10 8448000E */ lh $t0, 0xE($v0)
    /* 80045F14 24030001 */ addiu $v1, $zero, 0x1
    /* 80045F18 01C04825 */ move $t1, $t6
    /* 80045F1C 1900002E */ blez $t0, .L80045FD8
    /* 80045F20 00682821 */ addu $a1, $v1, $t0
.L80045F24:
    /* 80045F24 04A10003 */ bgez $a1, .L80045F34
    /* 80045F28 00056843 */ sra $t5, $a1, 1
    /* 80045F2C 24A10001 */ addiu $at, $a1, 0x1
    /* 80045F30 00016843 */ sra $t5, $at, 1
.L80045F34:
    /* 80045F34 000D7080 */ sll $t6, $t5, 2
    /* 80045F38 004E7821 */ addu $t7, $v0, $t6
    /* 80045F3C 8DE7000C */ lw $a3, 0xC($t7)
    /* 80045F40 01A02025 */ move $a0, $t5
    /* 80045F44 8CE60004 */ lw $a2, 0x4($a3)
    /* 80045F48 90CA0002 */ lbu $t2, 0x2($a2)
    /* 80045F4C 012A082A */ slt $at, $t1, $t2
    /* 80045F50 54200011 */ bnel $at, $zero, .L80045F98
    /* 80045F54 012A082A */ slt $at, $t1, $t2
    /* 80045F58 90D80003 */ lbu $t8, 0x3($a2)
    /* 80045F5C 0309082A */ slt $at, $t8, $t1
    /* 80045F60 5420000D */ bnel $at, $zero, .L80045F98
    /* 80045F64 012A082A */ slt $at, $t1, $t2
    /* 80045F68 90D90000 */ lbu $t9, 0x0($a2)
    /* 80045F6C 01602825 */ move $a1, $t3
    /* 80045F70 0179082A */ slt $at, $t3, $t9
    /* 80045F74 54200008 */ bnel $at, $zero, .L80045F98
    /* 80045F78 012A082A */ slt $at, $t1, $t2
    /* 80045F7C 90CC0001 */ lbu $t4, 0x1($a2)
    /* 80045F80 0185082A */ slt $at, $t4, $a1
    /* 80045F84 54200004 */ bnel $at, $zero, .L80045F98
    /* 80045F88 012A082A */ slt $at, $t1, $t2
    /* 80045F8C 03E00008 */ jr $ra
    /* 80045F90 00E01025 */ move $v0, $a3
    /* 80045F94 012A082A */ slt $at, $t1, $t2
.L80045F98:
    /* 80045F98 14200009 */ bnez $at, .L80045FC0
    /* 80045F9C 00000000 */ nop
    /* 80045FA0 90CD0000 */ lbu $t5, 0x0($a2)
    /* 80045FA4 016D082A */ slt $at, $t3, $t5
    /* 80045FA8 50200008 */ beql $at, $zero, .L80045FCC
    /* 80045FAC 24830001 */ addiu $v1, $a0, 0x1
    /* 80045FB0 90CE0003 */ lbu $t6, 0x3($a2)
    /* 80045FB4 01C9082A */ slt $at, $t6, $t1
    /* 80045FB8 54200004 */ bnel $at, $zero, .L80045FCC
    /* 80045FBC 24830001 */ addiu $v1, $a0, 0x1
.L80045FC0:
    /* 80045FC0 10000002 */ b .L80045FCC
    /* 80045FC4 2488FFFF */ addiu $t0, $a0, -0x1
    /* 80045FC8 24830001 */ addiu $v1, $a0, 0x1
.L80045FCC:
    /* 80045FCC 0103082A */ slt $at, $t0, $v1
    /* 80045FD0 5020FFD4 */ beql $at, $zero, .L80045F24
    /* 80045FD4 00682821 */ addu $a1, $v1, $t0
.L80045FD8:
    /* 80045FD8 00001025 */ move $v0, $zero
    /* 80045FDC 03E00008 */ jr $ra
    /* 80045FE0 00000000 */ nop
