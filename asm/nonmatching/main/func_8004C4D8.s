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
glabel func_8004C4D8
    /* 8004C4D8 3C0EA404 */ lui $t6, %hi(D_A4040010)
    /* 8004C4DC 03E00008 */ jr $ra
    /* 8004C4E0 8DC20010 */ lw $v0, %lo(D_A4040010)($t6)
    /* 8004C4E4 00000000 */ nop
