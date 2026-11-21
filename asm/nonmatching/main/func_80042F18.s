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
glabel func_80042F18
    /* 80042F18 3C01800D */ lui $at, %hi(D_800D2F64)
    /* 80042F1C 240E0000 */ addiu $t6, $zero, 0x0
    /* 80042F20 240F0000 */ addiu $t7, $zero, 0x0
    /* 80042F24 AC2F2F64 */ sw $t7, %lo(D_800D2F64)($at)
    /* 80042F28 AC2E2F60 */ sw $t6, %lo(D_800D2F60)($at)
    /* 80042F2C 3C01800D */ lui $at, %hi(D_800D2F68)
    /* 80042F30 3C188007 */ lui $t8, %hi(D_80072308)
    /* 80042F34 8F182308 */ lw $t8, %lo(D_80072308)($t8)
    /* 80042F38 AC202F68 */ sw $zero, %lo(D_800D2F68)($at)
    /* 80042F3C 3C01800D */ lui $at, %hi(D_800D2F6C)
    /* 80042F40 AC202F6C */ sw $zero, %lo(D_800D2F6C)($at)
    /* 80042F44 3C198007 */ lui $t9, %hi(D_80072308)
    /* 80042F48 AF180004 */ sw $t8, 0x4($t8)
    /* 80042F4C 8F392308 */ lw $t9, %lo(D_80072308)($t9)
    /* 80042F50 3C098007 */ lui $t1, %hi(D_80072308)
    /* 80042F54 240A0000 */ addiu $t2, $zero, 0x0
    /* 80042F58 8F280004 */ lw $t0, 0x4($t9)
    /* 80042F5C 240B0000 */ addiu $t3, $zero, 0x0
    /* 80042F60 3C0C8007 */ lui $t4, %hi(D_80072308)
    /* 80042F64 AF280000 */ sw $t0, 0x0($t9)
    /* 80042F68 8D292308 */ lw $t1, %lo(D_80072308)($t1)
    /* 80042F6C 3C0D8007 */ lui $t5, %hi(D_80072308)
    /* 80042F70 3C188007 */ lui $t8, %hi(D_80072308)
    /* 80042F74 AD2A0010 */ sw $t2, 0x10($t1)
    /* 80042F78 AD2B0014 */ sw $t3, 0x14($t1)
    /* 80042F7C 8D8C2308 */ lw $t4, %lo(D_80072308)($t4)
    /* 80042F80 8D8E0010 */ lw $t6, 0x10($t4)
    /* 80042F84 8D8F0014 */ lw $t7, 0x14($t4)
    /* 80042F88 AD8E0008 */ sw $t6, 0x8($t4)
    /* 80042F8C AD8F000C */ sw $t7, 0xC($t4)
    /* 80042F90 8DAD2308 */ lw $t5, %lo(D_80072308)($t5)
    /* 80042F94 ADA00018 */ sw $zero, 0x18($t5)
    /* 80042F98 8F182308 */ lw $t8, %lo(D_80072308)($t8)
    /* 80042F9C 03E00008 */ jr $ra
    /* 80042FA0 AF00001C */ sw $zero, 0x1C($t8)
