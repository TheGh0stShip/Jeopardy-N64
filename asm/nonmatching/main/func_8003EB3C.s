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
glabel func_8003EB3C
    /* 8003EB3C 8C8E0000 */ lw $t6, 0x0($a0)
    /* 8003EB40 44856000 */ mtc1 $a1, $f12
    /* 8003EB44 3C018000 */ lui $at, %hi(D_80001D38)
    /* 8003EB48 8DCF0040 */ lw $t7, 0x40($t6)
    /* 8003EB4C D4261D38 */ ldc1 $f6, %lo(D_80001D38)($at)
    /* 8003EB50 46006121 */ cvt.d.s $f4, $f12
    /* 8003EB54 448F5000 */ mtc1 $t7, $f10
    /* 8003EB58 46262202 */ mul.d $f8, $f4, $f6
    /* 8003EB5C 3C0141F0 */ lui $at, 0x41F0
    /* 8003EB60 05E10005 */ bgez $t7, .L8003EB78
    /* 8003EB64 46805421 */ cvt.d.w $f16, $f10
    /* 8003EB68 44819800 */ mtc1 $at, $f19
    /* 8003EB6C 44809000 */ mtc1 $zero, $f18
    /* 8003EB70 00000000 */ nop
    /* 8003EB74 46328400 */ add.d $f16, $f16, $f18
.L8003EB78:
    /* 8003EB78 44863000 */ mtc1 $a2, $f6
    /* 8003EB7C 46304102 */ mul.d $f4, $f8, $f16
    /* 8003EB80 3C0141F0 */ lui $at, 0x41F0
    /* 8003EB84 04C10005 */ bgez $a2, .L8003EB9C
    /* 8003EB88 468032A1 */ cvt.d.w $f10, $f6
    /* 8003EB8C 44819800 */ mtc1 $at, $f19
    /* 8003EB90 44809000 */ mtc1 $zero, $f18
    /* 8003EB94 00000000 */ nop
    /* 8003EB98 46325280 */ add.d $f10, $f10, $f18
.L8003EB9C:
    /* 8003EB9C 462A2203 */ div.d $f8, $f4, $f10
    /* 8003EBA0 24020001 */ addiu $v0, $zero, 0x1
    /* 8003EBA4 3C0141E0 */ lui $at, 0x41E0
    /* 8003EBA8 4458F800 */ cfc1 $t8, $31 /* FpcCsr */
    /* 8003EBAC 44C2F800 */ ctc1 $v0, $31 /* FpcCsr */
    /* 8003EBB0 00000000 */ nop
    /* 8003EBB4 46204424 */ cvt.w.d $f16, $f8
    /* 8003EBB8 4442F800 */ cfc1 $v0, $31 /* FpcCsr */
    /* 8003EBBC 00000000 */ nop
    /* 8003EBC0 30420078 */ andi $v0, $v0, 0x78
    /* 8003EBC4 50400016 */ beql $v0, $zero, .L8003EC20
    /* 8003EBC8 44028000 */ mfc1 $v0, $f16
    /* 8003EBCC 44818800 */ mtc1 $at, $f17
    /* 8003EBD0 44808000 */ mtc1 $zero, $f16
    /* 8003EBD4 24020001 */ addiu $v0, $zero, 0x1
    /* 8003EBD8 3C018000 */ lui $at, 0x8000
    /* 8003EBDC 46304401 */ sub.d $f16, $f8, $f16
    /* 8003EBE0 44C2F800 */ ctc1 $v0, $31 /* FpcCsr */
    /* 8003EBE4 00000000 */ nop
    /* 8003EBE8 46208424 */ cvt.w.d $f16, $f16
    /* 8003EBEC 4442F800 */ cfc1 $v0, $31 /* FpcCsr */
    /* 8003EBF0 00000000 */ nop
    /* 8003EBF4 30420078 */ andi $v0, $v0, 0x78
    /* 8003EBF8 54400006 */ bnel $v0, $zero, .L8003EC14
    /* 8003EBFC 44D8F800 */ ctc1 $t8, $31 /* FpcCsr */
    /* 8003EC00 44028000 */ mfc1 $v0, $f16
    /* 8003EC04 44D8F800 */ ctc1 $t8, $31 /* FpcCsr */
    /* 8003EC08 03E00008 */ jr $ra
    /* 8003EC0C 00411025 */ or $v0, $v0, $at
    /* 8003EC10 44D8F800 */ ctc1 $t8, $31 /* FpcCsr */
.L8003EC14:
    /* 8003EC14 03E00008 */ jr $ra
    /* 8003EC18 2402FFFF */ addiu $v0, $zero, -0x1
    /* 8003EC1C 44028000 */ mfc1 $v0, $f16
.L8003EC20:
    /* 8003EC20 00000000 */ nop
    /* 8003EC24 0442FFFB */ bltzl $v0, .L8003EC14
    /* 8003EC28 44D8F800 */ ctc1 $t8, $31 /* FpcCsr */
    /* 8003EC2C 44D8F800 */ ctc1 $t8, $31 /* FpcCsr */
    /* 8003EC30 03E00008 */ jr $ra
    /* 8003EC34 00000000 */ nop
