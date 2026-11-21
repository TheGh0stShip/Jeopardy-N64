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
glabel func_8004C388
    /* 8004C388 3C0EA404 */ lui $t6, %hi(D_A4040010)
    /* 8004C38C 8DC50010 */ lw $a1, %lo(D_A4040010)($t6)
    /* 8004C390 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 8004C394 30AF0001 */ andi $t7, $a1, 0x1
    /* 8004C398 15E00003 */ bnez $t7, .L8004C3A8
    /* 8004C39C 00000000 */ nop
    /* 8004C3A0 10000004 */ b .L8004C3B4
    /* 8004C3A4 2402FFFF */ addiu $v0, $zero, -0x1
.L8004C3A8:
    /* 8004C3A8 3C18A408 */ lui $t8, %hi(D_A4080000)
    /* 8004C3AC AF040000 */ sw $a0, %lo(D_A4080000)($t8)
    /* 8004C3B0 00001025 */ move $v0, $zero
.L8004C3B4:
    /* 8004C3B4 03E00008 */ jr $ra
    /* 8004C3B8 27BD0008 */ addiu $sp, $sp, 0x8
    /* 8004C3BC 00000000 */ nop
    /* 8004C3C0 00000000 */ nop
    /* 8004C3C4 00000000 */ nop
