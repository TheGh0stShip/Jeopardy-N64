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
glabel func_8003A09C
    /* 8003A09C 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003A0A0 AFB3001C */ sw $s3, 0x1C($sp)
    /* 8003A0A4 00809821 */ addu $s3, $a0, $zero
    /* 8003A0A8 AFB10014 */ sw $s1, 0x14($sp)
    /* 8003A0AC 00A08821 */ addu $s1, $a1, $zero
    /* 8003A0B0 AFB20018 */ sw $s2, 0x18($sp)
    /* 8003A0B4 00C09021 */ addu $s2, $a2, $zero
    /* 8003A0B8 AFBF0020 */ sw $ra, 0x20($sp)
    /* 8003A0BC 12400026 */ beqz $s2, .L8003A158
    /* 8003A0C0 AFB00010 */ sw $s0, 0x10($sp)
    /* 8003A0C4 32620003 */ andi $v0, $s3, 0x3
.L8003A0C8:
    /* 8003A0C8 10400023 */ beqz $v0, .L8003A158
    /* 8003A0CC 02602021 */ addu $a0, $s3, $zero
    /* 8003A0D0 0C00E7D1 */ jal func_80039F44
    /* 8003A0D4 26730001 */ addiu $s3, $s3, 0x1
    /* 8003A0D8 02202021 */ addu $a0, $s1, $zero
    /* 8003A0DC 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A0E0 0C00E818 */ jal func_8003A060
    /* 8003A0E4 304500FF */ andi $a1, $v0, 0xFF
    /* 8003A0E8 2652FFFF */ addiu $s2, $s2, -0x1
    /* 8003A0EC 1640FFF6 */ bnez $s2, .L8003A0C8
    /* 8003A0F0 32620003 */ andi $v0, $s3, 0x3
    /* 8003A0F4 0800E857 */ j .L8003A15C
    /* 8003A0F8 2E420004 */ sltiu $v0, $s2, 0x4
.L8003A0FC:
    /* 8003A0FC 0C00E7B0 */ jal func_80039EC0
    /* 8003A100 02602021 */ addu $a0, $s3, $zero
    /* 8003A104 02202021 */ addu $a0, $s1, $zero
    /* 8003A108 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A10C 00408021 */ addu $s0, $v0, $zero
    /* 8003A110 0C00E818 */ jal func_8003A060
    /* 8003A114 00102E02 */ srl $a1, $s0, 24
    /* 8003A118 02202021 */ addu $a0, $s1, $zero
    /* 8003A11C 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A120 00102C02 */ srl $a1, $s0, 16
    /* 8003A124 0C00E818 */ jal func_8003A060
    /* 8003A128 30A500FF */ andi $a1, $a1, 0xFF
    /* 8003A12C 02202021 */ addu $a0, $s1, $zero
    /* 8003A130 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A134 00102A02 */ srl $a1, $s0, 8
    /* 8003A138 0C00E818 */ jal func_8003A060
    /* 8003A13C 30A500FF */ andi $a1, $a1, 0xFF
    /* 8003A140 02202021 */ addu $a0, $s1, $zero
    /* 8003A144 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A148 0C00E818 */ jal func_8003A060
    /* 8003A14C 320500FF */ andi $a1, $s0, 0xFF
    /* 8003A150 26730004 */ addiu $s3, $s3, 0x4
    /* 8003A154 2652FFFC */ addiu $s2, $s2, -0x4
.L8003A158:
    /* 8003A158 2E420004 */ sltiu $v0, $s2, 0x4
.L8003A15C:
    /* 8003A15C 1040FFE7 */ beqz $v0, .L8003A0FC
    /* 8003A160 00000000 */ nop
    /* 8003A164 1240000A */ beqz $s2, .L8003A190
    /* 8003A168 02602021 */ addu $a0, $s3, $zero
.L8003A16C:
    /* 8003A16C 0C00E7D1 */ jal func_80039F44
    /* 8003A170 26730001 */ addiu $s3, $s3, 0x1
    /* 8003A174 02202021 */ addu $a0, $s1, $zero
    /* 8003A178 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A17C 0C00E818 */ jal func_8003A060
    /* 8003A180 304500FF */ andi $a1, $v0, 0xFF
    /* 8003A184 2652FFFF */ addiu $s2, $s2, -0x1
    /* 8003A188 1640FFF8 */ bnez $s2, .L8003A16C
    /* 8003A18C 02602021 */ addu $a0, $s3, $zero
.L8003A190:
    /* 8003A190 8FBF0020 */ lw $ra, 0x20($sp)
    /* 8003A194 8FB3001C */ lw $s3, 0x1C($sp)
    /* 8003A198 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003A19C 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003A1A0 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003A1A4 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003A1A8 03E00008 */ jr $ra
    /* 8003A1AC 00000000 */ nop
