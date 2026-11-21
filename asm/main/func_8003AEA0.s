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
glabel func_8003AEA0
    /* 8003AEA0 18A00011 */ blez $a1, .L8003AEE8
    /* 8003AEA4 00000000 */ nop
    /* 8003AEA8 240B4000 */ addiu $t3, $zero, 0x4000
    /* 8003AEAC 00AB082B */ sltu $at, $a1, $t3
    /* 8003AEB0 1020000F */ beqz $at, func_8003AEF0
    /* 8003AEB4 00000000 */ nop
    /* 8003AEB8 00804021 */ addu $t0, $a0, $zero
    /* 8003AEBC 00854821 */ addu $t1, $a0, $a1
    /* 8003AEC0 0109082B */ sltu $at, $t0, $t1
    /* 8003AEC4 10200008 */ beqz $at, .L8003AEE8
    /* 8003AEC8 00000000 */ nop
    /* 8003AECC 310A001F */ andi $t2, $t0, 0x1F
    /* 8003AED0 2529FFE0 */ addiu $t1, $t1, -0x20
    /* 8003AED4 010A4023 */ subu $t0, $t0, $t2
.L8003AED8:
    /* 8003AED8 BD100000 */ cache 0x10, 0x0($t0)
    /* 8003AEDC 0109082B */ sltu $at, $t0, $t1
    /* 8003AEE0 1420FFFD */ bnez $at, .L8003AED8
    /* 8003AEE4 25080020 */ addiu $t0, $t0, 0x20
.L8003AEE8:
    /* 8003AEE8 03E00008 */ jr $ra
    /* 8003AEEC 00000000 */ nop
