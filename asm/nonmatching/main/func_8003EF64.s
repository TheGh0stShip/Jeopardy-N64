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
glabel func_8003EF64
    /* 8003EF64 44856000 */ mtc1 $a1, $f12
    /* 8003EF68 44867000 */ mtc1 $a2, $f14
    /* 8003EF6C 44878000 */ mtc1 $a3, $f16
    /* 8003EF70 27BDFFA8 */ addiu $sp, $sp, -0x58
    /* 8003EF74 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003EF78 AFA40058 */ sw $a0, 0x58($sp)
    /* 8003EF7C 44056000 */ mfc1 $a1, $f12
    /* 8003EF80 44067000 */ mfc1 $a2, $f14
    /* 8003EF84 44078000 */ mfc1 $a3, $f16
    /* 8003EF88 0C00FB86 */ jal guRotateRPYF
    /* 8003EF8C 27A40018 */ addiu $a0, $sp, 0x18
    /* 8003EF90 27A40018 */ addiu $a0, $sp, 0x18
    /* 8003EF94 0C011032 */ jal guMtxF2L
    /* 8003EF98 8FA50058 */ lw $a1, 0x58($sp)
    /* 8003EF9C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003EFA0 27BD0058 */ addiu $sp, $sp, 0x58
    /* 8003EFA4 03E00008 */ jr $ra
    /* 8003EFA8 00000000 */ nop
    /* 8003EFAC 00000000 */ nop
    /* 8003EFB0 00000000 */ nop
    /* 8003EFB4 00000000 */ nop
