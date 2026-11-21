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
glabel func_80048D84
    /* 80048D84 27BDFFF0 */ addiu $sp, $sp, -0x10
    /* 80048D88 3C0E800D */ lui $t6, %hi(D_800D3160)
    /* 80048D8C 25CE3160 */ addiu $t6, $t6, %lo(D_800D3160)
    /* 80048D90 AFAE000C */ sw $t6, 0xC($sp)
    /* 80048D94 AFA00000 */ sw $zero, 0x0($sp)
.L80048D98:
    /* 80048D98 8FAF0000 */ lw $t7, 0x0($sp)
    /* 80048D9C 8FB90000 */ lw $t9, 0x0($sp)
    /* 80048DA0 3C01800D */ lui $at, %hi(D_800D3160)
    /* 80048DA4 000FC080 */ sll $t8, $t7, 2
    /* 80048DA8 00380821 */ addu $at, $at, $t8
    /* 80048DAC AC203160 */ sw $zero, %lo(D_800D3160)($at)
    /* 80048DB0 27280001 */ addiu $t0, $t9, 0x1
    /* 80048DB4 29010010 */ slti $at, $t0, 0x10
    /* 80048DB8 1420FFF7 */ bnez $at, .L80048D98
    /* 80048DBC AFA80000 */ sw $t0, 0x0($sp)
    /* 80048DC0 3C19800D */ lui $t9, %hi(D_800D31A1)
    /* 80048DC4 933931A1 */ lbu $t9, %lo(D_800D31A1)($t9)
    /* 80048DC8 24090001 */ addiu $t1, $zero, 0x1
    /* 80048DCC 3C01800D */ lui $at, %hi(D_800D319C)
    /* 80048DD0 240A00FF */ addiu $t2, $zero, 0xFF
    /* 80048DD4 240B0001 */ addiu $t3, $zero, 0x1
    /* 80048DD8 240C0004 */ addiu $t4, $zero, 0x4
    /* 80048DDC 240D0001 */ addiu $t5, $zero, 0x1
    /* 80048DE0 340EFFFF */ ori $t6, $zero, 0xFFFF
    /* 80048DE4 240FFFFF */ addiu $t7, $zero, -0x1
    /* 80048DE8 2418FFFF */ addiu $t8, $zero, -0x1
    /* 80048DEC AC29319C */ sw $t1, %lo(D_800D319C)($at)
    /* 80048DF0 A3AA0004 */ sb $t2, 0x4($sp)
    /* 80048DF4 A3AB0005 */ sb $t3, 0x5($sp)
    /* 80048DF8 A3AC0006 */ sb $t4, 0x6($sp)
    /* 80048DFC A3AD0007 */ sb $t5, 0x7($sp)
    /* 80048E00 A7AE0008 */ sh $t6, 0x8($sp)
    /* 80048E04 A3AF000A */ sb $t7, 0xA($sp)
    /* 80048E08 A3B8000B */ sb $t8, 0xB($sp)
    /* 80048E0C 1B200013 */ blez $t9, .L80048E5C
    /* 80048E10 AFA00000 */ sw $zero, 0x0($sp)
.L80048E14:
    /* 80048E14 27A90004 */ addiu $t1, $sp, 0x4
    /* 80048E18 8D210000 */ lw $at, 0x0($t1)
    /* 80048E1C 8FA8000C */ lw $t0, 0xC($sp)
    /* 80048E20 3C18800D */ lui $t8, %hi(D_800D31A1)
    /* 80048E24 A9010000 */ swl $at, 0x0($t0)
    /* 80048E28 B9010003 */ swr $at, 0x3($t0)
    /* 80048E2C 8D2B0004 */ lw $t3, 0x4($t1)
    /* 80048E30 A90B0004 */ swl $t3, 0x4($t0)
    /* 80048E34 B90B0007 */ swr $t3, 0x7($t0)
    /* 80048E38 8FAE0000 */ lw $t6, 0x0($sp)
    /* 80048E3C 931831A1 */ lbu $t8, %lo(D_800D31A1)($t8)
    /* 80048E40 8FAC000C */ lw $t4, 0xC($sp)
    /* 80048E44 25CF0001 */ addiu $t7, $t6, 0x1
    /* 80048E48 01F8082A */ slt $at, $t7, $t8
    /* 80048E4C 258D0008 */ addiu $t5, $t4, 0x8
    /* 80048E50 AFAF0000 */ sw $t7, 0x0($sp)
    /* 80048E54 1420FFEF */ bnez $at, .L80048E14
    /* 80048E58 AFAD000C */ sw $t5, 0xC($sp)
.L80048E5C:
    /* 80048E5C 8FAA000C */ lw $t2, 0xC($sp)
    /* 80048E60 241900FE */ addiu $t9, $zero, 0xFE
    /* 80048E64 27BD0010 */ addiu $sp, $sp, 0x10
    /* 80048E68 03E00008 */ jr $ra
    /* 80048E6C A1590000 */ sb $t9, 0x0($t2)
    /* 80048E70 00000000 */ nop
    /* 80048E74 00000000 */ nop
