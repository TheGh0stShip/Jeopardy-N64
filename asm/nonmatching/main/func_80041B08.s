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
glabel func_80041B08
    /* 80041B08 10C00007 */ beqz $a2, .L80041B28
    /* 80041B0C 240E0001 */ addiu $t6, $zero, 0x1
    /* 80041B10 00CE7804 */ sllv $t7, $t6, $a2
    /* 80041B14 448F2000 */ mtc1 $t7, $f4
    /* 80041B18 00000000 */ nop
    /* 80041B1C 468021A1 */ cvt.d.w $f6, $f4
    /* 80041B20 46266302 */ mul.d $f12, $f12, $f6
    /* 80041B24 00000000 */ nop
.L80041B28:
    /* 80041B28 03E00008 */ jr $ra
    /* 80041B2C 46206006 */ mov.d $f0, $f12
