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
glabel func_8003FCE8
    /* 8003FCE8 40086000 */ mfc0 $t0, $12 /* Status */
    /* 8003FCEC 2401FFFE */ addiu $at, $zero, -0x2
    /* 8003FCF0 01014824 */ and $t1, $t0, $at
    /* 8003FCF4 40896000 */ mtc0 $t1, $12 /* Status */
    /* 8003FCF8 31020001 */ andi $v0, $t0, 0x1
    /* 8003FCFC 00000000 */ nop
    /* 8003FD00 03E00008 */ jr $ra
    /* 8003FD04 00000000 */ nop
