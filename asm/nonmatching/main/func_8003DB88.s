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
glabel func_8003DB88
    /* 8003DB88 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8003DB8C AFB3002C */ sw $s3, 0x2C($sp)
    /* 8003DB90 AFB50028 */ sw $s5, 0x28($sp)
    /* 8003DB94 00137400 */ sll $t6, $s3, 16
    /* 8003DB98 0015C400 */ sll $t8, $s5, 16
    /* 8003DB9C 0018AC03 */ sra $s5, $t8, 16
    /* 8003DBA0 000E9C03 */ sra $s3, $t6, 16
    /* 8003DBA4 1A20001A */ blez $s1, .L8003DC10
    /* 8003DBA8 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003DBAC 8E590030 */ lw $t9, 0x30($s2)
    /* 8003DBB0 8E440044 */ lw $a0, 0x44($s2)
    /* 8003DBB4 02202825 */ move $a1, $s1
    /* 8003DBB8 0320F809 */ jalr $t9
    /* 8003DBBC 8E460034 */ lw $a2, 0x34($s2)
    /* 8003DBC0 30460007 */ andi $a2, $v0, 0x7
    /* 8003DBC4 02268821 */ addu $s1, $s1, $a2
    /* 8003DBC8 326EFFFF */ andi $t6, $s3, 0xFFFF
    /* 8003DBCC 3C010800 */ lui $at, 0x800
    /* 8003DBD0 01C17825 */ or $t7, $t6, $at
    /* 8003DBD4 32380007 */ andi $t8, $s1, 0x7
    /* 8003DBD8 02002025 */ move $a0, $s0
    /* 8003DBDC 0238C823 */ subu $t9, $s1, $t8
    /* 8003DBE0 272E0008 */ addiu $t6, $t9, 0x8
    /* 8003DBE4 AC8F0000 */ sw $t7, 0x0($a0)
    /* 8003DBE8 26100008 */ addiu $s0, $s0, 0x8
    /* 8003DBEC 31CFFFFF */ andi $t7, $t6, 0xFFFF
    /* 8003DBF0 02002825 */ move $a1, $s0
    /* 8003DBF4 AC8F0004 */ sw $t7, 0x4($a0)
    /* 8003DBF8 0046C823 */ subu $t9, $v0, $a2
    /* 8003DBFC 3C180400 */ lui $t8, 0x400
    /* 8003DC00 ACB80000 */ sw $t8, 0x0($a1)
    /* 8003DC04 ACB90004 */ sw $t9, 0x4($a1)
    /* 8003DC08 10000002 */ b .L8003DC14
    /* 8003DC0C 26100008 */ addiu $s0, $s0, 0x8
.L8003DC10:
    /* 8003DC10 00003025 */ move $a2, $zero
.L8003DC14:
    /* 8003DC14 328E0002 */ andi $t6, $s4, 0x2
    /* 8003DC18 11C00009 */ beqz $t6, .L8003DC40
    /* 8003DC1C 02001025 */ move $v0, $s0
    /* 8003DC20 3C0F0F00 */ lui $t7, 0xF00
    /* 8003DC24 AC4F0000 */ sw $t7, 0x0($v0)
    /* 8003DC28 8E580018 */ lw $t8, 0x18($s2)
    /* 8003DC2C 3C011FFF */ lui $at, 0x1FFF
    /* 8003DC30 3421FFFF */ ori $at, $at, 0xFFFF
    /* 8003DC34 0301C824 */ and $t9, $t8, $at
    /* 8003DC38 AC590004 */ sw $t9, 0x4($v0)
    /* 8003DC3C 26100008 */ addiu $s0, $s0, 0x8
.L8003DC40:
    /* 8003DC40 02667021 */ addu $t6, $s3, $a2
    /* 8003DC44 31CFFFFF */ andi $t7, $t6, 0xFFFF
    /* 8003DC48 3C010800 */ lui $at, 0x800
    /* 8003DC4C 01E1C025 */ or $t8, $t7, $at
    /* 8003DC50 02001825 */ move $v1, $s0
    /* 8003DC54 AC780000 */ sw $t8, 0x0($v1)
    /* 8003DC58 00167840 */ sll $t7, $s6, 1
    /* 8003DC5C 31F8FFFF */ andi $t8, $t7, 0xFFFF
    /* 8003DC60 00157400 */ sll $t6, $s5, 16
    /* 8003DC64 01D8C825 */ or $t9, $t6, $t8
    /* 8003DC68 328F00FF */ andi $t7, $s4, 0xFF
    /* 8003DC6C 26100008 */ addiu $s0, $s0, 0x8
    /* 8003DC70 000F7400 */ sll $t6, $t7, 16
    /* 8003DC74 3C010100 */ lui $at, 0x100
    /* 8003DC78 AC790004 */ sw $t9, 0x4($v1)
    /* 8003DC7C 01C1C025 */ or $t8, $t6, $at
    /* 8003DC80 02002025 */ move $a0, $s0
    /* 8003DC84 AC980000 */ sw $t8, 0x0($a0)
    /* 8003DC88 8E590014 */ lw $t9, 0x14($s2)
    /* 8003DC8C 3C011FFF */ lui $at, 0x1FFF
    /* 8003DC90 3421FFFF */ ori $at, $at, 0xFFFF
    /* 8003DC94 03217824 */ and $t7, $t9, $at
    /* 8003DC98 AC8F0004 */ sw $t7, 0x4($a0)
    /* 8003DC9C AE400040 */ sw $zero, 0x40($s2)
    /* 8003DCA0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003DCA4 26100008 */ addiu $s0, $s0, 0x8
    /* 8003DCA8 02001025 */ move $v0, $s0
    /* 8003DCAC 03E00008 */ jr $ra
    /* 8003DCB0 27BD0018 */ addiu $sp, $sp, 0x18
