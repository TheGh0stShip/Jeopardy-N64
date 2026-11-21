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
glabel func_8003FC68
    /* 8003FC68 18A00011 */ blez $a1, .L8003FCB0
    /* 8003FC6C 00000000 */ nop
    /* 8003FC70 240B4000 */ addiu $t3, $zero, 0x4000
    /* 8003FC74 00AB082B */ sltu $at, $a1, $t3
    /* 8003FC78 1020000F */ beqz $at, .L8003FCB8
    /* 8003FC7C 00000000 */ nop
    /* 8003FC80 00804025 */ move $t0, $a0
    /* 8003FC84 00854821 */ addu $t1, $a0, $a1
    /* 8003FC88 0109082B */ sltu $at, $t0, $t1
    /* 8003FC8C 10200008 */ beqz $at, .L8003FCB0
    /* 8003FC90 00000000 */ nop
    /* 8003FC94 310A001F */ andi $t2, $t0, 0x1F
    /* 8003FC98 2529FFE0 */ addiu $t1, $t1, -0x20
    /* 8003FC9C 010A4023 */ subu $t0, $t0, $t2
.L8003FCA0:
    /* 8003FCA0 BD100000 */ cache 0x10, 0x0($t0)
    /* 8003FCA4 0109082B */ sltu $at, $t0, $t1
    /* 8003FCA8 1420FFFD */ bnez $at, .L8003FCA0
    /* 8003FCAC 25080020 */ addiu $t0, $t0, 0x20
.L8003FCB0:
    /* 8003FCB0 03E00008 */ jr $ra
    /* 8003FCB4 00000000 */ nop
.L8003FCB8:
    /* 8003FCB8 3C088000 */ lui $t0, %hi(D_80000020)
    /* 8003FCBC 010B4821 */ addu $t1, $t0, $t3
    /* 8003FCC0 2529FFE0 */ addiu $t1, $t1, -0x20
.L8003FCC4:
    /* 8003FCC4 BD000000 */ cache 0x00, 0x0($t0)
    /* 8003FCC8 0109082B */ sltu $at, $t0, $t1
    /* 8003FCCC 1420FFFD */ bnez $at, .L8003FCC4
    /* 8003FCD0 25080020 */ addiu $t0, $t0, %lo(D_80000020)
    /* 8003FCD4 03E00008 */ jr $ra
    /* 8003FCD8 00000000 */ nop
