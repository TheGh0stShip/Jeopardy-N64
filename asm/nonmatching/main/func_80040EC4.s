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
glabel func_80040EC4
    /* 80040EC4 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 80040EC8 3C0E800D */ lui $t6, %hi(D_800D2EC0)
    /* 80040ECC 25CE2EC0 */ addiu $t6, $t6, %lo(D_800D2EC0)
    /* 80040ED0 25CF0040 */ addiu $t7, $t6, 0x40
    /* 80040ED4 AFBF001C */ sw $ra, 0x1C($sp)
    /* 80040ED8 AFB00018 */ sw $s0, 0x18($sp)
    /* 80040EDC AFAF002C */ sw $t7, 0x2C($sp)
    /* 80040EE0 8DD80040 */ lw $t8, 0x40($t6)
    /* 80040EE4 1300002D */ beqz $t8, .L80040F9C
    /* 80040EE8 AFB80028 */ sw $t8, 0x28($sp)
    /* 80040EEC 8F190008 */ lw $t9, 0x8($t8)
    /* 80040EF0 8F080010 */ lw $t0, 0x10($t8)
    /* 80040EF4 0328082A */ slt $at, $t9, $t0
    /* 80040EF8 10200028 */ beqz $at, .L80040F9C
    /* 80040EFC 00000000 */ nop
    /* 80040F00 8FA90028 */ lw $t1, 0x28($sp)
    /* 80040F04 8FAE002C */ lw $t6, 0x2C($sp)
    /* 80040F08 8D2A000C */ lw $t2, 0xC($t1)
    /* 80040F0C 8D2B0008 */ lw $t3, 0x8($t1)
    /* 80040F10 8D2D0010 */ lw $t5, 0x10($t1)
    /* 80040F14 014B6021 */ addu $t4, $t2, $t3
    /* 80040F18 018D001A */ div $zero, $t4, $t5
    /* 80040F1C 00007810 */ mfhi $t7
    /* 80040F20 AFAF0024 */ sw $t7, 0x24($sp)
    /* 80040F24 8D280014 */ lw $t0, 0x14($t1)
    /* 80040F28 8DD80004 */ lw $t8, 0x4($t6)
    /* 80040F2C 000FC880 */ sll $t9, $t7, 2
    /* 80040F30 01195021 */ addu $t2, $t0, $t9
    /* 80040F34 AD580000 */ sw $t8, 0x0($t2)
    /* 80040F38 8FAB0028 */ lw $t3, 0x28($sp)
    /* 80040F3C 15A00002 */ bnez $t5, .L80040F48
    /* 80040F40 00000000 */ nop
    /* 80040F44 0007000D */ break 7
.L80040F48:
    /* 80040F48 2401FFFF */ addiu $at, $zero, -0x1
    /* 80040F4C 15A10004 */ bne $t5, $at, .L80040F60
    /* 80040F50 3C018000 */ lui $at, 0x8000
    /* 80040F54 15810002 */ bne $t4, $at, .L80040F60
    /* 80040F58 00000000 */ nop
    /* 80040F5C 0006000D */ break 6
.L80040F60:
    /* 80040F60 8D6C0008 */ lw $t4, 0x8($t3)
    /* 80040F64 258D0001 */ addiu $t5, $t4, 0x1
    /* 80040F68 AD6D0008 */ sw $t5, 0x8($t3)
    /* 80040F6C 8FAE0028 */ lw $t6, 0x28($sp)
    /* 80040F70 8DCF0000 */ lw $t7, 0x0($t6)
    /* 80040F74 8DE90000 */ lw $t1, 0x0($t7)
    /* 80040F78 11200008 */ beqz $t1, .L80040F9C
    /* 80040F7C 00000000 */ nop
    /* 80040F80 0C010167 */ jal func_8004059C
    /* 80040F84 01C02025 */ move $a0, $t6
    /* 80040F88 00408025 */ move $s0, $v0
    /* 80040F8C 3C048007 */ lui $a0, %hi(D_80072320)
    /* 80040F90 24842320 */ addiu $a0, $a0, %lo(D_80072320)
    /* 80040F94 0C010155 */ jal __osEnqueueThread
    /* 80040F98 02002825 */ move $a1, $s0
.L80040F9C:
    /* 80040F9C 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80040FA0 8FB00018 */ lw $s0, 0x18($sp)
    /* 80040FA4 27BD0030 */ addiu $sp, $sp, 0x30
    /* 80040FA8 03E00008 */ jr $ra
    /* 80040FAC 00000000 */ nop
    /* 80040FB0 00000000 */ nop
    /* 80040FB4 00000000 */ nop
