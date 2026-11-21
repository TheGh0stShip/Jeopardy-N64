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
glabel func_80039EC0
    /* 80039EC0 3C02A460 */ lui $v0, 0xA460
    /* 80039EC4 34420010 */ ori $v0, $v0, 0x10
    /* 80039EC8 8C420000 */ lw $v0, 0x0($v0)
    /* 80039ECC 30420003 */ andi $v0, $v0, 0x3
    /* 80039ED0 10400007 */ beqz $v0, .L80039EF0
    /* 80039ED4 00000000 */ nop
    /* 80039ED8 3C03A460 */ lui $v1, 0xA460
    /* 80039EDC 34630010 */ ori $v1, $v1, 0x10
.L80039EE0:
    /* 80039EE0 8C620000 */ lw $v0, 0x0($v1)
    /* 80039EE4 30420003 */ andi $v0, $v0, 0x3
    /* 80039EE8 1440FFFD */ bnez $v0, .L80039EE0
    /* 80039EEC 00000000 */ nop
.L80039EF0:
    /* 80039EF0 8C820000 */ lw $v0, 0x0($a0)
    /* 80039EF4 03E00008 */ jr $ra
    /* 80039EF8 00000000 */ nop
