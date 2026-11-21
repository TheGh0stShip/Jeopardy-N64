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
glabel func_80017CC8
    /* 80017CC8 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 80017CCC AFBE0010 */ sw $fp, 0x10($sp)
    /* 80017CD0 03A0F021 */ addu $fp, $sp, $zero
    /* 80017CD4 00801021 */ addu $v0, $a0, $zero
    /* 80017CD8 AFC5001C */ sw $a1, 0x1C($fp)
    /* 80017CDC 3C038005 */ lui $v1, %hi(D_800560FC)
    /* 80017CE0 8C6360FC */ lw $v1, %lo(D_800560FC)($v1)
    /* 80017CE4 24640005 */ addiu $a0, $v1, 0x5
    /* 80017CE8 3C018005 */ lui $at, %hi(D_800560FC)
    /* 80017CEC AC2460FC */ sw $a0, %lo(D_800560FC)($at)
    /* 80017CF0 3C038005 */ lui $v1, %hi(D_800560FC)
    /* 80017CF4 8C6360FC */ lw $v1, %lo(D_800560FC)($v1)
    /* 80017CF8 2C640100 */ sltiu $a0, $v1, 0x100
    /* 80017CFC 14800010 */ bnez $a0, .L80017D40
    /* 80017D00 00000000 */ nop
    /* 80017D04 240300FF */ addiu $v1, $zero, 0xFF
    /* 80017D08 3C018005 */ lui $at, %hi(D_800560FC)
    /* 80017D0C AC2360FC */ sw $v1, %lo(D_800560FC)($at)
    /* 80017D10 AFC00004 */ sw $zero, 0x4($fp)
    /* 80017D14 AFC00000 */ sw $zero, 0x0($fp)
    /* 80017D18 00401821 */ addu $v1, $v0, $zero
    /* 80017D1C 03C02021 */ addu $a0, $fp, $zero
    /* 80017D20 8C860000 */ lw $a2, 0x0($a0)
    /* 80017D24 8C870004 */ lw $a3, 0x4($a0)
    /* 80017D28 8C880008 */ lw $t0, 0x8($a0)
    /* 80017D2C AC660000 */ sw $a2, 0x0($v1)
    /* 80017D30 AC670004 */ sw $a3, 0x4($v1)
    /* 80017D34 AC680008 */ sw $t0, 0x8($v1)
    /* 80017D38 08005F5D */ j .L80017D74
    /* 80017D3C 00000000 */ nop
.L80017D40:
    /* 80017D40 24030001 */ addiu $v1, $zero, 0x1
    /* 80017D44 AFC30004 */ sw $v1, 0x4($fp)
    /* 80017D48 AFC00000 */ sw $zero, 0x0($fp)
    /* 80017D4C 00401821 */ addu $v1, $v0, $zero
    /* 80017D50 03C02021 */ addu $a0, $fp, $zero
    /* 80017D54 8C860000 */ lw $a2, 0x0($a0)
    /* 80017D58 8C870004 */ lw $a3, 0x4($a0)
    /* 80017D5C 8C880008 */ lw $t0, 0x8($a0)
    /* 80017D60 AC660000 */ sw $a2, 0x0($v1)
    /* 80017D64 AC670004 */ sw $a3, 0x4($v1)
    /* 80017D68 AC680008 */ sw $t0, 0x8($v1)
    /* 80017D6C 08005F5D */ j .L80017D74
    /* 80017D70 00000000 */ nop
.L80017D74:
    /* 80017D74 03C0E821 */ addu $sp, $fp, $zero
    /* 80017D78 8FBE0010 */ lw $fp, 0x10($sp)
    /* 80017D7C 27BD0018 */ addiu $sp, $sp, 0x18
    /* 80017D80 03E00008 */ jr $ra
    /* 80017D84 00000000 */ nop
