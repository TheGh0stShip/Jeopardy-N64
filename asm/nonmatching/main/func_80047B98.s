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
glabel func_80047B98
    /* 80047B98 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 80047B9C AFBF001C */ sw $ra, 0x1C($sp)
    /* 80047BA0 AFA40028 */ sw $a0, 0x28($sp)
    /* 80047BA4 AFB10018 */ sw $s1, 0x18($sp)
    /* 80047BA8 0C00FF3A */ jal __osDisableInt
    /* 80047BAC AFB00014 */ sw $s0, 0x14($sp)
    /* 80047BB0 8FAE0028 */ lw $t6, 0x28($sp)
    /* 80047BB4 24010001 */ addiu $at, $zero, 0x1
    /* 80047BB8 00408025 */ move $s0, $v0
    /* 80047BBC 95D10010 */ lhu $s1, 0x10($t6)
    /* 80047BC0 1221000C */ beq $s1, $at, .L80047BF4
    /* 80047BC4 24010008 */ addiu $at, $zero, 0x8
    /* 80047BC8 1621002A */ bne $s1, $at, .L80047C74
    /* 80047BCC 00000000 */ nop
    /* 80047BD0 8FB80028 */ lw $t8, 0x28($sp)
    /* 80047BD4 240F0002 */ addiu $t7, $zero, 0x2
    /* 80047BD8 3C048007 */ lui $a0, %hi(D_80072320)
    /* 80047BDC A70F0010 */ sh $t7, 0x10($t8)
    /* 80047BE0 8FA50028 */ lw $a1, 0x28($sp)
    /* 80047BE4 0C010155 */ jal __osEnqueueThread
    /* 80047BE8 24842320 */ addiu $a0, $a0, %lo(D_80072320)
    /* 80047BEC 10000021 */ b .L80047C74
    /* 80047BF0 00000000 */ nop
.L80047BF4:
    /* 80047BF4 8FB90028 */ lw $t9, 0x28($sp)
    /* 80047BF8 8F280008 */ lw $t0, 0x8($t9)
    /* 80047BFC 11000005 */ beqz $t0, .L80047C14
    /* 80047C00 00000000 */ nop
    /* 80047C04 3C098007 */ lui $t1, %hi(D_80072320)
    /* 80047C08 25292320 */ addiu $t1, $t1, %lo(D_80072320)
    /* 80047C0C 1509000A */ bne $t0, $t1, .L80047C38
    /* 80047C10 00000000 */ nop
.L80047C14:
    /* 80047C14 8FAB0028 */ lw $t3, 0x28($sp)
    /* 80047C18 240A0002 */ addiu $t2, $zero, 0x2
    /* 80047C1C 3C048007 */ lui $a0, %hi(D_80072320)
    /* 80047C20 A56A0010 */ sh $t2, 0x10($t3)
    /* 80047C24 8FA50028 */ lw $a1, 0x28($sp)
    /* 80047C28 0C010155 */ jal __osEnqueueThread
    /* 80047C2C 24842320 */ addiu $a0, $a0, %lo(D_80072320)
    /* 80047C30 10000010 */ b .L80047C74
    /* 80047C34 00000000 */ nop
.L80047C38:
    /* 80047C38 8FAD0028 */ lw $t5, 0x28($sp)
    /* 80047C3C 240C0008 */ addiu $t4, $zero, 0x8
    /* 80047C40 A5AC0010 */ sh $t4, 0x10($t5)
    /* 80047C44 8FAE0028 */ lw $t6, 0x28($sp)
    /* 80047C48 8DC40008 */ lw $a0, 0x8($t6)
    /* 80047C4C 0C010155 */ jal __osEnqueueThread
    /* 80047C50 01C02825 */ move $a1, $t6
    /* 80047C54 8FAF0028 */ lw $t7, 0x28($sp)
    /* 80047C58 0C010167 */ jal func_8004059C
    /* 80047C5C 8DE40008 */ lw $a0, 0x8($t7)
    /* 80047C60 00408825 */ move $s1, $v0
    /* 80047C64 3C048007 */ lui $a0, %hi(D_80072320)
    /* 80047C68 24842320 */ addiu $a0, $a0, %lo(D_80072320)
    /* 80047C6C 0C010155 */ jal __osEnqueueThread
    /* 80047C70 02202825 */ move $a1, $s1
.L80047C74:
    /* 80047C74 3C188007 */ lui $t8, %hi(D_80072328)
    /* 80047C78 8F182328 */ lw $t8, %lo(D_80072328)($t8)
    /* 80047C7C 17000005 */ bnez $t8, .L80047C94
    /* 80047C80 00000000 */ nop
    /* 80047C84 0C01016B */ jal __osDispatchThread
    /* 80047C88 00000000 */ nop
    /* 80047C8C 1000000F */ b .L80047CCC
    /* 80047C90 00000000 */ nop
.L80047C94:
    /* 80047C94 3C198007 */ lui $t9, %hi(D_80072328)
    /* 80047C98 3C098007 */ lui $t1, %hi(D_80072320)
    /* 80047C9C 8D292320 */ lw $t1, %lo(D_80072320)($t1)
    /* 80047CA0 8F392328 */ lw $t9, %lo(D_80072328)($t9)
    /* 80047CA4 8D2A0004 */ lw $t2, 0x4($t1)
    /* 80047CA8 8F280004 */ lw $t0, 0x4($t9)
    /* 80047CAC 010A082A */ slt $at, $t0, $t2
    /* 80047CB0 10200006 */ beqz $at, .L80047CCC
    /* 80047CB4 00000000 */ nop
    /* 80047CB8 240B0002 */ addiu $t3, $zero, 0x2
    /* 80047CBC 3C048007 */ lui $a0, %hi(D_80072320)
    /* 80047CC0 A72B0010 */ sh $t3, 0x10($t9)
    /* 80047CC4 0C010115 */ jal __osEnqueueAndYield
    /* 80047CC8 24842320 */ addiu $a0, $a0, %lo(D_80072320)
.L80047CCC:
    /* 80047CCC 0C00FF42 */ jal func_8003FD08
    /* 80047CD0 02002025 */ move $a0, $s0
    /* 80047CD4 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80047CD8 8FB00014 */ lw $s0, 0x14($sp)
    /* 80047CDC 8FB10018 */ lw $s1, 0x18($sp)
    /* 80047CE0 03E00008 */ jr $ra
    /* 80047CE4 27BD0028 */ addiu $sp, $sp, 0x28
