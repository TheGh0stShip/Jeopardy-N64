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
glabel func_80045D44
    /* 80045D44 908E0008 */ lbu $t6, 0x8($a0)
    /* 80045D48 240100FF */ addiu $at, $zero, 0xFF
    /* 80045D4C 15C10019 */ bne $t6, $at, .L80045DB4
    /* 80045D50 00000000 */ nop
    /* 80045D54 908F0009 */ lbu $t7, 0x9($a0)
    /* 80045D58 24010051 */ addiu $at, $zero, 0x51
    /* 80045D5C 24820004 */ addiu $v0, $a0, 0x4
    /* 80045D60 15E10014 */ bne $t7, $at, .L80045DB4
    /* 80045D64 00000000 */ nop
    /* 80045D68 904E0008 */ lbu $t6, 0x8($v0)
    /* 80045D6C 90580007 */ lbu $t8, 0x7($v0)
    /* 80045D70 8CA60018 */ lw $a2, 0x18($a1)
    /* 80045D74 000E7A00 */ sll $t7, $t6, 8
    /* 80045D78 904E0009 */ lbu $t6, 0x9($v0)
    /* 80045D7C 0018CC00 */ sll $t9, $t8, 16
    /* 80045D80 032FC025 */ or $t8, $t9, $t7
    /* 80045D84 030E1825 */ or $v1, $t8, $t6
    /* 80045D88 44832000 */ mtc1 $v1, $f4
    /* 80045D8C 241801E8 */ addiu $t8, $zero, 0x1E8
    /* 80045D90 10C00007 */ beqz $a2, .L80045DB0
    /* 80045D94 46802020 */ cvt.s.w $f0, $f4
    /* 80045D98 C4C60014 */ lwc1 $f6, 0x14($a2)
    /* 80045D9C 46060202 */ mul.s $f8, $f0, $f6
    /* 80045DA0 4600428D */ trunc.w.s $f10, $f8
    /* 80045DA4 440F5000 */ mfc1 $t7, $f10
    /* 80045DA8 03E00008 */ jr $ra
    /* 80045DAC ACAF0024 */ sw $t7, 0x24($a1)
.L80045DB0:
    /* 80045DB0 ACB80024 */ sw $t8, 0x24($a1)
.L80045DB4:
    /* 80045DB4 03E00008 */ jr $ra
    /* 80045DB8 00000000 */ nop
