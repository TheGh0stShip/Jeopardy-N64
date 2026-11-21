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
glabel func_800429A8
    /* 800429A8 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 800429AC AFBF001C */ sw $ra, 0x1C($sp)
    /* 800429B0 AFA40030 */ sw $a0, 0x30($sp)
    /* 800429B4 AFB00018 */ sw $s0, 0x18($sp)
    /* 800429B8 AFA50034 */ sw $a1, 0x34($sp)
    /* 800429BC 0C01214A */ jal osSetIntMask
    /* 800429C0 24040001 */ addiu $a0, $zero, 0x1
    /* 800429C4 8FAE0030 */ lw $t6, 0x30($sp)
    /* 800429C8 AFA20024 */ sw $v0, 0x24($sp)
    /* 800429CC 8FB80034 */ lw $t8, 0x34($sp)
    /* 800429D0 8DD00008 */ lw $s0, 0x8($t6)
    /* 800429D4 00001825 */ move $v1, $zero
    /* 800429D8 5200000D */ beql $s0, $zero, .L80042A10
    /* 800429DC 240FFFFF */ addiu $t7, $zero, -0x1
    /* 800429E0 0C00F52A */ jal alUnlink
    /* 800429E4 02002025 */ move $a0, $s0
    /* 800429E8 2604000C */ addiu $a0, $s0, 0xC
    /* 800429EC 8FA50034 */ lw $a1, 0x34($sp)
    /* 800429F0 0C00F856 */ jal alCopy
    /* 800429F4 24060010 */ addiu $a2, $zero, 0x10
    /* 800429F8 02002025 */ move $a0, $s0
    /* 800429FC 0C00F536 */ jal alLink
    /* 80042A00 8FA50030 */ lw $a1, 0x30($sp)
    /* 80042A04 10000003 */ b .L80042A14
    /* 80042A08 8E030008 */ lw $v1, 0x8($s0)
    /* 80042A0C 240FFFFF */ addiu $t7, $zero, -0x1
.L80042A10:
    /* 80042A10 A70F0000 */ sh $t7, 0x0($t8)
.L80042A14:
    /* 80042A14 8FA40024 */ lw $a0, 0x24($sp)
    /* 80042A18 0C01214A */ jal osSetIntMask
    /* 80042A1C AFA30028 */ sw $v1, 0x28($sp)
    /* 80042A20 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80042A24 8FA20028 */ lw $v0, 0x28($sp)
    /* 80042A28 8FB00018 */ lw $s0, 0x18($sp)
    /* 80042A2C 03E00008 */ jr $ra
    /* 80042A30 27BD0030 */ addiu $sp, $sp, 0x30
