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
glabel func_80040DDC
    /* 80040DDC 3C0E800D */ lui $t6, %hi(D_800D1EA4)
    /* 80040DE0 8DCE1EA4 */ lw $t6, %lo(D_800D1EA4)($t6)
    /* 80040DE4 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 80040DE8 AFBF0014 */ sw $ra, 0x14($sp)
    /* 80040DEC 25CF0014 */ addiu $t7, $t6, 0x14
    /* 80040DF0 AFAF001C */ sw $t7, 0x1C($sp)
    /* 80040DF4 3C18A460 */ lui $t8, %hi(D_A4600010)
    /* 80040DF8 8F190010 */ lw $t9, %lo(D_A4600010)($t8)
    /* 80040DFC AFB90018 */ sw $t9, 0x18($sp)
    /* 80040E00 8FA80018 */ lw $t0, 0x18($sp)
    /* 80040E04 31090003 */ andi $t1, $t0, 0x3
    /* 80040E08 11200008 */ beqz $t1, .L80040E2C
    /* 80040E0C 00000000 */ nop
.L80040E10:
    /* 80040E10 3C0AA460 */ lui $t2, %hi(D_A4600010)
    /* 80040E14 8D4B0010 */ lw $t3, %lo(D_A4600010)($t2)
    /* 80040E18 AFAB0018 */ sw $t3, 0x18($sp)
    /* 80040E1C 8FAC0018 */ lw $t4, 0x18($sp)
    /* 80040E20 318D0003 */ andi $t5, $t4, 0x3
    /* 80040E24 15A0FFFA */ bnez $t5, .L80040E10
    /* 80040E28 00000000 */ nop
.L80040E2C:
    /* 80040E2C 8FAE001C */ lw $t6, 0x1C($sp)
    /* 80040E30 3C011000 */ lui $at, 0x1000
    /* 80040E34 3C19A500 */ lui $t9, %hi(D_A5000510)
    /* 80040E38 8DCF0010 */ lw $t7, 0x10($t6)
    /* 80040E3C 3C08A460 */ lui $t0, %hi(D_A4600010)
    /* 80040E40 01E1C025 */ or $t8, $t7, $at
    /* 80040E44 AF380510 */ sw $t8, %lo(D_A5000510)($t9)
    /* 80040E48 8D090010 */ lw $t1, %lo(D_A4600010)($t0)
    /* 80040E4C AFA90018 */ sw $t1, 0x18($sp)
    /* 80040E50 8FAA0018 */ lw $t2, 0x18($sp)
    /* 80040E54 314B0003 */ andi $t3, $t2, 0x3
    /* 80040E58 11600008 */ beqz $t3, .L80040E7C
    /* 80040E5C 00000000 */ nop
.L80040E60:
    /* 80040E60 3C0CA460 */ lui $t4, %hi(D_A4600010)
    /* 80040E64 8D8D0010 */ lw $t5, %lo(D_A4600010)($t4)
    /* 80040E68 AFAD0018 */ sw $t5, 0x18($sp)
    /* 80040E6C 8FAE0018 */ lw $t6, 0x18($sp)
    /* 80040E70 31CF0003 */ andi $t7, $t6, 0x3
    /* 80040E74 15E0FFFA */ bnez $t7, .L80040E60
    /* 80040E78 00000000 */ nop
.L80040E7C:
    /* 80040E7C 8FB8001C */ lw $t8, 0x1C($sp)
    /* 80040E80 3C08A500 */ lui $t0, %hi(D_A5000510)
    /* 80040E84 8F190010 */ lw $t9, 0x10($t8)
    /* 80040E88 0C0103B1 */ jal func_80040EC4
    /* 80040E8C AD190510 */ sw $t9, %lo(D_A5000510)($t0)
    /* 80040E90 24090002 */ addiu $t1, $zero, 0x2
    /* 80040E94 3C0AA460 */ lui $t2, %hi(D_A4600010)
    /* 80040E98 AD490010 */ sw $t1, %lo(D_A4600010)($t2)
    /* 80040E9C 3C0B8007 */ lui $t3, %hi(D_80072348)
    /* 80040EA0 8D6B2348 */ lw $t3, %lo(D_80072348)($t3)
    /* 80040EA4 3C010010 */ lui $at, 0x10
    /* 80040EA8 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80040EAC 34210401 */ ori $at, $at, 0x401
    /* 80040EB0 01616025 */ or $t4, $t3, $at
    /* 80040EB4 3C018007 */ lui $at, %hi(D_80072348)
    /* 80040EB8 AC2C2348 */ sw $t4, %lo(D_80072348)($at)
    /* 80040EBC 03E00008 */ jr $ra
    /* 80040EC0 27BD0020 */ addiu $sp, $sp, 0x20
