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
glabel func_8003FDD8
    /* 8003FDD8 8C8E003C */ lw $t6, 0x3C($a0)
    /* 8003FDDC 8C830040 */ lw $v1, 0x40($a0)
    /* 8003FDE0 000E7880 */ sll $t7, $t6, 2
    /* 8003FDE4 01EE7823 */ subu $t7, $t7, $t6
    /* 8003FDE8 000F7900 */ sll $t7, $t7, 4
    /* 8003FDEC 01E3C021 */ addu $t8, $t7, $v1
    /* 8003FDF0 03E00008 */ jr $ra
    /* 8003FDF4 8F020028 */ lw $v0, 0x28($t8)
