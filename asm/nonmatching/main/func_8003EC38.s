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
glabel func_8003EC38
    /* 8003EC38 44852000 */ mtc1 $a1, $f4
    /* 8003EC3C 44864000 */ mtc1 $a2, $f8
    /* 8003EC40 3C014F80 */ lui $at, 0x4F80
    /* 8003EC44 468021A0 */ cvt.s.w $f6, $f4
    /* 8003EC48 04C10004 */ bgez $a2, .L8003EC5C
    /* 8003EC4C 468042A0 */ cvt.s.w $f10, $f8
    /* 8003EC50 44818000 */ mtc1 $at, $f16
    /* 8003EC54 00000000 */ nop
    /* 8003EC58 46105280 */ add.s $f10, $f10, $f16
.L8003EC5C:
    /* 8003EC5C 8C8E0000 */ lw $t6, 0x0($a0)
    /* 8003EC60 460A3482 */ mul.s $f18, $f6, $f10
    /* 8003EC64 3C014F80 */ lui $at, 0x4F80
    /* 8003EC68 8DCF0040 */ lw $t7, 0x40($t6)
    /* 8003EC6C 448F4000 */ mtc1 $t7, $f8
    /* 8003EC70 46009121 */ cvt.d.s $f4, $f18
    /* 8003EC74 05E10004 */ bgez $t7, .L8003EC88
    /* 8003EC78 46804420 */ cvt.s.w $f16, $f8
    /* 8003EC7C 44813000 */ mtc1 $at, $f6
    /* 8003EC80 00000000 */ nop
    /* 8003EC84 46068400 */ add.s $f16, $f16, $f6
.L8003EC88:
    /* 8003EC88 3C018000 */ lui $at, %hi(D_80001D40)
    /* 8003EC8C D4321D40 */ ldc1 $f18, %lo(D_80001D40)($at)
    /* 8003EC90 460082A1 */ cvt.d.s $f10, $f16
    /* 8003EC94 46325202 */ mul.d $f8, $f10, $f18
    /* 8003EC98 46282183 */ div.d $f6, $f4, $f8
    /* 8003EC9C 03E00008 */ jr $ra
    /* 8003ECA0 46203020 */ cvt.s.d $f0, $f6
