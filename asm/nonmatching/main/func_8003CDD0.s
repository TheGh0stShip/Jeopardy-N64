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
glabel func_8003CDD0
    /* 8003CDD0 8C8E0044 */ lw $t6, 0x44($a0)
    /* 8003CDD4 44852000 */ mtc1 $a1, $f4
    /* 8003CDD8 3C018000 */ lui $at, %hi(D_80001D28)
    /* 8003CDDC 448E4000 */ mtc1 $t6, $f8
    /* 8003CDE0 468021A0 */ cvt.s.w $f6, $f4
    /* 8003CDE4 D4241D28 */ ldc1 $f4, %lo(D_80001D28)($at)
    /* 8003CDE8 3C013FE0 */ lui $at, 0x3FE0
    /* 8003CDEC 44813800 */ mtc1 $at, $f7
    /* 8003CDF0 2401FFF0 */ addiu $at, $zero, -0x10
    /* 8003CDF4 468042A0 */ cvt.s.w $f10, $f8
    /* 8003CDF8 460A3402 */ mul.s $f16, $f6, $f10
    /* 8003CDFC 44803000 */ mtc1 $zero, $f6
    /* 8003CE00 460084A1 */ cvt.d.s $f18, $f16
    /* 8003CE04 46249203 */ div.d $f8, $f18, $f4
    /* 8003CE08 46264280 */ add.d $f10, $f8, $f6
    /* 8003CE0C 46205020 */ cvt.s.d $f0, $f10
    /* 8003CE10 4600040D */ trunc.w.s $f16, $f0
    /* 8003CE14 44028000 */ mfc1 $v0, $f16
    /* 8003CE18 00000000 */ nop
    /* 8003CE1C 0041C024 */ and $t8, $v0, $at
    /* 8003CE20 03E00008 */ jr $ra
    /* 8003CE24 03001025 */ move $v0, $t8
