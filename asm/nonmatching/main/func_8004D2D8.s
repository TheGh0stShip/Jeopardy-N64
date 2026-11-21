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
glabel func_8004D2D8
    /* 8004D2D8 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8004D2DC AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004D2E0 AFA40018 */ sw $a0, 0x18($sp)
    /* 8004D2E4 AFA60020 */ sw $a2, 0x20($sp)
    /* 8004D2E8 8CAE0008 */ lw $t6, 0x8($a1)
    /* 8004D2EC 51C0001A */ beql $t6, $zero, .L8004D358
    /* 8004D2F0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004D2F4 0C00F3B6 */ jal __allocParam
    /* 8004D2F8 AFA5001C */ sw $a1, 0x1C($sp)
    /* 8004D2FC 8FA7001C */ lw $a3, 0x1C($sp)
    /* 8004D300 10400014 */ beqz $v0, .L8004D354
    /* 8004D304 00403025 */ move $a2, $v0
    /* 8004D308 8FAF0018 */ lw $t7, 0x18($sp)
    /* 8004D30C 8CF90008 */ lw $t9, 0x8($a3)
    /* 8004D310 240A000E */ addiu $t2, $zero, 0xE
    /* 8004D314 8DF8001C */ lw $t8, 0x1C($t7)
    /* 8004D318 8F2800D8 */ lw $t0, 0xD8($t9)
    /* 8004D31C A44A0008 */ sh $t2, 0x8($v0)
    /* 8004D320 24050003 */ addiu $a1, $zero, 0x3
    /* 8004D324 03084821 */ addu $t1, $t8, $t0
    /* 8004D328 AC490004 */ sw $t1, 0x4($v0)
    /* 8004D32C 8FAB0020 */ lw $t3, 0x20($sp)
    /* 8004D330 AC400000 */ sw $zero, 0x0($v0)
    /* 8004D334 AC4B000C */ sw $t3, 0xC($v0)
    /* 8004D338 84EC001A */ lh $t4, 0x1A($a3)
    /* 8004D33C A44C000A */ sh $t4, 0xA($v0)
    /* 8004D340 8CED0008 */ lw $t5, 0x8($a3)
    /* 8004D344 8DA4000C */ lw $a0, 0xC($t5)
    /* 8004D348 8C990008 */ lw $t9, 0x8($a0)
    /* 8004D34C 0320F809 */ jalr $t9
    /* 8004D350 00000000 */ nop
.L8004D354:
    /* 8004D354 8FBF0014 */ lw $ra, 0x14($sp)
.L8004D358:
    /* 8004D358 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8004D35C 03E00008 */ jr $ra
    /* 8004D360 00000000 */ nop
    /* 8004D364 00000000 */ nop
