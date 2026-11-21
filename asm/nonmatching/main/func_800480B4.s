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
glabel func_800480B4
    /* 800480B4 AFA40000 */ sw $a0, 0x0($sp)
    /* 800480B8 AFA50004 */ sw $a1, 0x4($sp)
    /* 800480BC AFA60008 */ sw $a2, 0x8($sp)
    /* 800480C0 AFA7000C */ sw $a3, 0xC($sp)
    /* 800480C4 DFAF0008 */ ld $t7, 0x8($sp)
    /* 800480C8 DFAE0000 */ ld $t6, 0x0($sp)
    /* 800480CC 01CF001F */ ddivu $zero, $t6, $t7
    /* 800480D0 15E00002 */ bnez $t7, .L800480DC
    /* 800480D4 00000000 */ nop
    /* 800480D8 0007000D */ break 7
.L800480DC:
    /* 800480DC 00001010 */ mfhi $v0
    /* 800480E0 0002183C */ dsll32 $v1, $v0, 0
    /* 800480E4 0003183F */ dsra32 $v1, $v1, 0
    /* 800480E8 03E00008 */ jr $ra
    /* 800480EC 0002103F */ dsra32 $v0, $v0, 0
