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
glabel func_8003A3E0
    /* 8003A3E0 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003A3E4 AFB1001C */ sw $s1, 0x1C($sp)
    /* 8003A3E8 00808821 */ addu $s1, $a0, $zero
    /* 8003A3EC AFB20020 */ sw $s2, 0x20($sp)
    /* 8003A3F0 00A09021 */ addu $s2, $a1, $zero
    /* 8003A3F4 AFB00018 */ sw $s0, 0x18($sp)
    /* 8003A3F8 24D0FFFF */ addiu $s0, $a2, -0x1
    /* 8003A3FC AFBF0028 */ sw $ra, 0x28($sp)
    /* 8003A400 10C0000C */ beqz $a2, .L8003A434
    /* 8003A404 AFB30024 */ sw $s3, 0x24($sp)
    /* 8003A408 2413FFFF */ addiu $s3, $zero, -0x1
    /* 8003A40C 02402021 */ addu $a0, $s2, $zero
.L8003A410:
    /* 8003A410 0C00E7D1 */ jal func_80039F44
    /* 8003A414 26520001 */ addiu $s2, $s2, 0x1
    /* 8003A418 02202021 */ addu $a0, $s1, $zero
    /* 8003A41C 26310001 */ addiu $s1, $s1, 0x1
    /* 8003A420 0C00E86C */ jal func_8003A1B0
    /* 8003A424 304500FF */ andi $a1, $v0, 0xFF
    /* 8003A428 2610FFFF */ addiu $s0, $s0, -0x1
    /* 8003A42C 1613FFF8 */ bne $s0, $s3, .L8003A410
    /* 8003A430 02402021 */ addu $a0, $s2, $zero
.L8003A434:
    /* 8003A434 8FBF0028 */ lw $ra, 0x28($sp)
    /* 8003A438 8FB30024 */ lw $s3, 0x24($sp)
    /* 8003A43C 8FB20020 */ lw $s2, 0x20($sp)
    /* 8003A440 8FB1001C */ lw $s1, 0x1C($sp)
    /* 8003A444 8FB00018 */ lw $s0, 0x18($sp)
    /* 8003A448 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003A44C 03E00008 */ jr $ra
    /* 8003A450 00000000 */ nop
