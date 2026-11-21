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
glabel func_8003FDF8
    /* 8003FDF8 3C048007 */ lui $a0, %hi(D_80072198)
    /* 8003FDFC 8C842198 */ lw $a0, %lo(D_80072198)($a0)
    /* 8003FE00 3C018007 */ lui $at, %hi(D_80072198)
    /* 8003FE04 00047080 */ sll $t6, $a0, 2
    /* 8003FE08 25CF0002 */ addiu $t7, $t6, 0x2
    /* 8003FE0C 25D80003 */ addiu $t8, $t6, 0x3
    /* 8003FE10 01F80019 */ multu $t7, $t8
    /* 8003FE14 00002812 */ mflo $a1
    /* 8003FE18 00051082 */ srl $v0, $a1, 2
    /* 8003FE1C 03E00008 */ jr $ra
    /* 8003FE20 AC222198 */ sw $v0, %lo(D_80072198)($at)
    /* 8003FE24 00000000 */ nop
