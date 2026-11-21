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
glabel func_8003F00C
    /* 8003F00C 44856000 */ mtc1 $a1, $f12
    /* 8003F010 44867000 */ mtc1 $a2, $f14
    /* 8003F014 44878000 */ mtc1 $a3, $f16
    /* 8003F018 27BDFFA8 */ addiu $sp, $sp, -0x58
    /* 8003F01C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003F020 AFA40058 */ sw $a0, 0x58($sp)
    /* 8003F024 44056000 */ mfc1 $a1, $f12
    /* 8003F028 44067000 */ mfc1 $a2, $f14
    /* 8003F02C 44078000 */ mfc1 $a3, $f16
    /* 8003F030 0C00FBEE */ jal guScaleF
    /* 8003F034 27A40018 */ addiu $a0, $sp, 0x18
    /* 8003F038 27A40018 */ addiu $a0, $sp, 0x18
    /* 8003F03C 0C011032 */ jal guMtxF2L
    /* 8003F040 8FA50058 */ lw $a1, 0x58($sp)
    /* 8003F044 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003F048 27BD0058 */ addiu $sp, $sp, 0x58
    /* 8003F04C 03E00008 */ jr $ra
    /* 8003F050 00000000 */ nop
    /* 8003F054 00000000 */ nop
