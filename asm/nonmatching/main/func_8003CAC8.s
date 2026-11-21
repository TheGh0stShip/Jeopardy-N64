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
glabel func_8003CAC8
    /* 8003CAC8 3C0EA460 */ lui $t6, %hi(D_A4600010)
    /* 8003CACC 8DC70010 */ lw $a3, %lo(D_A4600010)($t6)
    /* 8003CAD0 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 8003CAD4 30EF0003 */ andi $t7, $a3, 0x3
    /* 8003CAD8 11E00006 */ beqz $t7, .L8003CAF4
    /* 8003CADC 00000000 */ nop
.L8003CAE0:
    /* 8003CAE0 3C18A460 */ lui $t8, %hi(D_A4600010)
    /* 8003CAE4 8F070010 */ lw $a3, %lo(D_A4600010)($t8)
    /* 8003CAE8 30F90003 */ andi $t9, $a3, 0x3
    /* 8003CAEC 1720FFFC */ bnez $t9, .L8003CAE0
    /* 8003CAF0 00000000 */ nop
.L8003CAF4:
    /* 8003CAF4 8C88000C */ lw $t0, 0xC($a0)
    /* 8003CAF8 3C01A000 */ lui $at, 0xA000
    /* 8003CAFC 00001025 */ move $v0, $zero
    /* 8003CB00 01054825 */ or $t1, $t0, $a1
    /* 8003CB04 01215025 */ or $t2, $t1, $at
    /* 8003CB08 8D4B0000 */ lw $t3, 0x0($t2)
    /* 8003CB0C 27BD0008 */ addiu $sp, $sp, 0x8
    /* 8003CB10 03E00008 */ jr $ra
    /* 8003CB14 ACCB0000 */ sw $t3, 0x0($a2)
