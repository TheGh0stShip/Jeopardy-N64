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
glabel func_8003BEF8
    /* 8003BEF8 3C0EA450 */ lui $t6, %hi(D_A450000C)
    /* 8003BEFC 8DC4000C */ lw $a0, %lo(D_A450000C)($t6)
    /* 8003BF00 3C018000 */ lui $at, 0x8000
    /* 8003BF04 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 8003BF08 00817824 */ and $t7, $a0, $at
    /* 8003BF0C 11E00003 */ beqz $t7, .L8003BF1C
    /* 8003BF10 00000000 */ nop
    /* 8003BF14 10000002 */ b .L8003BF20
    /* 8003BF18 24020001 */ addiu $v0, $zero, 0x1
.L8003BF1C:
    /* 8003BF1C 00001025 */ move $v0, $zero
.L8003BF20:
    /* 8003BF20 03E00008 */ jr $ra
    /* 8003BF24 27BD0008 */ addiu $sp, $sp, 0x8
