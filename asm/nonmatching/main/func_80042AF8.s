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
glabel func_80042AF8
    /* 80042AF8 27BDFFB8 */ addiu $sp, $sp, -0x48
    /* 80042AFC 8FA80058 */ lw $t0, 0x58($sp)
    /* 80042B00 AFBF0044 */ sw $ra, 0x44($sp)
    /* 80042B04 AFBE0040 */ sw $fp, 0x40($sp)
    /* 80042B08 AFB7003C */ sw $s7, 0x3C($sp)
    /* 80042B0C AFB60038 */ sw $s6, 0x38($sp)
    /* 80042B10 AFB50034 */ sw $s5, 0x34($sp)
    /* 80042B14 AFB40030 */ sw $s4, 0x30($sp)
    /* 80042B18 AFB3002C */ sw $s3, 0x2C($sp)
    /* 80042B1C AFB20028 */ sw $s2, 0x28($sp)
    /* 80042B20 AFB10024 */ sw $s1, 0x24($sp)
    /* 80042B24 AFB00020 */ sw $s0, 0x20($sp)
    /* 80042B28 8C83001C */ lw $v1, 0x1C($a0)
    /* 80042B2C 3C0E0200 */ lui $t6, 0x200
    /* 80042B30 00061040 */ sll $v0, $a2, 1
    /* 80042B34 3C0F0200 */ lui $t7, 0x200
    /* 80042B38 35CE0440 */ ori $t6, $t6, 0x440
    /* 80042B3C 35EF0580 */ ori $t7, $t7, 0x580
    /* 80042B40 AD0E0000 */ sw $t6, 0x0($t0)
    /* 80042B44 AD020004 */ sw $v0, 0x4($t0)
    /* 80042B48 AD0F0008 */ sw $t7, 0x8($t0)
    /* 80042B4C AD02000C */ sw $v0, 0xC($t0)
    /* 80042B50 8C980014 */ lw $t8, 0x14($a0)
    /* 80042B54 00C0A825 */ move $s5, $a2
    /* 80042B58 00A0B825 */ move $s7, $a1
    /* 80042B5C 00E0F025 */ move $fp, $a3
    /* 80042B60 0080A025 */ move $s4, $a0
    /* 80042B64 00008025 */ move $s0, $zero
    /* 80042B68 1B00001E */ blez $t8, .L80042BE4
    /* 80042B6C 25130010 */ addiu $s3, $t0, 0x10
    /* 80042B70 3C120C00 */ lui $s2, 0xC00
    /* 80042B74 36527FFF */ ori $s2, $s2, 0x7FFF
    /* 80042B78 00608825 */ move $s1, $v1
    /* 80042B7C 3056FFFF */ andi $s6, $v0, 0xFFFF
.L80042B80:
    /* 80042B80 8E240000 */ lw $a0, 0x0($s1)
    /* 80042B84 AFB30010 */ sw $s3, 0x10($sp)
    /* 80042B88 02E02825 */ move $a1, $s7
    /* 80042B8C 8C990004 */ lw $t9, 0x4($a0)
    /* 80042B90 02A03025 */ move $a2, $s5
    /* 80042B94 03C03825 */ move $a3, $fp
    /* 80042B98 0320F809 */ jalr $t9
    /* 80042B9C 00000000 */ nop
    /* 80042BA0 3C0A06C0 */ lui $t2, 0x6C0
    /* 80042BA4 3C0B0800 */ lui $t3, 0x800
    /* 80042BA8 3C090800 */ lui $t1, 0x800
    /* 80042BAC 354A0440 */ ori $t2, $t2, 0x440
    /* 80042BB0 356B0580 */ ori $t3, $t3, 0x580
    /* 80042BB4 AC490000 */ sw $t1, 0x0($v0)
    /* 80042BB8 AC560004 */ sw $s6, 0x4($v0)
    /* 80042BBC AC4A000C */ sw $t2, 0xC($v0)
    /* 80042BC0 AC520008 */ sw $s2, 0x8($v0)
    /* 80042BC4 AC4B0014 */ sw $t3, 0x14($v0)
    /* 80042BC8 AC520010 */ sw $s2, 0x10($v0)
    /* 80042BCC 8E8C0014 */ lw $t4, 0x14($s4)
    /* 80042BD0 26100001 */ addiu $s0, $s0, 0x1
    /* 80042BD4 26310004 */ addiu $s1, $s1, 0x4
    /* 80042BD8 020C082A */ slt $at, $s0, $t4
    /* 80042BDC 1420FFE8 */ bnez $at, .L80042B80
    /* 80042BE0 24530018 */ addiu $s3, $v0, 0x18
.L80042BE4:
    /* 80042BE4 8FBF0044 */ lw $ra, 0x44($sp)
    /* 80042BE8 02601025 */ move $v0, $s3
    /* 80042BEC 8FB3002C */ lw $s3, 0x2C($sp)
    /* 80042BF0 8FB00020 */ lw $s0, 0x20($sp)
    /* 80042BF4 8FB10024 */ lw $s1, 0x24($sp)
    /* 80042BF8 8FB20028 */ lw $s2, 0x28($sp)
    /* 80042BFC 8FB40030 */ lw $s4, 0x30($sp)
    /* 80042C00 8FB50034 */ lw $s5, 0x34($sp)
    /* 80042C04 8FB60038 */ lw $s6, 0x38($sp)
    /* 80042C08 8FB7003C */ lw $s7, 0x3C($sp)
    /* 80042C0C 8FBE0040 */ lw $fp, 0x40($sp)
    /* 80042C10 03E00008 */ jr $ra
    /* 80042C14 27BD0048 */ addiu $sp, $sp, 0x48
