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
glabel func_8003ABCC
    /* 8003ABCC 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003ABD0 AFB40020 */ sw $s4, 0x20($sp)
    /* 8003ABD4 0080A021 */ addu $s4, $a0, $zero
    /* 8003ABD8 AFB3001C */ sw $s3, 0x1C($sp)
    /* 8003ABDC 00A09821 */ addu $s3, $a1, $zero
    /* 8003ABE0 AFB10014 */ sw $s1, 0x14($sp)
    /* 8003ABE4 00C08821 */ addu $s1, $a2, $zero
    /* 8003ABE8 AFBF002C */ sw $ra, 0x2C($sp)
    /* 8003ABEC AFB60028 */ sw $s6, 0x28($sp)
    /* 8003ABF0 AFB50024 */ sw $s5, 0x24($sp)
    /* 8003ABF4 AFB20018 */ sw $s2, 0x18($sp)
    /* 8003ABF8 0C00E788 */ jal func_80039E20
    /* 8003ABFC AFB00010 */ sw $s0, 0x10($sp)
    /* 8003AC00 00009021 */ addu $s2, $zero, $zero
    /* 8003AC04 12200017 */ beqz $s1, .L8003AC64
    /* 8003AC08 0040A821 */ addu $s5, $v0, $zero
    /* 8003AC0C 34168000 */ ori $s6, $zero, 0x8000
.L8003AC10:
    /* 8003AC10 02D1102B */ sltu $v0, $s6, $s1
    /* 8003AC14 10400002 */ beqz $v0, .L8003AC20
    /* 8003AC18 02208021 */ addu $s0, $s1, $zero
    /* 8003AC1C 34108000 */ ori $s0, $zero, 0x8000
.L8003AC20:
    /* 8003AC20 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003AC24 02602821 */ addu $a1, $s3, $zero
    /* 8003AC28 0C00E88A */ jal func_8003A228
    /* 8003AC2C 02003021 */ addu $a2, $s0, $zero
    /* 8003AC30 24040606 */ addiu $a0, $zero, 0x606
    /* 8003AC34 02802821 */ addu $a1, $s4, $zero
    /* 8003AC38 02003021 */ addu $a2, $s0, $zero
    /* 8003AC3C 0C00EA27 */ jal func_8003A89C
    /* 8003AC40 00003821 */ addu $a3, $zero, $zero
    /* 8003AC44 0440000A */ bltz $v0, .L8003AC70
    /* 8003AC48 00000000 */ nop
    /* 8003AC4C 50400008 */ beql $v0, $zero, .L8003AC70
    /* 8003AC50 02401021 */ addu $v0, $s2, $zero
    /* 8003AC54 02629821 */ addu $s3, $s3, $v0
    /* 8003AC58 02228823 */ subu $s1, $s1, $v0
    /* 8003AC5C 1620FFEC */ bnez $s1, .L8003AC10
    /* 8003AC60 02429021 */ addu $s2, $s2, $v0
.L8003AC64:
    /* 8003AC64 0C00E796 */ jal func_80039E58
    /* 8003AC68 02A02021 */ addu $a0, $s5, $zero
    /* 8003AC6C 02401021 */ addu $v0, $s2, $zero
.L8003AC70:
    /* 8003AC70 8FBF002C */ lw $ra, 0x2C($sp)
    /* 8003AC74 8FB60028 */ lw $s6, 0x28($sp)
    /* 8003AC78 8FB50024 */ lw $s5, 0x24($sp)
    /* 8003AC7C 8FB40020 */ lw $s4, 0x20($sp)
    /* 8003AC80 8FB3001C */ lw $s3, 0x1C($sp)
    /* 8003AC84 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003AC88 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003AC8C 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003AC90 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003AC94 03E00008 */ jr $ra
    /* 8003AC98 00000000 */ nop
