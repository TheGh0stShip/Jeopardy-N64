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
glabel func_80044008
    /* 80044008 24010001 */ addiu $at, $zero, 0x1
    /* 8004400C 10A10006 */ beq $a1, $at, .L80044028
    /* 80044010 00001025 */ move $v0, $zero
    /* 80044014 24010006 */ addiu $at, $zero, 0x6
    /* 80044018 50A10006 */ beql $a1, $at, .L80044034
    /* 8004401C AC860014 */ sw $a2, 0x14($a0)
    /* 80044020 03E00008 */ jr $ra
    /* 80044024 00001025 */ move $v0, $zero
.L80044028:
    /* 80044028 03E00008 */ jr $ra
    /* 8004402C AC860000 */ sw $a2, 0x0($a0)
    /* 80044030 AC860014 */ sw $a2, 0x14($a0)
.L80044034:
    /* 80044034 03E00008 */ jr $ra
    /* 80044038 00001025 */ move $v0, $zero
