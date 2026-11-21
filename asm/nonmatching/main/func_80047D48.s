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
glabel func_80047D48
    /* 80047D48 27BDFFC8 */ addiu $sp, $sp, -0x38
    /* 80047D4C AFBF001C */ sw $ra, 0x1C($sp)
    /* 80047D50 0C00FF3A */ jal __osDisableInt
    /* 80047D54 AFB00018 */ sw $s0, 0x18($sp)
    /* 80047D58 0C010CCA */ jal func_80043328
    /* 80047D5C 00408025 */ move $s0, $v0
    /* 80047D60 AFA20034 */ sw $v0, 0x34($sp)
    /* 80047D64 3C0F800D */ lui $t7, %hi(D_800D2F68)
    /* 80047D68 8DEF2F68 */ lw $t7, %lo(D_800D2F68)($t7)
    /* 80047D6C 8FAE0034 */ lw $t6, 0x34($sp)
    /* 80047D70 3C08800D */ lui $t0, %hi(D_800D2F60)
    /* 80047D74 3C09800D */ lui $t1, %hi(D_800D2F64)
    /* 80047D78 8D292F64 */ lw $t1, %lo(D_800D2F64)($t1)
    /* 80047D7C 8D082F60 */ lw $t0, %lo(D_800D2F60)($t0)
    /* 80047D80 01CFC023 */ subu $t8, $t6, $t7
    /* 80047D84 AFB80030 */ sw $t8, 0x30($sp)
    /* 80047D88 02002025 */ move $a0, $s0
    /* 80047D8C AFA9002C */ sw $t1, 0x2C($sp)
    /* 80047D90 0C00FF42 */ jal func_8003FD08
    /* 80047D94 AFA80028 */ sw $t0, 0x28($sp)
    /* 80047D98 8FB90030 */ lw $t9, 0x30($sp)
    /* 80047D9C 8FAD002C */ lw $t5, 0x2C($sp)
    /* 80047DA0 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80047DA4 03205825 */ move $t3, $t9
    /* 80047DA8 016D1821 */ addu $v1, $t3, $t5
    /* 80047DAC 8FAC0028 */ lw $t4, 0x28($sp)
    /* 80047DB0 240A0000 */ addiu $t2, $zero, 0x0
    /* 80047DB4 006D082B */ sltu $at, $v1, $t5
    /* 80047DB8 002A1021 */ addu $v0, $at, $t2
    /* 80047DBC 8FB00018 */ lw $s0, 0x18($sp)
    /* 80047DC0 27BD0038 */ addiu $sp, $sp, 0x38
    /* 80047DC4 03E00008 */ jr $ra
    /* 80047DC8 004C1021 */ addu $v0, $v0, $t4
    /* 80047DCC 00000000 */ nop
    /* 80047DD0 00000000 */ nop
    /* 80047DD4 00000000 */ nop
