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
glabel func_80045E04
    /* 80045E04 AFA50004 */ sw $a1, 0x4($sp)
    /* 80045E08 AFA60008 */ sw $a2, 0x8($sp)
    /* 80045E0C 8C830064 */ lw $v1, 0x64($a0)
    /* 80045E10 30CF00FF */ andi $t7, $a2, 0xFF
    /* 80045E14 01E03025 */ move $a2, $t7
    /* 80045E18 10600014 */ beqz $v1, .L80045E6C
    /* 80045E1C 30AE00FF */ andi $t6, $a1, 0xFF
    /* 80045E20 01C01025 */ move $v0, $t6
    /* 80045E24 24070004 */ addiu $a3, $zero, 0x4
    /* 80045E28 24050003 */ addiu $a1, $zero, 0x3
    /* 80045E2C 90780032 */ lbu $t8, 0x32($v1)
.L80045E30:
    /* 80045E30 5458000C */ bnel $v0, $t8, .L80045E64
    /* 80045E34 8C630000 */ lw $v1, 0x0($v1)
    /* 80045E38 90790031 */ lbu $t9, 0x31($v1)
    /* 80045E3C 54D90009 */ bnel $a2, $t9, .L80045E64
    /* 80045E40 8C630000 */ lw $v1, 0x0($v1)
    /* 80045E44 90640035 */ lbu $a0, 0x35($v1)
    /* 80045E48 50A40006 */ beql $a1, $a0, .L80045E64
    /* 80045E4C 8C630000 */ lw $v1, 0x0($v1)
    /* 80045E50 50E40004 */ beql $a3, $a0, .L80045E64
    /* 80045E54 8C630000 */ lw $v1, 0x0($v1)
    /* 80045E58 03E00008 */ jr $ra
    /* 80045E5C 00601025 */ move $v0, $v1
    /* 80045E60 8C630000 */ lw $v1, 0x0($v1)
.L80045E64:
    /* 80045E64 5460FFF2 */ bnel $v1, $zero, .L80045E30
    /* 80045E68 90780032 */ lbu $t8, 0x32($v1)
.L80045E6C:
    /* 80045E6C 00001025 */ move $v0, $zero
    /* 80045E70 03E00008 */ jr $ra
    /* 80045E74 00000000 */ nop
