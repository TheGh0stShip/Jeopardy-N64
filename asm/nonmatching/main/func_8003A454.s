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
glabel func_8003A454
    /* 8003A454 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003A458 AFB40020 */ sw $s4, 0x20($sp)
    /* 8003A45C 0080A021 */ addu $s4, $a0, $zero
    /* 8003A460 AFB20018 */ sw $s2, 0x18($sp)
    /* 8003A464 3C12B1FE */ lui $s2, 0xB1FE
    /* 8003A468 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A46C 3484FFF4 */ ori $a0, $a0, 0xFFF4
    /* 8003A470 AFBF0028 */ sw $ra, 0x28($sp)
    /* 8003A474 AFB50024 */ sw $s5, 0x24($sp)
    /* 8003A478 AFB3001C */ sw $s3, 0x1C($sp)
    /* 8003A47C AFB10014 */ sw $s1, 0x14($sp)
    /* 8003A480 0C00E7B0 */ jal func_80039EC0
    /* 8003A484 AFB00010 */ sw $s0, 0x10($sp)
    /* 8003A488 00408821 */ addu $s1, $v0, $zero
    /* 8003A48C 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A490 0C00E7B0 */ jal func_80039EC0
    /* 8003A494 3484FFF8 */ ori $a0, $a0, 0xFFF8
    /* 8003A498 00409821 */ addu $s3, $v0, $zero
    /* 8003A49C 3C02EFFF */ lui $v0, 0xEFFF
    /* 8003A4A0 3442FFFF */ ori $v0, $v0, 0xFFFF
    /* 8003A4A4 0051102B */ sltu $v0, $v0, $s1
    /* 8003A4A8 10400004 */ beqz $v0, .L8003A4BC
    /* 8003A4AC 00000000 */ nop
    /* 8003A4B0 3C028F0D */ lui $v0, %hi(D_8F0D0220)
    /* 8003A4B4 24420220 */ addiu $v0, $v0, %lo(D_8F0D0220)
    /* 8003A4B8 02228821 */ addu $s1, $s1, $v0
.L8003A4BC:
    /* 8003A4BC 12600047 */ beqz $s3, .L8003A5DC
    /* 8003A4C0 24150001 */ addiu $s5, $zero, 0x1
.L8003A4C4:
    /* 8003A4C4 3C028007 */ lui $v0, %hi(D_80071F60)
    /* 8003A4C8 8C421F60 */ lw $v0, %lo(D_80071F60)($v0)
    /* 8003A4CC 0051102B */ sltu $v0, $v0, $s1
    /* 8003A4D0 10400009 */ beqz $v0, .L8003A4F8
    /* 8003A4D4 00002021 */ addu $a0, $zero, $zero
    /* 8003A4D8 00001821 */ addu $v1, $zero, $zero
.L8003A4DC:
    /* 8003A4DC 24630008 */ addiu $v1, $v1, 0x8
    /* 8003A4E0 3C018007 */ lui $at, %hi(D_80071F60)
    /* 8003A4E4 00230821 */ addu $at, $at, $v1
    /* 8003A4E8 8C221F60 */ lw $v0, %lo(D_80071F60)($at)
    /* 8003A4EC 0051102B */ sltu $v0, $v0, $s1
    /* 8003A4F0 1440FFFA */ bnez $v0, .L8003A4DC
    /* 8003A4F4 24840001 */ addiu $a0, $a0, 0x1
.L8003A4F8:
    /* 8003A4F8 000420C0 */ sll $a0, $a0, 3
    /* 8003A4FC 3C018007 */ lui $at, %hi(D_80071F60)
    /* 8003A500 00240821 */ addu $at, $at, $a0
    /* 8003A504 8C221F60 */ lw $v0, %lo(D_80071F60)($at)
    /* 8003A508 2623FFFF */ addiu $v1, $s1, -0x1
    /* 8003A50C 00438023 */ subu $s0, $v0, $v1
    /* 8003A510 0270102B */ sltu $v0, $s3, $s0
    /* 8003A514 54400001 */ bnel $v0, $zero, .L8003A51C
    /* 8003A518 02608021 */ addu $s0, $s3, $zero
.L8003A51C:
    /* 8003A51C 3C018007 */ lui $at, %hi(D_80071F64)
    /* 8003A520 00240821 */ addu $at, $at, $a0
    /* 8003A524 8C231F64 */ lw $v1, %lo(D_80071F64)($at)
    /* 8003A528 00741024 */ and $v0, $v1, $s4
    /* 8003A52C 54400009 */ bnel $v0, $zero, .L8003A554
    /* 8003A530 30620004 */ andi $v0, $v1, 0x4
    /* 8003A534 56950026 */ bnel $s4, $s5, .L8003A5D0
    /* 8003A538 02509021 */ addu $s2, $s2, $s0
    /* 8003A53C 02402021 */ addu $a0, $s2, $zero
    /* 8003A540 00002821 */ addu $a1, $zero, $zero
    /* 8003A544 0C00E8C5 */ jal func_8003A314
    /* 8003A548 02003021 */ addu $a2, $s0, $zero
    /* 8003A54C 0800E974 */ j .L8003A5D0
    /* 8003A550 02509021 */ addu $s2, $s2, $s0
.L8003A554:
    /* 8003A554 1040000B */ beqz $v0, .L8003A584
    /* 8003A558 00000000 */ nop
    /* 8003A55C 16950004 */ bne $s4, $s5, .L8003A570
    /* 8003A560 02202021 */ addu $a0, $s1, $zero
    /* 8003A564 02402021 */ addu $a0, $s2, $zero
    /* 8003A568 0800E95D */ j .L8003A574
    /* 8003A56C 02202821 */ addu $a1, $s1, $zero
.L8003A570:
    /* 8003A570 02402821 */ addu $a1, $s2, $zero
.L8003A574:
    /* 8003A574 0C00E8F8 */ jal func_8003A3E0
    /* 8003A578 02003021 */ addu $a2, $s0, $zero
    /* 8003A57C 0800E974 */ j .L8003A5D0
    /* 8003A580 02509021 */ addu $s2, $s2, $s0
.L8003A584:
    /* 8003A584 16950007 */ bne $s4, $s5, .L8003A5A4
    /* 8003A588 30620008 */ andi $v0, $v1, 0x8
    /* 8003A58C 02402021 */ addu $a0, $s2, $zero
    /* 8003A590 02202821 */ addu $a1, $s1, $zero
    /* 8003A594 0C00E88A */ jal func_8003A228
    /* 8003A598 02003021 */ addu $a2, $s0, $zero
    /* 8003A59C 0800E974 */ j .L8003A5D0
    /* 8003A5A0 02509021 */ addu $s2, $s2, $s0
.L8003A5A4:
    /* 8003A5A4 10400006 */ beqz $v0, .L8003A5C0
    /* 8003A5A8 02402021 */ addu $a0, $s2, $zero
    /* 8003A5AC 02202821 */ addu $a1, $s1, $zero
    /* 8003A5B0 0C00E827 */ jal func_8003A09C
    /* 8003A5B4 02003021 */ addu $a2, $s0, $zero
    /* 8003A5B8 0800E974 */ j .L8003A5D0
    /* 8003A5BC 02509021 */ addu $s2, $s2, $s0
.L8003A5C0:
    /* 8003A5C0 02202821 */ addu $a1, $s1, $zero
    /* 8003A5C4 0C00E7E1 */ jal func_80039F84
    /* 8003A5C8 02003021 */ addu $a2, $s0, $zero
    /* 8003A5CC 02509021 */ addu $s2, $s2, $s0
.L8003A5D0:
    /* 8003A5D0 02709823 */ subu $s3, $s3, $s0
    /* 8003A5D4 1660FFBB */ bnez $s3, .L8003A4C4
    /* 8003A5D8 02308821 */ addu $s1, $s1, $s0
.L8003A5DC:
    /* 8003A5DC 8FBF0028 */ lw $ra, 0x28($sp)
    /* 8003A5E0 8FB50024 */ lw $s5, 0x24($sp)
    /* 8003A5E4 8FB40020 */ lw $s4, 0x20($sp)
    /* 8003A5E8 8FB3001C */ lw $s3, 0x1C($sp)
    /* 8003A5EC 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003A5F0 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003A5F4 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003A5F8 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003A5FC 03E00008 */ jr $ra
    /* 8003A600 00000000 */ nop
