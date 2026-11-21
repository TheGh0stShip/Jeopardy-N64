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
glabel func_80048A78
    /* 80048A78 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 80048A7C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80048A80 AFA40018 */ sw $a0, 0x18($sp)
    /* 80048A84 AFA60020 */ sw $a2, 0x20($sp)
    /* 80048A88 8CAE0008 */ lw $t6, 0x8($a1)
    /* 80048A8C 51C00018 */ beql $t6, $zero, .L80048AF0
    /* 80048A90 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80048A94 0C00F3B6 */ jal __allocParam
    /* 80048A98 AFA5001C */ sw $a1, 0x1C($sp)
    /* 80048A9C 8FA7001C */ lw $a3, 0x1C($sp)
    /* 80048AA0 10400012 */ beqz $v0, .L80048AEC
    /* 80048AA4 00403025 */ move $a2, $v0
    /* 80048AA8 8FAF0018 */ lw $t7, 0x18($sp)
    /* 80048AAC 8CF90008 */ lw $t9, 0x8($a3)
    /* 80048AB0 240A000C */ addiu $t2, $zero, 0xC
    /* 80048AB4 8DF8001C */ lw $t8, 0x1C($t7)
    /* 80048AB8 8F2800D8 */ lw $t0, 0xD8($t9)
    /* 80048ABC A44A0008 */ sh $t2, 0x8($v0)
    /* 80048AC0 24050003 */ addiu $a1, $zero, 0x3
    /* 80048AC4 03084821 */ addu $t1, $t8, $t0
    /* 80048AC8 AC490004 */ sw $t1, 0x4($v0)
    /* 80048ACC 93AB0023 */ lbu $t3, 0x23($sp)
    /* 80048AD0 AC400000 */ sw $zero, 0x0($v0)
    /* 80048AD4 AC4B000C */ sw $t3, 0xC($v0)
    /* 80048AD8 8CEC0008 */ lw $t4, 0x8($a3)
    /* 80048ADC 8D84000C */ lw $a0, 0xC($t4)
    /* 80048AE0 8C990008 */ lw $t9, 0x8($a0)
    /* 80048AE4 0320F809 */ jalr $t9
    /* 80048AE8 00000000 */ nop
.L80048AEC:
    /* 80048AEC 8FBF0014 */ lw $ra, 0x14($sp)
.L80048AF0:
    /* 80048AF0 27BD0018 */ addiu $sp, $sp, 0x18
    /* 80048AF4 03E00008 */ jr $ra
    /* 80048AF8 00000000 */ nop
    /* 80048AFC 00000000 */ nop
    /* 80048B00 00000000 */ nop
    /* 80048B04 00000000 */ nop
