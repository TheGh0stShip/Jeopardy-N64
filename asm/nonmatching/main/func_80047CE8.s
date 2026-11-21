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
glabel func_80047CE8
    /* 80047CE8 00803025 */ move $a2, $a0
    /* 80047CEC 8CC70000 */ lw $a3, 0x0($a2)
    /* 80047CF0 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 80047CF4 10E0000A */ beqz $a3, .L80047D20
    /* 80047CF8 00000000 */ nop
.L80047CFC:
    /* 80047CFC 14E50004 */ bne $a3, $a1, .L80047D10
    /* 80047D00 00000000 */ nop
    /* 80047D04 8CAE0000 */ lw $t6, 0x0($a1)
    /* 80047D08 10000005 */ b .L80047D20
    /* 80047D0C ACCE0000 */ sw $t6, 0x0($a2)
.L80047D10:
    /* 80047D10 00E03025 */ move $a2, $a3
    /* 80047D14 8CC70000 */ lw $a3, 0x0($a2)
    /* 80047D18 14E0FFF8 */ bnez $a3, .L80047CFC
    /* 80047D1C 00000000 */ nop
.L80047D20:
    /* 80047D20 03E00008 */ jr $ra
    /* 80047D24 27BD0008 */ addiu $sp, $sp, 0x8
