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
glabel func_80039EFC
    /* 80039EFC 3C01800D */ lui $at, %hi(D_800D0218)
    /* 80039F00 AC200218 */ sw $zero, %lo(D_800D0218)($at)
    /* 80039F04 0800E7CA */ j .L80039F28
    /* 80039F08 00000000 */ nop
.L80039F0C:
    /* 80039F0C 3C02800D */ lui $v0, %hi(D_800D0218)
    /* 80039F10 8C420218 */ lw $v0, %lo(D_800D0218)($v0)
    /* 80039F14 24420001 */ addiu $v0, $v0, 0x1
    /* 80039F18 3C01800D */ lui $at, %hi(D_800D0218)
    /* 80039F1C AC220218 */ sw $v0, %lo(D_800D0218)($at)
    /* 80039F20 3C02800D */ lui $v0, %hi(D_800D0218)
    /* 80039F24 8C420218 */ lw $v0, %lo(D_800D0218)($v0)
.L80039F28:
    /* 80039F28 3C02800D */ lui $v0, %hi(D_800D0218)
    /* 80039F2C 8C420218 */ lw $v0, %lo(D_800D0218)($v0)
    /* 80039F30 0044102A */ slt $v0, $v0, $a0
    /* 80039F34 1440FFF5 */ bnez $v0, .L80039F0C
    /* 80039F38 00000000 */ nop
    /* 80039F3C 03E00008 */ jr $ra
    /* 80039F40 00000000 */ nop
