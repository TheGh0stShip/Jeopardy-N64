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
glabel func_8003BF28
    /* 8003BF28 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003BF2C 3C0E8007 */ lui $t6, %hi(D_80071FB8)
    /* 8003BF30 8DCE1FB8 */ lw $t6, %lo(D_80071FB8)($t6)
    /* 8003BF34 AFBF001C */ sw $ra, 0x1C($sp)
    /* 8003BF38 AFA40030 */ sw $a0, 0x30($sp)
    /* 8003BF3C AFA50034 */ sw $a1, 0x34($sp)
    /* 8003BF40 AFA60038 */ sw $a2, 0x38($sp)
    /* 8003BF44 15C00056 */ bnez $t6, .L8003C0A0
    /* 8003BF48 AFA7003C */ sw $a3, 0x3C($sp)
    /* 8003BF4C 8FA40034 */ lw $a0, 0x34($sp)
    /* 8003BF50 8FA50038 */ lw $a1, 0x38($sp)
    /* 8003BF54 0C01210E */ jal osCreateMesgQueue
    /* 8003BF58 8FA6003C */ lw $a2, 0x3C($sp)
    /* 8003BF5C 3C04800D */ lui $a0, %hi(D_800D1D70)
    /* 8003BF60 3C05800D */ lui $a1, %hi(D_800D1D88)
    /* 8003BF64 24A51D88 */ addiu $a1, $a1, %lo(D_800D1D88)
    /* 8003BF68 24841D70 */ addiu $a0, $a0, %lo(D_800D1D70)
    /* 8003BF6C 0C01210E */ jal osCreateMesgQueue
    /* 8003BF70 24060001 */ addiu $a2, $zero, 0x1
    /* 8003BF74 3C0F8007 */ lui $t7, %hi(D_80071FE8)
    /* 8003BF78 8DEF1FE8 */ lw $t7, %lo(D_80071FE8)($t7)
    /* 8003BF7C 15E00003 */ bnez $t7, .L8003BF8C
    /* 8003BF80 00000000 */ nop
    /* 8003BF84 0C00F02E */ jal __osPiCreateAccessQueue
    /* 8003BF88 00000000 */ nop
.L8003BF8C:
    /* 8003BF8C 3C05800D */ lui $a1, %hi(D_800D1D70)
    /* 8003BF90 3C062222 */ lui $a2, 0x2222
    /* 8003BF94 34C62222 */ ori $a2, $a2, 0x2222
    /* 8003BF98 24A51D70 */ addiu $a1, $a1, %lo(D_800D1D70)
    /* 8003BF9C 0C01056A */ jal osSetEventMesg
    /* 8003BFA0 24040008 */ addiu $a0, $zero, 0x8
    /* 8003BFA4 2418FFFF */ addiu $t8, $zero, -0x1
    /* 8003BFA8 AFB80028 */ sw $t8, 0x28($sp)
    /* 8003BFAC 0C011F4A */ jal func_80047D28
    /* 8003BFB0 00002025 */ move $a0, $zero
    /* 8003BFB4 AFA20024 */ sw $v0, 0x24($sp)
    /* 8003BFB8 8FB90024 */ lw $t9, 0x24($sp)
    /* 8003BFBC 8FA80030 */ lw $t0, 0x30($sp)
    /* 8003BFC0 0328082A */ slt $at, $t9, $t0
    /* 8003BFC4 10200005 */ beqz $at, .L8003BFDC
    /* 8003BFC8 00000000 */ nop
    /* 8003BFCC AFB90028 */ sw $t9, 0x28($sp)
    /* 8003BFD0 00002025 */ move $a0, $zero
    /* 8003BFD4 0C00FEAA */ jal osSetThreadPri
    /* 8003BFD8 01002825 */ move $a1, $t0
.L8003BFDC:
    /* 8003BFDC 0C00FF3A */ jal __osDisableInt
    /* 8003BFE0 00000000 */ nop
    /* 8003BFE4 3C018007 */ lui $at, %hi(D_80071FB8)
    /* 8003BFE8 8FAB0034 */ lw $t3, 0x34($sp)
    /* 8003BFEC 3C0A800D */ lui $t2, %hi(D_800D0BC0)
    /* 8003BFF0 3C0C800D */ lui $t4, %hi(D_800D1D70)
    /* 8003BFF4 24090001 */ addiu $t1, $zero, 0x1
    /* 8003BFF8 254A0BC0 */ addiu $t2, $t2, %lo(D_800D0BC0)
    /* 8003BFFC 258C1D70 */ addiu $t4, $t4, %lo(D_800D1D70)
    /* 8003C000 AC291FB8 */ sw $t1, %lo(D_80071FB8)($at)
    /* 8003C004 AC2A1FBC */ sw $t2, %lo(D_80071FBC)($at)
    /* 8003C008 AC2C1FC4 */ sw $t4, %lo(D_80071FC4)($at)
    /* 8003C00C 3C18800D */ lui $t8, %hi(D_800D0D70)
    /* 8003C010 AC2B1FC0 */ sw $t3, %lo(D_80071FC0)($at)
    /* 8003C014 8FA80030 */ lw $t0, 0x30($sp)
    /* 8003C018 3C018007 */ lui $at, %hi(D_80071FC8)
    /* 8003C01C 3C0D800D */ lui $t5, %hi(D_800D1D98)
    /* 8003C020 3C0E8004 */ lui $t6, %hi(osPiRawStartDma)
    /* 8003C024 3C0F8004 */ lui $t7, %hi(osEPiRawStartDma)
    /* 8003C028 27180D70 */ addiu $t8, $t8, %lo(D_800D0D70)
    /* 8003C02C 25AD1D98 */ addiu $t5, $t5, %lo(D_800D1D98)
    /* 8003C030 25CECB68 */ addiu $t6, $t6, %lo(osPiRawStartDma)
    /* 8003C034 25EFC178 */ addiu $t7, $t7, %lo(osEPiRawStartDma)
    /* 8003C038 27191000 */ addiu $t9, $t8, 0x1000
    /* 8003C03C 3C068004 */ lui $a2, %hi(__osDevMgrMain)
    /* 8003C040 3C078007 */ lui $a3, %hi(D_80071FB8)
    /* 8003C044 AFA2002C */ sw $v0, 0x2C($sp)
    /* 8003C048 AC2D1FC8 */ sw $t5, %lo(D_80071FC8)($at)
    /* 8003C04C AC2E1FCC */ sw $t6, %lo(D_80071FCC)($at)
    /* 8003C050 AC2F1FD0 */ sw $t7, %lo(D_80071FD0)($at)
    /* 8003C054 24E71FB8 */ addiu $a3, $a3, %lo(D_80071FB8)
    /* 8003C058 24C6C638 */ addiu $a2, $a2, %lo(__osDevMgrMain)
    /* 8003C05C AFB90010 */ sw $t9, 0x10($sp)
    /* 8003C060 01402025 */ move $a0, $t2
    /* 8003C064 00002825 */ move $a1, $zero
    /* 8003C068 0C01059A */ jal osCreateThread
    /* 8003C06C AFA80014 */ sw $t0, 0x14($sp)
    /* 8003C070 3C04800D */ lui $a0, %hi(D_800D0BC0)
    /* 8003C074 0C011EE6 */ jal osStartThread
    /* 8003C078 24840BC0 */ addiu $a0, $a0, %lo(D_800D0BC0)
    /* 8003C07C 0C00FF42 */ jal func_8003FD08
    /* 8003C080 8FA4002C */ lw $a0, 0x2C($sp)
    /* 8003C084 8FA90028 */ lw $t1, 0x28($sp)
    /* 8003C088 2401FFFF */ addiu $at, $zero, -0x1
    /* 8003C08C 11210004 */ beq $t1, $at, .L8003C0A0
    /* 8003C090 00000000 */ nop
    /* 8003C094 00002025 */ move $a0, $zero
    /* 8003C098 0C00FEAA */ jal osSetThreadPri
    /* 8003C09C 01202825 */ move $a1, $t1
.L8003C0A0:
    /* 8003C0A0 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003C0A4 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003C0A8 03E00008 */ jr $ra
    /* 8003C0AC 00000000 */ nop
    /* 8003C0B0 00000000 */ nop
    /* 8003C0B4 00000000 */ nop
