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
glabel func_8003FD08
    /* 8003FD08 40086000 */ mfc0 $t0, $12 /* Status */
    /* 8003FD0C 01044025 */ or $t0, $t0, $a0
    /* 8003FD10 40886000 */ mtc0 $t0, $12 /* Status */
    /* 8003FD14 00000000 */ nop
    /* 8003FD18 00000000 */ nop
    /* 8003FD1C 03E00008 */ jr $ra
    /* 8003FD20 00000000 */ nop
