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
glabel func_80049C18
    /* 80049C18 27BDFF28 */ addiu $sp, $sp, -0xD8
    /* 80049C1C AFB70034 */ sw $s7, 0x34($sp)
    /* 80049C20 AFB60030 */ sw $s6, 0x30($sp)
    /* 80049C24 AFB5002C */ sw $s5, 0x2C($sp)
    /* 80049C28 AFBE0038 */ sw $fp, 0x38($sp)
    /* 80049C2C AFB40028 */ sw $s4, 0x28($sp)
    /* 80049C30 AFB30024 */ sw $s3, 0x24($sp)
    /* 80049C34 AFA700E4 */ sw $a3, 0xE4($sp)
    /* 80049C38 3C158007 */ lui $s5, %hi(D_8007239C)
    /* 80049C3C 3C168000 */ lui $s6, %hi(D_8000241C)
    /* 80049C40 3C178007 */ lui $s7, %hi(D_80072378)
    /* 80049C44 00C03825 */ move $a3, $a2
    /* 80049C48 00A09825 */ move $s3, $a1
    /* 80049C4C 0080A025 */ move $s4, $a0
    /* 80049C50 AFBF003C */ sw $ra, 0x3C($sp)
    /* 80049C54 AFB20020 */ sw $s2, 0x20($sp)
    /* 80049C58 AFB1001C */ sw $s1, 0x1C($sp)
    /* 80049C5C AFB00018 */ sw $s0, 0x18($sp)
    /* 80049C60 AFA600E0 */ sw $a2, 0xE0($sp)
    /* 80049C64 AFA000CC */ sw $zero, 0xCC($sp)
    /* 80049C68 26F72378 */ addiu $s7, $s7, %lo(D_80072378)
    /* 80049C6C 26D6241C */ addiu $s6, $s6, %lo(D_8000241C)
    /* 80049C70 26B5239C */ addiu $s5, $s5, %lo(D_8007239C)
    /* 80049C74 241E000A */ addiu $fp, $zero, 0xA
.L80049C78:
    /* 80049C78 90E20000 */ lbu $v0, 0x0($a3)
    /* 80049C7C 00E09025 */ move $s2, $a3
    /* 80049C80 24030025 */ addiu $v1, $zero, 0x25
    /* 80049C84 10400009 */ beqz $v0, .L80049CAC
    /* 80049C88 00408025 */ move $s0, $v0
    /* 80049C8C 50620008 */ beql $v1, $v0, .L80049CB0
    /* 80049C90 02471023 */ subu $v0, $s2, $a3
    /* 80049C94 92420001 */ lbu $v0, 0x1($s2)
.L80049C98:
    /* 80049C98 26520001 */ addiu $s2, $s2, 0x1
    /* 80049C9C 10400003 */ beqz $v0, .L80049CAC
    /* 80049CA0 00408025 */ move $s0, $v0
    /* 80049CA4 5462FFFC */ bnel $v1, $v0, .L80049C98
    /* 80049CA8 92420001 */ lbu $v0, 0x1($s2)
.L80049CAC:
    /* 80049CAC 02471023 */ subu $v0, $s2, $a3
.L80049CB0:
    /* 80049CB0 1840000D */ blez $v0, .L80049CE8
    /* 80049CB4 02602025 */ move $a0, $s3
    /* 80049CB8 00E02825 */ move $a1, $a3
    /* 80049CBC 00408825 */ move $s1, $v0
    /* 80049CC0 0280F809 */ jalr $s4
    /* 80049CC4 00403025 */ move $a2, $v0
    /* 80049CC8 10400005 */ beqz $v0, .L80049CE0
    /* 80049CCC 00409825 */ move $s3, $v0
    /* 80049CD0 8FAE00CC */ lw $t6, 0xCC($sp)
    /* 80049CD4 01D17821 */ addu $t7, $t6, $s1
    /* 80049CD8 10000003 */ b .L80049CE8
    /* 80049CDC AFAF00CC */ sw $t7, 0xCC($sp)
.L80049CE0:
    /* 80049CE0 10000153 */ b .L8004A230
    /* 80049CE4 8FA200CC */ lw $v0, 0xCC($sp)
.L80049CE8:
    /* 80049CE8 16000003 */ bnez $s0, .L80049CF8
    /* 80049CEC 26520001 */ addiu $s2, $s2, 0x1
    /* 80049CF0 1000014F */ b .L8004A230
    /* 80049CF4 8FA200CC */ lw $v0, 0xCC($sp)
.L80049CF8:
    /* 80049CF8 AFA000D0 */ sw $zero, 0xD0($sp)
    /* 80049CFC 92450000 */ lbu $a1, 0x0($s2)
    /* 80049D00 0C012557 */ jal strchr
    /* 80049D04 02C02025 */ move $a0, $s6
    /* 80049D08 1040000F */ beqz $v0, .L80049D48
    /* 80049D0C 00408025 */ move $s0, $v0
.L80049D10:
    /* 80049D10 0216C823 */ subu $t9, $s0, $s6
    /* 80049D14 00197080 */ sll $t6, $t9, 2
    /* 80049D18 3C0F8000 */ lui $t7, %hi(D_80002424)
    /* 80049D1C 01EE7821 */ addu $t7, $t7, $t6
    /* 80049D20 8DEF2424 */ lw $t7, %lo(D_80002424)($t7)
    /* 80049D24 8FB800D0 */ lw $t8, 0xD0($sp)
    /* 80049D28 26520001 */ addiu $s2, $s2, 0x1
    /* 80049D2C 02C02025 */ move $a0, $s6
    /* 80049D30 030FC825 */ or $t9, $t8, $t7
    /* 80049D34 AFB900D0 */ sw $t9, 0xD0($sp)
    /* 80049D38 0C012557 */ jal strchr
    /* 80049D3C 92450000 */ lbu $a1, 0x0($s2)
    /* 80049D40 1440FFF3 */ bnez $v0, .L80049D10
    /* 80049D44 00408025 */ move $s0, $v0
.L80049D48:
    /* 80049D48 924E0000 */ lbu $t6, 0x0($s2)
    /* 80049D4C 2402002A */ addiu $v0, $zero, 0x2A
    /* 80049D50 8FB800E4 */ lw $t8, 0xE4($sp)
    /* 80049D54 144E0011 */ bne $v0, $t6, .L80049D9C
    /* 80049D58 3C048000 */ lui $a0, %hi(D_80002418)
    /* 80049D5C 270F0003 */ addiu $t7, $t8, 0x3
    /* 80049D60 2401FFFC */ addiu $at, $zero, -0x4
    /* 80049D64 01E1C824 */ and $t9, $t7, $at
    /* 80049D68 272E0004 */ addiu $t6, $t9, 0x4
    /* 80049D6C AFAE00E4 */ sw $t6, 0xE4($sp)
    /* 80049D70 8F380000 */ lw $t8, 0x0($t9)
    /* 80049D74 26520001 */ addiu $s2, $s2, 0x1
    /* 80049D78 07010006 */ bgez $t8, .L80049D94
    /* 80049D7C AFB800C8 */ sw $t8, 0xC8($sp)
    /* 80049D80 8FAE00D0 */ lw $t6, 0xD0($sp)
    /* 80049D84 00187823 */ negu $t7, $t8
    /* 80049D88 AFAF00C8 */ sw $t7, 0xC8($sp)
    /* 80049D8C 35D90004 */ ori $t9, $t6, 0x4
    /* 80049D90 AFB900D0 */ sw $t9, 0xD0($sp)
.L80049D94:
    /* 80049D94 10000018 */ b .L80049DF8
    /* 80049D98 92450000 */ lbu $a1, 0x0($s2)
.L80049D9C:
    /* 80049D9C AFA000C8 */ sw $zero, 0xC8($sp)
    /* 80049DA0 92450000 */ lbu $a1, 0x0($s2)
    /* 80049DA4 28A10030 */ slti $at, $a1, 0x30
    /* 80049DA8 14200013 */ bnez $at, .L80049DF8
    /* 80049DAC 28A1003A */ slti $at, $a1, 0x3A
    /* 80049DB0 50200012 */ beql $at, $zero, .L80049DFC
    /* 80049DB4 2401002E */ addiu $at, $zero, 0x2E
    /* 80049DB8 8FB800C8 */ lw $t8, 0xC8($sp)
.L80049DBC:
    /* 80049DBC 2B0103E7 */ slti $at, $t8, 0x3E7
    /* 80049DC0 50200007 */ beql $at, $zero, .L80049DE0
    /* 80049DC4 92450001 */ lbu $a1, 0x1($s2)
    /* 80049DC8 031E0019 */ multu $t8, $fp
    /* 80049DCC 00007812 */ mflo $t7
    /* 80049DD0 00AF7021 */ addu $t6, $a1, $t7
    /* 80049DD4 25D9FFD0 */ addiu $t9, $t6, -0x30
    /* 80049DD8 AFB900C8 */ sw $t9, 0xC8($sp)
    /* 80049DDC 92450001 */ lbu $a1, 0x1($s2)
.L80049DE0:
    /* 80049DE0 26520001 */ addiu $s2, $s2, 0x1
    /* 80049DE4 28A10030 */ slti $at, $a1, 0x30
    /* 80049DE8 14200003 */ bnez $at, .L80049DF8
    /* 80049DEC 28A1003A */ slti $at, $a1, 0x3A
    /* 80049DF0 5420FFF2 */ bnel $at, $zero, .L80049DBC
    /* 80049DF4 8FB800C8 */ lw $t8, 0xC8($sp)
.L80049DF8:
    /* 80049DF8 2401002E */ addiu $at, $zero, 0x2E
.L80049DFC:
    /* 80049DFC 10A10004 */ beq $a1, $at, .L80049E10
    /* 80049E00 2418FFFF */ addiu $t8, $zero, -0x1
    /* 80049E04 AFB800C4 */ sw $t8, 0xC4($sp)
    /* 80049E08 10000026 */ b .L80049EA4
    /* 80049E0C 92450000 */ lbu $a1, 0x0($s2)
.L80049E10:
    /* 80049E10 924F0001 */ lbu $t7, 0x1($s2)
    /* 80049E14 8FAE00E4 */ lw $t6, 0xE4($sp)
    /* 80049E18 26520001 */ addiu $s2, $s2, 0x1
    /* 80049E1C 144F000A */ bne $v0, $t7, .L80049E48
    /* 80049E20 25D90003 */ addiu $t9, $t6, 0x3
    /* 80049E24 2401FFFC */ addiu $at, $zero, -0x4
    /* 80049E28 0321C024 */ and $t8, $t9, $at
    /* 80049E2C 270F0004 */ addiu $t7, $t8, 0x4
    /* 80049E30 AFAF00E4 */ sw $t7, 0xE4($sp)
    /* 80049E34 8F0E0000 */ lw $t6, 0x0($t8)
    /* 80049E38 26520001 */ addiu $s2, $s2, 0x1
    /* 80049E3C AFAE00C4 */ sw $t6, 0xC4($sp)
    /* 80049E40 10000018 */ b .L80049EA4
    /* 80049E44 92450000 */ lbu $a1, 0x0($s2)
.L80049E48:
    /* 80049E48 AFA000C4 */ sw $zero, 0xC4($sp)
    /* 80049E4C 92450000 */ lbu $a1, 0x0($s2)
    /* 80049E50 28A10030 */ slti $at, $a1, 0x30
    /* 80049E54 14200013 */ bnez $at, .L80049EA4
    /* 80049E58 28A1003A */ slti $at, $a1, 0x3A
    /* 80049E5C 10200011 */ beqz $at, .L80049EA4
    /* 80049E60 00000000 */ nop
    /* 80049E64 8FB900C4 */ lw $t9, 0xC4($sp)
.L80049E68:
    /* 80049E68 2B2103E7 */ slti $at, $t9, 0x3E7
    /* 80049E6C 50200007 */ beql $at, $zero, .L80049E8C
    /* 80049E70 92450001 */ lbu $a1, 0x1($s2)
    /* 80049E74 033E0019 */ multu $t9, $fp
    /* 80049E78 00007812 */ mflo $t7
    /* 80049E7C 00AFC021 */ addu $t8, $a1, $t7
    /* 80049E80 270EFFD0 */ addiu $t6, $t8, -0x30
    /* 80049E84 AFAE00C4 */ sw $t6, 0xC4($sp)
    /* 80049E88 92450001 */ lbu $a1, 0x1($s2)
.L80049E8C:
    /* 80049E8C 26520001 */ addiu $s2, $s2, 0x1
    /* 80049E90 28A10030 */ slti $at, $a1, 0x30
    /* 80049E94 14200003 */ bnez $at, .L80049EA4
    /* 80049E98 28A1003A */ slti $at, $a1, 0x3A
    /* 80049E9C 5420FFF2 */ bnel $at, $zero, .L80049E68
    /* 80049EA0 8FB900C4 */ lw $t9, 0xC4($sp)
.L80049EA4:
    /* 80049EA4 0C012557 */ jal strchr
    /* 80049EA8 24842418 */ addiu $a0, $a0, %lo(D_80002418)
    /* 80049EAC 10400005 */ beqz $v0, .L80049EC4
    /* 80049EB0 27B000A0 */ addiu $s0, $sp, 0xA0
    /* 80049EB4 92590000 */ lbu $t9, 0x0($s2)
    /* 80049EB8 26520001 */ addiu $s2, $s2, 0x1
    /* 80049EBC 10000002 */ b .L80049EC8
    /* 80049EC0 A3B900D4 */ sb $t9, 0xD4($sp)
.L80049EC4:
    /* 80049EC4 A3A000D4 */ sb $zero, 0xD4($sp)
.L80049EC8:
    /* 80049EC8 93AF00D4 */ lbu $t7, 0xD4($sp)
    /* 80049ECC 2402006C */ addiu $v0, $zero, 0x6C
    /* 80049ED0 27A600E4 */ addiu $a2, $sp, 0xE4
    /* 80049ED4 144F0007 */ bne $v0, $t7, .L80049EF4
    /* 80049ED8 27A70074 */ addiu $a3, $sp, 0x74
    /* 80049EDC 92580000 */ lbu $t8, 0x0($s2)
    /* 80049EE0 240E004C */ addiu $t6, $zero, 0x4C
    /* 80049EE4 14580003 */ bne $v0, $t8, .L80049EF4
    /* 80049EE8 00000000 */ nop
    /* 80049EEC A3AE00D4 */ sb $t6, 0xD4($sp)
    /* 80049EF0 26520001 */ addiu $s2, $s2, 0x1
.L80049EF4:
    /* 80049EF4 0C01256A */ jal func_800495A8
    /* 80049EF8 92450000 */ lbu $a1, 0x0($s2)
    /* 80049EFC 8FB900C8 */ lw $t9, 0xC8($sp)
    /* 80049F00 8FAF00AC */ lw $t7, 0xAC($sp)
    /* 80049F04 8FAE00B0 */ lw $t6, 0xB0($sp)
    /* 80049F08 032FC023 */ subu $t8, $t9, $t7
    /* 80049F0C 8FAF00B4 */ lw $t7, 0xB4($sp)
    /* 80049F10 030EC823 */ subu $t9, $t8, $t6
    /* 80049F14 8FAE00B8 */ lw $t6, 0xB8($sp)
    /* 80049F18 032FC023 */ subu $t8, $t9, $t7
    /* 80049F1C 8FAF00BC */ lw $t7, 0xBC($sp)
    /* 80049F20 030EC823 */ subu $t9, $t8, $t6
    /* 80049F24 8FAE00C0 */ lw $t6, 0xC0($sp)
    /* 80049F28 032FC023 */ subu $t8, $t9, $t7
    /* 80049F2C 8FAF00D0 */ lw $t7, 0xD0($sp)
    /* 80049F30 030EC823 */ subu $t9, $t8, $t6
    /* 80049F34 AFB900C8 */ sw $t9, 0xC8($sp)
    /* 80049F38 31F80004 */ andi $t8, $t7, 0x4
    /* 80049F3C 1700001A */ bnez $t8, .L80049FA8
    /* 80049F40 0019702A */ slt $t6, $zero, $t9
    /* 80049F44 51C00019 */ beql $t6, $zero, .L80049FAC
    /* 80049F48 8FB900AC */ lw $t9, 0xAC($sp)
    /* 80049F4C 11C00016 */ beqz $t6, .L80049FA8
    /* 80049F50 03208825 */ move $s1, $t9
    /* 80049F54 2E210021 */ sltiu $at, $s1, 0x21
.L80049F58:
    /* 80049F58 14200003 */ bnez $at, .L80049F68
    /* 80049F5C 02208025 */ move $s0, $s1
    /* 80049F60 10000001 */ b .L80049F68
    /* 80049F64 24100020 */ addiu $s0, $zero, 0x20
.L80049F68:
    /* 80049F68 1A00000C */ blez $s0, .L80049F9C
    /* 80049F6C 02602025 */ move $a0, $s3
    /* 80049F70 02E02825 */ move $a1, $s7
    /* 80049F74 0280F809 */ jalr $s4
    /* 80049F78 02003025 */ move $a2, $s0
    /* 80049F7C 10400005 */ beqz $v0, .L80049F94
    /* 80049F80 00409825 */ move $s3, $v0
    /* 80049F84 8FAF00CC */ lw $t7, 0xCC($sp)
    /* 80049F88 01F0C021 */ addu $t8, $t7, $s0
    /* 80049F8C 10000003 */ b .L80049F9C
    /* 80049F90 AFB800CC */ sw $t8, 0xCC($sp)
.L80049F94:
    /* 80049F94 100000A6 */ b .L8004A230
    /* 80049F98 8FA200CC */ lw $v0, 0xCC($sp)
.L80049F9C:
    /* 80049F9C 02308823 */ subu $s1, $s1, $s0
    /* 80049FA0 5E20FFED */ bgtzl $s1, .L80049F58
    /* 80049FA4 2E210021 */ sltiu $at, $s1, 0x21
.L80049FA8:
    /* 80049FA8 8FB900AC */ lw $t9, 0xAC($sp)
.L80049FAC:
    /* 80049FAC 02602025 */ move $a0, $s3
    /* 80049FB0 27A50074 */ addiu $a1, $sp, 0x74
    /* 80049FB4 5B20000D */ blezl $t9, .L80049FEC
    /* 80049FB8 8FB900B0 */ lw $t9, 0xB0($sp)
    /* 80049FBC 0280F809 */ jalr $s4
    /* 80049FC0 03203025 */ move $a2, $t9
    /* 80049FC4 10400006 */ beqz $v0, .L80049FE0
    /* 80049FC8 00409825 */ move $s3, $v0
    /* 80049FCC 8FAE00CC */ lw $t6, 0xCC($sp)
    /* 80049FD0 8FAF00AC */ lw $t7, 0xAC($sp)
    /* 80049FD4 01CFC021 */ addu $t8, $t6, $t7
    /* 80049FD8 10000003 */ b .L80049FE8
    /* 80049FDC AFB800CC */ sw $t8, 0xCC($sp)
.L80049FE0:
    /* 80049FE0 10000093 */ b .L8004A230
    /* 80049FE4 8FA200CC */ lw $v0, 0xCC($sp)
.L80049FE8:
    /* 80049FE8 8FB900B0 */ lw $t9, 0xB0($sp)
.L80049FEC:
    /* 80049FEC 0019702A */ slt $t6, $zero, $t9
    /* 80049FF0 51C00019 */ beql $t6, $zero, .L8004A058
    /* 80049FF4 8FB900B4 */ lw $t9, 0xB4($sp)
    /* 80049FF8 11C00016 */ beqz $t6, .L8004A054
    /* 80049FFC 03208825 */ move $s1, $t9
    /* 8004A000 2E210021 */ sltiu $at, $s1, 0x21
.L8004A004:
    /* 8004A004 14200003 */ bnez $at, .L8004A014
    /* 8004A008 02208025 */ move $s0, $s1
    /* 8004A00C 10000001 */ b .L8004A014
    /* 8004A010 24100020 */ addiu $s0, $zero, 0x20
.L8004A014:
    /* 8004A014 1A00000C */ blez $s0, .L8004A048
    /* 8004A018 02602025 */ move $a0, $s3
    /* 8004A01C 02A02825 */ move $a1, $s5
    /* 8004A020 0280F809 */ jalr $s4
    /* 8004A024 02003025 */ move $a2, $s0
    /* 8004A028 10400005 */ beqz $v0, .L8004A040
    /* 8004A02C 00409825 */ move $s3, $v0
    /* 8004A030 8FAF00CC */ lw $t7, 0xCC($sp)
    /* 8004A034 01F0C021 */ addu $t8, $t7, $s0
    /* 8004A038 10000003 */ b .L8004A048
    /* 8004A03C AFB800CC */ sw $t8, 0xCC($sp)
.L8004A040:
    /* 8004A040 1000007B */ b .L8004A230
    /* 8004A044 8FA200CC */ lw $v0, 0xCC($sp)
.L8004A048:
    /* 8004A048 02308823 */ subu $s1, $s1, $s0
    /* 8004A04C 5E20FFED */ bgtzl $s1, .L8004A004
    /* 8004A050 2E210021 */ sltiu $at, $s1, 0x21
.L8004A054:
    /* 8004A054 8FB900B4 */ lw $t9, 0xB4($sp)
.L8004A058:
    /* 8004A058 02602025 */ move $a0, $s3
    /* 8004A05C 8FA500A8 */ lw $a1, 0xA8($sp)
    /* 8004A060 5B20000D */ blezl $t9, .L8004A098
    /* 8004A064 8FB900B8 */ lw $t9, 0xB8($sp)
    /* 8004A068 0280F809 */ jalr $s4
    /* 8004A06C 03203025 */ move $a2, $t9
    /* 8004A070 10400006 */ beqz $v0, .L8004A08C
    /* 8004A074 00409825 */ move $s3, $v0
    /* 8004A078 8FAE00CC */ lw $t6, 0xCC($sp)
    /* 8004A07C 8FAF00B4 */ lw $t7, 0xB4($sp)
    /* 8004A080 01CFC021 */ addu $t8, $t6, $t7
    /* 8004A084 10000003 */ b .L8004A094
    /* 8004A088 AFB800CC */ sw $t8, 0xCC($sp)
.L8004A08C:
    /* 8004A08C 10000068 */ b .L8004A230
    /* 8004A090 8FA200CC */ lw $v0, 0xCC($sp)
.L8004A094:
    /* 8004A094 8FB900B8 */ lw $t9, 0xB8($sp)
.L8004A098:
    /* 8004A098 0019702A */ slt $t6, $zero, $t9
    /* 8004A09C 51C00019 */ beql $t6, $zero, .L8004A104
    /* 8004A0A0 8FB900BC */ lw $t9, 0xBC($sp)
    /* 8004A0A4 11C00016 */ beqz $t6, .L8004A100
    /* 8004A0A8 03208825 */ move $s1, $t9
    /* 8004A0AC 2E210021 */ sltiu $at, $s1, 0x21
.L8004A0B0:
    /* 8004A0B0 14200003 */ bnez $at, .L8004A0C0
    /* 8004A0B4 02208025 */ move $s0, $s1
    /* 8004A0B8 10000001 */ b .L8004A0C0
    /* 8004A0BC 24100020 */ addiu $s0, $zero, 0x20
.L8004A0C0:
    /* 8004A0C0 1A00000C */ blez $s0, .L8004A0F4
    /* 8004A0C4 02602025 */ move $a0, $s3
    /* 8004A0C8 02A02825 */ move $a1, $s5
    /* 8004A0CC 0280F809 */ jalr $s4
    /* 8004A0D0 02003025 */ move $a2, $s0
    /* 8004A0D4 10400005 */ beqz $v0, .L8004A0EC
    /* 8004A0D8 00409825 */ move $s3, $v0
    /* 8004A0DC 8FAF00CC */ lw $t7, 0xCC($sp)
    /* 8004A0E0 01F0C021 */ addu $t8, $t7, $s0
    /* 8004A0E4 10000003 */ b .L8004A0F4
    /* 8004A0E8 AFB800CC */ sw $t8, 0xCC($sp)
.L8004A0EC:
    /* 8004A0EC 10000050 */ b .L8004A230
    /* 8004A0F0 8FA200CC */ lw $v0, 0xCC($sp)
.L8004A0F4:
    /* 8004A0F4 02308823 */ subu $s1, $s1, $s0
    /* 8004A0F8 5E20FFED */ bgtzl $s1, .L8004A0B0
    /* 8004A0FC 2E210021 */ sltiu $at, $s1, 0x21
.L8004A100:
    /* 8004A100 8FB900BC */ lw $t9, 0xBC($sp)
.L8004A104:
    /* 8004A104 02602025 */ move $a0, $s3
    /* 8004A108 8FAE00A8 */ lw $t6, 0xA8($sp)
    /* 8004A10C 1B20000D */ blez $t9, .L8004A144
    /* 8004A110 8FAF00B4 */ lw $t7, 0xB4($sp)
    /* 8004A114 01CF2821 */ addu $a1, $t6, $t7
    /* 8004A118 0280F809 */ jalr $s4
    /* 8004A11C 03203025 */ move $a2, $t9
    /* 8004A120 10400006 */ beqz $v0, .L8004A13C
    /* 8004A124 00409825 */ move $s3, $v0
    /* 8004A128 8FB800CC */ lw $t8, 0xCC($sp)
    /* 8004A12C 8FAE00BC */ lw $t6, 0xBC($sp)
    /* 8004A130 030E7821 */ addu $t7, $t8, $t6
    /* 8004A134 10000003 */ b .L8004A144
    /* 8004A138 AFAF00CC */ sw $t7, 0xCC($sp)
.L8004A13C:
    /* 8004A13C 1000003C */ b .L8004A230
    /* 8004A140 8FA200CC */ lw $v0, 0xCC($sp)
.L8004A144:
    /* 8004A144 8FB900C0 */ lw $t9, 0xC0($sp)
    /* 8004A148 0019C02A */ slt $t8, $zero, $t9
    /* 8004A14C 53000019 */ beql $t8, $zero, .L8004A1B4
    /* 8004A150 8FB900D0 */ lw $t9, 0xD0($sp)
    /* 8004A154 13000016 */ beqz $t8, .L8004A1B0
    /* 8004A158 03208825 */ move $s1, $t9
    /* 8004A15C 2E210021 */ sltiu $at, $s1, 0x21
.L8004A160:
    /* 8004A160 14200003 */ bnez $at, .L8004A170
    /* 8004A164 02208025 */ move $s0, $s1
    /* 8004A168 10000001 */ b .L8004A170
    /* 8004A16C 24100020 */ addiu $s0, $zero, 0x20
.L8004A170:
    /* 8004A170 1A00000C */ blez $s0, .L8004A1A4
    /* 8004A174 02602025 */ move $a0, $s3
    /* 8004A178 02A02825 */ move $a1, $s5
    /* 8004A17C 0280F809 */ jalr $s4
    /* 8004A180 02003025 */ move $a2, $s0
    /* 8004A184 10400005 */ beqz $v0, .L8004A19C
    /* 8004A188 00409825 */ move $s3, $v0
    /* 8004A18C 8FAE00CC */ lw $t6, 0xCC($sp)
    /* 8004A190 01D07821 */ addu $t7, $t6, $s0
    /* 8004A194 10000003 */ b .L8004A1A4
    /* 8004A198 AFAF00CC */ sw $t7, 0xCC($sp)
.L8004A19C:
    /* 8004A19C 10000024 */ b .L8004A230
    /* 8004A1A0 8FA200CC */ lw $v0, 0xCC($sp)
.L8004A1A4:
    /* 8004A1A4 02308823 */ subu $s1, $s1, $s0
    /* 8004A1A8 5E20FFED */ bgtzl $s1, .L8004A160
    /* 8004A1AC 2E210021 */ sltiu $at, $s1, 0x21
.L8004A1B0:
    /* 8004A1B0 8FB900D0 */ lw $t9, 0xD0($sp)
.L8004A1B4:
    /* 8004A1B4 8FAE00C8 */ lw $t6, 0xC8($sp)
    /* 8004A1B8 33380004 */ andi $t8, $t9, 0x4
    /* 8004A1BC 1300001A */ beqz $t8, .L8004A228
    /* 8004A1C0 000E782A */ slt $t7, $zero, $t6
    /* 8004A1C4 11E00018 */ beqz $t7, .L8004A228
    /* 8004A1C8 00000000 */ nop
    /* 8004A1CC 11E00016 */ beqz $t7, .L8004A228
    /* 8004A1D0 01C08825 */ move $s1, $t6
    /* 8004A1D4 2E210021 */ sltiu $at, $s1, 0x21
.L8004A1D8:
    /* 8004A1D8 14200003 */ bnez $at, .L8004A1E8
    /* 8004A1DC 02208025 */ move $s0, $s1
    /* 8004A1E0 10000001 */ b .L8004A1E8
    /* 8004A1E4 24100020 */ addiu $s0, $zero, 0x20
.L8004A1E8:
    /* 8004A1E8 1A00000C */ blez $s0, .L8004A21C
    /* 8004A1EC 02602025 */ move $a0, $s3
    /* 8004A1F0 02E02825 */ move $a1, $s7
    /* 8004A1F4 0280F809 */ jalr $s4
    /* 8004A1F8 02003025 */ move $a2, $s0
    /* 8004A1FC 10400005 */ beqz $v0, .L8004A214
    /* 8004A200 00409825 */ move $s3, $v0
    /* 8004A204 8FB900CC */ lw $t9, 0xCC($sp)
    /* 8004A208 0330C021 */ addu $t8, $t9, $s0
    /* 8004A20C 10000003 */ b .L8004A21C
    /* 8004A210 AFB800CC */ sw $t8, 0xCC($sp)
.L8004A214:
    /* 8004A214 10000006 */ b .L8004A230
    /* 8004A218 8FA200CC */ lw $v0, 0xCC($sp)
.L8004A21C:
    /* 8004A21C 02308823 */ subu $s1, $s1, $s0
    /* 8004A220 5E20FFED */ bgtzl $s1, .L8004A1D8
    /* 8004A224 2E210021 */ sltiu $at, $s1, 0x21
.L8004A228:
    /* 8004A228 1000FE93 */ b .L80049C78
    /* 8004A22C 26470001 */ addiu $a3, $s2, 0x1
.L8004A230:
    /* 8004A230 8FBF003C */ lw $ra, 0x3C($sp)
    /* 8004A234 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004A238 8FB1001C */ lw $s1, 0x1C($sp)
    /* 8004A23C 8FB20020 */ lw $s2, 0x20($sp)
    /* 8004A240 8FB30024 */ lw $s3, 0x24($sp)
    /* 8004A244 8FB40028 */ lw $s4, 0x28($sp)
    /* 8004A248 8FB5002C */ lw $s5, 0x2C($sp)
    /* 8004A24C 8FB60030 */ lw $s6, 0x30($sp)
    /* 8004A250 8FB70034 */ lw $s7, 0x34($sp)
    /* 8004A254 8FBE0038 */ lw $fp, 0x38($sp)
    /* 8004A258 03E00008 */ jr $ra
    /* 8004A25C 27BD00D8 */ addiu $sp, $sp, 0xD8
    /* 8004A260 00000000 */ nop
    /* 8004A264 00000000 */ nop
