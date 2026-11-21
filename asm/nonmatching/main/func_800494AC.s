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
glabel func_800494AC
    /* 800494AC 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 800494B0 AFA40020 */ sw $a0, 0x20($sp)
    /* 800494B4 AFBF0014 */ sw $ra, 0x14($sp)
    /* 800494B8 AFA50024 */ sw $a1, 0x24($sp)
    /* 800494BC AFA60028 */ sw $a2, 0x28($sp)
    /* 800494C0 AFA7002C */ sw $a3, 0x2C($sp)
    /* 800494C4 3C048005 */ lui $a0, %hi(func_80049488)
    /* 800494C8 24849488 */ addiu $a0, $a0, %lo(func_80049488)
    /* 800494CC 27A70028 */ addiu $a3, $sp, 0x28
    /* 800494D0 8FA60024 */ lw $a2, 0x24($sp)
    /* 800494D4 0C012706 */ jal _Printf
    /* 800494D8 8FA50020 */ lw $a1, 0x20($sp)
    /* 800494DC 04400004 */ bltz $v0, .L800494F0
    /* 800494E0 00401825 */ move $v1, $v0
    /* 800494E4 8FAE0020 */ lw $t6, 0x20($sp)
    /* 800494E8 01C27821 */ addu $t7, $t6, $v0
    /* 800494EC A1E00000 */ sb $zero, 0x0($t7)
.L800494F0:
    /* 800494F0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800494F4 27BD0020 */ addiu $sp, $sp, 0x20
    /* 800494F8 00601025 */ move $v0, $v1
    /* 800494FC 03E00008 */ jr $ra
    /* 80049500 00000000 */ nop
    /* 80049504 00000000 */ nop
