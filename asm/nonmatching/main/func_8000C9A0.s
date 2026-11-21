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
glabel func_8000C9A0
    /* 8000C9A0 AFBE0018 */ sw $fp, 0x18($sp)
    /* 8000C9A4 03A0F021 */ addu $fp, $sp, $zero
    /* 8000C9A8 AFC40020 */ sw $a0, 0x20($fp)
    /* 8000C9AC AFC50024 */ sw $a1, 0x24($fp)
    /* 8000C9B0 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000C9B4 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000C9B8 24430008 */ addiu $v1, $v0, 0x8
    /* 8000C9BC 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000C9C0 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000C9C4 AFC20010 */ sw $v0, 0x10($fp)
    /* 8000C9C8 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000C9CC 3C03BC00 */ lui $v1, 0xBC00
    /* 8000C9D0 34630002 */ ori $v1, $v1, 0x2
    /* 8000C9D4 AC430000 */ sw $v1, 0x0($v0)
    /* 8000C9D8 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000C9DC 3C038000 */ lui $v1, 0x8000
    /* 8000C9E0 34630080 */ ori $v1, $v1, 0x80
    /* 8000C9E4 AC430004 */ sw $v1, 0x4($v0)
    /* 8000C9E8 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000C9EC 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000C9F0 24430008 */ addiu $v1, $v0, 0x8
    /* 8000C9F4 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000C9F8 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000C9FC AFC20010 */ sw $v0, 0x10($fp)
    /* 8000CA00 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CA04 3C030386 */ lui $v1, 0x386
    /* 8000CA08 34630010 */ ori $v1, $v1, 0x10
    /* 8000CA0C AC430000 */ sw $v1, 0x0($v0)
    /* 8000CA10 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CA14 3C038005 */ lui $v1, %hi(D_80050720)
    /* 8000CA18 24630720 */ addiu $v1, $v1, %lo(D_80050720)
    /* 8000CA1C AC430004 */ sw $v1, 0x4($v0)
    /* 8000CA20 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000CA24 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000CA28 24430008 */ addiu $v1, $v0, 0x8
    /* 8000CA2C 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000CA30 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000CA34 AFC20010 */ sw $v0, 0x10($fp)
    /* 8000CA38 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CA3C 3C030388 */ lui $v1, 0x388
    /* 8000CA40 34630010 */ ori $v1, $v1, 0x10
    /* 8000CA44 AC430000 */ sw $v1, 0x0($v0)
    /* 8000CA48 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CA4C 3C038005 */ lui $v1, %hi(D_80050730)
    /* 8000CA50 24630730 */ addiu $v1, $v1, %lo(D_80050730)
    /* 8000CA54 AC430004 */ sw $v1, 0x4($v0)
    /* 8000CA58 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000CA5C 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000CA60 24430008 */ addiu $v1, $v0, 0x8
    /* 8000CA64 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000CA68 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000CA6C AFC20010 */ sw $v0, 0x10($fp)
    /* 8000CA70 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CA74 3C03038A */ lui $v1, 0x38A
    /* 8000CA78 34630010 */ ori $v1, $v1, 0x10
    /* 8000CA7C AC430000 */ sw $v1, 0x0($v0)
    /* 8000CA80 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CA84 3C038005 */ lui $v1, %hi(D_80050740)
    /* 8000CA88 24630740 */ addiu $v1, $v1, %lo(D_80050740)
    /* 8000CA8C AC430004 */ sw $v1, 0x4($v0)
    /* 8000CA90 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000CA94 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000CA98 24430008 */ addiu $v1, $v0, 0x8
    /* 8000CA9C 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000CAA0 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000CAA4 AFC20010 */ sw $v0, 0x10($fp)
    /* 8000CAA8 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CAAC 3C03038C */ lui $v1, 0x38C
    /* 8000CAB0 34630010 */ ori $v1, $v1, 0x10
    /* 8000CAB4 AC430000 */ sw $v1, 0x0($v0)
    /* 8000CAB8 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CABC 3C038005 */ lui $v1, %hi(D_80050718)
    /* 8000CAC0 24630718 */ addiu $v1, $v1, %lo(D_80050718)
    /* 8000CAC4 AC430004 */ sw $v1, 0x4($v0)
    /* 8000CAC8 8FC20020 */ lw $v0, 0x20($fp)
    /* 8000CACC 8C430000 */ lw $v1, 0x0($v0)
    /* 8000CAD0 00601021 */ addu $v0, $v1, $zero
    /* 8000CAD4 00021980 */ sll $v1, $v0, 6
    /* 8000CAD8 24624C40 */ addiu $v0, $v1, 0x4C40
    /* 8000CADC 8FC30024 */ lw $v1, 0x24($fp)
    /* 8000CAE0 00431021 */ addu $v0, $v0, $v1
    /* 8000CAE4 8FC30020 */ lw $v1, 0x20($fp)
    /* 8000CAE8 84640010 */ lh $a0, 0x10($v1)
    /* 8000CAEC 44840000 */ mtc1 $a0, $f0
    /* 8000CAF0 46800020 */ cvt.s.w $f0, $f0
    /* 8000CAF4 8FC30020 */ lw $v1, 0x20($fp)
    /* 8000CAF8 84640012 */ lh $a0, 0x12($v1)
    /* 8000CAFC 44841000 */ mtc1 $a0, $f2
    /* 8000CB00 468010A0 */ cvt.s.w $f2, $f2
    /* 8000CB04 8FC30020 */ lw $v1, 0x20($fp)
    /* 8000CB08 84640014 */ lh $a0, 0x14($v1)
    /* 8000CB0C 44842000 */ mtc1 $a0, $f4
    /* 8000CB10 46802120 */ cvt.s.w $f4, $f4
    /* 8000CB14 00402021 */ addu $a0, $v0, $zero
    /* 8000CB18 44050000 */ mfc1 $a1, $f0
    /* 8000CB1C 44061000 */ mfc1 $a2, $f2
    /* 8000CB20 44072000 */ mfc1 $a3, $f4
    /* 8000CB24 0C00FC98 */ jal guTranslate
    /* 8000CB28 00000000 */ nop
    /* 8000CB2C 8FC20020 */ lw $v0, 0x20($fp)
    /* 8000CB30 8C430000 */ lw $v1, 0x0($v0)
    /* 8000CB34 00601021 */ addu $v0, $v1, $zero
    /* 8000CB38 00021980 */ sll $v1, $v0, 6
    /* 8000CB3C 24620140 */ addiu $v0, $v1, 0x140
    /* 8000CB40 8FC30024 */ lw $v1, 0x24($fp)
    /* 8000CB44 00431021 */ addu $v0, $v0, $v1
    /* 8000CB48 8FC30020 */ lw $v1, 0x20($fp)
    /* 8000CB4C 8FC60020 */ lw $a2, 0x20($fp)
    /* 8000CB50 8FC70020 */ lw $a3, 0x20($fp)
    /* 8000CB54 00402021 */ addu $a0, $v0, $zero
    /* 8000CB58 8C650018 */ lw $a1, 0x18($v1)
    /* 8000CB5C 8CC60018 */ lw $a2, 0x18($a2)
    /* 8000CB60 8CE70018 */ lw $a3, 0x18($a3)
    /* 8000CB64 0C00FC03 */ jal guScale
    /* 8000CB68 00000000 */ nop
    /* 8000CB6C 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000CB70 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000CB74 24430008 */ addiu $v1, $v0, 0x8
    /* 8000CB78 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000CB7C AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000CB80 AFC20010 */ sw $v0, 0x10($fp)
    /* 8000CB84 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CB88 3C030102 */ lui $v1, 0x102
    /* 8000CB8C 34630040 */ ori $v1, $v1, 0x40
    /* 8000CB90 AC430000 */ sw $v1, 0x0($v0)
    /* 8000CB94 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CB98 8FC30020 */ lw $v1, 0x20($fp)
    /* 8000CB9C 8C640000 */ lw $a0, 0x0($v1)
    /* 8000CBA0 00801821 */ addu $v1, $a0, $zero
    /* 8000CBA4 00032180 */ sll $a0, $v1, 6
    /* 8000CBA8 24834C40 */ addiu $v1, $a0, 0x4C40
    /* 8000CBAC 8FC40024 */ lw $a0, 0x24($fp)
    /* 8000CBB0 00831821 */ addu $v1, $a0, $v1
    /* 8000CBB4 AC430004 */ sw $v1, 0x4($v0)
    /* 8000CBB8 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000CBBC 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000CBC0 24430008 */ addiu $v1, $v0, 0x8
    /* 8000CBC4 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000CBC8 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000CBCC AFC20010 */ sw $v0, 0x10($fp)
    /* 8000CBD0 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CBD4 3C030100 */ lui $v1, 0x100
    /* 8000CBD8 34630040 */ ori $v1, $v1, 0x40
    /* 8000CBDC AC430000 */ sw $v1, 0x0($v0)
    /* 8000CBE0 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CBE4 8FC30020 */ lw $v1, 0x20($fp)
    /* 8000CBE8 8C640000 */ lw $a0, 0x0($v1)
    /* 8000CBEC 00801821 */ addu $v1, $a0, $zero
    /* 8000CBF0 00032180 */ sll $a0, $v1, 6
    /* 8000CBF4 24830140 */ addiu $v1, $a0, 0x140
    /* 8000CBF8 8FC40024 */ lw $a0, 0x24($fp)
    /* 8000CBFC 00831821 */ addu $v1, $a0, $v1
    /* 8000CC00 AC430004 */ sw $v1, 0x4($v0)
    /* 8000CC04 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000CC08 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000CC0C 24430008 */ addiu $v1, $v0, 0x8
    /* 8000CC10 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000CC14 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000CC18 AFC20010 */ sw $v0, 0x10($fp)
    /* 8000CC1C 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CC20 3C030600 */ lui $v1, 0x600
    /* 8000CC24 AC430000 */ sw $v1, 0x0($v0)
    /* 8000CC28 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CC2C 3C03010A */ lui $v1, 0x10A
    /* 8000CC30 2463FC00 */ addiu $v1, $v1, -0x400
    /* 8000CC34 AC430004 */ sw $v1, 0x4($v0)
    /* 8000CC38 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000CC3C 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000CC40 24430008 */ addiu $v1, $v0, 0x8
    /* 8000CC44 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000CC48 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000CC4C AFC20010 */ sw $v0, 0x10($fp)
    /* 8000CC50 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CC54 3C030600 */ lui $v1, 0x600
    /* 8000CC58 AC430000 */ sw $v1, 0x0($v0)
    /* 8000CC5C 8FC20010 */ lw $v0, 0x10($fp)
    /* 8000CC60 8FC30020 */ lw $v1, 0x20($fp)
    /* 8000CC64 8C640048 */ lw $a0, 0x48($v1)
    /* 8000CC68 AC440004 */ sw $a0, 0x4($v0)
    /* 8000CC6C 03C0E821 */ addu $sp, $fp, $zero
    /* 8000CC70 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8000CC74 8FBE0018 */ lw $fp, 0x18($sp)
    /* 8000CC78 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8000CC7C 03E00008 */ jr $ra
    /* 8000CC80 00000000 */ nop
