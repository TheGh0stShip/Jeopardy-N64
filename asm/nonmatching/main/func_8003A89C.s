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
glabel func_8003A89C
    /* 8003A89C 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8003A8A0 AFB00010 */ sw $s0, 0x10($sp)
    /* 8003A8A4 00808021 */ addu $s0, $a0, $zero
    /* 8003A8A8 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A8AC 3484FFE4 */ ori $a0, $a0, 0xFFE4
    /* 8003A8B0 AFB10014 */ sw $s1, 0x14($sp)
    /* 8003A8B4 00C08821 */ addu $s1, $a2, $zero
    /* 8003A8B8 AFB20018 */ sw $s2, 0x18($sp)
    /* 8003A8BC AFBF001C */ sw $ra, 0x1C($sp)
    /* 8003A8C0 0C00E7A2 */ jal func_80039E88
    /* 8003A8C4 00E09021 */ addu $s2, $a3, $zero
    /* 8003A8C8 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A8CC 3484FFE8 */ ori $a0, $a0, 0xFFE8
    /* 8003A8D0 0C00E7A2 */ jal func_80039E88
    /* 8003A8D4 02202821 */ addu $a1, $s1, $zero
    /* 8003A8D8 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A8DC 3484FFEC */ ori $a0, $a0, 0xFFEC
    /* 8003A8E0 0C00E7A2 */ jal func_80039E88
    /* 8003A8E4 02402821 */ addu $a1, $s2, $zero
    /* 8003A8E8 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A8EC 3484FFE0 */ ori $a0, $a0, 0xFFE0
    /* 8003A8F0 0C00E7A2 */ jal func_80039E88
    /* 8003A8F4 02002821 */ addu $a1, $s0, $zero
.L8003A8F8:
    /* 8003A8F8 0C00E7BF */ jal func_80039EFC
    /* 8003A8FC 240403E8 */ addiu $a0, $zero, 0x3E8
    /* 8003A900 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A904 0C00E7B0 */ jal func_80039EC0
    /* 8003A908 3484FFE0 */ ori $a0, $a0, 0xFFE0
    /* 8003A90C 1440FFFA */ bnez $v0, .L8003A8F8
    /* 8003A910 00000000 */ nop
    /* 8003A914 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A918 0C00E7B0 */ jal func_80039EC0
    /* 8003A91C 3484FFDC */ ori $a0, $a0, 0xFFDC
    /* 8003A920 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003A924 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003A928 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003A92C 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003A930 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8003A934 03E00008 */ jr $ra
    /* 8003A938 00000000 */ nop
