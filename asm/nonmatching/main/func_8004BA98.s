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
glabel func_8004BA98
    /* 8004BA98 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8004BA9C 3C0E800D */ lui $t6, %hi(D_800D31F0)
    /* 8004BAA0 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004BAA4 AFA40020 */ sw $a0, 0x20($sp)
    /* 8004BAA8 25CE31F0 */ addiu $t6, $t6, %lo(D_800D31F0)
    /* 8004BAAC AFAE001C */ sw $t6, 0x1C($sp)
    /* 8004BAB0 01C02825 */ move $a1, $t6
    /* 8004BAB4 8FA40020 */ lw $a0, 0x20($sp)
    /* 8004BAB8 0C012F62 */ jal bcopy
    /* 8004BABC 24060040 */ addiu $a2, $zero, 0x40
    /* 8004BAC0 8FAF001C */ lw $t7, 0x1C($sp)
    /* 8004BAC4 8DF80010 */ lw $t8, 0x10($t7)
    /* 8004BAC8 13000005 */ beqz $t8, .L8004BAE0
    /* 8004BACC 00000000 */ nop
    /* 8004BAD0 0C010CCE */ jal osVirtualToPhysical
    /* 8004BAD4 03002025 */ move $a0, $t8
    /* 8004BAD8 8FB9001C */ lw $t9, 0x1C($sp)
    /* 8004BADC AF220010 */ sw $v0, 0x10($t9)
.L8004BAE0:
    /* 8004BAE0 8FA8001C */ lw $t0, 0x1C($sp)
    /* 8004BAE4 8D090018 */ lw $t1, 0x18($t0)
    /* 8004BAE8 11200005 */ beqz $t1, .L8004BB00
    /* 8004BAEC 00000000 */ nop
    /* 8004BAF0 0C010CCE */ jal osVirtualToPhysical
    /* 8004BAF4 01202025 */ move $a0, $t1
    /* 8004BAF8 8FAA001C */ lw $t2, 0x1C($sp)
    /* 8004BAFC AD420018 */ sw $v0, 0x18($t2)
.L8004BB00:
    /* 8004BB00 8FAB001C */ lw $t3, 0x1C($sp)
    /* 8004BB04 8D6C0020 */ lw $t4, 0x20($t3)
    /* 8004BB08 11800005 */ beqz $t4, .L8004BB20
    /* 8004BB0C 00000000 */ nop
    /* 8004BB10 0C010CCE */ jal osVirtualToPhysical
    /* 8004BB14 01802025 */ move $a0, $t4
    /* 8004BB18 8FAD001C */ lw $t5, 0x1C($sp)
    /* 8004BB1C ADA20020 */ sw $v0, 0x20($t5)
.L8004BB20:
    /* 8004BB20 8FAE001C */ lw $t6, 0x1C($sp)
    /* 8004BB24 8DCF0028 */ lw $t7, 0x28($t6)
    /* 8004BB28 11E00005 */ beqz $t7, .L8004BB40
    /* 8004BB2C 00000000 */ nop
    /* 8004BB30 0C010CCE */ jal osVirtualToPhysical
    /* 8004BB34 01E02025 */ move $a0, $t7
    /* 8004BB38 8FB8001C */ lw $t8, 0x1C($sp)
    /* 8004BB3C AF020028 */ sw $v0, 0x28($t8)
.L8004BB40:
    /* 8004BB40 8FB9001C */ lw $t9, 0x1C($sp)
    /* 8004BB44 8F28002C */ lw $t0, 0x2C($t9)
    /* 8004BB48 11000005 */ beqz $t0, .L8004BB60
    /* 8004BB4C 00000000 */ nop
    /* 8004BB50 0C010CCE */ jal osVirtualToPhysical
    /* 8004BB54 01002025 */ move $a0, $t0
    /* 8004BB58 8FA9001C */ lw $t1, 0x1C($sp)
    /* 8004BB5C AD22002C */ sw $v0, 0x2C($t1)
.L8004BB60:
    /* 8004BB60 8FAA001C */ lw $t2, 0x1C($sp)
    /* 8004BB64 8D4B0030 */ lw $t3, 0x30($t2)
    /* 8004BB68 11600005 */ beqz $t3, .L8004BB80
    /* 8004BB6C 00000000 */ nop
    /* 8004BB70 0C010CCE */ jal osVirtualToPhysical
    /* 8004BB74 01602025 */ move $a0, $t3
    /* 8004BB78 8FAC001C */ lw $t4, 0x1C($sp)
    /* 8004BB7C AD820030 */ sw $v0, 0x30($t4)
.L8004BB80:
    /* 8004BB80 8FAD001C */ lw $t5, 0x1C($sp)
    /* 8004BB84 8DAE0038 */ lw $t6, 0x38($t5)
    /* 8004BB88 11C00005 */ beqz $t6, .L8004BBA0
    /* 8004BB8C 00000000 */ nop
    /* 8004BB90 0C010CCE */ jal osVirtualToPhysical
    /* 8004BB94 01C02025 */ move $a0, $t6
    /* 8004BB98 8FAF001C */ lw $t7, 0x1C($sp)
    /* 8004BB9C ADE20038 */ sw $v0, 0x38($t7)
.L8004BBA0:
    /* 8004BBA0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004BBA4 8FA2001C */ lw $v0, 0x1C($sp)
    /* 8004BBA8 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8004BBAC 03E00008 */ jr $ra
    /* 8004BBB0 00000000 */ nop
