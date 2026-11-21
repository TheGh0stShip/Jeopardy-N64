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
glabel func_8003C538
    /* 8003C538 240E0002 */ addiu $t6, $zero, 0x2
    /* 8003C53C 3C01800D */ lui $at, %hi(D_800D1E34)
    /* 8003C540 A02E1E34 */ sb $t6, %lo(D_800D1E34)($at)
    /* 8003C544 3C01800D */ lui $at, %hi(D_800D1E3C)
    /* 8003C548 3C0FA500 */ lui $t7, 0xA500
    /* 8003C54C AC2F1E3C */ sw $t7, %lo(D_800D1E3C)($at)
    /* 8003C550 3C01800D */ lui $at, %hi(D_800D1E35)
    /* 8003C554 24180003 */ addiu $t8, $zero, 0x3
    /* 8003C558 A0381E35 */ sb $t8, %lo(D_800D1E35)($at)
    /* 8003C55C 3C01800D */ lui $at, %hi(D_800D1E38)
    /* 8003C560 24190006 */ addiu $t9, $zero, 0x6
    /* 8003C564 A0391E38 */ sb $t9, %lo(D_800D1E38)($at)
    /* 8003C568 3C01800D */ lui $at, %hi(D_800D1E36)
    /* 8003C56C 24080006 */ addiu $t0, $zero, 0x6
    /* 8003C570 24090002 */ addiu $t1, $zero, 0x2
    /* 8003C574 A0281E36 */ sb $t0, %lo(D_800D1E36)($at)
    /* 8003C578 A0291E37 */ sb $t1, %lo(D_800D1E37)($at)
    /* 8003C57C 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8003C580 3C01800D */ lui $at, %hi(D_800D1E39)
    /* 8003C584 240A0001 */ addiu $t2, $zero, 0x1
    /* 8003C588 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003C58C A02A1E39 */ sb $t2, %lo(D_800D1E39)($at)
    /* 8003C590 240B0003 */ addiu $t3, $zero, 0x3
    /* 8003C594 3C0CA460 */ lui $t4, %hi(D_A4600024)
    /* 8003C598 AD8B0024 */ sw $t3, %lo(D_A4600024)($t4)
    /* 8003C59C 3C0D800D */ lui $t5, %hi(D_800D1E38)
    /* 8003C5A0 91AD1E38 */ lbu $t5, %lo(D_800D1E38)($t5)
    /* 8003C5A4 3C0EA460 */ lui $t6, %hi(D_A4600028)
    /* 8003C5A8 3C0F800D */ lui $t7, %hi(D_800D1E36)
    /* 8003C5AC ADCD0028 */ sw $t5, %lo(D_A4600028)($t6)
    /* 8003C5B0 91EF1E36 */ lbu $t7, %lo(D_800D1E36)($t7)
    /* 8003C5B4 3C18A460 */ lui $t8, %hi(D_A460002C)
    /* 8003C5B8 3C19800D */ lui $t9, %hi(D_800D1E37)
    /* 8003C5BC AF0F002C */ sw $t7, %lo(D_A460002C)($t8)
    /* 8003C5C0 93391E37 */ lbu $t9, %lo(D_800D1E37)($t9)
    /* 8003C5C4 3C04800D */ lui $a0, %hi(D_800D1E30)
    /* 8003C5C8 3C08A460 */ lui $t0, %hi(D_A4600030)
    /* 8003C5CC 24841E30 */ addiu $a0, $a0, %lo(D_800D1E30)
    /* 8003C5D0 24840014 */ addiu $a0, $a0, 0x14
    /* 8003C5D4 24050060 */ addiu $a1, $zero, 0x60
    /* 8003C5D8 0C00F126 */ jal bzero
    /* 8003C5DC AD190030 */ sw $t9, %lo(D_A4600030)($t0)
    /* 8003C5E0 0C00FF3A */ jal __osDisableInt
    /* 8003C5E4 00000000 */ nop
    /* 8003C5E8 3C098007 */ lui $t1, %hi(D_80071FD4)
    /* 8003C5EC 8D291FD4 */ lw $t1, %lo(D_80071FD4)($t1)
    /* 8003C5F0 3C01800D */ lui $at, %hi(D_800D1E30)
    /* 8003C5F4 3C0A800D */ lui $t2, %hi(D_800D1E30)
    /* 8003C5F8 AC291E30 */ sw $t1, %lo(D_800D1E30)($at)
    /* 8003C5FC 3C018007 */ lui $at, %hi(D_80071FD4)
    /* 8003C600 254A1E30 */ addiu $t2, $t2, %lo(D_800D1E30)
    /* 8003C604 AC2A1FD4 */ sw $t2, %lo(D_80071FD4)($at)
    /* 8003C608 AFA2001C */ sw $v0, 0x1C($sp)
    /* 8003C60C 3C01800D */ lui $at, %hi(D_800D1EA4)
    /* 8003C610 AC2A1EA4 */ sw $t2, %lo(D_800D1EA4)($at)
    /* 8003C614 0C00FF42 */ jal func_8003FD08
    /* 8003C618 8FA4001C */ lw $a0, 0x1C($sp)
    /* 8003C61C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003C620 3C02800D */ lui $v0, %hi(D_800D1E30)
    /* 8003C624 24421E30 */ addiu $v0, $v0, %lo(D_800D1E30)
    /* 8003C628 03E00008 */ jr $ra
    /* 8003C62C 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8003C630 00000000 */ nop
    /* 8003C634 00000000 */ nop
