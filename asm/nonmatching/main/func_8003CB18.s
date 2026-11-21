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
glabel func_8003CB18
    /* 8003CB18 3C0EA460 */ lui $t6, %hi(D_A4600010)
    /* 8003CB1C 8DC70010 */ lw $a3, %lo(D_A4600010)($t6)
    /* 8003CB20 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 8003CB24 30EF0003 */ andi $t7, $a3, 0x3
    /* 8003CB28 11E00006 */ beqz $t7, .L8003CB44
    /* 8003CB2C 00000000 */ nop
.L8003CB30:
    /* 8003CB30 3C18A460 */ lui $t8, %hi(D_A4600010)
    /* 8003CB34 8F070010 */ lw $a3, %lo(D_A4600010)($t8)
    /* 8003CB38 30F90003 */ andi $t9, $a3, 0x3
    /* 8003CB3C 1720FFFC */ bnez $t9, .L8003CB30
    /* 8003CB40 00000000 */ nop
.L8003CB44:
    /* 8003CB44 8C88000C */ lw $t0, 0xC($a0)
    /* 8003CB48 3C01A000 */ lui $at, 0xA000
    /* 8003CB4C 27BD0008 */ addiu $sp, $sp, 0x8
    /* 8003CB50 01054825 */ or $t1, $t0, $a1
    /* 8003CB54 01215025 */ or $t2, $t1, $at
    /* 8003CB58 AD460000 */ sw $a2, 0x0($t2)
    /* 8003CB5C 03E00008 */ jr $ra
    /* 8003CB60 00001025 */ move $v0, $zero
    /* 8003CB64 00000000 */ nop
