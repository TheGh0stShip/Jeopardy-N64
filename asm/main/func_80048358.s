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
glabel func_80048358
    /* 80048358 18A00011 */ blez $a1, .L800483A0
    /* 8004835C 00000000 */ nop
    /* 80048360 240B2000 */ addiu $t3, $zero, 0x2000
    /* 80048364 00AB082B */ sltu $at, $a1, $t3
    /* 80048368 1020000F */ beqz $at, .L800483A8
    /* 8004836C 00000000 */ nop
    /* 80048370 00804025 */ move $t0, $a0
    /* 80048374 00854821 */ addu $t1, $a0, $a1
    /* 80048378 0109082B */ sltu $at, $t0, $t1
    /* 8004837C 10200008 */ beqz $at, .L800483A0
    /* 80048380 00000000 */ nop
    /* 80048384 310A000F */ andi $t2, $t0, 0xF
    /* 80048388 2529FFF0 */ addiu $t1, $t1, -0x10
    /* 8004838C 010A4023 */ subu $t0, $t0, $t2
.L80048390:
    /* 80048390 BD190000 */ cache 0x19, 0x0($t0)
    /* 80048394 0109082B */ sltu $at, $t0, $t1
    /* 80048398 1420FFFD */ bnez $at, .L80048390
    /* 8004839C 25080010 */ addiu $t0, $t0, 0x10
.L800483A0:
    /* 800483A0 03E00008 */ jr $ra
    /* 800483A4 00000000 */ nop
.L800483A8:
    /* 800483A8 3C088000 */ lui $t0, %hi(D_80000010)
    /* 800483AC 010B4821 */ addu $t1, $t0, $t3
    /* 800483B0 2529FFF0 */ addiu $t1, $t1, -0x10
.L800483B4:
    /* 800483B4 BD010000 */ cache 0x01, 0x0($t0)
    /* 800483B8 0109082B */ sltu $at, $t0, $t1
    /* 800483BC 1420FFFD */ bnez $at, .L800483B4
    /* 800483C0 25080010 */ addiu $t0, $t0, %lo(D_80000010)
    /* 800483C4 03E00008 */ jr $ra
    /* 800483C8 00000000 */ nop
