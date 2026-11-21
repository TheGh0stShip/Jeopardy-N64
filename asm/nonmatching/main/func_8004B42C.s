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
glabel func_8004B42C
    /* 8004B42C 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8004B430 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004B434 8E0E0004 */ lw $t6, 0x4($s0)
    /* 8004B438 24060001 */ addiu $a2, $zero, 0x1
    /* 8004B43C 00001025 */ move $v0, $zero
    /* 8004B440 31CF0003 */ andi $t7, $t6, 0x3
    /* 8004B444 15E00019 */ bnez $t7, .L8004B4AC
    /* 8004B448 00000000 */ nop
    /* 8004B44C 8E040050 */ lw $a0, 0x50($s0)
    /* 8004B450 0C010516 */ jal osSendMesg
    /* 8004B454 8E050054 */ lw $a1, 0x54($s0)
    /* 8004B458 8E180010 */ lw $t8, 0x10($s0)
    /* 8004B45C 24010001 */ addiu $at, $zero, 0x1
    /* 8004B460 17010010 */ bne $t8, $at, .L8004B4A4
    /* 8004B464 00000000 */ nop
    /* 8004B468 8E020008 */ lw $v0, 0x8($s0)
    /* 8004B46C 30590040 */ andi $t9, $v0, 0x40
    /* 8004B470 1320000C */ beqz $t9, .L8004B4A4
    /* 8004B474 304E0020 */ andi $t6, $v0, 0x20
    /* 8004B478 11C0000A */ beqz $t6, .L8004B4A4
    /* 8004B47C 3C0F8007 */ lui $t7, %hi(D_80072400)
    /* 8004B480 8DEF2400 */ lw $t7, %lo(D_80072400)($t7)
    /* 8004B484 11E00005 */ beqz $t7, .L8004B49C
    /* 8004B488 00000000 */ nop
    /* 8004B48C 0C01314A */ jal osViBlack
    /* 8004B490 00002025 */ move $a0, $zero
    /* 8004B494 3C018007 */ lui $at, %hi(D_80072400)
    /* 8004B498 AC202400 */ sw $zero, %lo(D_80072400)($at)
.L8004B49C:
    /* 8004B49C 0C01368E */ jal osViSwapBuffer
    /* 8004B4A0 8E04000C */ lw $a0, 0xC($s0)
.L8004B4A4:
    /* 8004B4A4 10000001 */ b .L8004B4AC
    /* 8004B4A8 24020001 */ addiu $v0, $zero, 0x1
.L8004B4AC:
    /* 8004B4AC 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004B4B0 27BD0018 */ addiu $sp, $sp, 0x18
    /* 8004B4B4 03E00008 */ jr $ra
    /* 8004B4B8 00000000 */ nop
