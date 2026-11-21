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
glabel func_8003D5A8
    /* 8003D5A8 8FAE0010 */ lw $t6, 0x10($sp)
    /* 8003D5AC AFA40000 */ sw $a0, 0x0($sp)
    /* 8003D5B0 AFA50004 */ sw $a1, 0x4($sp)
    /* 8003D5B4 00EE0019 */ multu $a3, $t6
    /* 8003D5B8 8CD90008 */ lw $t9, 0x8($a2)
    /* 8003D5BC 8CD80000 */ lw $t8, 0x0($a2)
    /* 8003D5C0 8CC40004 */ lw $a0, 0x4($a2)
    /* 8003D5C4 2401FFF0 */ addiu $at, $zero, -0x10
    /* 8003D5C8 03194021 */ addu $t0, $t8, $t9
    /* 8003D5CC 00001825 */ move $v1, $zero
    /* 8003D5D0 00001012 */ mflo $v0
    /* 8003D5D4 2442000F */ addiu $v0, $v0, 0xF
    /* 8003D5D8 00417824 */ and $t7, $v0, $at
    /* 8003D5DC 008F4821 */ addu $t1, $a0, $t7
    /* 8003D5E0 0109082B */ sltu $at, $t0, $t1
    /* 8003D5E4 14200003 */ bnez $at, .L8003D5F4
    /* 8003D5E8 008F5021 */ addu $t2, $a0, $t7
    /* 8003D5EC 00801825 */ move $v1, $a0
    /* 8003D5F0 ACCA0004 */ sw $t2, 0x4($a2)
.L8003D5F4:
    /* 8003D5F4 03E00008 */ jr $ra
    /* 8003D5F8 00601025 */ move $v0, $v1
    /* 8003D5FC 00000000 */ nop
    /* 8003D600 00000000 */ nop
    /* 8003D604 00000000 */ nop
