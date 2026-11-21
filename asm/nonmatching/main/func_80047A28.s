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
glabel func_80047A28
    /* 80047A28 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 80047A2C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80047A30 AFA40018 */ sw $a0, 0x18($sp)
    /* 80047A34 8CAE0008 */ lw $t6, 0x8($a1)
    /* 80047A38 51C00016 */ beql $t6, $zero, .L80047A94
    /* 80047A3C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80047A40 0C00F3B6 */ jal __allocParam
    /* 80047A44 AFA5001C */ sw $a1, 0x1C($sp)
    /* 80047A48 8FA7001C */ lw $a3, 0x1C($sp)
    /* 80047A4C 10400010 */ beqz $v0, .L80047A90
    /* 80047A50 00403025 */ move $a2, $v0
    /* 80047A54 8FAF0018 */ lw $t7, 0x18($sp)
    /* 80047A58 8CF90008 */ lw $t9, 0x8($a3)
    /* 80047A5C 240A000F */ addiu $t2, $zero, 0xF
    /* 80047A60 8DF8001C */ lw $t8, 0x1C($t7)
    /* 80047A64 8F2800D8 */ lw $t0, 0xD8($t9)
    /* 80047A68 A44A0008 */ sh $t2, 0x8($v0)
    /* 80047A6C AC400000 */ sw $zero, 0x0($v0)
    /* 80047A70 03084821 */ addu $t1, $t8, $t0
    /* 80047A74 AC490004 */ sw $t1, 0x4($v0)
    /* 80047A78 8CEB0008 */ lw $t3, 0x8($a3)
    /* 80047A7C 24050003 */ addiu $a1, $zero, 0x3
    /* 80047A80 8D64000C */ lw $a0, 0xC($t3)
    /* 80047A84 8C990008 */ lw $t9, 0x8($a0)
    /* 80047A88 0320F809 */ jalr $t9
    /* 80047A8C 00000000 */ nop
.L80047A90:
    /* 80047A90 8FBF0014 */ lw $ra, 0x14($sp)
.L80047A94:
    /* 80047A94 27BD0018 */ addiu $sp, $sp, 0x18
    /* 80047A98 03E00008 */ jr $ra
    /* 80047A9C 00000000 */ nop
    /* 80047AA0 00000000 */ nop
    /* 80047AA4 00000000 */ nop
