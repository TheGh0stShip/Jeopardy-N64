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
glabel func_8003CF10
    /* 8003CF10 27BDFF48 */ addiu $sp, $sp, -0xB8
    /* 8003CF14 AFB10030 */ sw $s1, 0x30($sp)
    /* 8003CF18 3C118007 */ lui $s1, %hi(D_80071FF8)
    /* 8003CF1C 8E311FF8 */ lw $s1, %lo(D_80071FF8)($s1)
    /* 8003CF20 AFBF004C */ sw $ra, 0x4C($sp)
    /* 8003CF24 AFB70048 */ sw $s7, 0x48($sp)
    /* 8003CF28 AFB60044 */ sw $s6, 0x44($sp)
    /* 8003CF2C AFB50040 */ sw $s5, 0x40($sp)
    /* 8003CF30 AFB4003C */ sw $s4, 0x3C($sp)
    /* 8003CF34 AFB30038 */ sw $s3, 0x38($sp)
    /* 8003CF38 AFB20034 */ sw $s2, 0x34($sp)
    /* 8003CF3C AFB0002C */ sw $s0, 0x2C($sp)
    /* 8003CF40 F7B60020 */ sdc1 $f22, 0x20($sp)
    /* 8003CF44 F7B40018 */ sdc1 $f20, 0x18($sp)
    /* 8003CF48 AFA400B8 */ sw $a0, 0xB8($sp)
    /* 8003CF4C AFA500BC */ sw $a1, 0xBC($sp)
    /* 8003CF50 A7A000AA */ sh $zero, 0xAA($sp)
    /* 8003CF54 8E2F0000 */ lw $t7, 0x0($s1)
    /* 8003CF58 00E09825 */ move $s3, $a3
    /* 8003CF5C 0080A025 */ move $s4, $a0
    /* 8003CF60 15E00004 */ bnez $t7, .L8003CF74
    /* 8003CF64 00C0A825 */ move $s5, $a2
    /* 8003CF68 ACA00000 */ sw $zero, 0x0($a1)
    /* 8003CF6C 10000081 */ b .L8003D174
    /* 8003CF70 00801025 */ move $v0, $a0
.L8003CF74:
    /* 8003CF74 AFA000B4 */ sw $zero, 0xB4($sp)
    /* 8003CF78 8E220000 */ lw $v0, 0x0($s1)
    /* 8003CF7C 3C037FFF */ lui $v1, 0x7FFF
    /* 8003CF80 3463FFFF */ ori $v1, $v1, 0xFFFF
    /* 8003CF84 1040000E */ beqz $v0, .L8003CFC0
    /* 8003CF88 2412FFF0 */ addiu $s2, $zero, -0x10
    /* 8003CF8C 8E240020 */ lw $a0, 0x20($s1)
    /* 8003CF90 8C590010 */ lw $t9, 0x10($v0)
.L8003CF94:
    /* 8003CF94 03244023 */ subu $t0, $t9, $a0
    /* 8003CF98 0103082A */ slt $at, $t0, $v1
    /* 8003CF9C 50200006 */ beql $at, $zero, .L8003CFB8
    /* 8003CFA0 8C420000 */ lw $v0, 0x0($v0)
    /* 8003CFA4 AFA200B4 */ sw $v0, 0xB4($sp)
    /* 8003CFA8 8C490010 */ lw $t1, 0x10($v0)
    /* 8003CFAC 8E240020 */ lw $a0, 0x20($s1)
    /* 8003CFB0 01241823 */ subu $v1, $t1, $a0
    /* 8003CFB4 8C420000 */ lw $v0, 0x0($v0)
.L8003CFB8:
    /* 8003CFB8 5440FFF6 */ bnel $v0, $zero, .L8003CF94
    /* 8003CFBC 8C590010 */ lw $t9, 0x10($v0)
.L8003CFC0:
    /* 8003CFC0 8FAA00B4 */ lw $t2, 0xB4($sp)
    /* 8003CFC4 8E240020 */ lw $a0, 0x20($s1)
    /* 8003CFC8 8D420010 */ lw $v0, 0x10($t2)
    /* 8003CFCC 00445823 */ subu $t3, $v0, $a0
    /* 8003CFD0 0173082A */ slt $at, $t3, $s3
    /* 8003CFD4 10200038 */ beqz $at, .L8003D0B8
    /* 8003CFD8 AE22001C */ sw $v0, 0x1C($s1)
    /* 8003CFDC 3C013FE0 */ lui $at, 0x3FE0
    /* 8003CFE0 4481B800 */ mtc1 $at, $f23
    /* 8003CFE4 3C018000 */ lui $at, %hi(D_80001D30)
    /* 8003CFE8 4480B000 */ mtc1 $zero, $f22
    /* 8003CFEC D4341D30 */ ldc1 $f20, %lo(D_80001D30)($at)
.L8003CFF0:
    /* 8003CFF0 8E2C001C */ lw $t4, 0x1C($s1)
    /* 8003CFF4 3C107FFF */ lui $s0, 0x7FFF
    /* 8003CFF8 3610FFFF */ ori $s0, $s0, 0xFFFF
    /* 8003CFFC 01926824 */ and $t5, $t4, $s2
    /* 8003D000 AE2D001C */ sw $t5, 0x1C($s1)
    /* 8003D004 8FA400B4 */ lw $a0, 0xB4($sp)
    /* 8003D008 8C990008 */ lw $t9, 0x8($a0)
    /* 8003D00C 0320F809 */ jalr $t9
    /* 8003D010 00000000 */ nop
    /* 8003D014 8E380044 */ lw $t8, 0x44($s1)
    /* 8003D018 44822000 */ mtc1 $v0, $f4
    /* 8003D01C 8FA800B4 */ lw $t0, 0xB4($sp)
    /* 8003D020 44984000 */ mtc1 $t8, $f8
    /* 8003D024 468021A0 */ cvt.s.w $f6, $f4
    /* 8003D028 8D090010 */ lw $t1, 0x10($t0)
    /* 8003D02C 468042A0 */ cvt.s.w $f10, $f8
    /* 8003D030 460A3402 */ mul.s $f16, $f6, $f10
    /* 8003D034 460084A1 */ cvt.d.s $f18, $f16
    /* 8003D038 46349103 */ div.d $f4, $f18, $f20
    /* 8003D03C 46362200 */ add.d $f8, $f4, $f22
    /* 8003D040 46204020 */ cvt.s.d $f0, $f8
    /* 8003D044 4600018D */ trunc.w.s $f6, $f0
    /* 8003D048 44023000 */ mfc1 $v0, $f6
    /* 8003D04C 00000000 */ nop
    /* 8003D050 01225021 */ addu $t2, $t1, $v0
    /* 8003D054 AD0A0010 */ sw $t2, 0x10($t0)
    /* 8003D058 AFA000B4 */ sw $zero, 0xB4($sp)
    /* 8003D05C 8E230000 */ lw $v1, 0x0($s1)
    /* 8003D060 5060000F */ beql $v1, $zero, .L8003D0A0
    /* 8003D064 8FAF00B4 */ lw $t7, 0xB4($sp)
    /* 8003D068 8E240020 */ lw $a0, 0x20($s1)
    /* 8003D06C 8C6B0010 */ lw $t3, 0x10($v1)
.L8003D070:
    /* 8003D070 01646023 */ subu $t4, $t3, $a0
    /* 8003D074 0190082A */ slt $at, $t4, $s0
    /* 8003D078 50200006 */ beql $at, $zero, .L8003D094
    /* 8003D07C 8C630000 */ lw $v1, 0x0($v1)
    /* 8003D080 AFA300B4 */ sw $v1, 0xB4($sp)
    /* 8003D084 8C6D0010 */ lw $t5, 0x10($v1)
    /* 8003D088 8E240020 */ lw $a0, 0x20($s1)
    /* 8003D08C 01A48023 */ subu $s0, $t5, $a0
    /* 8003D090 8C630000 */ lw $v1, 0x0($v1)
.L8003D094:
    /* 8003D094 5460FFF6 */ bnel $v1, $zero, .L8003D070
    /* 8003D098 8C6B0010 */ lw $t3, 0x10($v1)
    /* 8003D09C 8FAF00B4 */ lw $t7, 0xB4($sp)
.L8003D0A0:
    /* 8003D0A0 8E240020 */ lw $a0, 0x20($s1)
    /* 8003D0A4 8DE20010 */ lw $v0, 0x10($t7)
    /* 8003D0A8 0044C823 */ subu $t9, $v0, $a0
    /* 8003D0AC 0333082A */ slt $at, $t9, $s3
    /* 8003D0B0 1420FFCF */ bnez $at, .L8003CFF0
    /* 8003D0B4 AE22001C */ sw $v0, 0x1C($s1)
.L8003D0B8:
    /* 8003D0B8 8E38001C */ lw $t8, 0x1C($s1)
    /* 8003D0BC 2412FFF0 */ addiu $s2, $zero, -0x10
    /* 8003D0C0 27B700AA */ addiu $s7, $sp, 0xAA
    /* 8003D0C4 03127024 */ and $t6, $t8, $s2
    /* 8003D0C8 1A600022 */ blez $s3, .L8003D154
    /* 8003D0CC AE2E001C */ sw $t6, 0x1C($s1)
    /* 8003D0D0 3C160700 */ lui $s6, 0x700
.L8003D0D4:
    /* 8003D0D4 8E220048 */ lw $v0, 0x48($s1)
    /* 8003D0D8 02608025 */ move $s0, $s3
    /* 8003D0DC 0053082A */ slt $at, $v0, $s3
    /* 8003D0E0 10200003 */ beqz $at, .L8003D0F0
    /* 8003D0E4 00000000 */ nop
    /* 8003D0E8 10000001 */ b .L8003D0F0
    /* 8003D0EC 00408025 */ move $s0, $v0
.L8003D0F0:
    /* 8003D0F0 AE960000 */ sw $s6, 0x0($s4)
    /* 8003D0F4 AE800004 */ sw $zero, 0x4($s4)
    /* 8003D0F8 8E320038 */ lw $s2, 0x38($s1)
    /* 8003D0FC 24050006 */ addiu $a1, $zero, 0x6
    /* 8003D100 02A03025 */ move $a2, $s5
    /* 8003D104 8E590008 */ lw $t9, 0x8($s2)
    /* 8003D108 02402025 */ move $a0, $s2
    /* 8003D10C 0320F809 */ jalr $t9
    /* 8003D110 00000000 */ nop
    /* 8003D114 8E270020 */ lw $a3, 0x20($s1)
    /* 8003D118 26890008 */ addiu $t1, $s4, 0x8
    /* 8003D11C AFA90010 */ sw $t1, 0x10($sp)
    /* 8003D120 8E590004 */ lw $t9, 0x4($s2)
    /* 8003D124 02402025 */ move $a0, $s2
    /* 8003D128 02E02825 */ move $a1, $s7
    /* 8003D12C 0320F809 */ jalr $t9
    /* 8003D130 02003025 */ move $a2, $s0
    /* 8003D134 8E2B0020 */ lw $t3, 0x20($s1)
    /* 8003D138 02709823 */ subu $s3, $s3, $s0
    /* 8003D13C 00104080 */ sll $t0, $s0, 2
    /* 8003D140 01706021 */ addu $t4, $t3, $s0
    /* 8003D144 0040A025 */ move $s4, $v0
    /* 8003D148 02A8A821 */ addu $s5, $s5, $t0
    /* 8003D14C 1E60FFE1 */ bgtz $s3, .L8003D0D4
    /* 8003D150 AE2C0020 */ sw $t4, 0x20($s1)
.L8003D154:
    /* 8003D154 8FAD00B8 */ lw $t5, 0xB8($sp)
    /* 8003D158 8FAE00BC */ lw $t6, 0xBC($sp)
    /* 8003D15C 02202025 */ move $a0, $s1
    /* 8003D160 028D7823 */ subu $t7, $s4, $t5
    /* 8003D164 000FC0C3 */ sra $t8, $t7, 3
    /* 8003D168 0C00F398 */ jal _collectPVoices
    /* 8003D16C ADD80000 */ sw $t8, 0x0($t6)
    /* 8003D170 02801025 */ move $v0, $s4
.L8003D174:
    /* 8003D174 8FBF004C */ lw $ra, 0x4C($sp)
    /* 8003D178 D7B40018 */ ldc1 $f20, 0x18($sp)
    /* 8003D17C D7B60020 */ ldc1 $f22, 0x20($sp)
    /* 8003D180 8FB0002C */ lw $s0, 0x2C($sp)
    /* 8003D184 8FB10030 */ lw $s1, 0x30($sp)
    /* 8003D188 8FB20034 */ lw $s2, 0x34($sp)
    /* 8003D18C 8FB30038 */ lw $s3, 0x38($sp)
    /* 8003D190 8FB4003C */ lw $s4, 0x3C($sp)
    /* 8003D194 8FB50040 */ lw $s5, 0x40($sp)
    /* 8003D198 8FB60044 */ lw $s6, 0x44($sp)
    /* 8003D19C 8FB70048 */ lw $s7, 0x48($sp)
    /* 8003D1A0 03E00008 */ jr $ra
    /* 8003D1A4 27BD00B8 */ addiu $sp, $sp, 0xB8
