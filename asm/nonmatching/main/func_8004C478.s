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
glabel func_8004C478
    /* 8004C478 3C0EA410 */ lui $t6, %hi(D_A410000C)
    /* 8004C47C 8DC4000C */ lw $a0, %lo(D_A410000C)($t6)
    /* 8004C480 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 8004C484 308F0100 */ andi $t7, $a0, 0x100
    /* 8004C488 11E00003 */ beqz $t7, .L8004C498
    /* 8004C48C 00000000 */ nop
    /* 8004C490 10000002 */ b .L8004C49C
    /* 8004C494 24020001 */ addiu $v0, $zero, 0x1
.L8004C498:
    /* 8004C498 00001025 */ move $v0, $zero
.L8004C49C:
    /* 8004C49C 03E00008 */ jr $ra
    /* 8004C4A0 27BD0008 */ addiu $sp, $sp, 0x8
    /* 8004C4A4 00000000 */ nop
