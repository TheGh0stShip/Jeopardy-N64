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
glabel func_8003A228
    /* 8003A228 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003A22C AFB10014 */ sw $s1, 0x14($sp)
    /* 8003A230 00808821 */ addu $s1, $a0, $zero
    /* 8003A234 AFB20018 */ sw $s2, 0x18($sp)
    /* 8003A238 00A09021 */ addu $s2, $a1, $zero
    /* 8003A23C AFB00010 */ sw $s0, 0x10($sp)
    /* 8003A240 00C08021 */ addu $s0, $a2, $zero
    /* 8003A244 AFBF0020 */ sw $ra, 0x20($sp)
    /* 8003A248 1200000B */ beqz $s0, .L8003A278
    /* 8003A24C AFB3001C */ sw $s3, 0x1C($sp)
    /* 8003A250 32220003 */ andi $v0, $s1, 0x3
.L8003A254:
    /* 8003A254 10400008 */ beqz $v0, .L8003A278
    /* 8003A258 02202021 */ addu $a0, $s1, $zero
    /* 8003A25C 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A260 92450000 */ lbu $a1, 0x0($s2)
    /* 8003A264 26520001 */ addiu $s2, $s2, 0x1
    /* 8003A268 0C00E86C */ jal func_8003A1B0
    /* 8003A26C 2610FFFF */ addiu $s0, $s0, -0x1
    /* 8003A270 1600FFF8 */ bnez $s0, .L8003A254
    /* 8003A274 32220003 */ andi $v0, $s1, 0x3
.L8003A278:
    /* 8003A278 2E020004 */ sltiu $v0, $s0, 0x4
    /* 8003A27C 14400014 */ bnez $v0, .L8003A2D0
    /* 8003A280 02202021 */ addu $a0, $s1, $zero
    /* 8003A284 26530003 */ addiu $s3, $s2, 0x3
.L8003A288:
    /* 8003A288 26310004 */ addiu $s1, $s1, 0x4
    /* 8003A28C 9262FFFE */ lbu $v0, -0x2($s3)
    /* 8003A290 9263FFFF */ lbu $v1, -0x1($s3)
    /* 8003A294 92660000 */ lbu $a2, 0x0($s3)
    /* 8003A298 26730004 */ addiu $s3, $s3, 0x4
    /* 8003A29C 92450000 */ lbu $a1, 0x0($s2)
    /* 8003A2A0 26520004 */ addiu $s2, $s2, 0x4
    /* 8003A2A4 2610FFFC */ addiu $s0, $s0, -0x4
    /* 8003A2A8 00052E00 */ sll $a1, $a1, 24
    /* 8003A2AC 00021400 */ sll $v0, $v0, 16
    /* 8003A2B0 00A22825 */ or $a1, $a1, $v0
    /* 8003A2B4 00031A00 */ sll $v1, $v1, 8
    /* 8003A2B8 00A32825 */ or $a1, $a1, $v1
    /* 8003A2BC 0C00E7A2 */ jal func_80039E88
    /* 8003A2C0 00A62825 */ or $a1, $a1, $a2
    /* 8003A2C4 2E020004 */ sltiu $v0, $s0, 0x4
    /* 8003A2C8 1040FFEF */ beqz $v0, .L8003A288
    /* 8003A2CC 02202021 */ addu $a0, $s1, $zero
.L8003A2D0:
    /* 8003A2D0 12000008 */ beqz $s0, .L8003A2F4
    /* 8003A2D4 02202021 */ addu $a0, $s1, $zero
.L8003A2D8:
    /* 8003A2D8 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A2DC 92450000 */ lbu $a1, 0x0($s2)
    /* 8003A2E0 26520001 */ addiu $s2, $s2, 0x1
    /* 8003A2E4 0C00E86C */ jal func_8003A1B0
    /* 8003A2E8 2610FFFF */ addiu $s0, $s0, -0x1
    /* 8003A2EC 1600FFFA */ bnez $s0, .L8003A2D8
    /* 8003A2F0 02202021 */ addu $a0, $s1, $zero
.L8003A2F4:
    /* 8003A2F4 8FBF0020 */ lw $ra, 0x20($sp)
    /* 8003A2F8 8FB3001C */ lw $s3, 0x1C($sp)
    /* 8003A2FC 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003A300 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003A304 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003A308 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003A30C 03E00008 */ jr $ra
    /* 8003A310 00000000 */ nop
