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
glabel func_800481F0
    /* 800481F0 AFA40000 */ sw $a0, 0x0($sp)
    /* 800481F4 AFA50004 */ sw $a1, 0x4($sp)
    /* 800481F8 AFA60008 */ sw $a2, 0x8($sp)
    /* 800481FC AFA7000C */ sw $a3, 0xC($sp)
    /* 80048200 DFAF0008 */ ld $t7, 0x8($sp)
    /* 80048204 DFAE0000 */ ld $t6, 0x0($sp)
    /* 80048208 01CF001D */ dmultu $t6, $t7
    /* 8004820C 00001012 */ mflo $v0
    /* 80048210 0002183C */ dsll32 $v1, $v0, 0
    /* 80048214 0003183F */ dsra32 $v1, $v1, 0
    /* 80048218 03E00008 */ jr $ra
    /* 8004821C 0002103F */ dsra32 $v0, $v0, 0
