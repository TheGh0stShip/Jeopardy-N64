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
glabel func_8002EBA0
    /* 8002EBA0 27BDFFF0 */ addiu $sp, $sp, -0x10
    /* 8002EBA4 AFBE0008 */ sw $fp, 0x8($sp)
    /* 8002EBA8 03A0F021 */ addu $fp, $sp, $zero
    /* 8002EBAC AFC00000 */ sw $zero, 0x0($fp)
    /* 8002EBB0 3C028006 */ lui $v0, %hi(D_80058D80)
    /* 8002EBB4 8C428D80 */ lw $v0, %lo(D_80058D80)($v0)
    /* 8002EBB8 14400003 */ bnez $v0, .L8002EBC8
    /* 8002EBBC 00000000 */ nop
    /* 8002EBC0 0800BB60 */ j .L8002ED80
    /* 8002EBC4 00000000 */ nop
.L8002EBC8:
    /* 8002EBC8 3C028006 */ lui $v0, %hi(D_80058D80)
    /* 8002EBCC 8C428D80 */ lw $v0, %lo(D_80058D80)($v0)
    /* 8002EBD0 3C038006 */ lui $v1, %hi(D_80058D7C)
    /* 8002EBD4 24638D7C */ addiu $v1, $v1, %lo(D_80058D7C)
    /* 8002EBD8 14430003 */ bne $v0, $v1, .L8002EBE8
    /* 8002EBDC 00000000 */ nop
    /* 8002EBE0 0800BB60 */ j .L8002ED80
    /* 8002EBE4 00000000 */ nop
.L8002EBE8:
    /* 8002EBE8 AFC00000 */ sw $zero, 0x0($fp)
.L8002EBEC:
    /* 8002EBEC 3C028006 */ lui $v0, %hi(D_80058D80)
    /* 8002EBF0 8C428D80 */ lw $v0, %lo(D_80058D80)($v0)
    /* 8002EBF4 8FC30000 */ lw $v1, 0x0($fp)
    /* 8002EBF8 00431021 */ addu $v0, $v0, $v1
    /* 8002EBFC 90430000 */ lbu $v1, 0x0($v0)
    /* 8002EC00 14600003 */ bnez $v1, .L8002EC10
    /* 8002EC04 00000000 */ nop
    /* 8002EC08 0800BB0A */ j .L8002EC28
    /* 8002EC0C 00000000 */ nop
.L8002EC10:
    /* 8002EC10 8FC30000 */ lw $v1, 0x0($fp)
    /* 8002EC14 24620001 */ addiu $v0, $v1, 0x1
    /* 8002EC18 00401821 */ addu $v1, $v0, $zero
    /* 8002EC1C AFC30000 */ sw $v1, 0x0($fp)
    /* 8002EC20 0800BAFB */ j .L8002EBEC
    /* 8002EC24 00000000 */ nop
.L8002EC28:
    /* 8002EC28 8FC20000 */ lw $v0, 0x0($fp)
    /* 8002EC2C 3C038006 */ lui $v1, %hi(D_80058D88)
    /* 8002EC30 8C638D88 */ lw $v1, %lo(D_80058D88)($v1)
    /* 8002EC34 0043102B */ sltu $v0, $v0, $v1
    /* 8002EC38 14400051 */ bnez $v0, .L8002ED80
    /* 8002EC3C 00000000 */ nop
    /* 8002EC40 AFC00000 */ sw $zero, 0x0($fp)
.L8002EC44:
    /* 8002EC44 8FC20000 */ lw $v0, 0x0($fp)
    /* 8002EC48 3C038006 */ lui $v1, %hi(D_80058D88)
    /* 8002EC4C 8C638D88 */ lw $v1, %lo(D_80058D88)($v1)
    /* 8002EC50 0043102B */ sltu $v0, $v0, $v1
    /* 8002EC54 14400003 */ bnez $v0, .L8002EC64
    /* 8002EC58 00000000 */ nop
    /* 8002EC5C 0800BB29 */ j .L8002ECA4
    /* 8002EC60 00000000 */ nop
.L8002EC64:
    /* 8002EC64 8FC20000 */ lw $v0, 0x0($fp)
    /* 8002EC68 3C03800E */ lui $v1, %hi(D_800DF030)
    /* 8002EC6C 2463F030 */ addiu $v1, $v1, %lo(D_800DF030)
    /* 8002EC70 00431021 */ addu $v0, $v0, $v1
    /* 8002EC74 3C038006 */ lui $v1, %hi(D_80058D80)
    /* 8002EC78 8C638D80 */ lw $v1, %lo(D_80058D80)($v1)
    /* 8002EC7C 8FC40000 */ lw $a0, 0x0($fp)
    /* 8002EC80 00641821 */ addu $v1, $v1, $a0
    /* 8002EC84 90640000 */ lbu $a0, 0x0($v1)
    /* 8002EC88 A0440000 */ sb $a0, 0x0($v0)
    /* 8002EC8C 8FC30000 */ lw $v1, 0x0($fp)
    /* 8002EC90 24620001 */ addiu $v0, $v1, 0x1
    /* 8002EC94 00401821 */ addu $v1, $v0, $zero
    /* 8002EC98 AFC30000 */ sw $v1, 0x0($fp)
    /* 8002EC9C 0800BB11 */ j .L8002EC44
    /* 8002ECA0 00000000 */ nop
.L8002ECA4:
    /* 8002ECA4 00000000 */ nop
.L8002ECA8:
    /* 8002ECA8 3C028006 */ lui $v0, %hi(D_80058D80)
    /* 8002ECAC 8C428D80 */ lw $v0, %lo(D_80058D80)($v0)
    /* 8002ECB0 8FC30000 */ lw $v1, 0x0($fp)
    /* 8002ECB4 00431021 */ addu $v0, $v0, $v1
    /* 8002ECB8 90430000 */ lbu $v1, 0x0($v0)
    /* 8002ECBC 24020020 */ addiu $v0, $zero, 0x20
    /* 8002ECC0 1062000A */ beq $v1, $v0, .L8002ECEC
    /* 8002ECC4 00000000 */ nop
    /* 8002ECC8 3C028006 */ lui $v0, %hi(D_80058D80)
    /* 8002ECCC 8C428D80 */ lw $v0, %lo(D_80058D80)($v0)
    /* 8002ECD0 8FC30000 */ lw $v1, 0x0($fp)
    /* 8002ECD4 00431021 */ addu $v0, $v0, $v1
    /* 8002ECD8 90430000 */ lbu $v1, 0x0($v0)
    /* 8002ECDC 14600005 */ bnez $v1, .L8002ECF4
    /* 8002ECE0 00000000 */ nop
    /* 8002ECE4 0800BB3B */ j .L8002ECEC
    /* 8002ECE8 00000000 */ nop
.L8002ECEC:
    /* 8002ECEC 0800BB4B */ j .L8002ED2C
    /* 8002ECF0 00000000 */ nop
.L8002ECF4:
    /* 8002ECF4 8FC20000 */ lw $v0, 0x0($fp)
    /* 8002ECF8 3C03800E */ lui $v1, %hi(D_800DF030)
    /* 8002ECFC 2463F030 */ addiu $v1, $v1, %lo(D_800DF030)
    /* 8002ED00 00431021 */ addu $v0, $v0, $v1
    /* 8002ED04 8FC30000 */ lw $v1, 0x0($fp)
    /* 8002ED08 24640001 */ addiu $a0, $v1, 0x1
    /* 8002ED0C AFC40000 */ sw $a0, 0x0($fp)
    /* 8002ED10 3C048006 */ lui $a0, %hi(D_80058D80)
    /* 8002ED14 8C848D80 */ lw $a0, %lo(D_80058D80)($a0)
    /* 8002ED18 00641821 */ addu $v1, $v1, $a0
    /* 8002ED1C 90640000 */ lbu $a0, 0x0($v1)
    /* 8002ED20 A0440000 */ sb $a0, 0x0($v0)
    /* 8002ED24 0800BB2A */ j .L8002ECA8
    /* 8002ED28 00000000 */ nop
.L8002ED2C:
    /* 8002ED2C 8FC20000 */ lw $v0, 0x0($fp)
    /* 8002ED30 3C03800E */ lui $v1, %hi(D_800DF030)
    /* 8002ED34 2463F030 */ addiu $v1, $v1, %lo(D_800DF030)
    /* 8002ED38 00431021 */ addu $v0, $v0, $v1
    /* 8002ED3C 24030020 */ addiu $v1, $zero, 0x20
    /* 8002ED40 A0430000 */ sb $v1, 0x0($v0)
    /* 8002ED44 8FC20000 */ lw $v0, 0x0($fp)
    /* 8002ED48 3C03800E */ lui $v1, %hi(D_800DF031)
    /* 8002ED4C 2463F031 */ addiu $v1, $v1, %lo(D_800DF031)
    /* 8002ED50 00431021 */ addu $v0, $v0, $v1
    /* 8002ED54 2403005F */ addiu $v1, $zero, 0x5F
    /* 8002ED58 A0430000 */ sb $v1, 0x0($v0)
    /* 8002ED5C 8FC20000 */ lw $v0, 0x0($fp)
    /* 8002ED60 3C03800E */ lui $v1, %hi(D_800DF032)
    /* 8002ED64 2463F032 */ addiu $v1, $v1, %lo(D_800DF032)
    /* 8002ED68 00431021 */ addu $v0, $v0, $v1
    /* 8002ED6C A0400000 */ sb $zero, 0x0($v0)
    /* 8002ED70 8FC20000 */ lw $v0, 0x0($fp)
    /* 8002ED74 24430001 */ addiu $v1, $v0, 0x1
    /* 8002ED78 3C018006 */ lui $at, %hi(D_80058D88)
    /* 8002ED7C AC238D88 */ sw $v1, %lo(D_80058D88)($at)
.L8002ED80:
    /* 8002ED80 03C0E821 */ addu $sp, $fp, $zero
    /* 8002ED84 8FBE0008 */ lw $fp, 0x8($sp)
    /* 8002ED88 27BD0010 */ addiu $sp, $sp, 0x10
    /* 8002ED8C 03E00008 */ jr $ra
    /* 8002ED90 00000000 */ nop
