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
glabel func_8003FAA8
    /* 8003FAA8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003FAAC AFBF001C */ sw $ra, 0x1C($sp)
    /* 8003FAB0 AFA40028 */ sw $a0, 0x28($sp)
    /* 8003FAB4 AFA5002C */ sw $a1, 0x2C($sp)
    /* 8003FAB8 0C00FF3A */ jal __osDisableInt
    /* 8003FABC AFB00018 */ sw $s0, 0x18($sp)
    /* 8003FAC0 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8003FAC4 00408025 */ move $s0, $v0
    /* 8003FAC8 15C00004 */ bnez $t6, .L8003FADC
    /* 8003FACC 00000000 */ nop
    /* 8003FAD0 3C0F8007 */ lui $t7, %hi(D_80072328)
    /* 8003FAD4 8DEF2328 */ lw $t7, %lo(D_80072328)($t7)
    /* 8003FAD8 AFAF0028 */ sw $t7, 0x28($sp)
.L8003FADC:
    /* 8003FADC 8FB80028 */ lw $t8, 0x28($sp)
    /* 8003FAE0 8FA8002C */ lw $t0, 0x2C($sp)
    /* 8003FAE4 8F190004 */ lw $t9, 0x4($t8)
    /* 8003FAE8 13280020 */ beq $t9, $t0, .L8003FB6C
    /* 8003FAEC 00000000 */ nop
    /* 8003FAF0 AF080004 */ sw $t0, 0x4($t8)
    /* 8003FAF4 3C0A8007 */ lui $t2, %hi(D_80072328)
    /* 8003FAF8 8D4A2328 */ lw $t2, %lo(D_80072328)($t2)
    /* 8003FAFC 8FA90028 */ lw $t1, 0x28($sp)
    /* 8003FB00 112A000C */ beq $t1, $t2, .L8003FB34
    /* 8003FB04 00000000 */ nop
    /* 8003FB08 952B0010 */ lhu $t3, 0x10($t1)
    /* 8003FB0C 24010001 */ addiu $at, $zero, 0x1
    /* 8003FB10 11610008 */ beq $t3, $at, .L8003FB34
    /* 8003FB14 00000000 */ nop
    /* 8003FB18 8D240008 */ lw $a0, 0x8($t1)
    /* 8003FB1C 0C011F3A */ jal __osDequeueThread
    /* 8003FB20 01202825 */ move $a1, $t1
    /* 8003FB24 8FAC0028 */ lw $t4, 0x28($sp)
    /* 8003FB28 8D840008 */ lw $a0, 0x8($t4)
    /* 8003FB2C 0C010155 */ jal __osEnqueueThread
    /* 8003FB30 01802825 */ move $a1, $t4
.L8003FB34:
    /* 8003FB34 3C0D8007 */ lui $t5, %hi(D_80072328)
    /* 8003FB38 3C0F8007 */ lui $t7, %hi(D_80072320)
    /* 8003FB3C 8DEF2320 */ lw $t7, %lo(D_80072320)($t7)
    /* 8003FB40 8DAD2328 */ lw $t5, %lo(D_80072328)($t5)
    /* 8003FB44 8DF90004 */ lw $t9, 0x4($t7)
    /* 8003FB48 8DAE0004 */ lw $t6, 0x4($t5)
    /* 8003FB4C 01D9082A */ slt $at, $t6, $t9
    /* 8003FB50 10200006 */ beqz $at, .L8003FB6C
    /* 8003FB54 00000000 */ nop
    /* 8003FB58 24080002 */ addiu $t0, $zero, 0x2
    /* 8003FB5C 3C048007 */ lui $a0, %hi(D_80072320)
    /* 8003FB60 A5A80010 */ sh $t0, 0x10($t5)
    /* 8003FB64 0C010115 */ jal __osEnqueueAndYield
    /* 8003FB68 24842320 */ addiu $a0, $a0, %lo(D_80072320)
.L8003FB6C:
    /* 8003FB6C 0C00FF42 */ jal func_8003FD08
    /* 8003FB70 02002025 */ move $a0, $s0
    /* 8003FB74 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003FB78 8FB00018 */ lw $s0, 0x18($sp)
    /* 8003FB7C 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003FB80 03E00008 */ jr $ra
    /* 8003FB84 00000000 */ nop
