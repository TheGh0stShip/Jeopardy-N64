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
glabel func_8004C4E8
    /* 8004C4E8 3C0EA404 */ lui $t6, %hi(D_A4040010)
    /* 8004C4EC 03E00008 */ jr $ra
    /* 8004C4F0 ADC40010 */ sw $a0, %lo(D_A4040010)($t6)
    /* 8004C4F4 00000000 */ nop
