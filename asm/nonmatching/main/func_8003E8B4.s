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
glabel func_8003E8B4
    /* 8003E8B4 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003E8B8 AFB40028 */ sw $s4, 0x28($sp)
    /* 8003E8BC AFB30024 */ sw $s3, 0x24($sp)
    /* 8003E8C0 AFB20020 */ sw $s2, 0x20($sp)
    /* 8003E8C4 AFB1001C */ sw $s1, 0x1C($sp)
    /* 8003E8C8 AFB00018 */ sw $s0, 0x18($sp)
    /* 8003E8CC AFBF002C */ sw $ra, 0x2C($sp)
    /* 8003E8D0 240E0001 */ addiu $t6, $zero, 0x1
    /* 8003E8D4 00808025 */ move $s0, $a0
    /* 8003E8D8 00A0A025 */ move $s4, $a1
    /* 8003E8DC AC850000 */ sw $a1, 0x0($a0)
    /* 8003E8E0 AC800004 */ sw $zero, 0x4($a0)
    /* 8003E8E4 AC800010 */ sw $zero, 0x10($a0)
    /* 8003E8E8 AC80000C */ sw $zero, 0xC($a0)
    /* 8003E8EC AC8E0014 */ sw $t6, 0x14($a0)
    /* 8003E8F0 00808825 */ move $s1, $a0
    /* 8003E8F4 00009025 */ move $s2, $zero
    /* 8003E8F8 24130010 */ addiu $s3, $zero, 0x10
    /* 8003E8FC 00006825 */ move $t5, $zero
    /* 8003E900 00806025 */ move $t4, $a0
.L8003E904:
    /* 8003E904 A22000A8 */ sb $zero, 0xA8($s1)
    /* 8003E908 AD800058 */ sw $zero, 0x58($t4)
    /* 8003E90C A2200098 */ sb $zero, 0x98($s1)
    /* 8003E910 8E0F0000 */ lw $t7, 0x0($s0)
    /* 8003E914 240E0001 */ addiu $t6, $zero, 0x1
    /* 8003E918 01F2C021 */ addu $t8, $t7, $s2
    /* 8003E91C 8F020000 */ lw $v0, 0x0($t8)
    /* 8003E920 01AE7804 */ sllv $t7, $t6, $t5
    /* 8003E924 1040000A */ beqz $v0, .L8003E950
    /* 8003E928 02827021 */ addu $t6, $s4, $v0
    /* 8003E92C 8E190004 */ lw $t9, 0x4($s0)
    /* 8003E930 02005025 */ move $t2, $s0
    /* 8003E934 01A05825 */ move $t3, $t5
    /* 8003E938 032FC025 */ or $t8, $t9, $t7
    /* 8003E93C AE180004 */ sw $t8, 0x4($s0)
    /* 8003E940 0C00F957 */ jal func_8003E55C
    /* 8003E944 AD8E0018 */ sw $t6, 0x18($t4)
    /* 8003E948 10000002 */ b .L8003E954
    /* 8003E94C AD8200B8 */ sw $v0, 0xB8($t4)
.L8003E950:
    /* 8003E950 AD800018 */ sw $zero, 0x18($t4)
.L8003E954:
    /* 8003E954 25AD0001 */ addiu $t5, $t5, 0x1
    /* 8003E958 26310001 */ addiu $s1, $s1, 0x1
    /* 8003E95C 26520004 */ addiu $s2, $s2, 0x4
    /* 8003E960 15B3FFE8 */ bne $t5, $s3, .L8003E904
    /* 8003E964 258C0004 */ addiu $t4, $t4, 0x4
    /* 8003E968 8E190000 */ lw $t9, 0x0($s0)
    /* 8003E96C 3C013FF0 */ lui $at, 0x3FF0
    /* 8003E970 44812800 */ mtc1 $at, $f5
    /* 8003E974 8F2F0040 */ lw $t7, 0x40($t9)
    /* 8003E978 44802000 */ mtc1 $zero, $f4
    /* 8003E97C 3C014F80 */ lui $at, 0x4F80
    /* 8003E980 448F3000 */ mtc1 $t7, $f6
    /* 8003E984 05E10004 */ bgez $t7, .L8003E998
    /* 8003E988 46803220 */ cvt.s.w $f8, $f6
    /* 8003E98C 44815000 */ mtc1 $at, $f10
    /* 8003E990 00000000 */ nop
    /* 8003E994 460A4200 */ add.s $f8, $f8, $f10
.L8003E998:
    /* 8003E998 460041A1 */ cvt.d.s $f6, $f8
    /* 8003E99C 46262283 */ div.d $f10, $f4, $f6
    /* 8003E9A0 46205220 */ cvt.s.d $f8, $f10
    /* 8003E9A4 E6080008 */ swc1 $f8, 0x8($s0)
    /* 8003E9A8 8FBF002C */ lw $ra, 0x2C($sp)
    /* 8003E9AC 8FB40028 */ lw $s4, 0x28($sp)
    /* 8003E9B0 8FB30024 */ lw $s3, 0x24($sp)
    /* 8003E9B4 8FB20020 */ lw $s2, 0x20($sp)
    /* 8003E9B8 8FB1001C */ lw $s1, 0x1C($sp)
    /* 8003E9BC 8FB00018 */ lw $s0, 0x18($sp)
    /* 8003E9C0 03E00008 */ jr $ra
    /* 8003E9C4 27BD0030 */ addiu $sp, $sp, 0x30
