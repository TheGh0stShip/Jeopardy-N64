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
glabel func_8004C638
    /* 8004C638 00057400 */ sll $t6, $a1, 16
    /* 8004C63C 000E7C03 */ sra $t7, $t6, 16
    /* 8004C640 AFA50004 */ sw $a1, 0x4($sp)
    /* 8004C644 8C820040 */ lw $v0, 0x40($a0)
    /* 8004C648 000F1880 */ sll $v1, $t7, 2
    /* 8004C64C 006F1823 */ subu $v1, $v1, $t7
    /* 8004C650 00031900 */ sll $v1, $v1, 4
    /* 8004C654 0062C021 */ addu $t8, $v1, $v0
    /* 8004C658 8F190028 */ lw $t9, 0x28($t8)
    /* 8004C65C 00434021 */ addu $t0, $v0, $v1
    /* 8004C660 17200007 */ bnez $t9, .L8004C680
    /* 8004C664 00000000 */ nop
    /* 8004C668 AD00001C */ sw $zero, 0x1C($t0)
    /* 8004C66C 8C89003C */ lw $t1, 0x3C($a0)
    /* 8004C670 240AFFFF */ addiu $t2, $zero, -0x1
    /* 8004C674 15E90002 */ bne $t7, $t1, .L8004C680
    /* 8004C678 00000000 */ nop
    /* 8004C67C AC8A003C */ sw $t2, 0x3C($a0)
.L8004C680:
    /* 8004C680 03E00008 */ jr $ra
    /* 8004C684 00000000 */ nop
