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
glabel func_8004DA88
    /* 8004DA88 27BDFFB8 */ addiu $sp, $sp, -0x48
    /* 8004DA8C AFB1001C */ sw $s1, 0x1C($sp)
    /* 8004DA90 AFBF0024 */ sw $ra, 0x24($sp)
    /* 8004DA94 AFB20020 */ sw $s2, 0x20($sp)
    /* 8004DA98 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004DA9C AFA00030 */ sw $zero, 0x30($sp)
    /* 8004DAA0 3C118007 */ lui $s1, %hi(D_8007246C)
    /* 8004DAA4 3C0EA440 */ lui $t6, %hi(D_A4400010)
    /* 8004DAA8 8E31246C */ lw $s1, %lo(D_8007246C)($s1)
    /* 8004DAAC 8DCF0010 */ lw $t7, %lo(D_A4400010)($t6)
    /* 8004DAB0 8E300008 */ lw $s0, 0x8($s1)
    /* 8004DAB4 31F80001 */ andi $t8, $t7, 0x1
    /* 8004DAB8 AFB80030 */ sw $t8, 0x30($sp)
    /* 8004DABC 0C010CCE */ jal osVirtualToPhysical
    /* 8004DAC0 8E240004 */ lw $a0, 0x4($s1)
    /* 8004DAC4 8FB90030 */ lw $t9, 0x30($sp)
    /* 8004DAC8 00409025 */ move $s2, $v0
    /* 8004DACC 00194080 */ sll $t0, $t9, 2
    /* 8004DAD0 01194021 */ addu $t0, $t0, $t9
    /* 8004DAD4 00084080 */ sll $t0, $t0, 2
    /* 8004DAD8 02084821 */ addu $t1, $s0, $t0
    /* 8004DADC 8D2A0028 */ lw $t2, 0x28($t1)
    /* 8004DAE0 01525821 */ addu $t3, $t2, $s2
    /* 8004DAE4 AFAB003C */ sw $t3, 0x3C($sp)
    /* 8004DAE8 962C0000 */ lhu $t4, 0x0($s1)
    /* 8004DAEC 318D0002 */ andi $t5, $t4, 0x2
    /* 8004DAF0 11A00008 */ beqz $t5, .L8004DB14
    /* 8004DAF4 00000000 */ nop
    /* 8004DAF8 8E0F0020 */ lw $t7, 0x20($s0)
    /* 8004DAFC 8E2E0020 */ lw $t6, 0x20($s1)
    /* 8004DB00 2401F000 */ addiu $at, $zero, -0x1000
    /* 8004DB04 01E1C024 */ and $t8, $t7, $at
    /* 8004DB08 01D8C825 */ or $t9, $t6, $t8
    /* 8004DB0C 10000003 */ b .L8004DB1C
    /* 8004DB10 AE390020 */ sw $t9, 0x20($s1)
.L8004DB14:
    /* 8004DB14 8E080020 */ lw $t0, 0x20($s0)
    /* 8004DB18 AE280020 */ sw $t0, 0x20($s1)
.L8004DB1C:
    /* 8004DB1C 96290000 */ lhu $t1, 0x0($s1)
    /* 8004DB20 312A0004 */ andi $t2, $t1, 0x4
    /* 8004DB24 11400041 */ beqz $t2, .L8004DC2C
    /* 8004DB28 00000000 */ nop
    /* 8004DB2C 8FAB0030 */ lw $t3, 0x30($sp)
    /* 8004DB30 000B6080 */ sll $t4, $t3, 2
    /* 8004DB34 018B6021 */ addu $t4, $t4, $t3
    /* 8004DB38 000C6080 */ sll $t4, $t4, 2
    /* 8004DB3C 020C6821 */ addu $t5, $s0, $t4
    /* 8004DB40 8DAF002C */ lw $t7, 0x2C($t5)
    /* 8004DB44 31EE0FFF */ andi $t6, $t7, 0xFFF
    /* 8004DB48 448E3000 */ mtc1 $t6, $f6
    /* 8004DB4C AFAE0034 */ sw $t6, 0x34($sp)
    /* 8004DB50 C6240024 */ lwc1 $f4, 0x24($s1)
    /* 8004DB54 05C10005 */ bgez $t6, .L8004DB6C
    /* 8004DB58 46803220 */ cvt.s.w $f8, $f6
    /* 8004DB5C 3C014F80 */ lui $at, 0x4F80
    /* 8004DB60 44815000 */ mtc1 $at, $f10
    /* 8004DB64 00000000 */ nop
    /* 8004DB68 460A4200 */ add.s $f8, $f8, $f10
.L8004DB6C:
    /* 8004DB6C 46082402 */ mul.s $f16, $f4, $f8
    /* 8004DB70 24190001 */ addiu $t9, $zero, 0x1
    /* 8004DB74 4458F800 */ cfc1 $t8, $31 /* FpcCsr */
    /* 8004DB78 44D9F800 */ ctc1 $t9, $31 /* FpcCsr */
    /* 8004DB7C 00000000 */ nop
    /* 8004DB80 460084A4 */ cvt.w.s $f18, $f16
    /* 8004DB84 4459F800 */ cfc1 $t9, $31 /* FpcCsr */
    /* 8004DB88 00000000 */ nop
    /* 8004DB8C 33210004 */ andi $at, $t9, 0x4
    /* 8004DB90 33390078 */ andi $t9, $t9, 0x78
    /* 8004DB94 13200013 */ beqz $t9, .L8004DBE4
    /* 8004DB98 3C014F00 */ lui $at, 0x4F00
    /* 8004DB9C 44819000 */ mtc1 $at, $f18
    /* 8004DBA0 24190001 */ addiu $t9, $zero, 0x1
    /* 8004DBA4 46128481 */ sub.s $f18, $f16, $f18
    /* 8004DBA8 44D9F800 */ ctc1 $t9, $31 /* FpcCsr */
    /* 8004DBAC 00000000 */ nop
    /* 8004DBB0 460094A4 */ cvt.w.s $f18, $f18
    /* 8004DBB4 4459F800 */ cfc1 $t9, $31 /* FpcCsr */
    /* 8004DBB8 00000000 */ nop
    /* 8004DBBC 33210004 */ andi $at, $t9, 0x4
    /* 8004DBC0 33390078 */ andi $t9, $t9, 0x78
    /* 8004DBC4 17200005 */ bnez $t9, .L8004DBDC
    /* 8004DBC8 00000000 */ nop
    /* 8004DBCC 44199000 */ mfc1 $t9, $f18
    /* 8004DBD0 3C018000 */ lui $at, 0x8000
    /* 8004DBD4 10000007 */ b .L8004DBF4
    /* 8004DBD8 0321C825 */ or $t9, $t9, $at
.L8004DBDC:
    /* 8004DBDC 10000005 */ b .L8004DBF4
    /* 8004DBE0 2419FFFF */ addiu $t9, $zero, -0x1
.L8004DBE4:
    /* 8004DBE4 44199000 */ mfc1 $t9, $f18
    /* 8004DBE8 00000000 */ nop
    /* 8004DBEC 0720FFFB */ bltz $t9, .L8004DBDC
    /* 8004DBF0 00000000 */ nop
.L8004DBF4:
    /* 8004DBF4 AE39002C */ sw $t9, 0x2C($s1)
    /* 8004DBF8 8FA90030 */ lw $t1, 0x30($sp)
    /* 8004DBFC 8E28002C */ lw $t0, 0x2C($s1)
    /* 8004DC00 2401F000 */ addiu $at, $zero, -0x1000
    /* 8004DC04 00095080 */ sll $t2, $t1, 2
    /* 8004DC08 01495021 */ addu $t2, $t2, $t1
    /* 8004DC0C 000A5080 */ sll $t2, $t2, 2
    /* 8004DC10 020A5821 */ addu $t3, $s0, $t2
    /* 8004DC14 8D6C002C */ lw $t4, 0x2C($t3)
    /* 8004DC18 44D8F800 */ ctc1 $t8, $31 /* FpcCsr */
    /* 8004DC1C 01816824 */ and $t5, $t4, $at
    /* 8004DC20 010D7825 */ or $t7, $t0, $t5
    /* 8004DC24 10000008 */ b .L8004DC48
    /* 8004DC28 AE2F002C */ sw $t7, 0x2C($s1)
.L8004DC2C:
    /* 8004DC2C 8FAE0030 */ lw $t6, 0x30($sp)
    /* 8004DC30 000EC080 */ sll $t8, $t6, 2
    /* 8004DC34 030EC021 */ addu $t8, $t8, $t6
    /* 8004DC38 0018C080 */ sll $t8, $t8, 2
    /* 8004DC3C 0218C821 */ addu $t9, $s0, $t8
    /* 8004DC40 8F29002C */ lw $t1, 0x2C($t9)
    /* 8004DC44 AE29002C */ sw $t1, 0x2C($s1)
.L8004DC48:
    /* 8004DC48 8E0A001C */ lw $t2, 0x1C($s0)
    /* 8004DC4C AFAA0038 */ sw $t2, 0x38($sp)
    /* 8004DC50 962B0000 */ lhu $t3, 0x0($s1)
    /* 8004DC54 316C0020 */ andi $t4, $t3, 0x20
    /* 8004DC58 11800002 */ beqz $t4, .L8004DC64
    /* 8004DC5C 00000000 */ nop
    /* 8004DC60 AFA00038 */ sw $zero, 0x38($sp)
.L8004DC64:
    /* 8004DC64 96280000 */ lhu $t0, 0x0($s1)
    /* 8004DC68 310D0040 */ andi $t5, $t0, 0x40
    /* 8004DC6C 11A00005 */ beqz $t5, .L8004DC84
    /* 8004DC70 00000000 */ nop
    /* 8004DC74 AE20002C */ sw $zero, 0x2C($s1)
    /* 8004DC78 0C010CCE */ jal osVirtualToPhysical
    /* 8004DC7C 8E240004 */ lw $a0, 0x4($s1)
    /* 8004DC80 AFA2003C */ sw $v0, 0x3C($sp)
.L8004DC84:
    /* 8004DC84 962F0000 */ lhu $t7, 0x0($s1)
    /* 8004DC88 31EE0080 */ andi $t6, $t7, 0x80
    /* 8004DC8C 11C00009 */ beqz $t6, .L8004DCB4
    /* 8004DC90 00000000 */ nop
    /* 8004DC94 96380028 */ lhu $t8, 0x28($s1)
    /* 8004DC98 3C0103FF */ lui $at, 0x3FF
    /* 8004DC9C 8E240004 */ lw $a0, 0x4($s1)
    /* 8004DCA0 0018CC00 */ sll $t9, $t8, 16
    /* 8004DCA4 03214824 */ and $t1, $t9, $at
    /* 8004DCA8 0C010CCE */ jal osVirtualToPhysical
    /* 8004DCAC AE29002C */ sw $t1, 0x2C($s1)
    /* 8004DCB0 AFA2003C */ sw $v0, 0x3C($sp)
.L8004DCB4:
    /* 8004DCB4 8FAA003C */ lw $t2, 0x3C($sp)
    /* 8004DCB8 3C0BA440 */ lui $t3, %hi(D_A4400004)
    /* 8004DCBC 3C08A440 */ lui $t0, %hi(D_A4400008)
    /* 8004DCC0 AD6A0004 */ sw $t2, %lo(D_A4400004)($t3)
    /* 8004DCC4 8E0C0008 */ lw $t4, 0x8($s0)
    /* 8004DCC8 3C0FA440 */ lui $t7, %hi(D_A4400014)
    /* 8004DCCC 3C18A440 */ lui $t8, %hi(D_A4400018)
    /* 8004DCD0 AD0C0008 */ sw $t4, %lo(D_A4400008)($t0)
    /* 8004DCD4 8E0D000C */ lw $t5, 0xC($s0)
    /* 8004DCD8 3C09A440 */ lui $t1, %hi(D_A440001C)
    /* 8004DCDC 3C018007 */ lui $at, %hi(D_8007246C)
    /* 8004DCE0 ADED0014 */ sw $t5, %lo(D_A4400014)($t7)
    /* 8004DCE4 8E0E0010 */ lw $t6, 0x10($s0)
    /* 8004DCE8 AF0E0018 */ sw $t6, %lo(D_A4400018)($t8)
    /* 8004DCEC 8E190014 */ lw $t9, 0x14($s0)
    /* 8004DCF0 AD39001C */ sw $t9, %lo(D_A440001C)($t1)
    /* 8004DCF4 8E0A0018 */ lw $t2, 0x18($s0)
    /* 8004DCF8 3C19A440 */ lui $t9, %hi(D_A4400028)
    /* 8004DCFC AD6A0020 */ sw $t2, %lo(D_A4400020)($t3)
    /* 8004DD00 8FAC0038 */ lw $t4, 0x38($sp)
    /* 8004DD04 AD0C0024 */ sw $t4, %lo(D_A4400024)($t0)
    /* 8004DD08 8FAD0030 */ lw $t5, 0x30($sp)
    /* 8004DD0C 000D7880 */ sll $t7, $t5, 2
    /* 8004DD10 01ED7821 */ addu $t7, $t7, $t5
    /* 8004DD14 000F7880 */ sll $t7, $t7, 2
    /* 8004DD18 020F7021 */ addu $t6, $s0, $t7
    /* 8004DD1C 8DD80030 */ lw $t8, 0x30($t6)
    /* 8004DD20 AF380028 */ sw $t8, %lo(D_A4400028)($t9)
    /* 8004DD24 8FA90030 */ lw $t1, 0x30($sp)
    /* 8004DD28 00095080 */ sll $t2, $t1, 2
    /* 8004DD2C 01495021 */ addu $t2, $t2, $t1
    /* 8004DD30 000A5080 */ sll $t2, $t2, 2
    /* 8004DD34 020A5821 */ addu $t3, $s0, $t2
    /* 8004DD38 8D6C0034 */ lw $t4, 0x34($t3)
    /* 8004DD3C 3C0AA440 */ lui $t2, %hi(D_A4400030)
    /* 8004DD40 AD0C002C */ sw $t4, %lo(D_A440002C)($t0)
    /* 8004DD44 8FAD0030 */ lw $t5, 0x30($sp)
    /* 8004DD48 3C0CA440 */ lui $t4, %hi(D_A4400034)
    /* 8004DD4C 000D7880 */ sll $t7, $t5, 2
    /* 8004DD50 01ED7821 */ addu $t7, $t7, $t5
    /* 8004DD54 000F7880 */ sll $t7, $t7, 2
    /* 8004DD58 020F7021 */ addu $t6, $s0, $t7
    /* 8004DD5C 8DD80038 */ lw $t8, 0x38($t6)
    /* 8004DD60 3C0DA440 */ lui $t5, %hi(D_A4400000)
    /* 8004DD64 3C0F8007 */ lui $t7, %hi(D_80072468)
    /* 8004DD68 AF38000C */ sw $t8, %lo(D_A440000C)($t9)
    /* 8004DD6C 8E290020 */ lw $t1, 0x20($s1)
    /* 8004DD70 3C188007 */ lui $t8, %hi(D_80072468)
    /* 8004DD74 3C0E8007 */ lui $t6, %hi(D_8007246C)
    /* 8004DD78 AD490030 */ sw $t1, %lo(D_A4400030)($t2)
    /* 8004DD7C 8E2B002C */ lw $t3, 0x2C($s1)
    /* 8004DD80 AD8B0034 */ sw $t3, %lo(D_A4400034)($t4)
    /* 8004DD84 8E28000C */ lw $t0, 0xC($s1)
    /* 8004DD88 ADA80000 */ sw $t0, %lo(D_A4400000)($t5)
    /* 8004DD8C 8DEF2468 */ lw $t7, %lo(D_80072468)($t7)
    /* 8004DD90 AC2F246C */ sw $t7, %lo(D_8007246C)($at)
    /* 8004DD94 3C018007 */ lui $at, %hi(D_80072468)
    /* 8004DD98 AC312468 */ sw $s1, %lo(D_80072468)($at)
    /* 8004DD9C 8F182468 */ lw $t8, %lo(D_80072468)($t8)
    /* 8004DDA0 8DCE246C */ lw $t6, %lo(D_8007246C)($t6)
    /* 8004DDA4 270A0030 */ addiu $t2, $t8, 0x30
.L8004DDA8:
    /* 8004DDA8 8F010000 */ lw $at, 0x0($t8)
    /* 8004DDAC 2718000C */ addiu $t8, $t8, 0xC
    /* 8004DDB0 25CE000C */ addiu $t6, $t6, 0xC
    /* 8004DDB4 ADC1FFF4 */ sw $at, -0xC($t6)
    /* 8004DDB8 8F01FFF8 */ lw $at, -0x8($t8)
    /* 8004DDBC ADC1FFF8 */ sw $at, -0x8($t6)
    /* 8004DDC0 8F01FFFC */ lw $at, -0x4($t8)
    /* 8004DDC4 170AFFF8 */ bne $t8, $t2, .L8004DDA8
    /* 8004DDC8 ADC1FFFC */ sw $at, -0x4($t6)
    /* 8004DDCC 8FBF0024 */ lw $ra, 0x24($sp)
    /* 8004DDD0 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004DDD4 8FB1001C */ lw $s1, 0x1C($sp)
    /* 8004DDD8 8FB20020 */ lw $s2, 0x20($sp)
    /* 8004DDDC 03E00008 */ jr $ra
    /* 8004DDE0 27BD0048 */ addiu $sp, $sp, 0x48
    /* 8004DDE4 00000000 */ nop
