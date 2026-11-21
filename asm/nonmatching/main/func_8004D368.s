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
glabel func_8004D368
    /* 8004D368 3C0EA480 */ lui $t6, %hi(D_A4800018)
    /* 8004D36C 8DC40018 */ lw $a0, %lo(D_A4800018)($t6)
    /* 8004D370 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 8004D374 308F0003 */ andi $t7, $a0, 0x3
    /* 8004D378 11E00003 */ beqz $t7, .L8004D388
    /* 8004D37C 00000000 */ nop
    /* 8004D380 10000002 */ b .L8004D38C
    /* 8004D384 24020001 */ addiu $v0, $zero, 0x1
.L8004D388:
    /* 8004D388 00001025 */ move $v0, $zero
.L8004D38C:
    /* 8004D38C 03E00008 */ jr $ra
    /* 8004D390 27BD0008 */ addiu $sp, $sp, 0x8
    /* 8004D394 00000000 */ nop
