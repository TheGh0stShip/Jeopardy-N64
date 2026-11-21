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
glabel func_80048088
    /* 80048088 AFA40000 */ sw $a0, 0x0($sp)
    /* 8004808C AFA50004 */ sw $a1, 0x4($sp)
    /* 80048090 AFA60008 */ sw $a2, 0x8($sp)
    /* 80048094 AFA7000C */ sw $a3, 0xC($sp)
    /* 80048098 DFAF0008 */ ld $t7, 0x8($sp)
    /* 8004809C DFAE0000 */ ld $t6, 0x0($sp)
    /* 800480A0 01EE1016 */ dsrlv $v0, $t6, $t7
    /* 800480A4 0002183C */ dsll32 $v1, $v0, 0
    /* 800480A8 0003183F */ dsra32 $v1, $v1, 0
    /* 800480AC 03E00008 */ jr $ra
    /* 800480B0 0002103F */ dsra32 $v0, $v0, 0
