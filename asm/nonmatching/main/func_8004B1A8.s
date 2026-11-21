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
glabel func_8004B1A8
    /* 8004B1A8 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8004B1AC 12000013 */ beqz $s0, .L8004B1FC
    /* 8004B1B0 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004B1B4 8E0E0010 */ lw $t6, 0x10($s0)
    /* 8004B1B8 24010002 */ addiu $at, $zero, 0x2
    /* 8004B1BC 55C10004 */ bnel $t6, $at, .L8004B1D0
    /* 8004B1C0 8E0F0004 */ lw $t7, 0x4($s0)
    /* 8004B1C4 0C01313E */ jal osWritebackDCacheAll
    /* 8004B1C8 00000000 */ nop
    /* 8004B1CC 8E0F0004 */ lw $t7, 0x4($s0)
.L8004B1D0:
    /* 8004B1D0 2401FFCF */ addiu $at, $zero, -0x31
    /* 8004B1D4 26120010 */ addiu $s2, $s0, 0x10
    /* 8004B1D8 01E1C024 */ and $t8, $t7, $at
    /* 8004B1DC AE180004 */ sw $t8, 0x4($s0)
    /* 8004B1E0 0C012EED */ jal osSpTaskLoad
    /* 8004B1E4 02402025 */ move $a0, $s2
    /* 8004B1E8 0C012F51 */ jal osSpTaskStartGo
    /* 8004B1EC 02402025 */ move $a0, $s2
    /* 8004B1F0 16110002 */ bne $s0, $s1, .L8004B1FC
    /* 8004B1F4 AE700274 */ sw $s0, 0x274($s3)
    /* 8004B1F8 AE710278 */ sw $s1, 0x278($s3)
.L8004B1FC:
    /* 8004B1FC 5220000F */ beql $s1, $zero, .L8004B23C
    /* 8004B200 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004B204 5230000D */ beql $s1, $s0, .L8004B23C
    /* 8004B208 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004B20C 8E39003C */ lw $t9, 0x3C($s1)
    /* 8004B210 8E240038 */ lw $a0, 0x38($s1)
    /* 8004B214 8F260000 */ lw $a2, 0x0($t9)
    /* 8004B218 0C0130F2 */ jal osDpSetNextBuffer
    /* 8004B21C 8F270004 */ lw $a3, 0x4($t9)
    /* 8004B220 240E0001 */ addiu $t6, $zero, 0x1
    /* 8004B224 3C018007 */ lui $at, %hi(D_800723F8)
    /* 8004B228 AC2E23F8 */ sw $t6, %lo(D_800723F8)($at)
    /* 8004B22C 3C018007 */ lui $at, %hi(D_800723FC)
    /* 8004B230 AC2023FC */ sw $zero, %lo(D_800723FC)($at)
    /* 8004B234 AE710278 */ sw $s1, 0x278($s3)
    /* 8004B238 8FBF0014 */ lw $ra, 0x14($sp)
.L8004B23C:
    /* 8004B23C 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8004B240 03E00008 */ jr $ra
    /* 8004B244 00000000 */ nop
