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
glabel func_8004831C
    /* 8004831C AFA40000 */ sw $a0, 0x0($sp)
    /* 80048320 AFA50004 */ sw $a1, 0x4($sp)
    /* 80048324 AFA60008 */ sw $a2, 0x8($sp)
    /* 80048328 AFA7000C */ sw $a3, 0xC($sp)
    /* 8004832C DFAF0008 */ ld $t7, 0x8($sp)
    /* 80048330 DFAE0000 */ ld $t6, 0x0($sp)
    /* 80048334 01EE1017 */ dsrav $v0, $t6, $t7
    /* 80048338 0002183C */ dsll32 $v1, $v0, 0
    /* 8004833C 0003183F */ dsra32 $v1, $v1, 0
    /* 80048340 03E00008 */ jr $ra
    /* 80048344 0002103F */ dsra32 $v0, $v0, 0
