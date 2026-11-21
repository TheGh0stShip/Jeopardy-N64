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
glabel func_8003CD08
    /* 8003CD08 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003CD0C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003CD10 AFA50034 */ sw $a1, 0x34($sp)
    /* 8003CD14 8C820040 */ lw $v0, 0x40($a0)
    /* 8003CD18 00A04025 */ move $t0, $a1
    /* 8003CD1C 240E0002 */ addiu $t6, $zero, 0x2
    /* 8003CD20 A7AE0020 */ sh $t6, 0x20($sp)
    /* 8003CD24 A3A80028 */ sb $t0, 0x28($sp)
    /* 8003CD28 8C8F003C */ lw $t7, 0x3C($a0)
    /* 8003CD2C 27A50020 */ addiu $a1, $sp, 0x20
    /* 8003CD30 24840014 */ addiu $a0, $a0, 0x14
    /* 8003CD34 000FC080 */ sll $t8, $t7, 2
    /* 8003CD38 030FC023 */ subu $t8, $t8, $t7
    /* 8003CD3C 0018C100 */ sll $t8, $t8, 4
    /* 8003CD40 0302C821 */ addu $t9, $t8, $v0
    /* 8003CD44 AFB90024 */ sw $t9, 0x24($sp)
    /* 8003CD48 0C010A21 */ jal alEvtqPostEvent
    /* 8003CD4C 00003025 */ move $a2, $zero
    /* 8003CD50 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003CD54 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003CD58 03E00008 */ jr $ra
    /* 8003CD5C 00000000 */ nop
    /* 8003CD60 00000000 */ nop
    /* 8003CD64 00000000 */ nop
