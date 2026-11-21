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
glabel func_8003D608
    /* 8003D608 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8003D60C 24010004 */ addiu $at, $zero, 0x4
    /* 8003D610 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003D614 10A10055 */ beq $a1, $at, .L8003D76C
    /* 8003D618 00803825 */ move $a3, $a0
    /* 8003D61C 24010005 */ addiu $at, $zero, 0x5
    /* 8003D620 54A1006B */ bnel $a1, $at, .L8003D7D0
    /* 8003D624 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003D628 AC860028 */ sw $a2, 0x28($a0)
    /* 8003D62C 8CCE0000 */ lw $t6, 0x0($a2)
    /* 8003D630 AC800038 */ sw $zero, 0x38($a0)
    /* 8003D634 3C0F8004 */ lui $t7, %hi(alAdpcmPull)
    /* 8003D638 AC8E0044 */ sw $t6, 0x44($a0)
    /* 8003D63C 90C20008 */ lbu $v0, 0x8($a2)
    /* 8003D640 50400007 */ beql $v0, $zero, .L8003D660
    /* 8003D644 8CE20028 */ lw $v0, 0x28($a3)
    /* 8003D648 24040001 */ addiu $a0, $zero, 0x1
    /* 8003D64C 10440034 */ beq $v0, $a0, .L8003D720
    /* 8003D650 3C088004 */ lui $t0, 0x8004
    /* 8003D654 1000005E */ b .L8003D7D0
    /* 8003D658 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003D65C 8CE20028 */ lw $v0, 0x28($a3)
.L8003D660:
    /* 8003D660 25EFDCB4 */ addiu $t7, $t7, %lo(alAdpcmPull)
    /* 8003D664 ACEF0004 */ sw $t7, 0x4($a3)
    /* 8003D668 8C580004 */ lw $t8, 0x4($v0)
    /* 8003D66C 24050009 */ addiu $a1, $zero, 0x9
    /* 8003D670 0305001A */ div $zero, $t8, $a1
    /* 8003D674 0000C812 */ mflo $t9
    /* 8003D678 14A00002 */ bnez $a1, .L8003D684
    /* 8003D67C 00000000 */ nop
    /* 8003D680 0007000D */ break 7
.L8003D684:
    /* 8003D684 2401FFFF */ addiu $at, $zero, -0x1
    /* 8003D688 14A10004 */ bne $a1, $at, .L8003D69C
    /* 8003D68C 3C018000 */ lui $at, 0x8000
    /* 8003D690 17010002 */ bne $t8, $at, .L8003D69C
    /* 8003D694 00000000 */ nop
    /* 8003D698 0006000D */ break 6
.L8003D69C:
    /* 8003D69C 03250019 */ multu $t9, $a1
    /* 8003D6A0 00004012 */ mflo $t0
    /* 8003D6A4 AC480004 */ sw $t0, 0x4($v0)
    /* 8003D6A8 8CE20028 */ lw $v0, 0x28($a3)
    /* 8003D6AC 8C440010 */ lw $a0, 0x10($v0)
    /* 8003D6B0 8C890000 */ lw $t1, 0x0($a0)
    /* 8003D6B4 8C8B0004 */ lw $t3, 0x4($a0)
    /* 8003D6B8 00095100 */ sll $t2, $t1, 4
    /* 8003D6BC 014B0019 */ multu $t2, $t3
    /* 8003D6C0 00006012 */ mflo $t4
    /* 8003D6C4 ACEC002C */ sw $t4, 0x2C($a3)
    /* 8003D6C8 8C43000C */ lw $v1, 0xC($v0)
    /* 8003D6CC 50600011 */ beql $v1, $zero, .L8003D714
    /* 8003D6D0 ACE00024 */ sw $zero, 0x24($a3)
    /* 8003D6D4 8C6D0000 */ lw $t5, 0x0($v1)
    /* 8003D6D8 8CE50018 */ lw $a1, 0x18($a3)
    /* 8003D6DC 24060020 */ addiu $a2, $zero, 0x20
    /* 8003D6E0 ACED001C */ sw $t5, 0x1C($a3)
    /* 8003D6E4 8C4E000C */ lw $t6, 0xC($v0)
    /* 8003D6E8 8DCF0004 */ lw $t7, 0x4($t6)
    /* 8003D6EC ACEF0020 */ sw $t7, 0x20($a3)
    /* 8003D6F0 8C58000C */ lw $t8, 0xC($v0)
    /* 8003D6F4 8F190008 */ lw $t9, 0x8($t8)
    /* 8003D6F8 ACF90024 */ sw $t9, 0x24($a3)
    /* 8003D6FC 8C44000C */ lw $a0, 0xC($v0)
    /* 8003D700 0C00F856 */ jal alCopy
    /* 8003D704 2484000C */ addiu $a0, $a0, 0xC
    /* 8003D708 10000031 */ b .L8003D7D0
    /* 8003D70C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003D710 ACE00024 */ sw $zero, 0x24($a3)
.L8003D714:
    /* 8003D714 ACE00020 */ sw $zero, 0x20($a3)
    /* 8003D718 1000002C */ b .L8003D7CC
    /* 8003D71C ACE0001C */ sw $zero, 0x1C($a3)
.L8003D720:
    /* 8003D720 8CE20028 */ lw $v0, 0x28($a3)
    /* 8003D724 2508D7DC */ addiu $t0, $t0, -0x2824
    /* 8003D728 ACE80004 */ sw $t0, 0x4($a3)
    /* 8003D72C 8C43000C */ lw $v1, 0xC($v0)
    /* 8003D730 5060000B */ beql $v1, $zero, .L8003D760
    /* 8003D734 ACE00024 */ sw $zero, 0x24($a3)
    /* 8003D738 8C690000 */ lw $t1, 0x0($v1)
    /* 8003D73C ACE9001C */ sw $t1, 0x1C($a3)
    /* 8003D740 8C4A000C */ lw $t2, 0xC($v0)
    /* 8003D744 8D4B0004 */ lw $t3, 0x4($t2)
    /* 8003D748 ACEB0020 */ sw $t3, 0x20($a3)
    /* 8003D74C 8C4C000C */ lw $t4, 0xC($v0)
    /* 8003D750 8D8D0008 */ lw $t5, 0x8($t4)
    /* 8003D754 1000001D */ b .L8003D7CC
    /* 8003D758 ACED0024 */ sw $t5, 0x24($a3)
    /* 8003D75C ACE00024 */ sw $zero, 0x24($a3)
.L8003D760:
    /* 8003D760 ACE00020 */ sw $zero, 0x20($a3)
    /* 8003D764 10000019 */ b .L8003D7CC
    /* 8003D768 ACE0001C */ sw $zero, 0x1C($a3)
.L8003D76C:
    /* 8003D76C 8CE20028 */ lw $v0, 0x28($a3)
    /* 8003D770 24040001 */ addiu $a0, $zero, 0x1
    /* 8003D774 ACE0003C */ sw $zero, 0x3C($a3)
    /* 8003D778 ACE40040 */ sw $a0, 0x40($a3)
    /* 8003D77C 10400013 */ beqz $v0, .L8003D7CC
    /* 8003D780 ACE00038 */ sw $zero, 0x38($a3)
    /* 8003D784 8C4E0000 */ lw $t6, 0x0($v0)
    /* 8003D788 ACEE0044 */ sw $t6, 0x44($a3)
    /* 8003D78C 90430008 */ lbu $v1, 0x8($v0)
    /* 8003D790 14600007 */ bnez $v1, .L8003D7B0
    /* 8003D794 00000000 */ nop
    /* 8003D798 8C43000C */ lw $v1, 0xC($v0)
    /* 8003D79C 5060000C */ beql $v1, $zero, .L8003D7D0
    /* 8003D7A0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003D7A4 8C6F0008 */ lw $t7, 0x8($v1)
    /* 8003D7A8 10000008 */ b .L8003D7CC
    /* 8003D7AC ACEF0024 */ sw $t7, 0x24($a3)
.L8003D7B0:
    /* 8003D7B0 54830007 */ bnel $a0, $v1, .L8003D7D0
    /* 8003D7B4 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003D7B8 8C43000C */ lw $v1, 0xC($v0)
    /* 8003D7BC 50600004 */ beql $v1, $zero, .L8003D7D0
    /* 8003D7C0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003D7C4 8C780008 */ lw $t8, 0x8($v1)
    /* 8003D7C8 ACF80024 */ sw $t8, 0x24($a3)
.L8003D7CC:
    /* 8003D7CC 8FBF0014 */ lw $ra, 0x14($sp)
.L8003D7D0:
    /* 8003D7D0 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8003D7D4 03E00008 */ jr $ra
    /* 8003D7D8 00000000 */ nop
