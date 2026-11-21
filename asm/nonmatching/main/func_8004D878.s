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
glabel func_8004D878
    /* 8004D878 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004D87C AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004D880 AFA40028 */ sw $a0, 0x28($sp)
    /* 8004D884 0C00FF3A */ jal __osDisableInt
    /* 8004D888 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004D88C 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8004D890 00408025 */ move $s0, $v0
    /* 8004D894 31CF0001 */ andi $t7, $t6, 0x1
    /* 8004D898 11E00006 */ beqz $t7, .L8004D8B4
    /* 8004D89C 00000000 */ nop
    /* 8004D8A0 3C188007 */ lui $t8, %hi(D_8007246C)
    /* 8004D8A4 8F18246C */ lw $t8, %lo(D_8007246C)($t8)
    /* 8004D8A8 8F19000C */ lw $t9, 0xC($t8)
    /* 8004D8AC 37280008 */ ori $t0, $t9, 0x8
    /* 8004D8B0 AF08000C */ sw $t0, 0xC($t8)
.L8004D8B4:
    /* 8004D8B4 8FA90028 */ lw $t1, 0x28($sp)
    /* 8004D8B8 312A0002 */ andi $t2, $t1, 0x2
    /* 8004D8BC 11400007 */ beqz $t2, .L8004D8DC
    /* 8004D8C0 00000000 */ nop
    /* 8004D8C4 3C0B8007 */ lui $t3, %hi(D_8007246C)
    /* 8004D8C8 8D6B246C */ lw $t3, %lo(D_8007246C)($t3)
    /* 8004D8CC 2401FFF7 */ addiu $at, $zero, -0x9
    /* 8004D8D0 8D6C000C */ lw $t4, 0xC($t3)
    /* 8004D8D4 01816824 */ and $t5, $t4, $at
    /* 8004D8D8 AD6D000C */ sw $t5, 0xC($t3)
.L8004D8DC:
    /* 8004D8DC 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8004D8E0 31CF0004 */ andi $t7, $t6, 0x4
    /* 8004D8E4 11E00006 */ beqz $t7, .L8004D900
    /* 8004D8E8 00000000 */ nop
    /* 8004D8EC 3C198007 */ lui $t9, %hi(D_8007246C)
    /* 8004D8F0 8F39246C */ lw $t9, %lo(D_8007246C)($t9)
    /* 8004D8F4 8F28000C */ lw $t0, 0xC($t9)
    /* 8004D8F8 35180004 */ ori $t8, $t0, 0x4
    /* 8004D8FC AF38000C */ sw $t8, 0xC($t9)
.L8004D900:
    /* 8004D900 8FA90028 */ lw $t1, 0x28($sp)
    /* 8004D904 312A0008 */ andi $t2, $t1, 0x8
    /* 8004D908 11400007 */ beqz $t2, .L8004D928
    /* 8004D90C 00000000 */ nop
    /* 8004D910 3C0C8007 */ lui $t4, %hi(D_8007246C)
    /* 8004D914 8D8C246C */ lw $t4, %lo(D_8007246C)($t4)
    /* 8004D918 2401FFFB */ addiu $at, $zero, -0x5
    /* 8004D91C 8D8D000C */ lw $t5, 0xC($t4)
    /* 8004D920 01A15824 */ and $t3, $t5, $at
    /* 8004D924 AD8B000C */ sw $t3, 0xC($t4)
.L8004D928:
    /* 8004D928 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8004D92C 31CF0010 */ andi $t7, $t6, 0x10
    /* 8004D930 11E00006 */ beqz $t7, .L8004D94C
    /* 8004D934 00000000 */ nop
    /* 8004D938 3C088007 */ lui $t0, %hi(D_8007246C)
    /* 8004D93C 8D08246C */ lw $t0, %lo(D_8007246C)($t0)
    /* 8004D940 8D18000C */ lw $t8, 0xC($t0)
    /* 8004D944 37190010 */ ori $t9, $t8, 0x10
    /* 8004D948 AD19000C */ sw $t9, 0xC($t0)
.L8004D94C:
    /* 8004D94C 8FA90028 */ lw $t1, 0x28($sp)
    /* 8004D950 312A0020 */ andi $t2, $t1, 0x20
    /* 8004D954 11400007 */ beqz $t2, .L8004D974
    /* 8004D958 00000000 */ nop
    /* 8004D95C 3C0D8007 */ lui $t5, %hi(D_8007246C)
    /* 8004D960 8DAD246C */ lw $t5, %lo(D_8007246C)($t5)
    /* 8004D964 2401FFEF */ addiu $at, $zero, -0x11
    /* 8004D968 8DAB000C */ lw $t3, 0xC($t5)
    /* 8004D96C 01616024 */ and $t4, $t3, $at
    /* 8004D970 ADAC000C */ sw $t4, 0xC($t5)
.L8004D974:
    /* 8004D974 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8004D978 31CF0040 */ andi $t7, $t6, 0x40
    /* 8004D97C 11E0000D */ beqz $t7, .L8004D9B4
    /* 8004D980 00000000 */ nop
    /* 8004D984 3C188007 */ lui $t8, %hi(D_8007246C)
    /* 8004D988 8F18246C */ lw $t8, %lo(D_8007246C)($t8)
    /* 8004D98C 3C010001 */ lui $at, 0x1
    /* 8004D990 3C098007 */ lui $t1, %hi(D_8007246C)
    /* 8004D994 8F19000C */ lw $t9, 0xC($t8)
    /* 8004D998 03214025 */ or $t0, $t9, $at
    /* 8004D99C AF08000C */ sw $t0, 0xC($t8)
    /* 8004D9A0 8D29246C */ lw $t1, %lo(D_8007246C)($t1)
    /* 8004D9A4 2401FCFF */ addiu $at, $zero, -0x301
    /* 8004D9A8 8D2A000C */ lw $t2, 0xC($t1)
    /* 8004D9AC 01415824 */ and $t3, $t2, $at
    /* 8004D9B0 AD2B000C */ sw $t3, 0xC($t1)
.L8004D9B4:
    /* 8004D9B4 8FAC0028 */ lw $t4, 0x28($sp)
    /* 8004D9B8 318D0080 */ andi $t5, $t4, 0x80
    /* 8004D9BC 11A00010 */ beqz $t5, .L8004DA00
    /* 8004D9C0 00000000 */ nop
    /* 8004D9C4 3C0E8007 */ lui $t6, %hi(D_8007246C)
    /* 8004D9C8 8DCE246C */ lw $t6, %lo(D_8007246C)($t6)
    /* 8004D9CC 3C01FFFE */ lui $at, 0xFFFE
    /* 8004D9D0 3421FFFF */ ori $at, $at, 0xFFFF
    /* 8004D9D4 8DCF000C */ lw $t7, 0xC($t6)
    /* 8004D9D8 3C088007 */ lui $t0, %hi(D_8007246C)
    /* 8004D9DC 01E1C824 */ and $t9, $t7, $at
    /* 8004D9E0 ADD9000C */ sw $t9, 0xC($t6)
    /* 8004D9E4 8D08246C */ lw $t0, %lo(D_8007246C)($t0)
    /* 8004D9E8 8D0A0008 */ lw $t2, 0x8($t0)
    /* 8004D9EC 8D18000C */ lw $t8, 0xC($t0)
    /* 8004D9F0 8D4B0004 */ lw $t3, 0x4($t2)
    /* 8004D9F4 31690300 */ andi $t1, $t3, 0x300
    /* 8004D9F8 03096025 */ or $t4, $t8, $t1
    /* 8004D9FC AD0C000C */ sw $t4, 0xC($t0)
.L8004DA00:
    /* 8004DA00 3C0D8007 */ lui $t5, %hi(D_8007246C)
    /* 8004DA04 8DAD246C */ lw $t5, %lo(D_8007246C)($t5)
    /* 8004DA08 02002025 */ move $a0, $s0
    /* 8004DA0C 95AF0000 */ lhu $t7, 0x0($t5)
    /* 8004DA10 35F90008 */ ori $t9, $t7, 0x8
    /* 8004DA14 0C00FF42 */ jal func_8003FD08
    /* 8004DA18 A5B90000 */ sh $t9, 0x0($t5)
    /* 8004DA1C 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004DA20 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004DA24 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8004DA28 03E00008 */ jr $ra
    /* 8004DA2C 00000000 */ nop
    /* 8004DA30 00000000 */ nop
    /* 8004DA34 00000000 */ nop
