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
glabel func_800489D8
    /* 800489D8 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 800489DC AFBF0014 */ sw $ra, 0x14($sp)
    /* 800489E0 AFA40018 */ sw $a0, 0x18($sp)
    /* 800489E4 AFA60020 */ sw $a2, 0x20($sp)
    /* 800489E8 8CAE0008 */ lw $t6, 0x8($a1)
    /* 800489EC 51C0001C */ beql $t6, $zero, .L80048A60
    /* 800489F0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800489F4 0C00F3B6 */ jal __allocParam
    /* 800489F8 AFA5001C */ sw $a1, 0x1C($sp)
    /* 800489FC 8FA7001C */ lw $a3, 0x1C($sp)
    /* 80048A00 10400016 */ beqz $v0, .L80048A5C
    /* 80048A04 00403025 */ move $a2, $v0
    /* 80048A08 8FAF0018 */ lw $t7, 0x18($sp)
    /* 80048A0C 8CF90008 */ lw $t9, 0x8($a3)
    /* 80048A10 240A0010 */ addiu $t2, $zero, 0x10
    /* 80048A14 8DF8001C */ lw $t8, 0x1C($t7)
    /* 80048A18 8F2800D8 */ lw $t0, 0xD8($t9)
    /* 80048A1C A44A0008 */ sh $t2, 0x8($v0)
    /* 80048A20 03084821 */ addu $t1, $t8, $t0
    /* 80048A24 AC490004 */ sw $t1, 0x4($v0)
    /* 80048A28 93A30023 */ lbu $v1, 0x23($sp)
    /* 80048A2C 04610003 */ bgez $v1, .L80048A3C
    /* 80048A30 00035823 */ negu $t3, $v1
    /* 80048A34 10000002 */ b .L80048A40
    /* 80048A38 AC4B000C */ sw $t3, 0xC($v0)
.L80048A3C:
    /* 80048A3C AC43000C */ sw $v1, 0xC($v0)
.L80048A40:
    /* 80048A40 ACC00000 */ sw $zero, 0x0($a2)
    /* 80048A44 8CEC0008 */ lw $t4, 0x8($a3)
    /* 80048A48 24050003 */ addiu $a1, $zero, 0x3
    /* 80048A4C 8D84000C */ lw $a0, 0xC($t4)
    /* 80048A50 8C990008 */ lw $t9, 0x8($a0)
    /* 80048A54 0320F809 */ jalr $t9
    /* 80048A58 00000000 */ nop
.L80048A5C:
    /* 80048A5C 8FBF0014 */ lw $ra, 0x14($sp)
.L80048A60:
    /* 80048A60 27BD0018 */ addiu $sp, $sp, 0x18
    /* 80048A64 03E00008 */ jr $ra
    /* 80048A68 00000000 */ nop
    /* 80048A6C 00000000 */ nop
    /* 80048A70 00000000 */ nop
    /* 80048A74 00000000 */ nop
