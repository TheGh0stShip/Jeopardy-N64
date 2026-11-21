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
glabel func_80011998
    /* 80011998 27BDFFF0 */ addiu $sp, $sp, -0x10
    /* 8001199C AFBE0008 */ sw $fp, 0x8($sp)
    /* 800119A0 03A0F021 */ addu $fp, $sp, $zero
    /* 800119A4 00801821 */ addu $v1, $a0, $zero
    /* 800119A8 A3C30000 */ sb $v1, 0x0($fp)
    /* 800119AC 00001021 */ addu $v0, $zero, $zero
    /* 800119B0 93C40000 */ lbu $a0, 0x0($fp)
    /* 800119B4 2C850030 */ sltiu $a1, $a0, 0x30
    /* 800119B8 14A00006 */ bnez $a1, .L800119D4
    /* 800119BC 00000000 */ nop
    /* 800119C0 93C40000 */ lbu $a0, 0x0($fp)
    /* 800119C4 2C85003A */ sltiu $a1, $a0, 0x3A
    /* 800119C8 10A00002 */ beqz $a1, .L800119D4
    /* 800119CC 00000000 */ nop
    /* 800119D0 24020001 */ addiu $v0, $zero, 0x1
.L800119D4:
    /* 800119D4 08004677 */ j .L800119DC
    /* 800119D8 00000000 */ nop
.L800119DC:
    /* 800119DC 03C0E821 */ addu $sp, $fp, $zero
    /* 800119E0 8FBE0008 */ lw $fp, 0x8($sp)
    /* 800119E4 27BD0010 */ addiu $sp, $sp, 0x10
    /* 800119E8 03E00008 */ jr $ra
    /* 800119EC 00000000 */ nop
