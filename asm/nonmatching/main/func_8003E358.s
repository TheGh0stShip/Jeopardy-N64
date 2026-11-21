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
glabel func_8003E358
    /* 8003E358 8C8E0004 */ lw $t6, 0x4($a0)
    /* 8003E35C 00803025 */ move $a2, $a0
    /* 8003E360 00804025 */ move $t0, $a0
    /* 8003E364 ACAE0000 */ sw $t6, 0x0($a1)
    /* 8003E368 8C8F000C */ lw $t7, 0xC($a0)
    /* 8003E36C 00001025 */ move $v0, $zero
    /* 8003E370 00A01825 */ move $v1, $a1
    /* 8003E374 ACAF0004 */ sw $t7, 0x4($a1)
    /* 8003E378 8C980010 */ lw $t8, 0x10($a0)
    /* 8003E37C 24040010 */ addiu $a0, $zero, 0x10
    /* 8003E380 00A03825 */ move $a3, $a1
    /* 8003E384 ACB80008 */ sw $t8, 0x8($a1)
.L8003E388:
    /* 8003E388 8CD90018 */ lw $t9, 0x18($a2)
    /* 8003E38C 24420002 */ addiu $v0, $v0, 0x2
    /* 8003E390 24630008 */ addiu $v1, $v1, 0x8
    /* 8003E394 AC790004 */ sw $t9, 0x4($v1)
    /* 8003E398 8CC90058 */ lw $t1, 0x58($a2)
    /* 8003E39C 24C60008 */ addiu $a2, $a2, 0x8
    /* 8003E3A0 24E70002 */ addiu $a3, $a3, 0x2
    /* 8003E3A4 AC690044 */ sw $t1, 0x44($v1)
    /* 8003E3A8 910A0098 */ lbu $t2, 0x98($t0)
    /* 8003E3AC 25080002 */ addiu $t0, $t0, 0x2
    /* 8003E3B0 A0EA008A */ sb $t2, 0x8A($a3)
    /* 8003E3B4 910B00A6 */ lbu $t3, 0xA6($t0)
    /* 8003E3B8 A0EB009A */ sb $t3, 0x9A($a3)
    /* 8003E3BC 8CCC00B0 */ lw $t4, 0xB0($a2)
    /* 8003E3C0 AC6C00A4 */ sw $t4, 0xA4($v1)
    /* 8003E3C4 8CCD0014 */ lw $t5, 0x14($a2)
    /* 8003E3C8 AC6D0008 */ sw $t5, 0x8($v1)
    /* 8003E3CC 8CCE0054 */ lw $t6, 0x54($a2)
    /* 8003E3D0 AC6E0048 */ sw $t6, 0x48($v1)
    /* 8003E3D4 910F0097 */ lbu $t7, 0x97($t0)
    /* 8003E3D8 A0EF008B */ sb $t7, 0x8B($a3)
    /* 8003E3DC 911800A7 */ lbu $t8, 0xA7($t0)
    /* 8003E3E0 A0F8009B */ sb $t8, 0x9B($a3)
    /* 8003E3E4 8CD900B4 */ lw $t9, 0xB4($a2)
    /* 8003E3E8 1444FFE7 */ bne $v0, $a0, .L8003E388
    /* 8003E3EC AC7900A8 */ sw $t9, 0xA8($v1)
    /* 8003E3F0 03E00008 */ jr $ra
    /* 8003E3F4 00000000 */ nop
