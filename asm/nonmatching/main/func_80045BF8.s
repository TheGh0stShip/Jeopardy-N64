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
glabel func_80045BF8
    /* 80045BF8 8C830064 */ lw $v1, 0x64($a0)
    /* 80045BFC 00001025 */ move $v0, $zero
    /* 80045C00 24A6FFFC */ addiu $a2, $a1, -0x4
    /* 80045C04 10600016 */ beqz $v1, .L80045C60
    /* 80045C08 00000000 */ nop
.L80045C0C:
    /* 80045C0C 54660011 */ bnel $v1, $a2, .L80045C54
    /* 80045C10 00601025 */ move $v0, $v1
    /* 80045C14 50400005 */ beql $v0, $zero, .L80045C2C
    /* 80045C18 8C6F0000 */ lw $t7, 0x0($v1)
    /* 80045C1C 8C6E0000 */ lw $t6, 0x0($v1)
    /* 80045C20 10000003 */ b .L80045C30
    /* 80045C24 AC4E0000 */ sw $t6, 0x0($v0)
    /* 80045C28 8C6F0000 */ lw $t7, 0x0($v1)
.L80045C2C:
    /* 80045C2C AC8F0064 */ sw $t7, 0x64($a0)
.L80045C30:
    /* 80045C30 8C980068 */ lw $t8, 0x68($a0)
    /* 80045C34 54780003 */ bnel $v1, $t8, .L80045C44
    /* 80045C38 8C99006C */ lw $t9, 0x6C($a0)
    /* 80045C3C AC820068 */ sw $v0, 0x68($a0)
    /* 80045C40 8C99006C */ lw $t9, 0x6C($a0)
.L80045C44:
    /* 80045C44 AC790000 */ sw $t9, 0x0($v1)
    /* 80045C48 03E00008 */ jr $ra
    /* 80045C4C AC83006C */ sw $v1, 0x6C($a0)
    /* 80045C50 00601025 */ move $v0, $v1
.L80045C54:
    /* 80045C54 8C630000 */ lw $v1, 0x0($v1)
    /* 80045C58 1460FFEC */ bnez $v1, .L80045C0C
    /* 80045C5C 00000000 */ nop
.L80045C60:
    /* 80045C60 03E00008 */ jr $ra
    /* 80045C64 00000000 */ nop
