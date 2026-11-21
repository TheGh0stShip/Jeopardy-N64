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
glabel func_80048CDC
    /* 80048CDC 3C0F800D */ lui $t7, %hi(D_800D31A1)
    /* 80048CE0 91EF31A1 */ lbu $t7, %lo(D_800D31A1)($t7)
    /* 80048CE4 3C0E800D */ lui $t6, %hi(D_800D3160)
    /* 80048CE8 27BDFFF0 */ addiu $sp, $sp, -0x10
    /* 80048CEC 25CE3160 */ addiu $t6, $t6, %lo(D_800D3160)
    /* 80048CF0 AFAE000C */ sw $t6, 0xC($sp)
    /* 80048CF4 19E00021 */ blez $t7, .L80048D7C
    /* 80048CF8 AFA00000 */ sw $zero, 0x0($sp)
.L80048CFC:
    /* 80048CFC 8FB9000C */ lw $t9, 0xC($sp)
    /* 80048D00 27B80004 */ addiu $t8, $sp, 0x4
    /* 80048D04 8B210000 */ lwl $at, 0x0($t9)
    /* 80048D08 9B210003 */ lwr $at, 0x3($t9)
    /* 80048D0C AF010000 */ sw $at, 0x0($t8)
    /* 80048D10 8B290004 */ lwl $t1, 0x4($t9)
    /* 80048D14 9B290007 */ lwr $t1, 0x7($t9)
    /* 80048D18 AF090004 */ sw $t1, 0x4($t8)
    /* 80048D1C 93AA0006 */ lbu $t2, 0x6($sp)
    /* 80048D20 314B00C0 */ andi $t3, $t2, 0xC0
    /* 80048D24 000B6103 */ sra $t4, $t3, 4
    /* 80048D28 A08C0004 */ sb $t4, 0x4($a0)
    /* 80048D2C 908D0004 */ lbu $t5, 0x4($a0)
    /* 80048D30 15A00007 */ bnez $t5, .L80048D50
    /* 80048D34 00000000 */ nop
    /* 80048D38 97AE0008 */ lhu $t6, 0x8($sp)
    /* 80048D3C A48E0000 */ sh $t6, 0x0($a0)
    /* 80048D40 83AF000A */ lb $t7, 0xA($sp)
    /* 80048D44 A08F0002 */ sb $t7, 0x2($a0)
    /* 80048D48 83A8000B */ lb $t0, 0xB($sp)
    /* 80048D4C A0880003 */ sb $t0, 0x3($a0)
.L80048D50:
    /* 80048D50 8FB80000 */ lw $t8, 0x0($sp)
    /* 80048D54 3C0B800D */ lui $t3, %hi(D_800D31A1)
    /* 80048D58 916B31A1 */ lbu $t3, %lo(D_800D31A1)($t3)
    /* 80048D5C 8FA9000C */ lw $t1, 0xC($sp)
    /* 80048D60 27190001 */ addiu $t9, $t8, 0x1
    /* 80048D64 032B082A */ slt $at, $t9, $t3
    /* 80048D68 252A0008 */ addiu $t2, $t1, 0x8
    /* 80048D6C AFAA000C */ sw $t2, 0xC($sp)
    /* 80048D70 AFB90000 */ sw $t9, 0x0($sp)
    /* 80048D74 1420FFE1 */ bnez $at, .L80048CFC
    /* 80048D78 24840006 */ addiu $a0, $a0, 0x6
.L80048D7C:
    /* 80048D7C 03E00008 */ jr $ra
    /* 80048D80 27BD0010 */ addiu $sp, $sp, 0x10
