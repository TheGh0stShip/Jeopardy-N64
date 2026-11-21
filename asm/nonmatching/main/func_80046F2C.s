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
glabel func_80046F2C
    /* 80046F2C 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 80046F30 AFBF0024 */ sw $ra, 0x24($sp)
    /* 80046F34 AFB20020 */ sw $s2, 0x20($sp)
    /* 80046F38 AFB1001C */ sw $s1, 0x1C($sp)
    /* 80046F3C AFB00018 */ sw $s0, 0x18($sp)
    /* 80046F40 908E0034 */ lbu $t6, 0x34($a0)
    /* 80046F44 00808825 */ move $s1, $a0
    /* 80046F48 00008025 */ move $s0, $zero
    /* 80046F4C 19C0000D */ blez $t6, .L80046F84
    /* 80046F50 00009025 */ move $s2, $zero
    /* 80046F54 8E2F0060 */ lw $t7, 0x60($s1)
.L80046F58:
    /* 80046F58 02202025 */ move $a0, $s1
    /* 80046F5C 02002825 */ move $a1, $s0
    /* 80046F60 01F2C021 */ addu $t8, $t7, $s2
    /* 80046F64 0C01160F */ jal __resetPerfChanState
    /* 80046F68 AF000000 */ sw $zero, 0x0($t8)
    /* 80046F6C 92390034 */ lbu $t9, 0x34($s1)
    /* 80046F70 26100001 */ addiu $s0, $s0, 0x1
    /* 80046F74 26520010 */ addiu $s2, $s2, 0x10
    /* 80046F78 0219082A */ slt $at, $s0, $t9
    /* 80046F7C 5420FFF6 */ bnel $at, $zero, .L80046F58
    /* 80046F80 8E2F0060 */ lw $t7, 0x60($s1)
.L80046F84:
    /* 80046F84 8FBF0024 */ lw $ra, 0x24($sp)
    /* 80046F88 8FB00018 */ lw $s0, 0x18($sp)
    /* 80046F8C 8FB1001C */ lw $s1, 0x1C($sp)
    /* 80046F90 8FB20020 */ lw $s2, 0x20($sp)
    /* 80046F94 03E00008 */ jr $ra
    /* 80046F98 27BD0028 */ addiu $sp, $sp, 0x28
