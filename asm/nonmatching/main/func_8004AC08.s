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
glabel func_8004AC08
    /* 8004AC08 27BDFF30 */ addiu $sp, $sp, -0xD0
    /* 8004AC0C AFBF003C */ sw $ra, 0x3C($sp)
    /* 8004AC10 AFB50038 */ sw $s5, 0x38($sp)
    /* 8004AC14 AFB40034 */ sw $s4, 0x34($sp)
    /* 8004AC18 AFB30030 */ sw $s3, 0x30($sp)
    /* 8004AC1C AFB2002C */ sw $s2, 0x2C($sp)
    /* 8004AC20 AFB10028 */ sw $s1, 0x28($sp)
    /* 8004AC24 AFB00024 */ sw $s0, 0x24($sp)
    /* 8004AC28 F7B40018 */ sdc1 $f20, 0x18($sp)
    /* 8004AC2C AFA400D0 */ sw $a0, 0xD0($sp)
    /* 8004AC30 AFA500D4 */ sw $a1, 0xD4($sp)
    /* 8004AC34 8C820024 */ lw $v0, 0x24($a0)
    /* 8004AC38 27B500B0 */ addiu $s5, $sp, 0xB0
    /* 8004AC3C D4940000 */ ldc1 $f20, 0x0($a0)
    /* 8004AC40 04410003 */ bgez $v0, .L8004AC50
    /* 8004AC44 240F0006 */ addiu $t7, $zero, 0x6
    /* 8004AC48 1000000C */ b .L8004AC7C
    /* 8004AC4C AC8F0024 */ sw $t7, 0x24($a0)
.L8004AC50:
    /* 8004AC50 1440000A */ bnez $v0, .L8004AC7C
    /* 8004AC54 93B800D7 */ lbu $t8, 0xD7($sp)
    /* 8004AC58 24010067 */ addiu $at, $zero, 0x67
    /* 8004AC5C 13010004 */ beq $t8, $at, .L8004AC70
    /* 8004AC60 AFB80048 */ sw $t8, 0x48($sp)
    /* 8004AC64 24010047 */ addiu $at, $zero, 0x47
    /* 8004AC68 57010005 */ bnel $t8, $at, .L8004AC80
    /* 8004AC6C 8FAE00D0 */ lw $t6, 0xD0($sp)
.L8004AC70:
    /* 8004AC70 8FAF00D0 */ lw $t7, 0xD0($sp)
    /* 8004AC74 24190001 */ addiu $t9, $zero, 0x1
    /* 8004AC78 ADF90024 */ sw $t9, 0x24($t7)
.L8004AC7C:
    /* 8004AC7C 8FAE00D0 */ lw $t6, 0xD0($sp)
.L8004AC80:
    /* 8004AC80 240107FF */ addiu $at, $zero, 0x7FF
    /* 8004AC84 95C40000 */ lhu $a0, 0x0($t6)
    /* 8004AC88 30837FF0 */ andi $v1, $a0, 0x7FF0
    /* 8004AC8C 0003C103 */ sra $t8, $v1, 4
    /* 8004AC90 0018CC00 */ sll $t9, $t8, 16
    /* 8004AC94 00191C03 */ sra $v1, $t9, 16
    /* 8004AC98 14610018 */ bne $v1, $at, .L8004ACFC
    /* 8004AC9C 00000000 */ nop
    /* 8004ACA0 A7A0009A */ sh $zero, 0x9A($sp)
    /* 8004ACA4 95D80000 */ lhu $t8, 0x0($t6)
    /* 8004ACA8 24030002 */ addiu $v1, $zero, 0x2
    /* 8004ACAC 00031400 */ sll $v0, $v1, 16
    /* 8004ACB0 3319000F */ andi $t9, $t8, 0xF
    /* 8004ACB4 5720000A */ bnel $t9, $zero, .L8004ACE0
    /* 8004ACB8 00027C03 */ sra $t7, $v0, 16
    /* 8004ACBC 95CF0002 */ lhu $t7, 0x2($t6)
    /* 8004ACC0 55E00007 */ bnel $t7, $zero, .L8004ACE0
    /* 8004ACC4 00027C03 */ sra $t7, $v0, 16
    /* 8004ACC8 95D80004 */ lhu $t8, 0x4($t6)
    /* 8004ACCC 57000004 */ bnel $t8, $zero, .L8004ACE0
    /* 8004ACD0 00027C03 */ sra $t7, $v0, 16
    /* 8004ACD4 95D90006 */ lhu $t9, 0x6($t6)
    /* 8004ACD8 13200003 */ beqz $t9, .L8004ACE8
    /* 8004ACDC 00027C03 */ sra $t7, $v0, 16
.L8004ACE0:
    /* 8004ACE0 10000014 */ b .L8004AD34
    /* 8004ACE4 01E01025 */ move $v0, $t7
.L8004ACE8:
    /* 8004ACE8 24030001 */ addiu $v1, $zero, 0x1
    /* 8004ACEC 00031400 */ sll $v0, $v1, 16
    /* 8004ACF0 00027C03 */ sra $t7, $v0, 16
    /* 8004ACF4 1000000F */ b .L8004AD34
    /* 8004ACF8 01E01025 */ move $v0, $t7
.L8004ACFC:
    /* 8004ACFC 18600008 */ blez $v1, .L8004AD20
    /* 8004AD00 3098800F */ andi $t8, $a0, 0x800F
    /* 8004AD04 8FB900D0 */ lw $t9, 0xD0($sp)
    /* 8004AD08 370E3FF0 */ ori $t6, $t8, 0x3FF0
    /* 8004AD0C 246FFC02 */ addiu $t7, $v1, -0x3FE
    /* 8004AD10 A72E0000 */ sh $t6, 0x0($t9)
    /* 8004AD14 A7AF009A */ sh $t7, 0x9A($sp)
    /* 8004AD18 10000006 */ b .L8004AD34
    /* 8004AD1C 2402FFFF */ addiu $v0, $zero, -0x1
.L8004AD20:
    /* 8004AD20 04610003 */ bgez $v1, .L8004AD30
    /* 8004AD24 00001025 */ move $v0, $zero
    /* 8004AD28 10000002 */ b .L8004AD34
    /* 8004AD2C 24020002 */ addiu $v0, $zero, 0x2
.L8004AD30:
    /* 8004AD30 A7A0009A */ sh $zero, 0x9A($sp)
.L8004AD34:
    /* 8004AD34 18400012 */ blez $v0, .L8004AD80
    /* 8004AD38 0002C400 */ sll $t8, $v0, 16
    /* 8004AD3C 0002C400 */ sll $t8, $v0, 16
    /* 8004AD40 00187403 */ sra $t6, $t8, 16
    /* 8004AD44 24010002 */ addiu $at, $zero, 0x2
    /* 8004AD48 15C10004 */ bne $t6, $at, .L8004AD5C
    /* 8004AD4C 8FB900D0 */ lw $t9, 0xD0($sp)
    /* 8004AD50 3C058000 */ lui $a1, %hi(D_80002560)
    /* 8004AD54 10000003 */ b .L8004AD64
    /* 8004AD58 24A52560 */ addiu $a1, $a1, %lo(D_80002560)
.L8004AD5C:
    /* 8004AD5C 3C058000 */ lui $a1, %hi(D_80002564)
    /* 8004AD60 24A52564 */ addiu $a1, $a1, %lo(D_80002564)
.L8004AD64:
    /* 8004AD64 240F0003 */ addiu $t7, $zero, 0x3
    /* 8004AD68 AF2F0014 */ sw $t7, 0x14($t9)
    /* 8004AD6C 8F240008 */ lw $a0, 0x8($t9)
    /* 8004AD70 0C012542 */ jal memcpy
    /* 8004AD74 24060003 */ addiu $a2, $zero, 0x3
    /* 8004AD78 100000ED */ b .L8004B130
    /* 8004AD7C 8FBF003C */ lw $ra, 0x3C($sp)
.L8004AD80:
    /* 8004AD80 00187403 */ sra $t6, $t8, 16
    /* 8004AD84 15C00003 */ bnez $t6, .L8004AD94
    /* 8004AD88 00009825 */ move $s3, $zero
    /* 8004AD8C 100000E2 */ b .L8004B118
    /* 8004AD90 A7A0009A */ sh $zero, 0x9A($sp)
.L8004AD94:
    /* 8004AD94 44801800 */ mtc1 $zero, $f3
    /* 8004AD98 44801000 */ mtc1 $zero, $f2
    /* 8004AD9C 93AF00D7 */ lbu $t7, 0xD7($sp)
    /* 8004ADA0 87B9009A */ lh $t9, 0x9A($sp)
    /* 8004ADA4 4622A03C */ c.lt.d $f20, $f2
    /* 8004ADA8 24017597 */ addiu $at, $zero, 0x7597
    /* 8004ADAC 00001825 */ move $v1, $zero
    /* 8004ADB0 27B500B1 */ addiu $s5, $sp, 0xB1
    /* 8004ADB4 45000002 */ bc1f .L8004ADC0
    /* 8004ADB8 AFAF0048 */ sw $t7, 0x48($sp)
    /* 8004ADBC 4620A507 */ neg.d $f20, $f20
.L8004ADC0:
    /* 8004ADC0 03210019 */ multu $t9, $at
    /* 8004ADC4 3C010001 */ lui $at, 0x1
    /* 8004ADC8 342186A0 */ ori $at, $at, 0x86A0
    /* 8004ADCC 24050006 */ addiu $a1, $zero, 0x6
    /* 8004ADD0 0000C012 */ mflo $t8
    /* 8004ADD4 00000000 */ nop
    /* 8004ADD8 00000000 */ nop
    /* 8004ADDC 0301001A */ div $zero, $t8, $at
    /* 8004ADE0 00007012 */ mflo $t6
    /* 8004ADE4 25CFFFFC */ addiu $t7, $t6, -0x4
    /* 8004ADE8 000FCC00 */ sll $t9, $t7, 16
    /* 8004ADEC 0019C403 */ sra $t8, $t9, 16
    /* 8004ADF0 07010019 */ bgez $t8, .L8004AE58
    /* 8004ADF4 A7AF009A */ sh $t7, 0x9A($sp)
    /* 8004ADF8 000FCC00 */ sll $t9, $t7, 16
    /* 8004ADFC 0019C403 */ sra $t8, $t9, 16
    /* 8004AE00 240E0003 */ addiu $t6, $zero, 0x3
    /* 8004AE04 01D82023 */ subu $a0, $t6, $t8
    /* 8004AE08 2401FFFC */ addiu $at, $zero, -0x4
    /* 8004AE0C 00811024 */ and $v0, $a0, $at
    /* 8004AE10 0002C823 */ negu $t9, $v0
    /* 8004AE14 1840002C */ blez $v0, .L8004AEC8
    /* 8004AE18 A7B9009A */ sh $t9, 0x9A($sp)
    /* 8004AE1C 3C048000 */ lui $a0, %hi(D_80002518)
    /* 8004AE20 24842518 */ addiu $a0, $a0, %lo(D_80002518)
.L8004AE24:
    /* 8004AE24 304E0001 */ andi $t6, $v0, 0x1
    /* 8004AE28 11C00006 */ beqz $t6, .L8004AE44
    /* 8004AE2C 0002C843 */ sra $t9, $v0, 1
    /* 8004AE30 0003C0C0 */ sll $t8, $v1, 3
    /* 8004AE34 00987821 */ addu $t7, $a0, $t8
    /* 8004AE38 D5E40000 */ ldc1 $f4, 0x0($t7)
    /* 8004AE3C 4624A502 */ mul.d $f20, $f20, $f4
    /* 8004AE40 00000000 */ nop
.L8004AE44:
    /* 8004AE44 03201025 */ move $v0, $t9
    /* 8004AE48 1F20FFF6 */ bgtz $t9, .L8004AE24
    /* 8004AE4C 24630001 */ addiu $v1, $v1, 0x1
    /* 8004AE50 1000001E */ b .L8004AECC
    /* 8004AE54 8FAF0048 */ lw $t7, 0x48($sp)
.L8004AE58:
    /* 8004AE58 87AE009A */ lh $t6, 0x9A($sp)
    /* 8004AE5C 3C013FF0 */ lui $at, 0x3FF0
    /* 8004AE60 00001825 */ move $v1, $zero
    /* 8004AE64 19C00018 */ blez $t6, .L8004AEC8
    /* 8004AE68 31D8FFFC */ andi $t8, $t6, 0xFFFC
    /* 8004AE6C 00181400 */ sll $v0, $t8, 16
    /* 8004AE70 0018CC00 */ sll $t9, $t8, 16
    /* 8004AE74 44810800 */ mtc1 $at, $f1
    /* 8004AE78 44800000 */ mtc1 $zero, $f0
    /* 8004AE7C 00197403 */ sra $t6, $t9, 16
    /* 8004AE80 00027C03 */ sra $t7, $v0, 16
    /* 8004AE84 A7B8009A */ sh $t8, 0x9A($sp)
    /* 8004AE88 19C0000E */ blez $t6, .L8004AEC4
    /* 8004AE8C 01E01025 */ move $v0, $t7
    /* 8004AE90 3C048000 */ lui $a0, %hi(D_80002518)
    /* 8004AE94 24842518 */ addiu $a0, $a0, %lo(D_80002518)
.L8004AE98:
    /* 8004AE98 304F0001 */ andi $t7, $v0, 0x1
    /* 8004AE9C 11E00006 */ beqz $t7, .L8004AEB8
    /* 8004AEA0 00027043 */ sra $t6, $v0, 1
    /* 8004AEA4 0003C0C0 */ sll $t8, $v1, 3
    /* 8004AEA8 0098C821 */ addu $t9, $a0, $t8
    /* 8004AEAC D7260000 */ ldc1 $f6, 0x0($t9)
    /* 8004AEB0 46260002 */ mul.d $f0, $f0, $f6
    /* 8004AEB4 00000000 */ nop
.L8004AEB8:
    /* 8004AEB8 01C01025 */ move $v0, $t6
    /* 8004AEBC 1DC0FFF6 */ bgtz $t6, .L8004AE98
    /* 8004AEC0 24630001 */ addiu $v1, $v1, 0x1
.L8004AEC4:
    /* 8004AEC4 4620A503 */ div.d $f20, $f20, $f0
.L8004AEC8:
    /* 8004AEC8 8FAF0048 */ lw $t7, 0x48($sp)
.L8004AECC:
    /* 8004AECC 24010066 */ addiu $at, $zero, 0x66
    /* 8004AED0 8FB800D0 */ lw $t8, 0xD0($sp)
    /* 8004AED4 15E10004 */ bne $t7, $at, .L8004AEE8
    /* 8004AED8 240E0030 */ addiu $t6, $zero, 0x30
    /* 8004AEDC 87A5009A */ lh $a1, 0x9A($sp)
    /* 8004AEE0 10000001 */ b .L8004AEE8
    /* 8004AEE4 24A5000A */ addiu $a1, $a1, 0xA
.L8004AEE8:
    /* 8004AEE8 8F190024 */ lw $t9, 0x24($t8)
    /* 8004AEEC 00B9A021 */ addu $s4, $a1, $t9
    /* 8004AEF0 2A810014 */ slti $at, $s4, 0x14
    /* 8004AEF4 14200002 */ bnez $at, .L8004AF00
    /* 8004AEF8 00000000 */ nop
    /* 8004AEFC 24140013 */ addiu $s4, $zero, 0x13
.L8004AF00:
    /* 8004AF00 1A800033 */ blez $s4, .L8004AFD0
    /* 8004AF04 A3AE00B0 */ sb $t6, 0xB0($sp)
    /* 8004AF08 4634103C */ c.lt.d $f2, $f20
    /* 8004AF0C 24130030 */ addiu $s3, $zero, 0x30
    /* 8004AF10 27B20074 */ addiu $s2, $sp, 0x74
    /* 8004AF14 4502002F */ bc1fl .L8004AFD4
    /* 8004AF18 87B8009A */ lh $t8, 0x9A($sp)
    /* 8004AF1C 4620A20D */ trunc.w.d $f8, $f20
.L8004AF20:
    /* 8004AF20 2694FFF8 */ addiu $s4, $s4, -0x8
    /* 8004AF24 26B50008 */ addiu $s5, $s5, 0x8
    /* 8004AF28 44114000 */ mfc1 $s1, $f8
    /* 8004AF2C 1A800008 */ blez $s4, .L8004AF50
    /* 8004AF30 00000000 */ nop
    /* 8004AF34 44915000 */ mtc1 $s1, $f10
    /* 8004AF38 3C018000 */ lui $at, %hi(D_80002570)
    /* 8004AF3C D4282570 */ ldc1 $f8, %lo(D_80002570)($at)
    /* 8004AF40 46805121 */ cvt.d.w $f4, $f10
    /* 8004AF44 4624A181 */ sub.d $f6, $f20, $f4
    /* 8004AF48 46283502 */ mul.d $f20, $f6, $f8
    /* 8004AF4C 00000000 */ nop
.L8004AF50:
    /* 8004AF50 1A200011 */ blez $s1, .L8004AF98
    /* 8004AF54 24100008 */ addiu $s0, $zero, 0x8
    /* 8004AF58 24100007 */ addiu $s0, $zero, 0x7
    /* 8004AF5C 0600000E */ bltz $s0, .L8004AF98
    /* 8004AF60 02402025 */ move $a0, $s2
.L8004AF64:
    /* 8004AF64 02202825 */ move $a1, $s1
    /* 8004AF68 0C012982 */ jal ldiv
    /* 8004AF6C 2406000A */ addiu $a2, $zero, 0xA
    /* 8004AF70 8FB80078 */ lw $t8, 0x78($sp)
    /* 8004AF74 26B5FFFF */ addiu $s5, $s5, -0x1
    /* 8004AF78 27190030 */ addiu $t9, $t8, 0x30
    /* 8004AF7C A2B90000 */ sb $t9, 0x0($s5)
    /* 8004AF80 8FB10074 */ lw $s1, 0x74($sp)
    /* 8004AF84 5A200005 */ blezl $s1, .L8004AF9C
    /* 8004AF88 44801800 */ mtc1 $zero, $f3
    /* 8004AF8C 2610FFFF */ addiu $s0, $s0, -0x1
    /* 8004AF90 0603FFF4 */ bgezl $s0, .L8004AF64
    /* 8004AF94 02402025 */ move $a0, $s2
.L8004AF98:
    /* 8004AF98 44801800 */ mtc1 $zero, $f3
.L8004AF9C:
    /* 8004AF9C 44801000 */ mtc1 $zero, $f2
    /* 8004AFA0 2610FFFF */ addiu $s0, $s0, -0x1
    /* 8004AFA4 06000004 */ bltz $s0, .L8004AFB8
.L8004AFA8:
    /* 8004AFA8 2610FFFF */ addiu $s0, $s0, -0x1
    /* 8004AFAC 26B5FFFF */ addiu $s5, $s5, -0x1
    /* 8004AFB0 0601FFFD */ bgez $s0, .L8004AFA8
    /* 8004AFB4 A2B30000 */ sb $s3, 0x0($s5)
.L8004AFB8:
    /* 8004AFB8 1A800005 */ blez $s4, .L8004AFD0
    /* 8004AFBC 26B50008 */ addiu $s5, $s5, 0x8
    /* 8004AFC0 4634103C */ c.lt.d $f2, $f20
    /* 8004AFC4 00000000 */ nop
    /* 8004AFC8 4503FFD5 */ bc1tl .L8004AF20
    /* 8004AFCC 4620A20D */ trunc.w.d $f8, $f20
.L8004AFD0:
    /* 8004AFD0 87B8009A */ lh $t8, 0x9A($sp)
.L8004AFD4:
    /* 8004AFD4 93AE00B1 */ lbu $t6, 0xB1($sp)
    /* 8004AFD8 27AF00B0 */ addiu $t7, $sp, 0xB0
    /* 8004AFDC 24020030 */ addiu $v0, $zero, 0x30
    /* 8004AFE0 02AFA023 */ subu $s4, $s5, $t7
    /* 8004AFE4 27190007 */ addiu $t9, $t8, 0x7
    /* 8004AFE8 2694FFFF */ addiu $s4, $s4, -0x1
    /* 8004AFEC A7B9009A */ sh $t9, 0x9A($sp)
    /* 8004AFF0 144E0009 */ bne $v0, $t6, .L8004B018
    /* 8004AFF4 27B500B1 */ addiu $s5, $sp, 0xB1
    /* 8004AFF8 87AF009A */ lh $t7, 0x9A($sp)
.L8004AFFC:
    /* 8004AFFC 26B50001 */ addiu $s5, $s5, 0x1
    /* 8004B000 2694FFFF */ addiu $s4, $s4, -0x1
    /* 8004B004 25F8FFFF */ addiu $t8, $t7, -0x1
    /* 8004B008 A7B8009A */ sh $t8, 0x9A($sp)
    /* 8004B00C 92B90000 */ lbu $t9, 0x0($s5)
    /* 8004B010 5059FFFA */ beql $v0, $t9, .L8004AFFC
    /* 8004B014 87AF009A */ lh $t7, 0x9A($sp)
.L8004B018:
    /* 8004B018 8FAE0048 */ lw $t6, 0x48($sp)
    /* 8004B01C 24010066 */ addiu $at, $zero, 0x66
    /* 8004B020 8FB800D0 */ lw $t8, 0xD0($sp)
    /* 8004B024 15C10004 */ bne $t6, $at, .L8004B038
    /* 8004B028 8FAF0048 */ lw $t7, 0x48($sp)
    /* 8004B02C 87A5009A */ lh $a1, 0x9A($sp)
    /* 8004B030 10000009 */ b .L8004B058
    /* 8004B034 24A50001 */ addiu $a1, $a1, 0x1
.L8004B038:
    /* 8004B038 24010065 */ addiu $at, $zero, 0x65
    /* 8004B03C 11E10003 */ beq $t7, $at, .L8004B04C
    /* 8004B040 24010045 */ addiu $at, $zero, 0x45
    /* 8004B044 15E10003 */ bne $t7, $at, .L8004B054
    /* 8004B048 00001025 */ move $v0, $zero
.L8004B04C:
    /* 8004B04C 10000001 */ b .L8004B054
    /* 8004B050 24020001 */ addiu $v0, $zero, 0x1
.L8004B054:
    /* 8004B054 00402825 */ move $a1, $v0
.L8004B058:
    /* 8004B058 8F190024 */ lw $t9, 0x24($t8)
    /* 8004B05C 00B99821 */ addu $s3, $a1, $t9
    /* 8004B060 00137400 */ sll $t6, $s3, 16
    /* 8004B064 000E9C03 */ sra $s3, $t6, 16
    /* 8004B068 0293082A */ slt $at, $s4, $s3
    /* 8004B06C 10200004 */ beqz $at, .L8004B080
    /* 8004B070 00000000 */ nop
    /* 8004B074 00149C00 */ sll $s3, $s4, 16
    /* 8004B078 0013C403 */ sra $t8, $s3, 16
    /* 8004B07C 03009825 */ move $s3, $t8
.L8004B080:
    /* 8004B080 1A600025 */ blez $s3, .L8004B118
    /* 8004B084 0274082A */ slt $at, $s3, $s4
    /* 8004B088 10200007 */ beqz $at, .L8004B0A8
    /* 8004B08C 02751021 */ addu $v0, $s3, $s5
    /* 8004B090 90590000 */ lbu $t9, 0x0($v0)
    /* 8004B094 2B210035 */ slti $at, $t9, 0x35
    /* 8004B098 54200004 */ bnel $at, $zero, .L8004B0AC
    /* 8004B09C 24050030 */ addiu $a1, $zero, 0x30
    /* 8004B0A0 10000003 */ b .L8004B0B0
    /* 8004B0A4 24050039 */ addiu $a1, $zero, 0x39
.L8004B0A8:
    /* 8004B0A8 24050030 */ addiu $a1, $zero, 0x30
.L8004B0AC:
    /* 8004B0AC 02751021 */ addu $v0, $s3, $s5
.L8004B0B0:
    /* 8004B0B0 904EFFFF */ lbu $t6, -0x1($v0)
    /* 8004B0B4 2663FFFF */ addiu $v1, $s3, -0x1
    /* 8004B0B8 00A02025 */ move $a0, $a1
    /* 8004B0BC 14AE0009 */ bne $a1, $t6, .L8004B0E4
    /* 8004B0C0 24010039 */ addiu $at, $zero, 0x39
    /* 8004B0C4 00751021 */ addu $v0, $v1, $s5
.L8004B0C8:
    /* 8004B0C8 9059FFFF */ lbu $t9, -0x1($v0)
    /* 8004B0CC 2673FFFF */ addiu $s3, $s3, -0x1
    /* 8004B0D0 00137C00 */ sll $t7, $s3, 16
    /* 8004B0D4 2463FFFF */ addiu $v1, $v1, -0x1
    /* 8004B0D8 2442FFFF */ addiu $v0, $v0, -0x1
    /* 8004B0DC 1099FFFA */ beq $a0, $t9, .L8004B0C8
    /* 8004B0E0 000F9C03 */ sra $s3, $t7, 16
.L8004B0E4:
    /* 8004B0E4 14810004 */ bne $a0, $at, .L8004B0F8
    /* 8004B0E8 02A31021 */ addu $v0, $s5, $v1
    /* 8004B0EC 904E0000 */ lbu $t6, 0x0($v0)
    /* 8004B0F0 25CF0001 */ addiu $t7, $t6, 0x1
    /* 8004B0F4 A04F0000 */ sb $t7, 0x0($v0)
.L8004B0F8:
    /* 8004B0F8 04610007 */ bgez $v1, .L8004B118
    /* 8004B0FC 87AE009A */ lh $t6, 0x9A($sp)
    /* 8004B100 26730001 */ addiu $s3, $s3, 0x1
    /* 8004B104 0013C400 */ sll $t8, $s3, 16
    /* 8004B108 25CF0001 */ addiu $t7, $t6, 0x1
    /* 8004B10C A7AF009A */ sh $t7, 0x9A($sp)
    /* 8004B110 00189C03 */ sra $s3, $t8, 16
    /* 8004B114 26B5FFFF */ addiu $s5, $s5, -0x1
.L8004B118:
    /* 8004B118 8FB000D0 */ lw $s0, 0xD0($sp)
    /* 8004B11C 93B400D7 */ lbu $s4, 0xD7($sp)
    /* 8004B120 02A08825 */ move $s1, $s5
    /* 8004B124 0C0129A6 */ jal func_8004A698
    /* 8004B128 87B2009A */ lh $s2, 0x9A($sp)
    /* 8004B12C 8FBF003C */ lw $ra, 0x3C($sp)
.L8004B130:
    /* 8004B130 D7B40018 */ ldc1 $f20, 0x18($sp)
    /* 8004B134 8FB00024 */ lw $s0, 0x24($sp)
    /* 8004B138 8FB10028 */ lw $s1, 0x28($sp)
    /* 8004B13C 8FB2002C */ lw $s2, 0x2C($sp)
    /* 8004B140 8FB30030 */ lw $s3, 0x30($sp)
    /* 8004B144 8FB40034 */ lw $s4, 0x34($sp)
    /* 8004B148 8FB50038 */ lw $s5, 0x38($sp)
    /* 8004B14C 03E00008 */ jr $ra
    /* 8004B150 27BD00D0 */ addiu $sp, $sp, 0xD0
    /* 8004B154 00000000 */ nop
