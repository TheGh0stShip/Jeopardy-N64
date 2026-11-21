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
glabel func_80044250
    /* 80044250 27BDFFA8 */ addiu $sp, $sp, -0x58
    /* 80044254 AFBF0014 */ sw $ra, 0x14($sp)
    /* 80044258 AFA40058 */ sw $a0, 0x58($sp)
    /* 8004425C 0C011072 */ jal guMtxIdentF
    /* 80044260 27A40018 */ addiu $a0, $sp, 0x18
    /* 80044264 27A40018 */ addiu $a0, $sp, 0x18
    /* 80044268 0C011032 */ jal guMtxF2L
    /* 8004426C 8FA50058 */ lw $a1, 0x58($sp)
    /* 80044270 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80044274 27BD0058 */ addiu $sp, $sp, 0x58
    /* 80044278 03E00008 */ jr $ra
    /* 8004427C 00000000 */ nop
