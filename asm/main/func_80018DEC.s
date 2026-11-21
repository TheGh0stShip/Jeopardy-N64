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
glabel func_80018DEC
    /* 80018DEC 676E6564 */ daddiu $t6, $k1, 0x6564
    /* 80018DF0 27BDFFF0 */ addiu $sp, $sp, -0x10
    /* 80018DF4 AFBE0008 */ sw $fp, 0x8($sp)
    /* 80018DF8 03A0F021 */ addu $fp, $sp, $zero
    /* 80018DFC AFC40010 */ sw $a0, 0x10($fp)
    /* 80018E00 AFC50014 */ sw $a1, 0x14($fp)
    /* 80018E04 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80018E08 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80018E0C 24430008 */ addiu $v1, $v0, 0x8
    /* 80018E10 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80018E14 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80018E18 AFC20000 */ sw $v0, 0x0($fp)
    /* 80018E1C 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018E20 3C03BC00 */ lui $v1, 0xBC00
    /* 80018E24 34630002 */ ori $v1, $v1, 0x2
    /* 80018E28 AC430000 */ sw $v1, 0x0($v0)
    /* 80018E2C 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018E30 3C038000 */ lui $v1, 0x8000
    /* 80018E34 34630080 */ ori $v1, $v1, 0x80
    /* 80018E38 AC430004 */ sw $v1, 0x4($v0)
    /* 80018E3C 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80018E40 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80018E44 24430008 */ addiu $v1, $v0, 0x8
    /* 80018E48 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80018E4C AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80018E50 AFC20000 */ sw $v0, 0x0($fp)
    /* 80018E54 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018E58 3C030386 */ lui $v1, 0x386
    /* 80018E5C 34630010 */ ori $v1, $v1, 0x10
    /* 80018E60 AC430000 */ sw $v1, 0x0($v0)
    /* 80018E64 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018E68 3C038005 */ lui $v1, %hi(D_80050790)
    /* 80018E6C 24630790 */ addiu $v1, $v1, %lo(D_80050790)
    /* 80018E70 AC430004 */ sw $v1, 0x4($v0)
    /* 80018E74 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80018E78 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80018E7C 24430008 */ addiu $v1, $v0, 0x8
    /* 80018E80 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80018E84 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80018E88 AFC20000 */ sw $v0, 0x0($fp)
    /* 80018E8C 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018E90 3C030388 */ lui $v1, 0x388
    /* 80018E94 34630010 */ ori $v1, $v1, 0x10
    /* 80018E98 AC430000 */ sw $v1, 0x0($v0)
    /* 80018E9C 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018EA0 3C038005 */ lui $v1, %hi(D_800507A0)
    /* 80018EA4 246307A0 */ addiu $v1, $v1, %lo(D_800507A0)
    /* 80018EA8 AC430004 */ sw $v1, 0x4($v0)
    /* 80018EAC 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80018EB0 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80018EB4 24430008 */ addiu $v1, $v0, 0x8
    /* 80018EB8 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80018EBC AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80018EC0 AFC20000 */ sw $v0, 0x0($fp)
    /* 80018EC4 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018EC8 3C03038A */ lui $v1, 0x38A
    /* 80018ECC 34630010 */ ori $v1, $v1, 0x10
    /* 80018ED0 AC430000 */ sw $v1, 0x0($v0)
    /* 80018ED4 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018ED8 3C038005 */ lui $v1, %hi(D_800507B0)
    /* 80018EDC 246307B0 */ addiu $v1, $v1, %lo(D_800507B0)
    /* 80018EE0 AC430004 */ sw $v1, 0x4($v0)
    /* 80018EE4 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80018EE8 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80018EEC 24430008 */ addiu $v1, $v0, 0x8
    /* 80018EF0 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80018EF4 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80018EF8 AFC20000 */ sw $v0, 0x0($fp)
    /* 80018EFC 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018F00 3C03038C */ lui $v1, 0x38C
    /* 80018F04 34630010 */ ori $v1, $v1, 0x10
    /* 80018F08 AC430000 */ sw $v1, 0x0($v0)
    /* 80018F0C 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018F10 3C038005 */ lui $v1, %hi(D_80050788)
    /* 80018F14 24630788 */ addiu $v1, $v1, %lo(D_80050788)
    /* 80018F18 AC430004 */ sw $v1, 0x4($v0)
    /* 80018F1C 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80018F20 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80018F24 24430008 */ addiu $v1, $v0, 0x8
    /* 80018F28 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80018F2C AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80018F30 AFC20000 */ sw $v0, 0x0($fp)
    /* 80018F34 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018F38 3C030600 */ lui $v1, 0x600
    /* 80018F3C AC430000 */ sw $v1, 0x0($v0)
    /* 80018F40 8FC20000 */ lw $v0, 0x0($fp)
    /* 80018F44 8FC30010 */ lw $v1, 0x10($fp)
    /* 80018F48 8C640048 */ lw $a0, 0x48($v1)
    /* 80018F4C AC440004 */ sw $a0, 0x4($v0)
    /* 80018F50 03C0E821 */ addu $sp, $fp, $zero
    /* 80018F54 8FBE0008 */ lw $fp, 0x8($sp)
    /* 80018F58 27BD0010 */ addiu $sp, $sp, 0x10
    /* 80018F5C 03E00008 */ jr $ra
    /* 80018F60 00000000 */ nop
