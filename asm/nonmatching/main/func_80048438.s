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
glabel func_80048438
    /* 80048438 3C0E8007 */ lui $t6, %hi(D_80072318)
    /* 8004843C 3C0F8007 */ lui $t7, %hi(D_80072318)
    /* 80048440 25CE2318 */ addiu $t6, $t6, %lo(D_80072318)
    /* 80048444 25EF2318 */ addiu $t7, $t7, %lo(D_80072318)
    /* 80048448 AC8E0000 */ sw $t6, 0x0($a0)
    /* 8004844C AC8F0004 */ sw $t7, 0x4($a0)
    /* 80048450 AC800008 */ sw $zero, 0x8($a0)
    /* 80048454 AC80000C */ sw $zero, 0xC($a0)
    /* 80048458 AC860010 */ sw $a2, 0x10($a0)
    /* 8004845C 03E00008 */ jr $ra
    /* 80048460 AC850014 */ sw $a1, 0x14($a0)
    /* 80048464 00000000 */ nop
