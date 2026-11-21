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
glabel func_80041248
    /* 80041248 3C0EA460 */ lui $t6, %hi(D_A4600010)
    /* 8004124C 03E00008 */ jr $ra
    /* 80041250 8DC20010 */ lw $v0, %lo(D_A4600010)($t6)
    /* 80041254 00000000 */ nop
