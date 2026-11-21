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
glabel func_80039F84
    /* 80039F84 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 80039F88 AFB20018 */ sw $s2, 0x18($sp)
    /* 80039F8C 00809021 */ addu $s2, $a0, $zero
    /* 80039F90 AFB00010 */ sw $s0, 0x10($sp)
    /* 80039F94 00A08021 */ addu $s0, $a1, $zero
    /* 80039F98 AFB10014 */ sw $s1, 0x14($sp)
    /* 80039F9C 00C08821 */ addu $s1, $a2, $zero
    /* 80039FA0 1220001C */ beqz $s1, .L8003A014
    /* 80039FA4 AFBF001C */ sw $ra, 0x1C($sp)
.L80039FA8:
    /* 80039FA8 32420003 */ andi $v0, $s2, 0x3
    /* 80039FAC 1040001A */ beqz $v0, .L8003A018
    /* 80039FB0 2E220004 */ sltiu $v0, $s1, 0x4
    /* 80039FB4 02402021 */ addu $a0, $s2, $zero
    /* 80039FB8 0C00E7D1 */ jal func_80039F44
    /* 80039FBC 26520001 */ addiu $s2, $s2, 0x1
    /* 80039FC0 A2020000 */ sb $v0, 0x0($s0)
    /* 80039FC4 2631FFFF */ addiu $s1, $s1, -0x1
    /* 80039FC8 1620FFF7 */ bnez $s1, .L80039FA8
    /* 80039FCC 26100001 */ addiu $s0, $s0, 0x1
    /* 80039FD0 0800E806 */ j .L8003A018
    /* 80039FD4 2E220004 */ sltiu $v0, $s1, 0x4
.L80039FD8:
    /* 80039FD8 0C00E7B0 */ jal func_80039EC0
    /* 80039FDC 02402021 */ addu $a0, $s2, $zero
    /* 80039FE0 00021E02 */ srl $v1, $v0, 24
    /* 80039FE4 A2030000 */ sb $v1, 0x0($s0)
    /* 80039FE8 26100001 */ addiu $s0, $s0, 0x1
    /* 80039FEC 00021C02 */ srl $v1, $v0, 16
    /* 80039FF0 A2030000 */ sb $v1, 0x0($s0)
    /* 80039FF4 26100001 */ addiu $s0, $s0, 0x1
    /* 80039FF8 00021A02 */ srl $v1, $v0, 8
    /* 80039FFC A2030000 */ sb $v1, 0x0($s0)
    /* 8003A000 26100001 */ addiu $s0, $s0, 0x1
    /* 8003A004 A2020000 */ sb $v0, 0x0($s0)
    /* 8003A008 26100001 */ addiu $s0, $s0, 0x1
    /* 8003A00C 26520004 */ addiu $s2, $s2, 0x4
    /* 8003A010 2631FFFC */ addiu $s1, $s1, -0x4
.L8003A014:
    /* 8003A014 2E220004 */ sltiu $v0, $s1, 0x4
.L8003A018:
    /* 8003A018 1040FFEF */ beqz $v0, .L80039FD8
    /* 8003A01C 00000000 */ nop
    /* 8003A020 12200008 */ beqz $s1, .L8003A044
    /* 8003A024 00000000 */ nop
.L8003A028:
    /* 8003A028 02402021 */ addu $a0, $s2, $zero
    /* 8003A02C 0C00E7D1 */ jal func_80039F44
    /* 8003A030 26520001 */ addiu $s2, $s2, 0x1
    /* 8003A034 A2020000 */ sb $v0, 0x0($s0)
    /* 8003A038 2631FFFF */ addiu $s1, $s1, -0x1
    /* 8003A03C 1620FFFA */ bnez $s1, .L8003A028
    /* 8003A040 26100001 */ addiu $s0, $s0, 0x1
.L8003A044:
    /* 8003A044 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003A048 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003A04C 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003A050 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003A054 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8003A058 03E00008 */ jr $ra
    /* 8003A05C 00000000 */ nop
