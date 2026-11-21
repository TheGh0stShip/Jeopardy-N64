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
glabel func_8004311C
    /* 8004311C 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 80043120 AFBF0014 */ sw $ra, 0x14($sp)
    /* 80043124 AFA40028 */ sw $a0, 0x28($sp)
    /* 80043128 0C00FF3A */ jal __osDisableInt
    /* 8004312C AFA5002C */ sw $a1, 0x2C($sp)
    /* 80043130 0C010CCA */ jal func_80043328
    /* 80043134 AFA2001C */ sw $v0, 0x1C($sp)
    /* 80043138 3C01800D */ lui $at, %hi(D_800D2F70)
    /* 8004313C AC222F70 */ sw $v0, %lo(D_800D2F70)($at)
    /* 80043140 3C0E800D */ lui $t6, %hi(D_800D2F70)
    /* 80043144 8DCE2F70 */ lw $t6, %lo(D_800D2F70)($t6)
    /* 80043148 8FA9002C */ lw $t1, 0x2C($sp)
    /* 8004314C 8FA80028 */ lw $t0, 0x28($sp)
    /* 80043150 01C0C825 */ move $t9, $t6
    /* 80043154 03295821 */ addu $t3, $t9, $t1
    /* 80043158 24180000 */ addiu $t8, $zero, 0x0
    /* 8004315C 0169082B */ sltu $at, $t3, $t1
    /* 80043160 00385021 */ addu $t2, $at, $t8
    /* 80043164 01485021 */ addu $t2, $t2, $t0
    /* 80043168 AFAA0020 */ sw $t2, 0x20($sp)
    /* 8004316C AFAB0024 */ sw $t3, 0x24($sp)
    /* 80043170 0C010CC6 */ jal func_80043318
    /* 80043174 01602025 */ move $a0, $t3
    /* 80043178 0C00FF42 */ jal func_8003FD08
    /* 8004317C 8FA4001C */ lw $a0, 0x1C($sp)
    /* 80043180 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80043184 27BD0028 */ addiu $sp, $sp, 0x28
    /* 80043188 03E00008 */ jr $ra
    /* 8004318C 00000000 */ nop
