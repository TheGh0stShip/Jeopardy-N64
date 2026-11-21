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
glabel func_8003A1B0
    /* 8003A1B0 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8003A1B4 AFB00010 */ sw $s0, 0x10($sp)
    /* 8003A1B8 00808021 */ addu $s0, $a0, $zero
    /* 8003A1BC AFB20018 */ sw $s2, 0x18($sp)
    /* 8003A1C0 00109027 */ nor $s2, $zero, $s0
    /* 8003A1C4 2402FFFC */ addiu $v0, $zero, -0x4
    /* 8003A1C8 02028024 */ and $s0, $s0, $v0
    /* 8003A1CC 02002021 */ addu $a0, $s0, $zero
    /* 8003A1D0 AFB10014 */ sw $s1, 0x14($sp)
    /* 8003A1D4 00A08821 */ addu $s1, $a1, $zero
    /* 8003A1D8 32520003 */ andi $s2, $s2, 0x3
    /* 8003A1DC AFBF001C */ sw $ra, 0x1C($sp)
    /* 8003A1E0 0C00E7B0 */ jal func_80039EC0
    /* 8003A1E4 001290C0 */ sll $s2, $s2, 3
    /* 8003A1E8 02002021 */ addu $a0, $s0, $zero
    /* 8003A1EC 240300FF */ addiu $v1, $zero, 0xFF
    /* 8003A1F0 02431804 */ sllv $v1, $v1, $s2
    /* 8003A1F4 00031827 */ nor $v1, $zero, $v1
    /* 8003A1F8 00431024 */ and $v0, $v0, $v1
    /* 8003A1FC 323100FF */ andi $s1, $s1, 0xFF
    /* 8003A200 02518804 */ sllv $s1, $s1, $s2
    /* 8003A204 0C00E7A2 */ jal func_80039E88
    /* 8003A208 00512825 */ or $a1, $v0, $s1
    /* 8003A20C 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003A210 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003A214 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003A218 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003A21C 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8003A220 03E00008 */ jr $ra
    /* 8003A224 00000000 */ nop
