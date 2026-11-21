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
glabel func_80049488
    /* 80049488 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8004948C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80049490 0C012542 */ jal memcpy
    /* 80049494 AFA60020 */ sw $a2, 0x20($sp)
    /* 80049498 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004949C 8FAE0020 */ lw $t6, 0x20($sp)
    /* 800494A0 27BD0018 */ addiu $sp, $sp, 0x18
    /* 800494A4 03E00008 */ jr $ra
    /* 800494A8 004E1021 */ addu $v0, $v0, $t6
