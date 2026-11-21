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
glabel func_80048158
    /* 80048158 AFA40000 */ sw $a0, 0x0($sp)
    /* 8004815C AFA50004 */ sw $a1, 0x4($sp)
    /* 80048160 AFA60008 */ sw $a2, 0x8($sp)
    /* 80048164 AFA7000C */ sw $a3, 0xC($sp)
    /* 80048168 DFAF0008 */ ld $t7, 0x8($sp)
    /* 8004816C DFAE0000 */ ld $t6, 0x0($sp)
    /* 80048170 01CF001F */ ddivu $zero, $t6, $t7
    /* 80048174 15E00002 */ bnez $t7, .L80048180
    /* 80048178 00000000 */ nop
    /* 8004817C 0007000D */ break 7
.L80048180:
    /* 80048180 00001010 */ mfhi $v0
    /* 80048184 0002183C */ dsll32 $v1, $v0, 0
    /* 80048188 0003183F */ dsra32 $v1, $v1, 0
    /* 8004818C 03E00008 */ jr $ra
    /* 80048190 0002103F */ dsra32 $v0, $v0, 0
