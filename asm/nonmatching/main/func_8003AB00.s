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
glabel func_8003AB00
    /* 8003AB00 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003AB04 AFB40020 */ sw $s4, 0x20($sp)
    /* 8003AB08 0080A021 */ addu $s4, $a0, $zero
    /* 8003AB0C AFB3001C */ sw $s3, 0x1C($sp)
    /* 8003AB10 00A09821 */ addu $s3, $a1, $zero
    /* 8003AB14 AFB10014 */ sw $s1, 0x14($sp)
    /* 8003AB18 00C08821 */ addu $s1, $a2, $zero
    /* 8003AB1C AFBF002C */ sw $ra, 0x2C($sp)
    /* 8003AB20 AFB60028 */ sw $s6, 0x28($sp)
    /* 8003AB24 AFB50024 */ sw $s5, 0x24($sp)
    /* 8003AB28 AFB20018 */ sw $s2, 0x18($sp)
    /* 8003AB2C 0C00E788 */ jal func_80039E20
    /* 8003AB30 AFB00010 */ sw $s0, 0x10($sp)
    /* 8003AB34 00009021 */ addu $s2, $zero, $zero
    /* 8003AB38 12200016 */ beqz $s1, .L8003AB94
    /* 8003AB3C 0040A821 */ addu $s5, $v0, $zero
    /* 8003AB40 34168000 */ ori $s6, $zero, 0x8000
.L8003AB44:
    /* 8003AB44 02D1102B */ sltu $v0, $s6, $s1
    /* 8003AB48 10400002 */ beqz $v0, .L8003AB54
    /* 8003AB4C 02203021 */ addu $a2, $s1, $zero
    /* 8003AB50 34068000 */ ori $a2, $zero, 0x8000
.L8003AB54:
    /* 8003AB54 24040505 */ addiu $a0, $zero, 0x505
    /* 8003AB58 02802821 */ addu $a1, $s4, $zero
    /* 8003AB5C 0C00EA27 */ jal func_8003A89C
    /* 8003AB60 00003821 */ addu $a3, $zero, $zero
    /* 8003AB64 00408021 */ addu $s0, $v0, $zero
    /* 8003AB68 0600000D */ bltz $s0, .L8003ABA0
    /* 8003AB6C 00000000 */ nop
    /* 8003AB70 1200000A */ beqz $s0, .L8003AB9C
    /* 8003AB74 02602821 */ addu $a1, $s3, $zero
    /* 8003AB78 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003AB7C 0C00E7E1 */ jal func_80039F84
    /* 8003AB80 02003021 */ addu $a2, $s0, $zero
    /* 8003AB84 02709821 */ addu $s3, $s3, $s0
    /* 8003AB88 02308823 */ subu $s1, $s1, $s0
    /* 8003AB8C 1620FFED */ bnez $s1, .L8003AB44
    /* 8003AB90 02509021 */ addu $s2, $s2, $s0
.L8003AB94:
    /* 8003AB94 0C00E796 */ jal func_80039E58
    /* 8003AB98 02A02021 */ addu $a0, $s5, $zero
.L8003AB9C:
    /* 8003AB9C 02401021 */ addu $v0, $s2, $zero
.L8003ABA0:
    /* 8003ABA0 8FBF002C */ lw $ra, 0x2C($sp)
    /* 8003ABA4 8FB60028 */ lw $s6, 0x28($sp)
    /* 8003ABA8 8FB50024 */ lw $s5, 0x24($sp)
    /* 8003ABAC 8FB40020 */ lw $s4, 0x20($sp)
    /* 8003ABB0 8FB3001C */ lw $s3, 0x1C($sp)
    /* 8003ABB4 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003ABB8 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003ABBC 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003ABC0 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003ABC4 03E00008 */ jr $ra
    /* 8003ABC8 00000000 */ nop
