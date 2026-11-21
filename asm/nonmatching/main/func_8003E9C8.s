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
glabel func_8003E9C8
    /* 8003E9C8 27BDFEB0 */ addiu $sp, $sp, -0x150
    /* 8003E9CC AFB30020 */ sw $s3, 0x20($sp)
    /* 8003E9D0 AFB10018 */ sw $s1, 0x18($sp)
    /* 8003E9D4 00A08825 */ move $s1, $a1
    /* 8003E9D8 27B30048 */ addiu $s3, $sp, 0x48
    /* 8003E9DC AFBF002C */ sw $ra, 0x2C($sp)
    /* 8003E9E0 AFB50028 */ sw $s5, 0x28($sp)
    /* 8003E9E4 AFB40024 */ sw $s4, 0x24($sp)
    /* 8003E9E8 AFB2001C */ sw $s2, 0x1C($sp)
    /* 8003E9EC AFB00014 */ sw $s0, 0x14($sp)
    /* 8003E9F0 00803825 */ move $a3, $a0
    /* 8003E9F4 00C09025 */ move $s2, $a2
    /* 8003E9F8 8CE50000 */ lw $a1, 0x0($a3)
    /* 8003E9FC 0C00FA2D */ jal alCSeqNew
    /* 8003EA00 02602025 */ move $a0, $s3
    /* 8003EA04 24150004 */ addiu $s5, $zero, 0x4
    /* 8003EA08 27B40140 */ addiu $s4, $sp, 0x140
    /* 8003EA0C 27B00058 */ addiu $s0, $sp, 0x58
    /* 8003EA10 8FAE004C */ lw $t6, 0x4C($sp)
.L8003EA14:
    /* 8003EA14 27A40048 */ addiu $a0, $sp, 0x48
    /* 8003EA18 00801825 */ move $v1, $a0
    /* 8003EA1C AE2E0000 */ sw $t6, 0x0($s1)
    /* 8003EA20 8FAF0054 */ lw $t7, 0x54($sp)
    /* 8003EA24 02201025 */ move $v0, $s1
    /* 8003EA28 02202825 */ move $a1, $s1
    /* 8003EA2C AE2F0004 */ sw $t7, 0x4($s1)
    /* 8003EA30 8FB80058 */ lw $t8, 0x58($sp)
    /* 8003EA34 AE380008 */ sw $t8, 0x8($s1)
.L8003EA38:
    /* 8003EA38 8C680018 */ lw $t0, 0x18($v1)
    /* 8003EA3C 24840004 */ addiu $a0, $a0, 0x4
    /* 8003EA40 24420010 */ addiu $v0, $v0, 0x10
    /* 8003EA44 AC48FFFC */ sw $t0, -0x4($v0)
    /* 8003EA48 8C690058 */ lw $t1, 0x58($v1)
    /* 8003EA4C 24630010 */ addiu $v1, $v1, 0x10
    /* 8003EA50 24A50004 */ addiu $a1, $a1, 0x4
    /* 8003EA54 AC49003C */ sw $t1, 0x3C($v0)
    /* 8003EA58 908A0094 */ lbu $t2, 0x94($a0)
    /* 8003EA5C A0AA0088 */ sb $t2, 0x88($a1)
    /* 8003EA60 908B00A4 */ lbu $t3, 0xA4($a0)
    /* 8003EA64 A0AB0098 */ sb $t3, 0x98($a1)
    /* 8003EA68 8C6C00A8 */ lw $t4, 0xA8($v1)
    /* 8003EA6C AC4C009C */ sw $t4, 0x9C($v0)
    /* 8003EA70 8C6D000C */ lw $t5, 0xC($v1)
    /* 8003EA74 AC4D0000 */ sw $t5, 0x0($v0)
    /* 8003EA78 8C6E004C */ lw $t6, 0x4C($v1)
    /* 8003EA7C AC4E0040 */ sw $t6, 0x40($v0)
    /* 8003EA80 908F0095 */ lbu $t7, 0x95($a0)
    /* 8003EA84 A0AF0089 */ sb $t7, 0x89($a1)
    /* 8003EA88 909800A5 */ lbu $t8, 0xA5($a0)
    /* 8003EA8C A0B80099 */ sb $t8, 0x99($a1)
    /* 8003EA90 8C7900AC */ lw $t9, 0xAC($v1)
    /* 8003EA94 AC5900A0 */ sw $t9, 0xA0($v0)
    /* 8003EA98 8C680010 */ lw $t0, 0x10($v1)
    /* 8003EA9C AC480004 */ sw $t0, 0x4($v0)
    /* 8003EAA0 8C690050 */ lw $t1, 0x50($v1)
    /* 8003EAA4 AC490044 */ sw $t1, 0x44($v0)
    /* 8003EAA8 908A0096 */ lbu $t2, 0x96($a0)
    /* 8003EAAC A0AA008A */ sb $t2, 0x8A($a1)
    /* 8003EAB0 908B00A6 */ lbu $t3, 0xA6($a0)
    /* 8003EAB4 A0AB009A */ sb $t3, 0x9A($a1)
    /* 8003EAB8 8C6C00B0 */ lw $t4, 0xB0($v1)
    /* 8003EABC AC4C00A4 */ sw $t4, 0xA4($v0)
    /* 8003EAC0 8C6D0014 */ lw $t5, 0x14($v1)
    /* 8003EAC4 AC4D0008 */ sw $t5, 0x8($v0)
    /* 8003EAC8 8C6E0054 */ lw $t6, 0x54($v1)
    /* 8003EACC AC4E0048 */ sw $t6, 0x48($v0)
    /* 8003EAD0 908F0097 */ lbu $t7, 0x97($a0)
    /* 8003EAD4 A0AF008B */ sb $t7, 0x8B($a1)
    /* 8003EAD8 909800A7 */ lbu $t8, 0xA7($a0)
    /* 8003EADC A0B8009B */ sb $t8, 0x9B($a1)
    /* 8003EAE0 8C7900B4 */ lw $t9, 0xB4($v1)
    /* 8003EAE4 1490FFD4 */ bne $a0, $s0, .L8003EA38
    /* 8003EAE8 AC5900A8 */ sw $t9, 0xA8($v0)
    /* 8003EAEC 02602025 */ move $a0, $s3
    /* 8003EAF0 0C00F96F */ jal alCSeqNextEvent
    /* 8003EAF4 02802825 */ move $a1, $s4
    /* 8003EAF8 87A80140 */ lh $t0, 0x140($sp)
    /* 8003EAFC 8FA90054 */ lw $t1, 0x54($sp)
    /* 8003EB00 11150003 */ beq $t0, $s5, .L8003EB10
    /* 8003EB04 0132082B */ sltu $at, $t1, $s2
    /* 8003EB08 5420FFC2 */ bnel $at, $zero, .L8003EA14
    /* 8003EB0C 8FAE004C */ lw $t6, 0x4C($sp)
.L8003EB10:
    /* 8003EB10 8FBF002C */ lw $ra, 0x2C($sp)
    /* 8003EB14 8FB00014 */ lw $s0, 0x14($sp)
    /* 8003EB18 8FB10018 */ lw $s1, 0x18($sp)
    /* 8003EB1C 8FB2001C */ lw $s2, 0x1C($sp)
    /* 8003EB20 8FB30020 */ lw $s3, 0x20($sp)
    /* 8003EB24 8FB40024 */ lw $s4, 0x24($sp)
    /* 8003EB28 8FB50028 */ lw $s5, 0x28($sp)
    /* 8003EB2C 03E00008 */ jr $ra
    /* 8003EB30 27BD0150 */ addiu $sp, $sp, 0x150
