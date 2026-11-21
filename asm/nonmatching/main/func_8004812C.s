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
glabel func_8004812C
    /* 8004812C AFA40000 */ sw $a0, 0x0($sp)
    /* 80048130 AFA50004 */ sw $a1, 0x4($sp)
    /* 80048134 AFA60008 */ sw $a2, 0x8($sp)
    /* 80048138 AFA7000C */ sw $a3, 0xC($sp)
    /* 8004813C DFAF0008 */ ld $t7, 0x8($sp)
    /* 80048140 DFAE0000 */ ld $t6, 0x0($sp)
    /* 80048144 01EE1014 */ dsllv $v0, $t6, $t7
    /* 80048148 0002183C */ dsll32 $v1, $v0, 0
    /* 8004814C 0003183F */ dsra32 $v1, $v1, 0
    /* 80048150 03E00008 */ jr $ra
    /* 80048154 0002103F */ dsra32 $v0, $v0, 0
