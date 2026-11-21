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
glabel func_80047DD8
    /* 80047DD8 27BDFFC8 */ addiu $sp, $sp, -0x38
    /* 80047DDC AFBF001C */ sw $ra, 0x1C($sp)
    /* 80047DE0 240E0001 */ addiu $t6, $zero, 0x1
    /* 80047DE4 3C01800D */ lui $at, %hi(D_800D3130)
    /* 80047DE8 AFB00018 */ sw $s0, 0x18($sp)
    /* 80047DEC AFA00030 */ sw $zero, 0x30($sp)
    /* 80047DF0 0C0120D2 */ jal func_80048348
    /* 80047DF4 AC2E3130 */ sw $t6, %lo(D_800D3130)($at)
    /* 80047DF8 00408025 */ move $s0, $v0
    /* 80047DFC 3C012000 */ lui $at, 0x2000
    /* 80047E00 0C01201E */ jal func_80048078
    /* 80047E04 02012025 */ or $a0, $s0, $at
    /* 80047E08 3C040100 */ lui $a0, 0x100
    /* 80047E0C 0C01201A */ jal func_80048068
    /* 80047E10 34840800 */ ori $a0, $a0, 0x800
    /* 80047E14 3C041FC0 */ lui $a0, 0x1FC0
    /* 80047E18 348407FC */ ori $a0, $a0, 0x7FC
    /* 80047E1C 0C0134E6 */ jal __osSiRawReadIo
    /* 80047E20 27A50034 */ addiu $a1, $sp, 0x34
    /* 80047E24 10400007 */ beqz $v0, .L80047E44
    /* 80047E28 00000000 */ nop
.L80047E2C:
    /* 80047E2C 3C041FC0 */ lui $a0, 0x1FC0
    /* 80047E30 348407FC */ ori $a0, $a0, 0x7FC
    /* 80047E34 0C0134E6 */ jal __osSiRawReadIo
    /* 80047E38 27A50034 */ addiu $a1, $sp, 0x34
    /* 80047E3C 1440FFFB */ bnez $v0, .L80047E2C
    /* 80047E40 00000000 */ nop
.L80047E44:
    /* 80047E44 8FA50034 */ lw $a1, 0x34($sp)
    /* 80047E48 3C041FC0 */ lui $a0, 0x1FC0
    /* 80047E4C 348407FC */ ori $a0, $a0, 0x7FC
    /* 80047E50 34AF0008 */ ori $t7, $a1, 0x8
    /* 80047E54 0C0134FA */ jal __osSiRawWriteIo
    /* 80047E58 01E02825 */ move $a1, $t7
    /* 80047E5C 10400009 */ beqz $v0, .L80047E84
    /* 80047E60 00000000 */ nop
.L80047E64:
    /* 80047E64 8FA50034 */ lw $a1, 0x34($sp)
    /* 80047E68 3C041FC0 */ lui $a0, 0x1FC0
    /* 80047E6C 348407FC */ ori $a0, $a0, 0x7FC
    /* 80047E70 34B80008 */ ori $t8, $a1, 0x8
    /* 80047E74 0C0134FA */ jal __osSiRawWriteIo
    /* 80047E78 03002825 */ move $a1, $t8
    /* 80047E7C 1440FFF9 */ bnez $v0, .L80047E64
    /* 80047E80 00000000 */ nop
.L80047E84:
    /* 80047E84 3C088004 */ lui $t0, %hi(func_8003FE28)
    /* 80047E88 2508FE28 */ addiu $t0, $t0, %lo(func_8003FE28)
    /* 80047E8C 8D010000 */ lw $at, 0x0($t0)
    /* 80047E90 3C198000 */ lui $t9, %hi(D_80000000)
    /* 80047E94 3C0D8004 */ lui $t5, %hi(func_8003FE28)
    /* 80047E98 AF210000 */ sw $at, %lo(D_80000000)($t9)
    /* 80047E9C 8D0B0004 */ lw $t3, 0x4($t0)
    /* 80047EA0 25ADFE28 */ addiu $t5, $t5, %lo(func_8003FE28)
    /* 80047EA4 3C0C8000 */ lui $t4, 0x8000
    /* 80047EA8 AF2B0004 */ sw $t3, %lo(D_80000004)($t9)
    /* 80047EAC 8D010008 */ lw $at, 0x8($t0)
    /* 80047EB0 358C0080 */ ori $t4, $t4, 0x80
    /* 80047EB4 3C098004 */ lui $t1, %hi(func_8003FE28)
    /* 80047EB8 AF210008 */ sw $at, %lo(D_80000008)($t9)
    /* 80047EBC 8D0B000C */ lw $t3, 0xC($t0)
    /* 80047EC0 2529FE28 */ addiu $t1, $t1, %lo(func_8003FE28)
    /* 80047EC4 3C0A8000 */ lui $t2, 0x8000
    /* 80047EC8 AF2B000C */ sw $t3, %lo(D_8000000C)($t9)
    /* 80047ECC 8DA10000 */ lw $at, 0x0($t5)
    /* 80047ED0 354A0100 */ ori $t2, $t2, 0x100
    /* 80047ED4 3C0E8004 */ lui $t6, %hi(func_8003FE28)
    /* 80047ED8 AD810000 */ sw $at, 0x0($t4)
    /* 80047EDC 8DB80004 */ lw $t8, 0x4($t5)
    /* 80047EE0 25CEFE28 */ addiu $t6, $t6, %lo(func_8003FE28)
    /* 80047EE4 3C0F8000 */ lui $t7, 0x8000
    /* 80047EE8 AD980004 */ sw $t8, 0x4($t4)
    /* 80047EEC 8DA10008 */ lw $at, 0x8($t5)
    /* 80047EF0 35EF0180 */ ori $t7, $t7, 0x180
    /* 80047EF4 3C048000 */ lui $a0, 0x8000
    /* 80047EF8 AD810008 */ sw $at, 0x8($t4)
    /* 80047EFC 8DB8000C */ lw $t8, 0xC($t5)
    /* 80047F00 24050190 */ addiu $a1, $zero, 0x190
    /* 80047F04 AD98000C */ sw $t8, 0xC($t4)
    /* 80047F08 8D210000 */ lw $at, 0x0($t1)
    /* 80047F0C AD410000 */ sw $at, 0x0($t2)
    /* 80047F10 8D2B0004 */ lw $t3, 0x4($t1)
    /* 80047F14 AD4B0004 */ sw $t3, 0x4($t2)
    /* 80047F18 8D210008 */ lw $at, 0x8($t1)
    /* 80047F1C AD410008 */ sw $at, 0x8($t2)
    /* 80047F20 8D2B000C */ lw $t3, 0xC($t1)
    /* 80047F24 AD4B000C */ sw $t3, 0xC($t2)
    /* 80047F28 8DC10000 */ lw $at, 0x0($t6)
    /* 80047F2C ADE10000 */ sw $at, 0x0($t7)
    /* 80047F30 8DD80004 */ lw $t8, 0x4($t6)
    /* 80047F34 ADF80004 */ sw $t8, 0x4($t7)
    /* 80047F38 8DC10008 */ lw $at, 0x8($t6)
    /* 80047F3C ADE10008 */ sw $at, 0x8($t7)
    /* 80047F40 8DD8000C */ lw $t8, 0xC($t6)
    /* 80047F44 0C0120D6 */ jal osWritebackDCache
    /* 80047F48 ADF8000C */ sw $t8, 0xC($t7)
    /* 80047F4C 3C048000 */ lui $a0, 0x8000
    /* 80047F50 0C00FF1A */ jal osInvalICache
    /* 80047F54 24050190 */ addiu $a1, $zero, 0x190
    /* 80047F58 0C0120F6 */ jal osMapTLBRdb
    /* 80047F5C 00000000 */ nop
    /* 80047F60 24040004 */ addiu $a0, $zero, 0x4
    /* 80047F64 0C010496 */ jal osPiRawReadIo
    /* 80047F68 27A50030 */ addiu $a1, $sp, 0x30
    /* 80047F6C 8FA80030 */ lw $t0, 0x30($sp)
    /* 80047F70 2401FFF0 */ addiu $at, $zero, -0x10
    /* 80047F74 0101C824 */ and $t9, $t0, $at
    /* 80047F78 13200006 */ beqz $t9, .L80047F94
    /* 80047F7C AFB90030 */ sw $t9, 0x30($sp)
    /* 80047F80 3C018007 */ lui $at, %hi(D_80072338)
    /* 80047F84 03205825 */ move $t3, $t9
    /* 80047F88 240A0000 */ addiu $t2, $zero, 0x0
    /* 80047F8C AC2A2338 */ sw $t2, %lo(D_80072338)($at)
    /* 80047F90 AC2B233C */ sw $t3, %lo(D_8007233C)($at)
.L80047F94:
    /* 80047F94 3C048007 */ lui $a0, %hi(D_80072338)
    /* 80047F98 3C058007 */ lui $a1, %hi(D_8007233C)
    /* 80047F9C 8CA5233C */ lw $a1, %lo(D_8007233C)($a1)
    /* 80047FA0 8C842338 */ lw $a0, %lo(D_80072338)($a0)
    /* 80047FA4 24060000 */ addiu $a2, $zero, 0x0
    /* 80047FA8 0C01207C */ jal __ll_mul
    /* 80047FAC 24070003 */ addiu $a3, $zero, 0x3
    /* 80047FB0 AFA20020 */ sw $v0, 0x20($sp)
    /* 80047FB4 AFA30024 */ sw $v1, 0x24($sp)
    /* 80047FB8 8FA50024 */ lw $a1, 0x24($sp)
    /* 80047FBC 8FA40020 */ lw $a0, 0x20($sp)
    /* 80047FC0 24060000 */ addiu $a2, $zero, 0x0
    /* 80047FC4 0C01203C */ jal __ull_div
    /* 80047FC8 24070004 */ addiu $a3, $zero, 0x4
    /* 80047FCC 3C098000 */ lui $t1, %hi(D_8000030C)
    /* 80047FD0 8D29030C */ lw $t1, %lo(D_8000030C)($t1)
    /* 80047FD4 3C018007 */ lui $at, %hi(D_80072338)
    /* 80047FD8 AC222338 */ sw $v0, %lo(D_80072338)($at)
    /* 80047FDC 15200005 */ bnez $t1, .L80047FF4
    /* 80047FE0 AC23233C */ sw $v1, %lo(D_8007233C)($at)
    /* 80047FE4 3C048000 */ lui $a0, %hi(D_8000031C)
    /* 80047FE8 2484031C */ addiu $a0, $a0, %lo(D_8000031C)
    /* 80047FEC 0C00F126 */ jal bzero
    /* 80047FF0 24050040 */ addiu $a1, $zero, 0x40
.L80047FF4:
    /* 80047FF4 3C0D8000 */ lui $t5, %hi(D_80000300)
    /* 80047FF8 8DAD0300 */ lw $t5, %lo(D_80000300)($t5)
    /* 80047FFC 15A00006 */ bnez $t5, .L80048018
    /* 80048000 00000000 */ nop
    /* 80048004 3C0C02F5 */ lui $t4, 0x2F5
    /* 80048008 358CB2D2 */ ori $t4, $t4, 0xB2D2
    /* 8004800C 3C018007 */ lui $at, %hi(D_80072340)
    /* 80048010 1000000F */ b .L80048050
    /* 80048014 AC2C2340 */ sw $t4, %lo(D_80072340)($at)
.L80048018:
    /* 80048018 3C0F8000 */ lui $t7, %hi(D_80000300)
    /* 8004801C 8DEF0300 */ lw $t7, %lo(D_80000300)($t7)
    /* 80048020 24010002 */ addiu $at, $zero, 0x2
    /* 80048024 15E10006 */ bne $t7, $at, .L80048040
    /* 80048028 00000000 */ nop
    /* 8004802C 3C0E02E6 */ lui $t6, 0x2E6
    /* 80048030 35CE025C */ ori $t6, $t6, 0x25C
    /* 80048034 3C018007 */ lui $at, %hi(D_80072340)
    /* 80048038 10000005 */ b .L80048050
    /* 8004803C AC2E2340 */ sw $t6, %lo(D_80072340)($at)
.L80048040:
    /* 80048040 3C1802E6 */ lui $t8, 0x2E6
    /* 80048044 3718D354 */ ori $t8, $t8, 0xD354
    /* 80048048 3C018007 */ lui $at, %hi(D_80072340)
    /* 8004804C AC382340 */ sw $t8, %lo(D_80072340)($at)
.L80048050:
    /* 80048050 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80048054 8FB00018 */ lw $s0, 0x18($sp)
    /* 80048058 27BD0038 */ addiu $sp, $sp, 0x38
    /* 8004805C 03E00008 */ jr $ra
    /* 80048060 00000000 */ nop
    /* 80048064 00000000 */ nop
