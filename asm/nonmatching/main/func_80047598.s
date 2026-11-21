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
glabel func_80047598
    /* 80047598 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8004759C AFBF0014 */ sw $ra, 0x14($sp)
    /* 800475A0 8C8F0010 */ lw $t7, 0x10($a0)
    /* 800475A4 8C8E0000 */ lw $t6, 0x0($a0)
    /* 800475A8 8C820008 */ lw $v0, 0x8($a0)
    /* 800475AC 00803025 */ move $a2, $a0
    /* 800475B0 01CFC021 */ addu $t8, $t6, $t7
    /* 800475B4 0058082B */ sltu $at, $v0, $t8
    /* 800475B8 14200003 */ bnez $at, .L800475C8
    /* 800475BC 00A04025 */ move $t0, $a1
    /* 800475C0 10000007 */ b .L800475E0
    /* 800475C4 00001025 */ move $v0, $zero
.L800475C8:
    /* 800475C8 00403825 */ move $a3, $v0
    /* 800475CC 0C011C5C */ jal func_80047170
    /* 800475D0 00C02025 */ move $a0, $a2
    /* 800475D4 AD020000 */ sw $v0, 0x0($t0)
    /* 800475D8 ACC70008 */ sw $a3, 0x8($a2)
    /* 800475DC 24020001 */ addiu $v0, $zero, 0x1
.L800475E0:
    /* 800475E0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800475E4 27BD0018 */ addiu $sp, $sp, 0x18
    /* 800475E8 03E00008 */ jr $ra
    /* 800475EC 00000000 */ nop
