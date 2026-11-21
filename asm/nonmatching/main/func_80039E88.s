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
glabel func_80039E88
    /* 80039E88 3C02A460 */ lui $v0, 0xA460
    /* 80039E8C 34420010 */ ori $v0, $v0, 0x10
    /* 80039E90 8C420000 */ lw $v0, 0x0($v0)
    /* 80039E94 30420003 */ andi $v0, $v0, 0x3
    /* 80039E98 10400007 */ beqz $v0, .L80039EB8
    /* 80039E9C 00000000 */ nop
    /* 80039EA0 3C03A460 */ lui $v1, 0xA460
    /* 80039EA4 34630010 */ ori $v1, $v1, 0x10
.L80039EA8:
    /* 80039EA8 8C620000 */ lw $v0, 0x0($v1)
    /* 80039EAC 30420003 */ andi $v0, $v0, 0x3
    /* 80039EB0 1440FFFD */ bnez $v0, .L80039EA8
    /* 80039EB4 00000000 */ nop
.L80039EB8:
    /* 80039EB8 03E00008 */ jr $ra
    /* 80039EBC AC850000 */ sw $a1, 0x0($a0)
