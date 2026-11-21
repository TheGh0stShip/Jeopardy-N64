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
glabel func_8004C4A8
    /* 8004C4A8 3C0EA404 */ lui $t6, %hi(D_A4040010)
    /* 8004C4AC 8DC40010 */ lw $a0, %lo(D_A4040010)($t6)
    /* 8004C4B0 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 8004C4B4 308F001C */ andi $t7, $a0, 0x1C
    /* 8004C4B8 11E00003 */ beqz $t7, .L8004C4C8
    /* 8004C4BC 00000000 */ nop
    /* 8004C4C0 10000002 */ b .L8004C4CC
    /* 8004C4C4 24020001 */ addiu $v0, $zero, 0x1
.L8004C4C8:
    /* 8004C4C8 00001025 */ move $v0, $zero
.L8004C4CC:
    /* 8004C4CC 03E00008 */ jr $ra
    /* 8004C4D0 27BD0008 */ addiu $sp, $sp, 0x8
    /* 8004C4D4 00000000 */ nop
