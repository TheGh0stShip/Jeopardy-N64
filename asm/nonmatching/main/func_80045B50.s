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
glabel func_80045B50
    /* 80045B50 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 80045B54 AFBF0014 */ sw $ra, 0x14($sp)
    /* 80045B58 8C870050 */ lw $a3, 0x50($a0)
    /* 80045B5C 00805025 */ move $t2, $a0
    /* 80045B60 00004025 */ move $t0, $zero
    /* 80045B64 10E0001F */ beqz $a3, .L80045BE4
    /* 80045B68 24090001 */ addiu $t1, $zero, 0x1
    /* 80045B6C 24040005 */ addiu $a0, $zero, 0x5
.L80045B70:
    /* 80045B70 84EE000C */ lh $t6, 0xC($a3)
    /* 80045B74 8CE30008 */ lw $v1, 0x8($a3)
    /* 80045B78 8CE20000 */ lw $v0, 0x0($a3)
    /* 80045B7C 148E0017 */ bne $a0, $t6, .L80045BDC
    /* 80045B80 01034021 */ addu $t0, $t0, $v1
    /* 80045B84 8CEF0010 */ lw $t7, 0x10($a3)
    /* 80045B88 14AF0014 */ bne $a1, $t7, .L80045BDC
    /* 80045B8C 00C8082A */ slt $at, $a2, $t0
    /* 80045B90 10200010 */ beqz $at, .L80045BD4
    /* 80045B94 00E02025 */ move $a0, $a3
    /* 80045B98 50400005 */ beql $v0, $zero, .L80045BB0
    /* 80045B9C AFA7002C */ sw $a3, 0x2C($sp)
    /* 80045BA0 8C580008 */ lw $t8, 0x8($v0)
    /* 80045BA4 0303C821 */ addu $t9, $t8, $v1
    /* 80045BA8 AC590008 */ sw $t9, 0x8($v0)
    /* 80045BAC AFA7002C */ sw $a3, 0x2C($sp)
.L80045BB0:
    /* 80045BB0 A3A9001F */ sb $t1, 0x1F($sp)
    /* 80045BB4 0C00F52A */ jal alUnlink
    /* 80045BB8 AFAA0030 */ sw $t2, 0x30($sp)
    /* 80045BBC 8FAA0030 */ lw $t2, 0x30($sp)
    /* 80045BC0 8FA4002C */ lw $a0, 0x2C($sp)
    /* 80045BC4 0C00F536 */ jal alLink
    /* 80045BC8 25450048 */ addiu $a1, $t2, 0x48
    /* 80045BCC 10000005 */ b .L80045BE4
    /* 80045BD0 93A9001F */ lbu $t1, 0x1F($sp)
.L80045BD4:
    /* 80045BD4 10000003 */ b .L80045BE4
    /* 80045BD8 00004825 */ move $t1, $zero
.L80045BDC:
    /* 80045BDC 1440FFE4 */ bnez $v0, .L80045B70
    /* 80045BE0 00403825 */ move $a3, $v0
.L80045BE4:
    /* 80045BE4 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80045BE8 27BD0030 */ addiu $sp, $sp, 0x30
    /* 80045BEC 01201025 */ move $v0, $t1
    /* 80045BF0 03E00008 */ jr $ra
    /* 80045BF4 00000000 */ nop
