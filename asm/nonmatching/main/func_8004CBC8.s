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
glabel func_8004CBC8
    /* 8004CBC8 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8004CBCC AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004CBD0 0C01214A */ jal osSetIntMask
    /* 8004CBD4 24040001 */ addiu $a0, $zero, 0x1
    /* 8004CBD8 8E500008 */ lw $s0, 0x8($s2)
    /* 8004CBDC 0040A025 */ move $s4, $v0
    /* 8004CBE0 12000012 */ beqz $s0, .L8004CC2C
    /* 8004CBE4 00000000 */ nop
.L8004CBE8:
    /* 8004CBE8 8E0E0010 */ lw $t6, 0x10($s0)
    /* 8004CBEC 8E110000 */ lw $s1, 0x0($s0)
    /* 8004CBF0 166E000C */ bne $s3, $t6, .L8004CC24
    /* 8004CBF4 00000000 */ nop
    /* 8004CBF8 12200005 */ beqz $s1, .L8004CC10
    /* 8004CBFC 00000000 */ nop
    /* 8004CC00 8E2F0008 */ lw $t7, 0x8($s1)
    /* 8004CC04 8E180008 */ lw $t8, 0x8($s0)
    /* 8004CC08 01F8C821 */ addu $t9, $t7, $t8
    /* 8004CC0C AE390008 */ sw $t9, 0x8($s1)
.L8004CC10:
    /* 8004CC10 0C00F52A */ jal alUnlink
    /* 8004CC14 02002025 */ move $a0, $s0
    /* 8004CC18 02002025 */ move $a0, $s0
    /* 8004CC1C 0C00F536 */ jal alLink
    /* 8004CC20 02402825 */ move $a1, $s2
.L8004CC24:
    /* 8004CC24 1620FFF0 */ bnez $s1, .L8004CBE8
    /* 8004CC28 02208025 */ move $s0, $s1
.L8004CC2C:
    /* 8004CC2C 0C01214A */ jal osSetIntMask
    /* 8004CC30 02802025 */ move $a0, $s4
    /* 8004CC34 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004CC38 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8004CC3C 03E00008 */ jr $ra
    /* 8004CC40 00000000 */ nop
