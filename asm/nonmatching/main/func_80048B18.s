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
glabel func_80048B18
    /* 80048B18 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 80048B1C 00054400 */ sll $t0, $a1, 16
    /* 80048B20 00087403 */ sra $t6, $t0, 16
    /* 80048B24 AFB10018 */ sw $s1, 0x18($sp)
    /* 80048B28 000E8880 */ sll $s1, $t6, 2
    /* 80048B2C AFBF001C */ sw $ra, 0x1C($sp)
    /* 80048B30 AFB00014 */ sw $s0, 0x14($sp)
    /* 80048B34 AFA50024 */ sw $a1, 0x24($sp)
    /* 80048B38 022E8821 */ addu $s1, $s1, $t6
    /* 80048B3C 8C8F0034 */ lw $t7, 0x34($a0)
    /* 80048B40 00118880 */ sll $s1, $s1, 2
    /* 80048B44 022E8823 */ subu $s1, $s1, $t6
    /* 80048B48 00808025 */ move $s0, $a0
    /* 80048B4C 00118880 */ sll $s1, $s1, 2
    /* 80048B50 00C02825 */ move $a1, $a2
    /* 80048B54 01F12021 */ addu $a0, $t7, $s1
    /* 80048B58 24840020 */ addiu $a0, $a0, 0x20
    /* 80048B5C 0C00FD9A */ jal alFxNew
    /* 80048B60 00E03025 */ move $a2, $a3
    /* 80048B64 8E180034 */ lw $t8, 0x34($s0)
    /* 80048B68 24050001 */ addiu $a1, $zero, 0x1
    /* 80048B6C 03113021 */ addu $a2, $t8, $s1
    /* 80048B70 0C010F2B */ jal func_80043CAC
    /* 80048B74 24C40020 */ addiu $a0, $a2, 0x20
    /* 80048B78 8E190034 */ lw $t9, 0x34($s0)
    /* 80048B7C 8E040030 */ lw $a0, 0x30($s0)
    /* 80048B80 24050002 */ addiu $a1, $zero, 0x2
    /* 80048B84 03313021 */ addu $a2, $t9, $s1
    /* 80048B88 0C010AB2 */ jal alMainBusParam
    /* 80048B8C 24C60020 */ addiu $a2, $a2, 0x20
    /* 80048B90 8E0A0034 */ lw $t2, 0x34($s0)
    /* 80048B94 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80048B98 8FB00014 */ lw $s0, 0x14($sp)
    /* 80048B9C 01511021 */ addu $v0, $t2, $s1
    /* 80048BA0 8FB10018 */ lw $s1, 0x18($sp)
    /* 80048BA4 27BD0020 */ addiu $sp, $sp, 0x20
    /* 80048BA8 03E00008 */ jr $ra
    /* 80048BAC 24420020 */ addiu $v0, $v0, 0x20
    /* 80048BB0 00000000 */ nop
    /* 80048BB4 00000000 */ nop
