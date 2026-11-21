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
glabel func_8003CED8
    /* 8003CED8 3C028007 */ lui $v0, %hi(D_80071FF8)
    /* 8003CEDC 8C421FF8 */ lw $v0, %lo(D_80071FF8)($v0)
    /* 8003CEE0 00001825 */ move $v1, $zero
    /* 8003CEE4 8C44002C */ lw $a0, 0x2C($v0)
    /* 8003CEE8 10800005 */ beqz $a0, .L8003CF00
    /* 8003CEEC 00000000 */ nop
    /* 8003CEF0 8C8E0000 */ lw $t6, 0x0($a0)
    /* 8003CEF4 00801825 */ move $v1, $a0
    /* 8003CEF8 AC4E002C */ sw $t6, 0x2C($v0)
    /* 8003CEFC AC800000 */ sw $zero, 0x0($a0)
.L8003CF00:
    /* 8003CF00 03E00008 */ jr $ra
    /* 8003CF04 00601025 */ move $v0, $v1
