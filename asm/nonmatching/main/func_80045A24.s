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
glabel func_80045A24
    /* 80045A24 27BDFFA0 */ addiu $sp, $sp, -0x60
    /* 80045A28 AFBF0034 */ sw $ra, 0x34($sp)
    /* 80045A2C AFB60030 */ sw $s6, 0x30($sp)
    /* 80045A30 AFB5002C */ sw $s5, 0x2C($sp)
    /* 80045A34 AFB40028 */ sw $s4, 0x28($sp)
    /* 80045A38 AFB30024 */ sw $s3, 0x24($sp)
    /* 80045A3C AFB20020 */ sw $s2, 0x20($sp)
    /* 80045A40 AFB1001C */ sw $s1, 0x1C($sp)
    /* 80045A44 AFB00018 */ sw $s0, 0x18($sp)
    /* 80045A48 AFA60068 */ sw $a2, 0x68($sp)
    /* 80045A4C 8CB60010 */ lw $s6, 0x10($a1)
    /* 80045A50 0080A025 */ move $s4, $a0
    /* 80045A54 00A0A825 */ move $s5, $a1
    /* 80045A58 92CE0034 */ lbu $t6, 0x34($s6)
    /* 80045A5C 55C0001A */ bnel $t6, $zero, .L80045AC8
    /* 80045A60 240A0003 */ addiu $t2, $zero, 0x3
    /* 80045A64 8C900050 */ lw $s0, 0x50($a0)
    /* 80045A68 24130006 */ addiu $s3, $zero, 0x6
    /* 80045A6C 52000016 */ beql $s0, $zero, .L80045AC8
    /* 80045A70 240A0003 */ addiu $t2, $zero, 0x3
.L80045A74:
    /* 80045A74 860F000C */ lh $t7, 0xC($s0)
    /* 80045A78 8E110000 */ lw $s1, 0x0($s0)
    /* 80045A7C 166F000F */ bne $s3, $t7, .L80045ABC
    /* 80045A80 00000000 */ nop
    /* 80045A84 8E180010 */ lw $t8, 0x10($s0)
    /* 80045A88 16B8000C */ bne $s5, $t8, .L80045ABC
    /* 80045A8C 00000000 */ nop
    /* 80045A90 12200005 */ beqz $s1, .L80045AA8
    /* 80045A94 26920048 */ addiu $s2, $s4, 0x48
    /* 80045A98 8E390008 */ lw $t9, 0x8($s1)
    /* 80045A9C 8E080008 */ lw $t0, 0x8($s0)
    /* 80045AA0 03284821 */ addu $t1, $t9, $t0
    /* 80045AA4 AE290008 */ sw $t1, 0x8($s1)
.L80045AA8:
    /* 80045AA8 0C00F52A */ jal alUnlink
    /* 80045AAC 02002025 */ move $a0, $s0
    /* 80045AB0 02002025 */ move $a0, $s0
    /* 80045AB4 0C00F536 */ jal alLink
    /* 80045AB8 02402825 */ move $a1, $s2
.L80045ABC:
    /* 80045ABC 1620FFED */ bnez $s1, .L80045A74
    /* 80045AC0 02208025 */ move $s0, $s1
    /* 80045AC4 240A0003 */ addiu $t2, $zero, 0x3
.L80045AC8:
    /* 80045AC8 A2C00033 */ sb $zero, 0x33($s6)
    /* 80045ACC A2CA0034 */ sb $t2, 0x34($s6)
    /* 80045AD0 A2C00030 */ sb $zero, 0x30($s6)
    /* 80045AD4 8FAC0068 */ lw $t4, 0x68($sp)
    /* 80045AD8 8E8B001C */ lw $t3, 0x1C($s4)
    /* 80045ADC 02A02825 */ move $a1, $s5
    /* 80045AE0 00003025 */ move $a2, $zero
    /* 80045AE4 016C6821 */ addu $t5, $t3, $t4
    /* 80045AE8 AECD0024 */ sw $t5, 0x24($s6)
    /* 80045AEC 8E840014 */ lw $a0, 0x14($s4)
    /* 80045AF0 0C0122C2 */ jal func_80048B08
    /* 80045AF4 26920048 */ addiu $s2, $s4, 0x48
    /* 80045AF8 8E840014 */ lw $a0, 0x14($s4)
    /* 80045AFC 02A02825 */ move $a1, $s5
    /* 80045B00 00003025 */ move $a2, $zero
    /* 80045B04 0C01224E */ jal alSynSetVol
    /* 80045B08 8FA70068 */ lw $a3, 0x68($sp)
    /* 80045B0C 240E0005 */ addiu $t6, $zero, 0x5
    /* 80045B10 A7AE0050 */ sh $t6, 0x50($sp)
    /* 80045B14 AFB50054 */ sw $s5, 0x54($sp)
    /* 80045B18 02402025 */ move $a0, $s2
    /* 80045B1C 27A50050 */ addiu $a1, $sp, 0x50
    /* 80045B20 0C010A21 */ jal alEvtqPostEvent
    /* 80045B24 8FA60068 */ lw $a2, 0x68($sp)
    /* 80045B28 8FBF0034 */ lw $ra, 0x34($sp)
    /* 80045B2C 8FB00018 */ lw $s0, 0x18($sp)
    /* 80045B30 8FB1001C */ lw $s1, 0x1C($sp)
    /* 80045B34 8FB20020 */ lw $s2, 0x20($sp)
    /* 80045B38 8FB30024 */ lw $s3, 0x24($sp)
    /* 80045B3C 8FB40028 */ lw $s4, 0x28($sp)
    /* 80045B40 8FB5002C */ lw $s5, 0x2C($sp)
    /* 80045B44 8FB60030 */ lw $s6, 0x30($sp)
    /* 80045B48 03E00008 */ jr $ra
    /* 80045B4C 27BD0060 */ addiu $sp, $sp, 0x60
