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
glabel func_80046804
    /* 80046804 27BDFF30 */ addiu $sp, $sp, -0xD0
    /* 80046808 AFB50034 */ sw $s5, 0x34($sp)
    /* 8004680C AFB20028 */ sw $s2, 0x28($sp)
    /* 80046810 248E0038 */ addiu $t6, $a0, 0x38
    /* 80046814 00809025 */ move $s2, $a0
    /* 80046818 AFBF0044 */ sw $ra, 0x44($sp)
    /* 8004681C AFBE0040 */ sw $fp, 0x40($sp)
    /* 80046820 AFB7003C */ sw $s7, 0x3C($sp)
    /* 80046824 AFB60038 */ sw $s6, 0x38($sp)
    /* 80046828 AFB40030 */ sw $s4, 0x30($sp)
    /* 8004682C AFB3002C */ sw $s3, 0x2C($sp)
    /* 80046830 AFB10024 */ sw $s1, 0x24($sp)
    /* 80046834 AFB00020 */ sw $s0, 0x20($sp)
    /* 80046838 F7B40018 */ sdc1 $f20, 0x18($sp)
    /* 8004683C AFAE0050 */ sw $t6, 0x50($sp)
    /* 80046840 24950048 */ addiu $s5, $a0, 0x48
.L80046844:
    /* 80046844 964F0038 */ lhu $t7, 0x38($s2)
    /* 80046848 2DE10018 */ sltiu $at, $t7, 0x18
    /* 8004684C 10200161 */ beqz $at, .L80046DD4
    /* 80046850 000F7880 */ sll $t7, $t7, 2
    /* 80046854 3C018000 */ lui $at, %hi(jtbl_80002310)
    /* 80046858 002F0821 */ addu $at, $at, $t7
    /* 8004685C 8C2F2310 */ lw $t7, %lo(jtbl_80002310)($at)
    /* 80046860 01E00008 */ jr $t7
    /* 80046864 00000000 */ nop
.L80046868:
    /* 80046868 8E440018 */ lw $a0, 0x18($s2)
    /* 8004686C 5080015A */ beql $a0, $zero, .L80046DD8
    /* 80046870 02A02025 */ move $a0, $s5
    /* 80046874 0C011C6F */ jal alSeqNextEvent
    /* 80046878 27A50088 */ addiu $a1, $sp, 0x88
    /* 8004687C 87A20088 */ lh $v0, 0x88($sp)
    /* 80046880 24010001 */ addiu $at, $zero, 0x1
    /* 80046884 02408825 */ move $s1, $s2
    /* 80046888 10410009 */ beq $v0, $at, .L800468B0
    /* 8004688C 27A40088 */ addiu $a0, $sp, 0x88
    /* 80046890 24010003 */ addiu $at, $zero, 0x3
    /* 80046894 1041000F */ beq $v0, $at, .L800468D4
    /* 80046898 02402825 */ move $a1, $s2
    /* 8004689C 24010004 */ addiu $at, $zero, 0x4
    /* 800468A0 10410012 */ beq $v0, $at, .L800468EC
    /* 800468A4 24180002 */ addiu $t8, $zero, 0x2
    /* 800468A8 1000014B */ b .L80046DD8
    /* 800468AC 02A02025 */ move $a0, $s5
.L800468B0:
    /* 800468B0 AFB200D0 */ sw $s2, 0xD0($sp)
    /* 800468B4 0C0117F9 */ jal func_80045FE4
    /* 800468B8 AFB5004C */ sw $s5, 0x4C($sp)
    /* 800468BC 8FB200D0 */ lw $s2, 0xD0($sp)
    /* 800468C0 8FB5004C */ lw $s5, 0x4C($sp)
    /* 800468C4 0C01171A */ jal __postNextSeqEvent
    /* 800468C8 02402025 */ move $a0, $s2
    /* 800468CC 10000142 */ b .L80046DD8
    /* 800468D0 02A02025 */ move $a0, $s5
.L800468D4:
    /* 800468D4 0C011751 */ jal func_80045D44
    /* 800468D8 27A40088 */ addiu $a0, $sp, 0x88
    /* 800468DC 0C01171A */ jal __postNextSeqEvent
    /* 800468E0 02402025 */ move $a0, $s2
    /* 800468E4 1000013C */ b .L80046DD8
    /* 800468E8 02A02025 */ move $a0, $s5
.L800468EC:
    /* 800468EC AE58002C */ sw $t8, 0x2C($s2)
    /* 800468F0 24190010 */ addiu $t9, $zero, 0x10
    /* 800468F4 3C067FFF */ lui $a2, 0x7FFF
    /* 800468F8 A7B90088 */ sh $t9, 0x88($sp)
    /* 800468FC 34C6FFFF */ ori $a2, $a2, 0xFFFF
    /* 80046900 02A02025 */ move $a0, $s5
    /* 80046904 0C010A21 */ jal alEvtqPostEvent
    /* 80046908 27A50088 */ addiu $a1, $sp, 0x88
    /* 8004690C 10000132 */ b .L80046DD8
    /* 80046910 02A02025 */ move $a0, $s5
.L80046914:
    /* 80046914 240E0009 */ addiu $t6, $zero, 0x9
    /* 80046918 A7AE00BC */ sh $t6, 0xBC($sp)
    /* 8004691C 8E46005C */ lw $a2, 0x5C($s2)
    /* 80046920 02A02025 */ move $a0, $s5
    /* 80046924 0C010A21 */ jal alEvtqPostEvent
    /* 80046928 27A500BC */ addiu $a1, $sp, 0xBC
    /* 8004692C 1000012A */ b .L80046DD8
    /* 80046930 02A02025 */ move $a0, $s5
.L80046934:
    /* 80046934 8E50003C */ lw $s0, 0x3C($s2)
    /* 80046938 8E440014 */ lw $a0, 0x14($s2)
    /* 8004693C 0C011E8A */ jal alSynStopVoice
    /* 80046940 02002825 */ move $a1, $s0
    /* 80046944 8E440014 */ lw $a0, 0x14($s2)
    /* 80046948 0C011DD2 */ jal alSynFreeVoice
    /* 8004694C 02002825 */ move $a1, $s0
    /* 80046950 8E110010 */ lw $s1, 0x10($s0)
    /* 80046954 02402025 */ move $a0, $s2
    /* 80046958 922F0037 */ lbu $t7, 0x37($s1)
    /* 8004695C 51E00004 */ beql $t7, $zero, .L80046970
    /* 80046960 02402025 */ move $a0, $s2
    /* 80046964 0C011B8A */ jal __seqpStopOsc
    /* 80046968 02202825 */ move $a1, $s1
    /* 8004696C 02402025 */ move $a0, $s2
.L80046970:
    /* 80046970 0C0116FE */ jal __unmapVoice
    /* 80046974 02002825 */ move $a1, $s0
    /* 80046978 10000117 */ b .L80046DD8
    /* 8004697C 02A02025 */ move $a0, $s5
.L80046980:
    /* 80046980 8E50003C */ lw $s0, 0x3C($s2)
    /* 80046984 24190001 */ addiu $t9, $zero, 0x1
    /* 80046988 8E110010 */ lw $s1, 0x10($s0)
    /* 8004698C 92380034 */ lbu $t8, 0x34($s1)
    /* 80046990 57000003 */ bnel $t8, $zero, .L800469A0
    /* 80046994 924E0044 */ lbu $t6, 0x44($s2)
    /* 80046998 A2390034 */ sb $t9, 0x34($s1)
    /* 8004699C 924E0044 */ lbu $t6, 0x44($s2)
.L800469A0:
    /* 800469A0 8E530040 */ lw $s3, 0x40($s2)
    /* 800469A4 02202025 */ move $a0, $s1
    /* 800469A8 A22E0030 */ sb $t6, 0x30($s1)
    /* 800469AC 8E4F001C */ lw $t7, 0x1C($s2)
    /* 800469B0 02402825 */ move $a1, $s2
    /* 800469B4 01F3C021 */ addu $t8, $t7, $s3
    /* 800469B8 0C011667 */ jal __vsVol
    /* 800469BC AE380024 */ sw $t8, 0x24($s1)
    /* 800469C0 00023400 */ sll $a2, $v0, 16
    /* 800469C4 0006CC03 */ sra $t9, $a2, 16
    /* 800469C8 03203025 */ move $a2, $t9
    /* 800469CC 8E440014 */ lw $a0, 0x14($s2)
    /* 800469D0 02002825 */ move $a1, $s0
    /* 800469D4 0C01224E */ jal alSynSetVol
    /* 800469D8 02603825 */ move $a3, $s3
    /* 800469DC 100000FE */ b .L80046DD8
    /* 800469E0 02A02025 */ move $a0, $s5
.L800469E4:
    /* 800469E4 8E590074 */ lw $t9, 0x74($s2)
    /* 800469E8 8E540040 */ lw $s4, 0x40($s2)
    /* 800469EC 8E51003C */ lw $s1, 0x3C($s2)
    /* 800469F0 27A500A8 */ addiu $a1, $sp, 0xA8
    /* 800469F4 0320F809 */ jalr $t9
    /* 800469F8 02802025 */ move $a0, $s4
    /* 800469FC 444EF800 */ cfc1 $t6, $31 /* FpcCsr */
    /* 80046A00 240F0001 */ addiu $t7, $zero, 0x1
    /* 80046A04 44CFF800 */ ctc1 $t7, $31 /* FpcCsr */
    /* 80046A08 C7A400A8 */ lwc1 $f4, 0xA8($sp)
    /* 80046A0C 00409825 */ move $s3, $v0
    /* 80046A10 3C014F00 */ lui $at, 0x4F00
    /* 80046A14 460021A4 */ cvt.w.s $f6, $f4
    /* 80046A18 02202025 */ move $a0, $s1
    /* 80046A1C 02402825 */ move $a1, $s2
    /* 80046A20 444FF800 */ cfc1 $t7, $31 /* FpcCsr */
    /* 80046A24 00000000 */ nop
    /* 80046A28 31EF0078 */ andi $t7, $t7, 0x78
    /* 80046A2C 51E00013 */ beql $t7, $zero, .L80046A7C
    /* 80046A30 440F3000 */ mfc1 $t7, $f6
    /* 80046A34 44813000 */ mtc1 $at, $f6
    /* 80046A38 240F0001 */ addiu $t7, $zero, 0x1
    /* 80046A3C 46062181 */ sub.s $f6, $f4, $f6
    /* 80046A40 44CFF800 */ ctc1 $t7, $31 /* FpcCsr */
    /* 80046A44 00000000 */ nop
    /* 80046A48 460031A4 */ cvt.w.s $f6, $f6
    /* 80046A4C 444FF800 */ cfc1 $t7, $31 /* FpcCsr */
    /* 80046A50 00000000 */ nop
    /* 80046A54 31EF0078 */ andi $t7, $t7, 0x78
    /* 80046A58 15E00005 */ bnez $t7, .L80046A70
    /* 80046A5C 00000000 */ nop
    /* 80046A60 440F3000 */ mfc1 $t7, $f6
    /* 80046A64 3C018000 */ lui $at, 0x8000
    /* 80046A68 10000007 */ b .L80046A88
    /* 80046A6C 01E17825 */ or $t7, $t7, $at
.L80046A70:
    /* 80046A70 10000005 */ b .L80046A88
    /* 80046A74 240FFFFF */ addiu $t7, $zero, -0x1
    /* 80046A78 440F3000 */ mfc1 $t7, $f6
.L80046A7C:
    /* 80046A7C 00000000 */ nop
    /* 80046A80 05E0FFFB */ bltz $t7, .L80046A70
    /* 80046A84 00000000 */ nop
.L80046A88:
    /* 80046A88 44CEF800 */ ctc1 $t6, $31 /* FpcCsr */
    /* 80046A8C 0C011667 */ jal __vsVol
    /* 80046A90 A22F0036 */ sb $t7, 0x36($s1)
    /* 80046A94 8E43001C */ lw $v1, 0x1C($s2)
    /* 80046A98 8E390024 */ lw $t9, 0x24($s1)
    /* 80046A9C 00023400 */ sll $a2, $v0, 16
    /* 80046AA0 0006C403 */ sra $t8, $a2, 16
    /* 80046AA4 03232023 */ subu $a0, $t9, $v1
    /* 80046AA8 04800003 */ bltz $a0, .L80046AB8
    /* 80046AAC 03003025 */ move $a2, $t8
    /* 80046AB0 10000002 */ b .L80046ABC
    /* 80046AB4 00801025 */ move $v0, $a0
.L80046AB8:
    /* 80046AB8 240203E8 */ addiu $v0, $zero, 0x3E8
.L80046ABC:
    /* 80046ABC 8E440014 */ lw $a0, 0x14($s2)
    /* 80046AC0 26250004 */ addiu $a1, $s1, 0x4
    /* 80046AC4 0C01224E */ jal alSynSetVol
    /* 80046AC8 00403825 */ move $a3, $v0
    /* 80046ACC 240E0016 */ addiu $t6, $zero, 0x16
    /* 80046AD0 A7AE00BC */ sh $t6, 0xBC($sp)
    /* 80046AD4 AFB100C0 */ sw $s1, 0xC0($sp)
    /* 80046AD8 AFB400C4 */ sw $s4, 0xC4($sp)
    /* 80046ADC 02A02025 */ move $a0, $s5
    /* 80046AE0 27A500BC */ addiu $a1, $sp, 0xBC
    /* 80046AE4 0C010A21 */ jal alEvtqPostEvent
    /* 80046AE8 02603025 */ move $a2, $s3
    /* 80046AEC 100000BA */ b .L80046DD8
    /* 80046AF0 02A02025 */ move $a0, $s5
.L80046AF4:
    /* 80046AF4 8E590074 */ lw $t9, 0x74($s2)
    /* 80046AF8 8E540040 */ lw $s4, 0x40($s2)
    /* 80046AFC 8E51003C */ lw $s1, 0x3C($s2)
    /* 80046B00 92500044 */ lbu $s0, 0x44($s2)
    /* 80046B04 27A500A8 */ addiu $a1, $sp, 0xA8
    /* 80046B08 0320F809 */ jalr $t9
    /* 80046B0C 02802025 */ move $a0, $s4
    /* 80046B10 C7A800A8 */ lwc1 $f8, 0xA8($sp)
    /* 80046B14 C6240028 */ lwc1 $f4, 0x28($s1)
    /* 80046B18 0010C100 */ sll $t8, $s0, 4
    /* 80046B1C E628002C */ swc1 $f8, 0x2C($s1)
    /* 80046B20 C626002C */ lwc1 $f6, 0x2C($s1)
    /* 80046B24 8E4F0060 */ lw $t7, 0x60($s2)
    /* 80046B28 00409825 */ move $s3, $v0
    /* 80046B2C 46062202 */ mul.s $f8, $f4, $f6
    /* 80046B30 01F87021 */ addu $t6, $t7, $t8
    /* 80046B34 C5CA000C */ lwc1 $f10, 0xC($t6)
    /* 80046B38 8E440014 */ lw $a0, 0x14($s2)
    /* 80046B3C 26250004 */ addiu $a1, $s1, 0x4
    /* 80046B40 46085102 */ mul.s $f4, $f10, $f8
    /* 80046B44 44062000 */ mfc1 $a2, $f4
    /* 80046B48 0C01222A */ jal alSynSetPitch
    /* 80046B4C 00000000 */ nop
    /* 80046B50 24190017 */ addiu $t9, $zero, 0x17
    /* 80046B54 A7B900BC */ sh $t9, 0xBC($sp)
    /* 80046B58 AFB100C0 */ sw $s1, 0xC0($sp)
    /* 80046B5C AFB400C4 */ sw $s4, 0xC4($sp)
    /* 80046B60 A3B000C8 */ sb $s0, 0xC8($sp)
    /* 80046B64 02A02025 */ move $a0, $s5
    /* 80046B68 27A500BC */ addiu $a1, $sp, 0xBC
    /* 80046B6C 0C010A21 */ jal alEvtqPostEvent
    /* 80046B70 02603025 */ move $a2, $s3
    /* 80046B74 10000098 */ b .L80046DD8
    /* 80046B78 02A02025 */ move $a0, $s5
.L80046B7C:
    /* 80046B7C 02408825 */ move $s1, $s2
    /* 80046B80 8FA40050 */ lw $a0, 0x50($sp)
    /* 80046B84 AFB200D0 */ sw $s2, 0xD0($sp)
    /* 80046B88 0C0117F9 */ jal func_80045FE4
    /* 80046B8C AFB5004C */ sw $s5, 0x4C($sp)
    /* 80046B90 8FB200D0 */ lw $s2, 0xD0($sp)
    /* 80046B94 1000008F */ b .L80046DD4
    /* 80046B98 8FB5004C */ lw $s5, 0x4C($sp)
.L80046B9C:
    /* 80046B9C 02402825 */ move $a1, $s2
    /* 80046BA0 0C011751 */ jal func_80045D44
    /* 80046BA4 8FA40050 */ lw $a0, 0x50($sp)
    /* 80046BA8 1000008B */ b .L80046DD8
    /* 80046BAC 02A02025 */ move $a0, $s5
.L80046BB0:
    /* 80046BB0 8E4F002C */ lw $t7, 0x2C($s2)
    /* 80046BB4 24010001 */ addiu $at, $zero, 0x1
    /* 80046BB8 24180001 */ addiu $t8, $zero, 0x1
    /* 80046BBC 11E10085 */ beq $t7, $at, .L80046DD4
    /* 80046BC0 02402025 */ move $a0, $s2
    /* 80046BC4 0C01171A */ jal __postNextSeqEvent
    /* 80046BC8 AE58002C */ sw $t8, 0x2C($s2)
    /* 80046BCC 10000082 */ b .L80046DD8
    /* 80046BD0 02A02025 */ move $a0, $s5
.L80046BD4:
    /* 80046BD4 8E4E002C */ lw $t6, 0x2C($s2)
    /* 80046BD8 24010002 */ addiu $at, $zero, 0x2
    /* 80046BDC 55C1007E */ bnel $t6, $at, .L80046DD8
    /* 80046BE0 02A02025 */ move $a0, $s5
    /* 80046BE4 8E510064 */ lw $s1, 0x64($s2)
    /* 80046BE8 12200013 */ beqz $s1, .L80046C38
    /* 80046BEC 26300004 */ addiu $s0, $s1, 0x4
.L80046BF0:
    /* 80046BF0 02002825 */ move $a1, $s0
    /* 80046BF4 0C011E8A */ jal alSynStopVoice
    /* 80046BF8 8E440014 */ lw $a0, 0x14($s2)
    /* 80046BFC 8E440014 */ lw $a0, 0x14($s2)
    /* 80046C00 0C011DD2 */ jal alSynFreeVoice
    /* 80046C04 02002825 */ move $a1, $s0
    /* 80046C08 92390037 */ lbu $t9, 0x37($s1)
    /* 80046C0C 02402025 */ move $a0, $s2
    /* 80046C10 53200004 */ beql $t9, $zero, .L80046C24
    /* 80046C14 02402025 */ move $a0, $s2
    /* 80046C18 0C011B8A */ jal __seqpStopOsc
    /* 80046C1C 02202825 */ move $a1, $s1
    /* 80046C20 02402025 */ move $a0, $s2
.L80046C24:
    /* 80046C24 0C0116FE */ jal __unmapVoice
    /* 80046C28 02002825 */ move $a1, $s0
    /* 80046C2C 8E510064 */ lw $s1, 0x64($s2)
    /* 80046C30 5620FFEF */ bnel $s1, $zero, .L80046BF0
    /* 80046C34 26300004 */ addiu $s0, $s1, 0x4
.L80046C38:
    /* 80046C38 AE40001C */ sw $zero, 0x1C($s2)
    /* 80046C3C 10000065 */ b .L80046DD4
    /* 80046C40 AE40002C */ sw $zero, 0x2C($s2)
.L80046C44:
    /* 80046C44 8E4F002C */ lw $t7, 0x2C($s2)
    /* 80046C48 24010001 */ addiu $at, $zero, 0x1
    /* 80046C4C 02A02025 */ move $a0, $s5
    /* 80046C50 55E10061 */ bnel $t7, $at, .L80046DD8
    /* 80046C54 02A02025 */ move $a0, $s5
    /* 80046C58 0C0109DA */ jal alEvtqFlushType
    /* 80046C5C 00002825 */ move $a1, $zero
    /* 80046C60 02A02025 */ move $a0, $s5
    /* 80046C64 0C0109DA */ jal alEvtqFlushType
    /* 80046C68 24050002 */ addiu $a1, $zero, 0x2
    /* 80046C6C 8E510064 */ lw $s1, 0x64($s2)
    /* 80046C70 1220000D */ beqz $s1, .L80046CA8
    /* 80046C74 26300004 */ addiu $s0, $s1, 0x4
.L80046C78:
    /* 80046C78 02002825 */ move $a1, $s0
    /* 80046C7C 02402025 */ move $a0, $s2
    /* 80046C80 0C0116D4 */ jal __voiceNeedsNoteKill
    /* 80046C84 3406C350 */ ori $a2, $zero, 0xC350
    /* 80046C88 10400004 */ beqz $v0, .L80046C9C
    /* 80046C8C 02402025 */ move $a0, $s2
    /* 80046C90 02002825 */ move $a1, $s0
    /* 80046C94 0C011689 */ jal __seqpReleaseVoice
    /* 80046C98 3406C350 */ ori $a2, $zero, 0xC350
.L80046C9C:
    /* 80046C9C 8E310000 */ lw $s1, 0x0($s1)
    /* 80046CA0 5620FFF5 */ bnel $s1, $zero, .L80046C78
    /* 80046CA4 26300004 */ addiu $s0, $s1, 0x4
.L80046CA8:
    /* 80046CA8 24180002 */ addiu $t8, $zero, 0x2
    /* 80046CAC AE58002C */ sw $t8, 0x2C($s2)
    /* 80046CB0 240E0010 */ addiu $t6, $zero, 0x10
    /* 80046CB4 3C067FFF */ lui $a2, 0x7FFF
    /* 80046CB8 A7AE00BC */ sh $t6, 0xBC($sp)
    /* 80046CBC 34C6FFFF */ ori $a2, $a2, 0xFFFF
    /* 80046CC0 02A02025 */ move $a0, $s5
    /* 80046CC4 0C010A21 */ jal alEvtqPostEvent
    /* 80046CC8 27A500BC */ addiu $a1, $sp, 0xBC
    /* 80046CCC 10000042 */ b .L80046DD8
    /* 80046CD0 02A02025 */ move $a0, $s5
.L80046CD4:
    /* 80046CD4 8E510064 */ lw $s1, 0x64($s2)
    /* 80046CD8 8659003C */ lh $t9, 0x3C($s2)
    /* 80046CDC 1220003D */ beqz $s1, .L80046DD4
    /* 80046CE0 A6590032 */ sh $t9, 0x32($s2)
    /* 80046CE4 02202025 */ move $a0, $s1
.L80046CE8:
    /* 80046CE8 0C011667 */ jal __vsVol
    /* 80046CEC 02402825 */ move $a1, $s2
    /* 80046CF0 8E43001C */ lw $v1, 0x1C($s2)
    /* 80046CF4 8E380024 */ lw $t8, 0x24($s1)
    /* 80046CF8 00023400 */ sll $a2, $v0, 16
    /* 80046CFC 00067C03 */ sra $t7, $a2, 16
    /* 80046D00 03032023 */ subu $a0, $t8, $v1
    /* 80046D04 04800003 */ bltz $a0, .L80046D14
    /* 80046D08 01E03025 */ move $a2, $t7
    /* 80046D0C 10000002 */ b .L80046D18
    /* 80046D10 00801025 */ move $v0, $a0
.L80046D14:
    /* 80046D14 240203E8 */ addiu $v0, $zero, 0x3E8
.L80046D18:
    /* 80046D18 8E440014 */ lw $a0, 0x14($s2)
    /* 80046D1C 26250004 */ addiu $a1, $s1, 0x4
    /* 80046D20 0C01224E */ jal alSynSetVol
    /* 80046D24 00403825 */ move $a3, $v0
    /* 80046D28 8E310000 */ lw $s1, 0x0($s1)
    /* 80046D2C 5620FFEE */ bnel $s1, $zero, .L80046CE8
    /* 80046D30 02202025 */ move $a0, $s1
    /* 80046D34 10000028 */ b .L80046DD8
    /* 80046D38 02A02025 */ move $a0, $s5
.L80046D3C:
    /* 80046D3C 8E4E003C */ lw $t6, 0x3C($s2)
    /* 80046D40 8E590040 */ lw $t9, 0x40($s2)
    /* 80046D44 8E4F0044 */ lw $t7, 0x44($s2)
    /* 80046D48 AE4E007C */ sw $t6, 0x7C($s2)
    /* 80046D4C AE590080 */ sw $t9, 0x80($s2)
    /* 80046D50 10000020 */ b .L80046DD4
    /* 80046D54 AE4F0084 */ sw $t7, 0x84($s2)
.L80046D58:
    /* 80046D58 9250003C */ lbu $s0, 0x3C($s2)
    /* 80046D5C 8E4E0060 */ lw $t6, 0x60($s2)
    /* 80046D60 9258003D */ lbu $t8, 0x3D($s2)
    /* 80046D64 0010C900 */ sll $t9, $s0, 4
    /* 80046D68 01D97821 */ addu $t7, $t6, $t9
    /* 80046D6C 10000019 */ b .L80046DD4
    /* 80046D70 A1F80008 */ sb $t8, 0x8($t7)
.L80046D74:
    /* 80046D74 8E45003C */ lw $a1, 0x3C($s2)
    /* 80046D78 240F01E8 */ addiu $t7, $zero, 0x1E8
    /* 80046D7C 3C018000 */ lui $at, %hi(D_80002370)
    /* 80046D80 10A00008 */ beqz $a1, .L80046DA4
    /* 80046D84 AE450018 */ sw $a1, 0x18($s2)
    /* 80046D88 C4262370 */ lwc1 $f6, %lo(D_80002370)($at)
    /* 80046D8C C4AA0014 */ lwc1 $f10, 0x14($a1)
    /* 80046D90 460A3202 */ mul.s $f8, $f6, $f10
    /* 80046D94 4600410D */ trunc.w.s $f4, $f8
    /* 80046D98 44182000 */ mfc1 $t8, $f4
    /* 80046D9C 10000002 */ b .L80046DA8
    /* 80046DA0 AE580024 */ sw $t8, 0x24($s2)
.L80046DA4:
    /* 80046DA4 AE4F0024 */ sw $t7, 0x24($s2)
.L80046DA8:
    /* 80046DA8 8E450020 */ lw $a1, 0x20($s2)
    /* 80046DAC 50A0000A */ beql $a1, $zero, .L80046DD8
    /* 80046DB0 02A02025 */ move $a0, $s5
    /* 80046DB4 0C01162F */ jal __initFromBank
    /* 80046DB8 02402025 */ move $a0, $s2
    /* 80046DBC 10000006 */ b .L80046DD8
    /* 80046DC0 02A02025 */ move $a0, $s5
.L80046DC4:
    /* 80046DC4 8E45003C */ lw $a1, 0x3C($s2)
    /* 80046DC8 02402025 */ move $a0, $s2
    /* 80046DCC 0C01162F */ jal __initFromBank
    /* 80046DD0 AE450020 */ sw $a1, 0x20($s2)
.L80046DD4:
    /* 80046DD4 02A02025 */ move $a0, $s5
.L80046DD8:
    /* 80046DD8 0C010A6A */ jal alEvtqNextEvent
    /* 80046DDC 8FA50050 */ lw $a1, 0x50($sp)
    /* 80046DE0 1040FE98 */ beqz $v0, .L80046844
    /* 80046DE4 AE420028 */ sw $v0, 0x28($s2)
    /* 80046DE8 8E4E001C */ lw $t6, 0x1C($s2)
    /* 80046DEC 01C2C821 */ addu $t9, $t6, $v0
    /* 80046DF0 AE59001C */ sw $t9, 0x1C($s2)
    /* 80046DF4 8FBF0044 */ lw $ra, 0x44($sp)
    /* 80046DF8 8FBE0040 */ lw $fp, 0x40($sp)
    /* 80046DFC 8FB7003C */ lw $s7, 0x3C($sp)
    /* 80046E00 8FB60038 */ lw $s6, 0x38($sp)
    /* 80046E04 8FB50034 */ lw $s5, 0x34($sp)
    /* 80046E08 8FB40030 */ lw $s4, 0x30($sp)
    /* 80046E0C 8FB3002C */ lw $s3, 0x2C($sp)
    /* 80046E10 8FB20028 */ lw $s2, 0x28($sp)
    /* 80046E14 8FB10024 */ lw $s1, 0x24($sp)
    /* 80046E18 8FB00020 */ lw $s0, 0x20($sp)
    /* 80046E1C D7B40018 */ ldc1 $f20, 0x18($sp)
    /* 80046E20 03E00008 */ jr $ra
    /* 80046E24 27BD00D0 */ addiu $sp, $sp, 0xD0
.section .rodata
.section .rodata.jtbl_80002310, "a"
glabel jtbl_80002310
    .word .L80046868
    .word .L80046DD4
    .word .L80046B7C
    .word .L80046DD4
    .word .L80046DD4
    .word .L80046934
    .word .L80046980
    .word .L80046B9C
    .word .L80046DD4
    .word .L80046914
    .word .L80046CD4
    .word .L80046D3C
    .word .L80046D58
    .word .L80046D74
    .word .L80046DC4
    .word .L80046BB0
    .word .L80046BD4
    .word .L80046C44
    .word .L80046DD4
    .word .L80046DD4
    .word .L80046DD4
    .word .L80046DD4
    .word .L800469E4
    .word .L80046AF4
