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
glabel func_8003FBB8
    /* 8003FBB8 18A0001F */ blez $a1, .L8003FC38
    /* 8003FBBC 00000000 */ nop
    /* 8003FBC0 240B2000 */ addiu $t3, $zero, 0x2000
    /* 8003FBC4 00AB082B */ sltu $at, $a1, $t3
    /* 8003FBC8 1020001D */ beqz $at, .L8003FC40
    /* 8003FBCC 00000000 */ nop
    /* 8003FBD0 00804025 */ move $t0, $a0
    /* 8003FBD4 00854821 */ addu $t1, $a0, $a1
    /* 8003FBD8 0109082B */ sltu $at, $t0, $t1
    /* 8003FBDC 10200016 */ beqz $at, .L8003FC38
    /* 8003FBE0 00000000 */ nop
    /* 8003FBE4 310A000F */ andi $t2, $t0, 0xF
    /* 8003FBE8 11400007 */ beqz $t2, .L8003FC08
    /* 8003FBEC 2529FFF0 */ addiu $t1, $t1, -0x10
    /* 8003FBF0 010A4023 */ subu $t0, $t0, $t2
    /* 8003FBF4 BD150000 */ cache 0x15, 0x0($t0)
    /* 8003FBF8 0109082B */ sltu $at, $t0, $t1
    /* 8003FBFC 1020000E */ beqz $at, .L8003FC38
    /* 8003FC00 00000000 */ nop
    /* 8003FC04 25080010 */ addiu $t0, $t0, 0x10
.L8003FC08:
    /* 8003FC08 312A000F */ andi $t2, $t1, 0xF
    /* 8003FC0C 11400006 */ beqz $t2, .L8003FC28
    /* 8003FC10 00000000 */ nop
    /* 8003FC14 012A4823 */ subu $t1, $t1, $t2
    /* 8003FC18 BD350010 */ cache 0x15, 0x10($t1)
    /* 8003FC1C 0128082B */ sltu $at, $t1, $t0
    /* 8003FC20 14200005 */ bnez $at, .L8003FC38
    /* 8003FC24 00000000 */ nop
.L8003FC28:
    /* 8003FC28 BD110000 */ cache 0x11, 0x0($t0)
    /* 8003FC2C 0109082B */ sltu $at, $t0, $t1
    /* 8003FC30 1420FFFD */ bnez $at, .L8003FC28
    /* 8003FC34 25080010 */ addiu $t0, $t0, 0x10
.L8003FC38:
    /* 8003FC38 03E00008 */ jr $ra
    /* 8003FC3C 00000000 */ nop
.L8003FC40:
    /* 8003FC40 3C088000 */ lui $t0, %hi(D_80000010)
    /* 8003FC44 010B4821 */ addu $t1, $t0, $t3
    /* 8003FC48 2529FFF0 */ addiu $t1, $t1, -0x10
.L8003FC4C:
    /* 8003FC4C BD010000 */ cache 0x01, 0x0($t0)
    /* 8003FC50 0109082B */ sltu $at, $t0, $t1
    /* 8003FC54 1420FFFD */ bnez $at, .L8003FC4C
    /* 8003FC58 25080010 */ addiu $t0, $t0, %lo(D_80000010)
    /* 8003FC5C 03E00008 */ jr $ra
    /* 8003FC60 00000000 */ nop
