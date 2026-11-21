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
glabel func_800488A8
    /* 800488A8 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 800488AC AFBF0014 */ sw $ra, 0x14($sp)
    /* 800488B0 AFA40018 */ sw $a0, 0x18($sp)
    /* 800488B4 AFA60020 */ sw $a2, 0x20($sp)
    /* 800488B8 8CAE0008 */ lw $t6, 0x8($a1)
    /* 800488BC 51C00018 */ beql $t6, $zero, .L80048920
    /* 800488C0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800488C4 0C00F3B6 */ jal __allocParam
    /* 800488C8 AFA5001C */ sw $a1, 0x1C($sp)
    /* 800488CC 8FA7001C */ lw $a3, 0x1C($sp)
    /* 800488D0 10400012 */ beqz $v0, .L8004891C
    /* 800488D4 00403025 */ move $a2, $v0
    /* 800488D8 8FAF0018 */ lw $t7, 0x18($sp)
    /* 800488DC 8CF90008 */ lw $t9, 0x8($a3)
    /* 800488E0 240A0007 */ addiu $t2, $zero, 0x7
    /* 800488E4 8DF8001C */ lw $t8, 0x1C($t7)
    /* 800488E8 8F2800D8 */ lw $t0, 0xD8($t9)
    /* 800488EC A44A0008 */ sh $t2, 0x8($v0)
    /* 800488F0 24050003 */ addiu $a1, $zero, 0x3
    /* 800488F4 03084821 */ addu $t1, $t8, $t0
    /* 800488F8 AC490004 */ sw $t1, 0x4($v0)
    /* 800488FC C7A40020 */ lwc1 $f4, 0x20($sp)
    /* 80048900 AC400000 */ sw $zero, 0x0($v0)
    /* 80048904 E444000C */ swc1 $f4, 0xC($v0)
    /* 80048908 8CEB0008 */ lw $t3, 0x8($a3)
    /* 8004890C 8D64000C */ lw $a0, 0xC($t3)
    /* 80048910 8C990008 */ lw $t9, 0x8($a0)
    /* 80048914 0320F809 */ jalr $t9
    /* 80048918 00000000 */ nop
.L8004891C:
    /* 8004891C 8FBF0014 */ lw $ra, 0x14($sp)
.L80048920:
    /* 80048920 27BD0018 */ addiu $sp, $sp, 0x18
    /* 80048924 03E00008 */ jr $ra
    /* 80048928 00000000 */ nop
    /* 8004892C 00000000 */ nop
    /* 80048930 00000000 */ nop
    /* 80048934 00000000 */ nop
