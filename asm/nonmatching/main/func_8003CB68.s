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
glabel func_8003CB68
    /* 8003CB68 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003CB6C AFBF001C */ sw $ra, 0x1C($sp)
    /* 8003CB70 AFA40028 */ sw $a0, 0x28($sp)
    /* 8003CB74 AFA5002C */ sw $a1, 0x2C($sp)
    /* 8003CB78 AFA60030 */ sw $a2, 0x30($sp)
    /* 8003CB7C AFA70034 */ sw $a3, 0x34($sp)
    /* 8003CB80 AFB10018 */ sw $s1, 0x18($sp)
    /* 8003CB84 AFB00014 */ sw $s0, 0x14($sp)
    /* 8003CB88 3C0EA460 */ lui $t6, %hi(D_A4600010)
    /* 8003CB8C 8DD00010 */ lw $s0, %lo(D_A4600010)($t6)
    /* 8003CB90 320F0003 */ andi $t7, $s0, 0x3
    /* 8003CB94 11E00006 */ beqz $t7, .L8003CBB0
    /* 8003CB98 00000000 */ nop
.L8003CB9C:
    /* 8003CB9C 3C18A460 */ lui $t8, %hi(D_A4600010)
    /* 8003CBA0 8F100010 */ lw $s0, %lo(D_A4600010)($t8)
    /* 8003CBA4 32190003 */ andi $t9, $s0, 0x3
    /* 8003CBA8 1720FFFC */ bnez $t9, .L8003CB9C
    /* 8003CBAC 00000000 */ nop
.L8003CBB0:
    /* 8003CBB0 0C010CCE */ jal osVirtualToPhysical
    /* 8003CBB4 8FA40030 */ lw $a0, 0x30($sp)
    /* 8003CBB8 3C08A460 */ lui $t0, %hi(D_A4600000)
    /* 8003CBBC AD020000 */ sw $v0, %lo(D_A4600000)($t0)
    /* 8003CBC0 3C098000 */ lui $t1, %hi(D_80000308)
    /* 8003CBC4 8D290308 */ lw $t1, %lo(D_80000308)($t1)
    /* 8003CBC8 8FAA002C */ lw $t2, 0x2C($sp)
    /* 8003CBCC 3C011FFF */ lui $at, 0x1FFF
    /* 8003CBD0 3421FFFF */ ori $at, $at, 0xFFFF
    /* 8003CBD4 012A5825 */ or $t3, $t1, $t2
    /* 8003CBD8 01616024 */ and $t4, $t3, $at
    /* 8003CBDC 3C0DA460 */ lui $t5, %hi(D_A4600004)
    /* 8003CBE0 ADAC0004 */ sw $t4, %lo(D_A4600004)($t5)
    /* 8003CBE4 8FB10028 */ lw $s1, 0x28($sp)
    /* 8003CBE8 12200005 */ beqz $s1, .L8003CC00
    /* 8003CBEC 24010001 */ addiu $at, $zero, 0x1
    /* 8003CBF0 12210008 */ beq $s1, $at, .L8003CC14
    /* 8003CBF4 00000000 */ nop
    /* 8003CBF8 1000000B */ b .L8003CC28
    /* 8003CBFC 00000000 */ nop
.L8003CC00:
    /* 8003CC00 8FAE0034 */ lw $t6, 0x34($sp)
    /* 8003CC04 3C18A460 */ lui $t8, %hi(D_A460000C)
    /* 8003CC08 25CFFFFF */ addiu $t7, $t6, -0x1
    /* 8003CC0C 10000008 */ b .L8003CC30
    /* 8003CC10 AF0F000C */ sw $t7, %lo(D_A460000C)($t8)
.L8003CC14:
    /* 8003CC14 8FB90034 */ lw $t9, 0x34($sp)
    /* 8003CC18 3C09A460 */ lui $t1, %hi(D_A4600008)
    /* 8003CC1C 2728FFFF */ addiu $t0, $t9, -0x1
    /* 8003CC20 10000003 */ b .L8003CC30
    /* 8003CC24 AD280008 */ sw $t0, %lo(D_A4600008)($t1)
.L8003CC28:
    /* 8003CC28 10000002 */ b .L8003CC34
    /* 8003CC2C 2402FFFF */ addiu $v0, $zero, -0x1
.L8003CC30:
    /* 8003CC30 00001025 */ move $v0, $zero
.L8003CC34:
    /* 8003CC34 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003CC38 8FB00014 */ lw $s0, 0x14($sp)
    /* 8003CC3C 8FB10018 */ lw $s1, 0x18($sp)
    /* 8003CC40 03E00008 */ jr $ra
    /* 8003CC44 27BD0028 */ addiu $sp, $sp, 0x28
