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
glabel func_8004D808
    /* 8004D808 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004D80C AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004D810 AFA40028 */ sw $a0, 0x28($sp)
    /* 8004D814 0C00FF3A */ jal __osDisableInt
    /* 8004D818 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004D81C 3C0F8007 */ lui $t7, %hi(D_8007246C)
    /* 8004D820 8DEF246C */ lw $t7, %lo(D_8007246C)($t7)
    /* 8004D824 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8004D828 3C198007 */ lui $t9, %hi(D_8007246C)
    /* 8004D82C 24180001 */ addiu $t8, $zero, 0x1
    /* 8004D830 ADEE0008 */ sw $t6, 0x8($t7)
    /* 8004D834 8F39246C */ lw $t9, %lo(D_8007246C)($t9)
    /* 8004D838 3C088007 */ lui $t0, %hi(D_8007246C)
    /* 8004D83C 00408025 */ move $s0, $v0
    /* 8004D840 A7380000 */ sh $t8, 0x0($t9)
    /* 8004D844 8D08246C */ lw $t0, %lo(D_8007246C)($t0)
    /* 8004D848 02002025 */ move $a0, $s0
    /* 8004D84C 8D090008 */ lw $t1, 0x8($t0)
    /* 8004D850 8D2A0004 */ lw $t2, 0x4($t1)
    /* 8004D854 0C00FF42 */ jal func_8003FD08
    /* 8004D858 AD0A000C */ sw $t2, 0xC($t0)
    /* 8004D85C 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004D860 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004D864 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8004D868 03E00008 */ jr $ra
    /* 8004D86C 00000000 */ nop
    /* 8004D870 00000000 */ nop
    /* 8004D874 00000000 */ nop
