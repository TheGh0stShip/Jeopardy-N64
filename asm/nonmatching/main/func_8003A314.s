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
glabel func_8003A314
    /* 8003A314 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003A318 AFB10014 */ sw $s1, 0x14($sp)
    /* 8003A31C 00808821 */ addu $s1, $a0, $zero
    /* 8003A320 AFB00010 */ sw $s0, 0x10($sp)
    /* 8003A324 00C08021 */ addu $s0, $a2, $zero
    /* 8003A328 AFB3001C */ sw $s3, 0x1C($sp)
    /* 8003A32C 00A09821 */ addu $s3, $a1, $zero
    /* 8003A330 AFBF0020 */ sw $ra, 0x20($sp)
    /* 8003A334 1200000A */ beqz $s0, .L8003A360
    /* 8003A338 AFB20018 */ sw $s2, 0x18($sp)
    /* 8003A33C 32220003 */ andi $v0, $s1, 0x3
.L8003A340:
    /* 8003A340 10400007 */ beqz $v0, .L8003A360
    /* 8003A344 02202021 */ addu $a0, $s1, $zero
    /* 8003A348 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A34C 0C00E86C */ jal func_8003A1B0
    /* 8003A350 326500FF */ andi $a1, $s3, 0xFF
    /* 8003A354 2610FFFF */ addiu $s0, $s0, -0x1
    /* 8003A358 1600FFF9 */ bnez $s0, .L8003A340
    /* 8003A35C 32220003 */ andi $v0, $s1, 0x3
.L8003A360:
    /* 8003A360 2E020004 */ sltiu $v0, $s0, 0x4
    /* 8003A364 1440000E */ bnez $v0, .L8003A3A0
    /* 8003A368 326400FF */ andi $a0, $s3, 0xFF
    /* 8003A36C 00041600 */ sll $v0, $a0, 24
    /* 8003A370 00041C00 */ sll $v1, $a0, 16
    /* 8003A374 00431025 */ or $v0, $v0, $v1
    /* 8003A378 00041A00 */ sll $v1, $a0, 8
    /* 8003A37C 00431025 */ or $v0, $v0, $v1
    /* 8003A380 00449025 */ or $s2, $v0, $a0
.L8003A384:
    /* 8003A384 02202021 */ addu $a0, $s1, $zero
    /* 8003A388 0C00E7A2 */ jal func_80039E88
    /* 8003A38C 02402821 */ addu $a1, $s2, $zero
    /* 8003A390 2610FFFC */ addiu $s0, $s0, -0x4
    /* 8003A394 2E020004 */ sltiu $v0, $s0, 0x4
    /* 8003A398 1040FFFA */ beqz $v0, .L8003A384
    /* 8003A39C 26310004 */ addiu $s1, $s1, 0x4
.L8003A3A0:
    /* 8003A3A0 12000007 */ beqz $s0, .L8003A3C0
    /* 8003A3A4 02202021 */ addu $a0, $s1, $zero
.L8003A3A8:
    /* 8003A3A8 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A3AC 0C00E86C */ jal func_8003A1B0
    /* 8003A3B0 326500FF */ andi $a1, $s3, 0xFF
    /* 8003A3B4 2610FFFF */ addiu $s0, $s0, -0x1
    /* 8003A3B8 1600FFFB */ bnez $s0, .L8003A3A8
    /* 8003A3BC 02202021 */ addu $a0, $s1, $zero
.L8003A3C0:
    /* 8003A3C0 8FBF0020 */ lw $ra, 0x20($sp)
    /* 8003A3C4 8FB3001C */ lw $s3, 0x1C($sp)
    /* 8003A3C8 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003A3CC 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003A3D0 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003A3D4 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003A3D8 03E00008 */ jr $ra
    /* 8003A3DC 00000000 */ nop
