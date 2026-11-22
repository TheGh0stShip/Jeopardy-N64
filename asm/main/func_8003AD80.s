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
glabel func_8003AD80
    /* 8003AD80 23BDFFF8 */ addi $sp, $sp, -0x8
    /* 8003AD84 AFBF0000 */ sw $ra, 0x0($sp)
    /* 8003AD88 3C088004 */ lui $t0, %hi(func_8003AD10)
    /* 8003AD8C 2508AD10 */ addiu $t0, $t0, %lo(func_8003AD10)
    /* 8003AD90 3C098004 */ lui $t1, %hi(D_8003AD24)
    /* 8003AD94 2529AD24 */ addiu $t1, $t1, %lo(D_8003AD24)
    /* 8003AD98 3C0A8000 */ lui $t2, 0x8000
    /* 8003AD9C 354A0180 */ ori $t2, $t2, 0x180
    /* 8003ADA0 3C0B8004 */ lui $t3, %hi(D_8003AD24)
    /* 8003ADA4 256BAD24 */ addiu $t3, $t3, %lo(D_8003AD24)
.L8003ADA8:
    /* 8003ADA8 8D4C0000 */ lw $t4, 0x0($t2)
    /* 8003ADAC 8D0D0000 */ lw $t5, 0x0($t0)
    /* 8003ADB0 25080004 */ addiu $t0, $t0, 0x4
    /* 8003ADB4 AD2C0000 */ sw $t4, 0x0($t1)
    /* 8003ADB8 25290004 */ addiu $t1, $t1, 0x4
    /* 8003ADBC AD4D0000 */ sw $t5, 0x0($t2)
    /* 8003ADC0 150BFFF9 */ bne $t0, $t3, .L8003ADA8
    /* 8003ADC4 254A0004 */ addiu $t2, $t2, 0x4
    /* 8003ADC8 3C088004 */ lui $t0, %hi(func_8003AD48)
    /* 8003ADCC 2508AD48 */ addiu $t0, $t0, %lo(func_8003AD48)
    /* 8003ADD0 3C098004 */ lui $t1, %hi(D_8003AD5C)
    /* 8003ADD4 2529AD5C */ addiu $t1, $t1, %lo(D_8003AD5C)
    /* 8003ADD8 3C0A8000 */ lui $t2, %hi(D_80000000)
    /* 8003ADDC 3C0B8004 */ lui $t3, %hi(D_8003AD5C)
    /* 8003ADE0 256BAD5C */ addiu $t3, $t3, %lo(D_8003AD5C)
.L8003ADE4:
    /* 8003ADE4 8D4C0000 */ lw $t4, %lo(D_80000000)($t2)
    /* 8003ADE8 8D0D0000 */ lw $t5, 0x0($t0)
    /* 8003ADEC 25080004 */ addiu $t0, $t0, 0x4
    /* 8003ADF0 AD2C0000 */ sw $t4, 0x0($t1)
    /* 8003ADF4 25290004 */ addiu $t1, $t1, 0x4
    /* 8003ADF8 AD4D0000 */ sw $t5, %lo(D_80000000)($t2)
    /* 8003ADFC 150BFFF9 */ bne $t0, $t3, .L8003ADE4
    /* 8003AE00 254A0004 */ addiu $t2, $t2, %lo(D_80000004)
    /* 8003AE04 0C00EB9F */ jal func_8003AE7C
    /* 8003AE08 00000000 */ nop
    /* 8003AE0C 0C00EBBC */ jal func_8003AEF0
    /* 8003AE10 00000000 */ nop
    /* 8003AE14 2408F7FE */ addiu $t0, $zero, -0x802
    /* 8003AE18 3C01800D */ lui $at, %hi(D_800D0558)
    /* 8003AE1C AC280558 */ sw $t0, %lo(D_800D0558)($at)
    /* 8003AE20 8FBF0000 */ lw $ra, 0x0($sp)
    /* 8003AE24 03E00008 */ jr $ra
    /* 8003AE28 23BD0008 */ addi $sp, $sp, 0x8
