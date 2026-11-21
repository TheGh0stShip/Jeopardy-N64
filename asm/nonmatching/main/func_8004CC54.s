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
glabel func_8004CC54
    /* 8004CC54 27BDFEF8 */ addiu $sp, $sp, -0x108
    /* 8004CC58 AFBE0040 */ sw $fp, 0x40($sp)
    /* 8004CC5C AFB7003C */ sw $s7, 0x3C($sp)
    /* 8004CC60 AFB60038 */ sw $s6, 0x38($sp)
    /* 8004CC64 AFB40030 */ sw $s4, 0x30($sp)
    /* 8004CC68 F7B40018 */ sdc1 $f20, 0x18($sp)
    /* 8004CC6C 3C018000 */ lui $at, %hi(D_800025F8)
    /* 8004CC70 0080B025 */ move $s6, $a0
    /* 8004CC74 AFBF0044 */ sw $ra, 0x44($sp)
    /* 8004CC78 AFB50034 */ sw $s5, 0x34($sp)
    /* 8004CC7C AFB3002C */ sw $s3, 0x2C($sp)
    /* 8004CC80 AFB20028 */ sw $s2, 0x28($sp)
    /* 8004CC84 AFB10024 */ sw $s1, 0x24($sp)
    /* 8004CC88 AFB00020 */ sw $s0, 0x20($sp)
    /* 8004CC8C D43425F8 */ ldc1 $f20, %lo(D_800025F8)($at)
    /* 8004CC90 24940028 */ addiu $s4, $a0, 0x28
    /* 8004CC94 24970014 */ addiu $s7, $a0, 0x14
    /* 8004CC98 241E0001 */ addiu $fp, $zero, 0x1
.L8004CC9C:
    /* 8004CC9C 86C20028 */ lh $v0, 0x28($s6)
    /* 8004CCA0 24010005 */ addiu $at, $zero, 0x5
    /* 8004CCA4 240E0005 */ addiu $t6, $zero, 0x5
    /* 8004CCA8 14410007 */ bne $v0, $at, .L8004CCC8
    /* 8004CCAC 02E02025 */ move $a0, $s7
    /* 8004CCB0 A7AE00F4 */ sh $t6, 0xF4($sp)
    /* 8004CCB4 8EC60048 */ lw $a2, 0x48($s6)
    /* 8004CCB8 0C010A21 */ jal alEvtqPostEvent
    /* 8004CCBC 27A500F4 */ addiu $a1, $sp, 0xF4
    /* 8004CCC0 10000122 */ b .L8004D14C
    /* 8004CCC4 02E02025 */ move $a0, $s7
.L8004CCC8:
    /* 8004CCC8 8ED5002C */ lw $s5, 0x2C($s6)
    /* 8004CCCC 2C410009 */ sltiu $at, $v0, 0x9
    /* 8004CCD0 1020011D */ beqz $at, .L8004D148
    /* 8004CCD4 8EB1001C */ lw $s1, 0x1C($s5)
    /* 8004CCD8 00027880 */ sll $t7, $v0, 2
    /* 8004CCDC 3C018000 */ lui $at, %hi(jtbl_80002600)
    /* 8004CCE0 002F0821 */ addu $at, $at, $t7
    /* 8004CCE4 8C2F2600 */ lw $t7, %lo(jtbl_80002600)($at)
    /* 8004CCE8 01E00008 */ jr $t7
    /* 8004CCEC 00000000 */ nop
.L8004CCF0:
    /* 8004CCF0 8EB80028 */ lw $t8, 0x28($s5)
    /* 8004CCF4 57000115 */ bnel $t8, $zero, .L8004D14C
    /* 8004CCF8 02E02025 */ move $a0, $s7
    /* 8004CCFC 12200112 */ beqz $s1, .L8004D148
    /* 8004CD00 02A02825 */ move $a1, $s5
    /* 8004CD04 A7A000E2 */ sh $zero, 0xE2($sp)
    /* 8004CD08 86B90020 */ lh $t9, 0x20($s5)
    /* 8004CD0C A3A000E4 */ sb $zero, 0xE4($sp)
    /* 8004CD10 27A600E0 */ addiu $a2, $sp, 0xE0
    /* 8004CD14 A7B900E0 */ sh $t9, 0xE0($sp)
    /* 8004CD18 0C011E38 */ jal alSynAllocVoice
    /* 8004CD1C 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CD20 8E270000 */ lw $a3, 0x0($s1)
    /* 8004CD24 86AF002C */ lh $t7, 0x2C($s5)
    /* 8004CD28 2401007F */ addiu $at, $zero, 0x7F
    /* 8004CD2C 90EE000C */ lbu $t6, 0xC($a3)
    /* 8004CD30 2408007F */ addiu $t0, $zero, 0x7F
    /* 8004CD34 01CF0019 */ multu $t6, $t7
    /* 8004CD38 0000C012 */ mflo $t8
    /* 8004CD3C 00000000 */ nop
    /* 8004CD40 00000000 */ nop
    /* 8004CD44 0301001A */ div $zero, $t8, $at
    /* 8004CD48 0000C812 */ mflo $t9
    /* 8004CD4C A7B900BA */ sh $t9, 0xBA($sp)
    /* 8004CD50 922F000C */ lbu $t7, 0xC($s1)
    /* 8004CD54 92AE002E */ lbu $t6, 0x2E($s5)
    /* 8004CD58 01CF1821 */ addu $v1, $t6, $t7
    /* 8004CD5C 2463FFC0 */ addiu $v1, $v1, -0x40
    /* 8004CD60 0003C400 */ sll $t8, $v1, 16
    /* 8004CD64 00181C03 */ sra $v1, $t8, 16
    /* 8004CD68 5C600003 */ bgtzl $v1, .L8004CD78
    /* 8004CD6C 2861007F */ slti $at, $v1, 0x7F
    /* 8004CD70 00001825 */ move $v1, $zero
    /* 8004CD74 2861007F */ slti $at, $v1, 0x7F
.L8004CD78:
    /* 8004CD78 10200003 */ beqz $at, .L8004CD88
    /* 8004CD7C 00000000 */ nop
    /* 8004CD80 10000001 */ b .L8004CD88
    /* 8004CD84 306800FF */ andi $t0, $v1, 0xFF
.L8004CD88:
    /* 8004CD88 C6A40024 */ lwc1 $f4, 0x24($s5)
    /* 8004CD8C 02A02825 */ move $a1, $s5
    /* 8004CD90 E7A400D0 */ swc1 $f4, 0xD0($sp)
    /* 8004CD94 8CF00000 */ lw $s0, 0x0($a3)
    /* 8004CD98 8E260008 */ lw $a2, 0x8($s1)
    /* 8004CD9C 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CDA0 0C0134B6 */ jal alSynStartVoice
    /* 8004CDA4 A3A800D7 */ sb $t0, 0xD7($sp)
    /* 8004CDA8 93A600D7 */ lbu $a2, 0xD7($sp)
    /* 8004CDAC AEBE0028 */ sw $fp, 0x28($s5)
    /* 8004CDB0 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CDB4 0C01229E */ jal alSynSetPan
    /* 8004CDB8 02A02825 */ move $a1, $s5
    /* 8004CDBC 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CDC0 02A02825 */ move $a1, $s5
    /* 8004CDC4 87A600BA */ lh $a2, 0xBA($sp)
    /* 8004CDC8 0C01224E */ jal alSynSetVol
    /* 8004CDCC 02003825 */ move $a3, $s0
    /* 8004CDD0 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CDD4 02A02825 */ move $a1, $s5
    /* 8004CDD8 0C01222A */ jal alSynSetPitch
    /* 8004CDDC 8FA600D0 */ lw $a2, 0xD0($sp)
    /* 8004CDE0 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CDE4 02A02825 */ move $a1, $s5
    /* 8004CDE8 0C012276 */ jal alSynSetFXMix
    /* 8004CDEC 92A6002F */ lbu $a2, 0x2F($s5)
    /* 8004CDF0 240E0006 */ addiu $t6, $zero, 0x6
    /* 8004CDF4 A7AE00C0 */ sh $t6, 0xC0($sp)
    /* 8004CDF8 AFB500C4 */ sw $s5, 0xC4($sp)
    /* 8004CDFC 8E2F0000 */ lw $t7, 0x0($s1)
    /* 8004CE00 C6A20024 */ lwc1 $f2, 0x24($s5)
    /* 8004CE04 3C067FFF */ lui $a2, 0x7FFF
    /* 8004CE08 8DE20000 */ lw $v0, 0x0($t7)
    /* 8004CE0C 02E02025 */ move $a0, $s7
    /* 8004CE10 44823000 */ mtc1 $v0, $f6
    /* 8004CE14 00000000 */ nop
    /* 8004CE18 46803220 */ cvt.s.w $f8, $f6
    /* 8004CE1C 46024283 */ div.s $f10, $f8, $f2
    /* 8004CE20 46005021 */ cvt.d.s $f0, $f10
    /* 8004CE24 4620A03C */ c.lt.d $f20, $f0
    /* 8004CE28 00000000 */ nop
    /* 8004CE2C 45020004 */ bc1fl .L8004CE40
    /* 8004CE30 4620010D */ trunc.w.d $f4, $f0
    /* 8004CE34 10000004 */ b .L8004CE48
    /* 8004CE38 34C6FFFF */ ori $a2, $a2, 0xFFFF
    /* 8004CE3C 4620010D */ trunc.w.d $f4, $f0
.L8004CE40:
    /* 8004CE40 44062000 */ mfc1 $a2, $f4
    /* 8004CE44 00000000 */ nop
.L8004CE48:
    /* 8004CE48 0C010A21 */ jal alEvtqPostEvent
    /* 8004CE4C 27A500C0 */ addiu $a1, $sp, 0xC0
    /* 8004CE50 100000BE */ b .L8004D14C
    /* 8004CE54 02E02025 */ move $a0, $s7
.L8004CE58:
    /* 8004CE58 8EB90028 */ lw $t9, 0x28($s5)
    /* 8004CE5C 57D900BB */ bnel $fp, $t9, .L8004D14C
    /* 8004CE60 02E02025 */ move $a0, $s7
    /* 8004CE64 122000B8 */ beqz $s1, .L8004D148
    /* 8004CE68 02A02825 */ move $a1, $s5
    /* 8004CE6C 8E2E0000 */ lw $t6, 0x0($s1)
    /* 8004CE70 C6A20024 */ lwc1 $f2, 0x24($s5)
    /* 8004CE74 3C077FFF */ lui $a3, 0x7FFF
    /* 8004CE78 8DC20008 */ lw $v0, 0x8($t6)
    /* 8004CE7C 00003025 */ move $a2, $zero
    /* 8004CE80 44823000 */ mtc1 $v0, $f6
    /* 8004CE84 00000000 */ nop
    /* 8004CE88 46803220 */ cvt.s.w $f8, $f6
    /* 8004CE8C 46024283 */ div.s $f10, $f8, $f2
    /* 8004CE90 46005021 */ cvt.d.s $f0, $f10
    /* 8004CE94 4620A03C */ c.lt.d $f20, $f0
    /* 8004CE98 00000000 */ nop
    /* 8004CE9C 45020004 */ bc1fl .L8004CEB0
    /* 8004CEA0 4620010D */ trunc.w.d $f4, $f0
    /* 8004CEA4 10000004 */ b .L8004CEB8
    /* 8004CEA8 34E7FFFF */ ori $a3, $a3, 0xFFFF
    /* 8004CEAC 4620010D */ trunc.w.d $f4, $f0
.L8004CEB0:
    /* 8004CEB0 44072000 */ mfc1 $a3, $f4
    /* 8004CEB4 00000000 */ nop
.L8004CEB8:
    /* 8004CEB8 00E08025 */ move $s0, $a3
    /* 8004CEBC 0C01224E */ jal alSynSetVol
    /* 8004CEC0 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CEC4 1200000B */ beqz $s0, .L8004CEF4
    /* 8004CEC8 02A02825 */ move $a1, $s5
    /* 8004CECC 24180007 */ addiu $t8, $zero, 0x7
    /* 8004CED0 A7B800C0 */ sh $t8, 0xC0($sp)
    /* 8004CED4 AFB500C4 */ sw $s5, 0xC4($sp)
    /* 8004CED8 02E02025 */ move $a0, $s7
    /* 8004CEDC 27A500C0 */ addiu $a1, $sp, 0xC0
    /* 8004CEE0 0C010A21 */ jal alEvtqPostEvent
    /* 8004CEE4 02003025 */ move $a2, $s0
    /* 8004CEE8 24190002 */ addiu $t9, $zero, 0x2
    /* 8004CEEC 10000096 */ b .L8004D148
    /* 8004CEF0 AEB90028 */ sw $t9, 0x28($s5)
.L8004CEF4:
    /* 8004CEF4 0C011E8A */ jal alSynStopVoice
    /* 8004CEF8 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CEFC 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CF00 0C011DD2 */ jal alSynFreeVoice
    /* 8004CF04 02A02825 */ move $a1, $s5
    /* 8004CF08 02E09025 */ move $s2, $s7
    /* 8004CF0C 02A09825 */ move $s3, $s5
    /* 8004CF10 0C0132F2 */ jal func_8004CBC8
    /* 8004CF14 AFB4004C */ sw $s4, 0x4C($sp)
    /* 8004CF18 8FB4004C */ lw $s4, 0x4C($sp)
    /* 8004CF1C 1000008A */ b .L8004D148
    /* 8004CF20 AEA00028 */ sw $zero, 0x28($s5)
.L8004CF24:
    /* 8004CF24 8EAF0028 */ lw $t7, 0x28($s5)
    /* 8004CF28 928E0008 */ lbu $t6, 0x8($s4)
    /* 8004CF2C 17CF0086 */ bne $fp, $t7, .L8004D148
    /* 8004CF30 A2AE002E */ sb $t6, 0x2E($s5)
    /* 8004CF34 12200084 */ beqz $s1, .L8004D148
    /* 8004CF38 02A02825 */ move $a1, $s5
    /* 8004CF3C 9239000C */ lbu $t9, 0xC($s1)
    /* 8004CF40 31D800FF */ andi $t8, $t6, 0xFF
    /* 8004CF44 2408007F */ addiu $t0, $zero, 0x7F
    /* 8004CF48 03191821 */ addu $v1, $t8, $t9
    /* 8004CF4C 2463FFC0 */ addiu $v1, $v1, -0x40
    /* 8004CF50 00037400 */ sll $t6, $v1, 16
    /* 8004CF54 000E1C03 */ sra $v1, $t6, 16
    /* 8004CF58 5C600003 */ bgtzl $v1, .L8004CF68
    /* 8004CF5C 2861007F */ slti $at, $v1, 0x7F
    /* 8004CF60 00001825 */ move $v1, $zero
    /* 8004CF64 2861007F */ slti $at, $v1, 0x7F
.L8004CF68:
    /* 8004CF68 10200003 */ beqz $at, .L8004CF78
    /* 8004CF6C 00000000 */ nop
    /* 8004CF70 10000001 */ b .L8004CF78
    /* 8004CF74 306800FF */ andi $t0, $v1, 0xFF
.L8004CF78:
    /* 8004CF78 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CF7C 0C01229E */ jal alSynSetPan
    /* 8004CF80 310600FF */ andi $a2, $t0, 0xFF
    /* 8004CF84 10000071 */ b .L8004D14C
    /* 8004CF88 02E02025 */ move $a0, $s7
.L8004CF8C:
    /* 8004CF8C C6800008 */ lwc1 $f0, 0x8($s4)
    /* 8004CF90 3C018000 */ lui $at, %hi(D_80002628)
    /* 8004CF94 02A02825 */ move $a1, $s5
    /* 8004CF98 E6A00024 */ swc1 $f0, 0x24($s5)
    /* 8004CF9C D4282628 */ ldc1 $f8, %lo(D_80002628)($at)
    /* 8004CFA0 460001A1 */ cvt.d.s $f6, $f0
    /* 8004CFA4 3C018000 */ lui $at, %hi(D_80002630)
    /* 8004CFA8 4628303C */ c.lt.d $f6, $f8
    /* 8004CFAC 00000000 */ nop
    /* 8004CFB0 45020004 */ bc1fl .L8004CFC4
    /* 8004CFB4 8EB80028 */ lw $t8, 0x28($s5)
    /* 8004CFB8 C42A2630 */ lwc1 $f10, %lo(D_80002630)($at)
    /* 8004CFBC E6AA0024 */ swc1 $f10, 0x24($s5)
    /* 8004CFC0 8EB80028 */ lw $t8, 0x28($s5)
.L8004CFC4:
    /* 8004CFC4 57D80061 */ bnel $fp, $t8, .L8004D14C
    /* 8004CFC8 02E02025 */ move $a0, $s7
    /* 8004CFCC 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CFD0 0C01222A */ jal alSynSetPitch
    /* 8004CFD4 8EA60024 */ lw $a2, 0x24($s5)
    /* 8004CFD8 1000005C */ b .L8004D14C
    /* 8004CFDC 02E02025 */ move $a0, $s7
.L8004CFE0:
    /* 8004CFE0 8EAE0028 */ lw $t6, 0x28($s5)
    /* 8004CFE4 92990008 */ lbu $t9, 0x8($s4)
    /* 8004CFE8 02A02825 */ move $a1, $s5
    /* 8004CFEC 17CE0056 */ bne $fp, $t6, .L8004D148
    /* 8004CFF0 A2B9002F */ sb $t9, 0x2F($s5)
    /* 8004CFF4 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004CFF8 0C012276 */ jal alSynSetFXMix
    /* 8004CFFC 332600FF */ andi $a2, $t9, 0xFF
    /* 8004D000 10000052 */ b .L8004D14C
    /* 8004D004 02E02025 */ move $a0, $s7
.L8004D008:
    /* 8004D008 8EB80028 */ lw $t8, 0x28($s5)
    /* 8004D00C 868F0008 */ lh $t7, 0x8($s4)
    /* 8004D010 17D8004D */ bne $fp, $t8, .L8004D148
    /* 8004D014 A6AF002C */ sh $t7, 0x2C($s5)
    /* 8004D018 5220004C */ beql $s1, $zero, .L8004D14C
    /* 8004D01C 02E02025 */ move $a0, $s7
    /* 8004D020 8E390000 */ lw $t9, 0x0($s1)
    /* 8004D024 86AF002C */ lh $t7, 0x2C($s5)
    /* 8004D028 2401007F */ addiu $at, $zero, 0x7F
    /* 8004D02C 932E000D */ lbu $t6, 0xD($t9)
    /* 8004D030 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004D034 02A02825 */ move $a1, $s5
    /* 8004D038 01CF0019 */ multu $t6, $t7
    /* 8004D03C 240703E8 */ addiu $a3, $zero, 0x3E8
    /* 8004D040 00004012 */ mflo $t0
    /* 8004D044 00000000 */ nop
    /* 8004D048 00000000 */ nop
    /* 8004D04C 0101001A */ div $zero, $t0, $at
    /* 8004D050 0000C012 */ mflo $t8
    /* 8004D054 00183400 */ sll $a2, $t8, 16
    /* 8004D058 0006CC03 */ sra $t9, $a2, 16
    /* 8004D05C 0C01224E */ jal alSynSetVol
    /* 8004D060 03203025 */ move $a2, $t9
    /* 8004D064 10000039 */ b .L8004D14C
    /* 8004D068 02E02025 */ move $a0, $s7
.L8004D06C:
    /* 8004D06C 8E270000 */ lw $a3, 0x0($s1)
    /* 8004D070 2401FFFF */ addiu $at, $zero, -0x1
    /* 8004D074 02A02825 */ move $a1, $s5
    /* 8004D078 8CE30004 */ lw $v1, 0x4($a3)
    /* 8004D07C 50610033 */ beql $v1, $at, .L8004D14C
    /* 8004D080 02E02025 */ move $a0, $s7
    /* 8004D084 90EE000D */ lbu $t6, 0xD($a3)
    /* 8004D088 86AF002C */ lh $t7, 0x2C($s5)
    /* 8004D08C 2401007F */ addiu $at, $zero, 0x7F
    /* 8004D090 44832000 */ mtc1 $v1, $f4
    /* 8004D094 01CF0019 */ multu $t6, $t7
    /* 8004D098 C6A20024 */ lwc1 $f2, 0x24($s5)
    /* 8004D09C 468021A0 */ cvt.s.w $f6, $f4
    /* 8004D0A0 3C077FFF */ lui $a3, 0x7FFF
    /* 8004D0A4 46023203 */ div.s $f8, $f6, $f2
    /* 8004D0A8 00004012 */ mflo $t0
    /* 8004D0AC 00000000 */ nop
    /* 8004D0B0 00000000 */ nop
    /* 8004D0B4 0101001A */ div $zero, $t0, $at
    /* 8004D0B8 46004021 */ cvt.d.s $f0, $f8
    /* 8004D0BC 00004012 */ mflo $t0
    /* 8004D0C0 4620A03C */ c.lt.d $f20, $f0
    /* 8004D0C4 00083400 */ sll $a2, $t0, 16
    /* 8004D0C8 00067403 */ sra $t6, $a2, 16
    /* 8004D0CC 01C03025 */ move $a2, $t6
    /* 8004D0D0 45020004 */ bc1fl .L8004D0E4
    /* 8004D0D4 4620028D */ trunc.w.d $f10, $f0
    /* 8004D0D8 10000004 */ b .L8004D0EC
    /* 8004D0DC 34E7FFFF */ ori $a3, $a3, 0xFFFF
    /* 8004D0E0 4620028D */ trunc.w.d $f10, $f0
.L8004D0E4:
    /* 8004D0E4 44075000 */ mfc1 $a3, $f10
    /* 8004D0E8 00000000 */ nop
.L8004D0EC:
    /* 8004D0EC 00E08025 */ move $s0, $a3
    /* 8004D0F0 0C01224E */ jal alSynSetVol
    /* 8004D0F4 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004D0F8 A7BE00C0 */ sh $fp, 0xC0($sp)
    /* 8004D0FC AFB500C4 */ sw $s5, 0xC4($sp)
    /* 8004D100 02E02025 */ move $a0, $s7
    /* 8004D104 27A500C0 */ addiu $a1, $sp, 0xC0
    /* 8004D108 0C010A21 */ jal alEvtqPostEvent
    /* 8004D10C 02003025 */ move $a2, $s0
    /* 8004D110 1000000E */ b .L8004D14C
    /* 8004D114 02E02025 */ move $a0, $s7
.L8004D118:
    /* 8004D118 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004D11C 0C011E8A */ jal alSynStopVoice
    /* 8004D120 02A02825 */ move $a1, $s5
    /* 8004D124 8EC40038 */ lw $a0, 0x38($s6)
    /* 8004D128 0C011DD2 */ jal alSynFreeVoice
    /* 8004D12C 02A02825 */ move $a1, $s5
    /* 8004D130 02E09025 */ move $s2, $s7
    /* 8004D134 02A09825 */ move $s3, $s5
    /* 8004D138 0C0132F2 */ jal func_8004CBC8
    /* 8004D13C AFB4004C */ sw $s4, 0x4C($sp)
    /* 8004D140 8FB4004C */ lw $s4, 0x4C($sp)
    /* 8004D144 AEA00028 */ sw $zero, 0x28($s5)
.L8004D148:
    /* 8004D148 02E02025 */ move $a0, $s7
.L8004D14C:
    /* 8004D14C 0C010A6A */ jal alEvtqNextEvent
    /* 8004D150 02802825 */ move $a1, $s4
    /* 8004D154 1040FED1 */ beqz $v0, .L8004CC9C
    /* 8004D158 AEC2004C */ sw $v0, 0x4C($s6)
    /* 8004D15C 8ECF0050 */ lw $t7, 0x50($s6)
    /* 8004D160 01E2C021 */ addu $t8, $t7, $v0
    /* 8004D164 AED80050 */ sw $t8, 0x50($s6)
    /* 8004D168 8FBF0044 */ lw $ra, 0x44($sp)
    /* 8004D16C 8FBE0040 */ lw $fp, 0x40($sp)
    /* 8004D170 8FB7003C */ lw $s7, 0x3C($sp)
    /* 8004D174 8FB60038 */ lw $s6, 0x38($sp)
    /* 8004D178 8FB50034 */ lw $s5, 0x34($sp)
    /* 8004D17C 8FB40030 */ lw $s4, 0x30($sp)
    /* 8004D180 8FB3002C */ lw $s3, 0x2C($sp)
    /* 8004D184 8FB20028 */ lw $s2, 0x28($sp)
    /* 8004D188 8FB10024 */ lw $s1, 0x24($sp)
    /* 8004D18C 8FB00020 */ lw $s0, 0x20($sp)
    /* 8004D190 D7B40018 */ ldc1 $f20, 0x18($sp)
    /* 8004D194 03E00008 */ jr $ra
    /* 8004D198 27BD0108 */ addiu $sp, $sp, 0x108
.section .rodata
.section .rodata.jtbl_80002600, "a"
glabel jtbl_80002600
    .word .L8004CCF0
    .word .L8004CE58
    .word .L8004CF24
    .word .L8004D008
    .word .L8004CF8C
    .word .L8004D148
    .word .L8004D06C
    .word .L8004D118
    .word .L8004CFE0
