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
glabel func_8004D798
    /* 8004D798 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004D79C AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004D7A0 AFA40028 */ sw $a0, 0x28($sp)
    /* 8004D7A4 AFA5002C */ sw $a1, 0x2C($sp)
    /* 8004D7A8 AFA60030 */ sw $a2, 0x30($sp)
    /* 8004D7AC 0C00FF3A */ jal __osDisableInt
    /* 8004D7B0 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004D7B4 3C0F8007 */ lui $t7, %hi(D_8007246C)
    /* 8004D7B8 8DEF246C */ lw $t7, %lo(D_8007246C)($t7)
    /* 8004D7BC 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8004D7C0 3C198007 */ lui $t9, %hi(D_8007246C)
    /* 8004D7C4 3C098007 */ lui $t1, %hi(D_8007246C)
    /* 8004D7C8 ADEE0010 */ sw $t6, 0x10($t7)
    /* 8004D7CC 8F39246C */ lw $t9, %lo(D_8007246C)($t9)
    /* 8004D7D0 8FB8002C */ lw $t8, 0x2C($sp)
    /* 8004D7D4 00408025 */ move $s0, $v0
    /* 8004D7D8 02002025 */ move $a0, $s0
    /* 8004D7DC AF380014 */ sw $t8, 0x14($t9)
    /* 8004D7E0 8D29246C */ lw $t1, %lo(D_8007246C)($t1)
    /* 8004D7E4 8FA80030 */ lw $t0, 0x30($sp)
    /* 8004D7E8 0C00FF42 */ jal func_8003FD08
    /* 8004D7EC A5280002 */ sh $t0, 0x2($t1)
    /* 8004D7F0 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004D7F4 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004D7F8 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8004D7FC 03E00008 */ jr $ra
    /* 8004D800 00000000 */ nop
    /* 8004D804 00000000 */ nop
