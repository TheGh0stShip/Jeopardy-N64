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
glabel func_8003E55C
    /* 8003E55C 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8003E560 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003E564 01402025 */ move $a0, $t2
    /* 8003E568 0C00F926 */ jal func_8003E498
    /* 8003E56C 01602825 */ move $a1, $t3
    /* 8003E570 304E0080 */ andi $t6, $v0, 0x80
    /* 8003E574 11C0000A */ beqz $t6, .L8003E5A0
    /* 8003E578 00404825 */ move $t1, $v0
    /* 8003E57C 3049007F */ andi $t1, $v0, 0x7F
.L8003E580:
    /* 8003E580 01402025 */ move $a0, $t2
    /* 8003E584 0C00F926 */ jal func_8003E498
    /* 8003E588 01602825 */ move $a1, $t3
    /* 8003E58C 000979C0 */ sll $t7, $t1, 7
    /* 8003E590 3058007F */ andi $t8, $v0, 0x7F
    /* 8003E594 30590080 */ andi $t9, $v0, 0x80
    /* 8003E598 1720FFF9 */ bnez $t9, .L8003E580
    /* 8003E59C 01F84821 */ addu $t1, $t7, $t8
.L8003E5A0:
    /* 8003E5A0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003E5A4 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8003E5A8 01201025 */ move $v0, $t1
    /* 8003E5AC 03E00008 */ jr $ra
    /* 8003E5B0 00000000 */ nop
