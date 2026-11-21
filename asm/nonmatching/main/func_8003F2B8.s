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
glabel func_8003F2B8
    /* 8003F2B8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003F2BC AFBF001C */ sw $ra, 0x1C($sp)
    /* 8003F2C0 0C00FF3A */ jal __osDisableInt
    /* 8003F2C4 AFB00018 */ sw $s0, 0x18($sp)
    /* 8003F2C8 3C0F8007 */ lui $t7, %hi(D_80072328)
    /* 8003F2CC 8DEF2328 */ lw $t7, %lo(D_80072328)($t7)
    /* 8003F2D0 240E0002 */ addiu $t6, $zero, 0x2
    /* 8003F2D4 3C048007 */ lui $a0, %hi(D_80072320)
    /* 8003F2D8 00408025 */ move $s0, $v0
    /* 8003F2DC 24842320 */ addiu $a0, $a0, %lo(D_80072320)
    /* 8003F2E0 0C010115 */ jal __osEnqueueAndYield
    /* 8003F2E4 A5EE0010 */ sh $t6, 0x10($t7)
    /* 8003F2E8 0C00FF42 */ jal func_8003FD08
    /* 8003F2EC 02002025 */ move $a0, $s0
    /* 8003F2F0 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003F2F4 8FB00018 */ lw $s0, 0x18($sp)
    /* 8003F2F8 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003F2FC 03E00008 */ jr $ra
    /* 8003F300 00000000 */ nop
    /* 8003F304 00000000 */ nop
