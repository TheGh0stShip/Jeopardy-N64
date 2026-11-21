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
glabel func_800419BC
    /* 800419BC 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 800419C0 AFBF002C */ sw $ra, 0x2C($sp)
    /* 800419C4 AFB40028 */ sw $s4, 0x28($sp)
    /* 800419C8 AFB30024 */ sw $s3, 0x24($sp)
    /* 800419CC AFB20020 */ sw $s2, 0x20($sp)
    /* 800419D0 AFB1001C */ sw $s1, 0x1C($sp)
    /* 800419D4 AFB00018 */ sw $s0, 0x18($sp)
    /* 800419D8 848E0000 */ lh $t6, 0x0($a0)
    /* 800419DC 24014231 */ addiu $at, $zero, 0x4231
    /* 800419E0 00808025 */ move $s0, $a0
    /* 800419E4 15C1002E */ bne $t6, $at, .L80041AA0
    /* 800419E8 00A08825 */ move $s1, $a1
    /* 800419EC 848F0002 */ lh $t7, 0x2($a0)
    /* 800419F0 00009825 */ move $s3, $zero
    /* 800419F4 00809025 */ move $s2, $a0
    /* 800419F8 19E00029 */ blez $t7, .L80041AA0
    /* 800419FC 24140001 */ addiu $s4, $zero, 0x1
    /* 80041A00 8E580004 */ lw $t8, 0x4($s2)
.L80041A04:
    /* 80041A04 0310C821 */ addu $t9, $t8, $s0
    /* 80041A08 1320001F */ beqz $t9, .L80041A88
    /* 80041A0C AE590004 */ sw $t9, 0x4($s2)
    /* 80041A10 932E0002 */ lbu $t6, 0x2($t9)
    /* 80041A14 03206825 */ move $t5, $t9
    /* 80041A18 55C0001C */ bnel $t6, $zero, .L80041A8C
    /* 80041A1C 86180002 */ lh $t8, 0x2($s0)
    /* 80041A20 8F220008 */ lw $v0, 0x8($t9)
    /* 80041A24 A3340002 */ sb $s4, 0x2($t9)
    /* 80041A28 00006025 */ move $t4, $zero
    /* 80041A2C 10400005 */ beqz $v0, .L80041A44
    /* 80041A30 00502021 */ addu $a0, $v0, $s0
    /* 80041A34 AF240008 */ sw $a0, 0x8($t9)
    /* 80041A38 02002825 */ move $a1, $s0
    /* 80041A3C 0C010632 */ jal func_800418C8
    /* 80041A40 02203825 */ move $a3, $s1
.L80041A44:
    /* 80041A44 85B80000 */ lh $t8, 0x0($t5)
    /* 80041A48 01A05825 */ move $t3, $t5
    /* 80041A4C 5B00000F */ blezl $t8, .L80041A8C
    /* 80041A50 86180002 */ lh $t8, 0x2($s0)
    /* 80041A54 8D79000C */ lw $t9, 0xC($t3)
.L80041A58:
    /* 80041A58 02002825 */ move $a1, $s0
    /* 80041A5C 03302021 */ addu $a0, $t9, $s0
    /* 80041A60 10800003 */ beqz $a0, .L80041A70
    /* 80041A64 AD64000C */ sw $a0, 0xC($t3)
    /* 80041A68 0C010632 */ jal func_800418C8
    /* 80041A6C 02203825 */ move $a3, $s1
.L80041A70:
    /* 80041A70 85AF0000 */ lh $t7, 0x0($t5)
    /* 80041A74 258C0001 */ addiu $t4, $t4, 0x1
    /* 80041A78 256B0004 */ addiu $t3, $t3, 0x4
    /* 80041A7C 018F082A */ slt $at, $t4, $t7
    /* 80041A80 5420FFF5 */ bnel $at, $zero, .L80041A58
    /* 80041A84 8D79000C */ lw $t9, 0xC($t3)
.L80041A88:
    /* 80041A88 86180002 */ lh $t8, 0x2($s0)
.L80041A8C:
    /* 80041A8C 26730001 */ addiu $s3, $s3, 0x1
    /* 80041A90 26520004 */ addiu $s2, $s2, 0x4
    /* 80041A94 0278082A */ slt $at, $s3, $t8
    /* 80041A98 5420FFDA */ bnel $at, $zero, .L80041A04
    /* 80041A9C 8E580004 */ lw $t8, 0x4($s2)
.L80041AA0:
    /* 80041AA0 8FBF002C */ lw $ra, 0x2C($sp)
    /* 80041AA4 8FB00018 */ lw $s0, 0x18($sp)
    /* 80041AA8 8FB1001C */ lw $s1, 0x1C($sp)
    /* 80041AAC 8FB20020 */ lw $s2, 0x20($sp)
    /* 80041AB0 8FB30024 */ lw $s3, 0x24($sp)
    /* 80041AB4 8FB40028 */ lw $s4, 0x28($sp)
    /* 80041AB8 03E00008 */ jr $ra
    /* 80041ABC 27BD0030 */ addiu $sp, $sp, 0x30
