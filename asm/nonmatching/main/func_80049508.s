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
glabel func_80049508
    /* 80049508 00801025 */ move $v0, $a0
    /* 8004950C 10C00007 */ beqz $a2, .L8004952C
    /* 80049510 00A01825 */ move $v1, $a1
.L80049514:
    /* 80049514 906E0000 */ lbu $t6, 0x0($v1)
    /* 80049518 24C6FFFF */ addiu $a2, $a2, -0x1
    /* 8004951C 24420001 */ addiu $v0, $v0, 0x1
    /* 80049520 24630001 */ addiu $v1, $v1, 0x1
    /* 80049524 14C0FFFB */ bnez $a2, .L80049514
    /* 80049528 A04EFFFF */ sb $t6, -0x1($v0)
.L8004952C:
    /* 8004952C 03E00008 */ jr $ra
    /* 80049530 00801025 */ move $v0, $a0
