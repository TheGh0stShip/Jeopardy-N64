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
glabel func_800480F0
    /* 800480F0 AFA40000 */ sw $a0, 0x0($sp)
    /* 800480F4 AFA50004 */ sw $a1, 0x4($sp)
    /* 800480F8 AFA60008 */ sw $a2, 0x8($sp)
    /* 800480FC AFA7000C */ sw $a3, 0xC($sp)
    /* 80048100 DFAF0008 */ ld $t7, 0x8($sp)
    /* 80048104 DFAE0000 */ ld $t6, 0x0($sp)
    /* 80048108 01CF001F */ ddivu $zero, $t6, $t7
    /* 8004810C 15E00002 */ bnez $t7, .L80048118
    /* 80048110 00000000 */ nop
    /* 80048114 0007000D */ break 7
.L80048118:
    /* 80048118 00001012 */ mflo $v0
    /* 8004811C 0002183C */ dsll32 $v1, $v0, 0
    /* 80048120 0003183F */ dsra32 $v1, $v1, 0
    /* 80048124 03E00008 */ jr $ra
    /* 80048128 0002103F */ dsra32 $v0, $v0, 0
