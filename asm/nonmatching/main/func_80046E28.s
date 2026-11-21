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
glabel func_80046E28
    /* 80046E28 27BDFFC8 */ addiu $sp, $sp, -0x38
    /* 80046E2C AFBF0034 */ sw $ra, 0x34($sp)
    /* 80046E30 AFB70030 */ sw $s7, 0x30($sp)
    /* 80046E34 AFB6002C */ sw $s6, 0x2C($sp)
    /* 80046E38 AFB50028 */ sw $s5, 0x28($sp)
    /* 80046E3C AFB40024 */ sw $s4, 0x24($sp)
    /* 80046E40 AFB30020 */ sw $s3, 0x20($sp)
    /* 80046E44 AFB2001C */ sw $s2, 0x1C($sp)
    /* 80046E48 AFB10018 */ sw $s1, 0x18($sp)
    /* 80046E4C AFB00014 */ sw $s0, 0x14($sp)
    /* 80046E50 8C900050 */ lw $s0, 0x50($a0)
    /* 80046E54 00A09025 */ move $s2, $a1
    /* 80046E58 0080A825 */ move $s5, $a0
    /* 80046E5C 12000028 */ beqz $s0, .L80046F00
    /* 80046E60 24170017 */ addiu $s7, $zero, 0x17
    /* 80046E64 24160016 */ addiu $s6, $zero, 0x16
.L80046E68:
    /* 80046E68 8613000C */ lh $s3, 0xC($s0)
    /* 80046E6C 8E110000 */ lw $s1, 0x0($s0)
    /* 80046E70 52760004 */ beql $s3, $s6, .L80046E84
    /* 80046E74 8E0E0010 */ lw $t6, 0x10($s0)
    /* 80046E78 1677001F */ bne $s3, $s7, .L80046EF8
    /* 80046E7C 00000000 */ nop
    /* 80046E80 8E0E0010 */ lw $t6, 0x10($s0)
.L80046E84:
    /* 80046E84 164E001C */ bne $s2, $t6, .L80046EF8
    /* 80046E88 00000000 */ nop
    /* 80046E8C 8EB90078 */ lw $t9, 0x78($s5)
    /* 80046E90 8E040014 */ lw $a0, 0x14($s0)
    /* 80046E94 26B40048 */ addiu $s4, $s5, 0x48
    /* 80046E98 0320F809 */ jalr $t9
    /* 80046E9C 00000000 */ nop
    /* 80046EA0 0C00F52A */ jal alUnlink
    /* 80046EA4 02002025 */ move $a0, $s0
    /* 80046EA8 12200005 */ beqz $s1, .L80046EC0
    /* 80046EAC 02002025 */ move $a0, $s0
    /* 80046EB0 8E2F0008 */ lw $t7, 0x8($s1)
    /* 80046EB4 8E180008 */ lw $t8, 0x8($s0)
    /* 80046EB8 01F84021 */ addu $t0, $t7, $t8
    /* 80046EBC AE280008 */ sw $t0, 0x8($s1)
.L80046EC0:
    /* 80046EC0 0C00F536 */ jal alLink
    /* 80046EC4 02802825 */ move $a1, $s4
    /* 80046EC8 56760006 */ bnel $s3, $s6, .L80046EE4
    /* 80046ECC 924B0037 */ lbu $t3, 0x37($s2)
    /* 80046ED0 92490037 */ lbu $t1, 0x37($s2)
    /* 80046ED4 312A00FE */ andi $t2, $t1, 0xFE
    /* 80046ED8 10000004 */ b .L80046EEC
    /* 80046EDC A24A0037 */ sb $t2, 0x37($s2)
    /* 80046EE0 924B0037 */ lbu $t3, 0x37($s2)
.L80046EE4:
    /* 80046EE4 316C00FD */ andi $t4, $t3, 0xFD
    /* 80046EE8 A24C0037 */ sb $t4, 0x37($s2)
.L80046EEC:
    /* 80046EEC 924D0037 */ lbu $t5, 0x37($s2)
    /* 80046EF0 51A00004 */ beql $t5, $zero, .L80046F04
    /* 80046EF4 8FBF0034 */ lw $ra, 0x34($sp)
.L80046EF8:
    /* 80046EF8 1620FFDB */ bnez $s1, .L80046E68
    /* 80046EFC 02208025 */ move $s0, $s1
.L80046F00:
    /* 80046F00 8FBF0034 */ lw $ra, 0x34($sp)
.L80046F04:
    /* 80046F04 8FB00014 */ lw $s0, 0x14($sp)
    /* 80046F08 8FB10018 */ lw $s1, 0x18($sp)
    /* 80046F0C 8FB2001C */ lw $s2, 0x1C($sp)
    /* 80046F10 8FB30020 */ lw $s3, 0x20($sp)
    /* 80046F14 8FB40024 */ lw $s4, 0x24($sp)
    /* 80046F18 8FB50028 */ lw $s5, 0x28($sp)
    /* 80046F1C 8FB6002C */ lw $s6, 0x2C($sp)
    /* 80046F20 8FB70030 */ lw $s7, 0x30($sp)
    /* 80046F24 03E00008 */ jr $ra
    /* 80046F28 27BD0038 */ addiu $sp, $sp, 0x38
