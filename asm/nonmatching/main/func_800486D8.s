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
glabel func_800486D8
    /* 800486D8 3C0E8007 */ lui $t6, %hi(D_80071FB8)
    /* 800486DC 8DCE1FB8 */ lw $t6, %lo(D_80071FB8)($t6)
    /* 800486E0 15C00003 */ bnez $t6, .L800486F0
    /* 800486E4 00000000 */ nop
    /* 800486E8 03E00008 */ jr $ra
    /* 800486EC 00001025 */ move $v0, $zero
.L800486F0:
    /* 800486F0 3C028007 */ lui $v0, %hi(D_80071FC0)
    /* 800486F4 8C421FC0 */ lw $v0, %lo(D_80071FC0)($v0)
    /* 800486F8 03E00008 */ jr $ra
    /* 800486FC 00000000 */ nop
    /* 80048700 00000000 */ nop
    /* 80048704 00000000 */ nop
