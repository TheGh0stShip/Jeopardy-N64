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
glabel func_8001C9DC
    /* 8001C9DC 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8001C9E0 AFBF0024 */ sw $ra, 0x24($sp)
    /* 8001C9E4 AFBE0020 */ sw $fp, 0x20($sp)
    /* 8001C9E8 03A0F021 */ addu $fp, $sp, $zero
    /* 8001C9EC 0C006C8C */ jal func_8001B230
    /* 8001C9F0 00000000 */ nop
    /* 8001C9F4 AFC00018 */ sw $zero, 0x18($fp)
.L8001C9F8:
    /* 8001C9F8 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001C9FC 2C43000C */ sltiu $v1, $v0, 0xC
    /* 8001CA00 14600003 */ bnez $v1, .L8001CA10
    /* 8001CA04 00000000 */ nop
    /* 8001CA08 080072AB */ j .L8001CAAC
    /* 8001CA0C 00000000 */ nop
.L8001CA10:
    /* 8001CA10 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CA14 00401821 */ addu $v1, $v0, $zero
    /* 8001CA18 00031140 */ sll $v0, $v1, 5
    /* 8001CA1C 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CA20 00602021 */ addu $a0, $v1, $zero
    /* 8001CA24 00041940 */ sll $v1, $a0, 5
    /* 8001CA28 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CA2C 00802821 */ addu $a1, $a0, $zero
    /* 8001CA30 00053140 */ sll $a2, $a1, 5
    /* 8001CA34 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CA38 00802821 */ addu $a1, $a0, $zero
    /* 8001CA3C 00053940 */ sll $a3, $a1, 5
    /* 8001CA40 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CA44 00802821 */ addu $a1, $a0, $zero
    /* 8001CA48 00052140 */ sll $a0, $a1, 5
    /* 8001CA4C 3C018005 */ lui $at, %hi(D_80056E68)
    /* 8001CA50 00240821 */ addu $at, $at, $a0
    /* 8001CA54 8C256E68 */ lw $a1, %lo(D_80056E68)($at)
    /* 8001CA58 AFA50010 */ sw $a1, 0x10($sp)
    /* 8001CA5C 3C018005 */ lui $at, %hi(D_80056E54)
    /* 8001CA60 00220821 */ addu $at, $at, $v0
    /* 8001CA64 8C246E54 */ lw $a0, %lo(D_80056E54)($at)
    /* 8001CA68 3C018005 */ lui $at, %hi(D_80056E58)
    /* 8001CA6C 00230821 */ addu $at, $at, $v1
    /* 8001CA70 8C256E58 */ lw $a1, %lo(D_80056E58)($at)
    /* 8001CA74 3C018005 */ lui $at, %hi(D_80056E5C)
    /* 8001CA78 00260821 */ addu $at, $at, $a2
    /* 8001CA7C 8C266E5C */ lw $a2, %lo(D_80056E5C)($at)
    /* 8001CA80 3C018005 */ lui $at, %hi(D_80056E60)
    /* 8001CA84 00270821 */ addu $at, $at, $a3
    /* 8001CA88 8C276E60 */ lw $a3, %lo(D_80056E60)($at)
    /* 8001CA8C 0C0081C0 */ jal func_80020700
    /* 8001CA90 00000000 */ nop
    /* 8001CA94 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CA98 24620001 */ addiu $v0, $v1, 0x1
    /* 8001CA9C 00401821 */ addu $v1, $v0, $zero
    /* 8001CAA0 AFC30018 */ sw $v1, 0x18($fp)
    /* 8001CAA4 0800727E */ j .L8001C9F8
    /* 8001CAA8 00000000 */ nop
.L8001CAAC:
    /* 8001CAAC 00000000 */ nop
    /* 8001CAB0 AFC00018 */ sw $zero, 0x18($fp)
.L8001CAB4:
    /* 8001CAB4 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CAB8 2C430003 */ sltiu $v1, $v0, 0x3
    /* 8001CABC 14600003 */ bnez $v1, .L8001CACC
    /* 8001CAC0 00000000 */ nop
    /* 8001CAC4 080072DA */ j .L8001CB68
    /* 8001CAC8 00000000 */ nop
.L8001CACC:
    /* 8001CACC 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CAD0 00401821 */ addu $v1, $v0, $zero
    /* 8001CAD4 00031140 */ sll $v0, $v1, 5
    /* 8001CAD8 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CADC 00602021 */ addu $a0, $v1, $zero
    /* 8001CAE0 00041940 */ sll $v1, $a0, 5
    /* 8001CAE4 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CAE8 00802821 */ addu $a1, $a0, $zero
    /* 8001CAEC 00053140 */ sll $a2, $a1, 5
    /* 8001CAF0 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CAF4 00802821 */ addu $a1, $a0, $zero
    /* 8001CAF8 00053940 */ sll $a3, $a1, 5
    /* 8001CAFC 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CB00 00802821 */ addu $a1, $a0, $zero
    /* 8001CB04 00052140 */ sll $a0, $a1, 5
    /* 8001CB08 3C018005 */ lui $at, %hi(D_800568C4)
    /* 8001CB0C 00240821 */ addu $at, $at, $a0
    /* 8001CB10 8C2568C4 */ lw $a1, %lo(D_800568C4)($at)
    /* 8001CB14 AFA50010 */ sw $a1, 0x10($sp)
    /* 8001CB18 3C018005 */ lui $at, %hi(D_800568B4)
    /* 8001CB1C 00220821 */ addu $at, $at, $v0
    /* 8001CB20 8C2468B4 */ lw $a0, %lo(D_800568B4)($at)
    /* 8001CB24 3C018005 */ lui $at, %hi(D_800568B8)
    /* 8001CB28 00230821 */ addu $at, $at, $v1
    /* 8001CB2C 8C2568B8 */ lw $a1, %lo(D_800568B8)($at)
    /* 8001CB30 3C018005 */ lui $at, %hi(D_800568BC)
    /* 8001CB34 00260821 */ addu $at, $at, $a2
    /* 8001CB38 8C2668BC */ lw $a2, %lo(D_800568BC)($at)
    /* 8001CB3C 3C018005 */ lui $at, %hi(D_800568C0)
    /* 8001CB40 00270821 */ addu $at, $at, $a3
    /* 8001CB44 8C2768C0 */ lw $a3, %lo(D_800568C0)($at)
    /* 8001CB48 0C0081C0 */ jal func_80020700
    /* 8001CB4C 00000000 */ nop
    /* 8001CB50 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CB54 24620001 */ addiu $v0, $v1, 0x1
    /* 8001CB58 00401821 */ addu $v1, $v0, $zero
    /* 8001CB5C AFC30018 */ sw $v1, 0x18($fp)
    /* 8001CB60 080072AD */ j .L8001CAB4
    /* 8001CB64 00000000 */ nop
.L8001CB68:
    /* 8001CB68 3C028006 */ lui $v0, %hi(D_800580C4)
    /* 8001CB6C 8C4280C4 */ lw $v0, %lo(D_800580C4)($v0)
    /* 8001CB70 1040005D */ beqz $v0, .L8001CCE8
    /* 8001CB74 00000000 */ nop
    /* 8001CB78 24020009 */ addiu $v0, $zero, 0x9
    /* 8001CB7C AFC20018 */ sw $v0, 0x18($fp)
.L8001CB80:
    /* 8001CB80 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CB84 2C43000C */ sltiu $v1, $v0, 0xC
    /* 8001CB88 14600003 */ bnez $v1, .L8001CB98
    /* 8001CB8C 00000000 */ nop
    /* 8001CB90 08007338 */ j .L8001CCE0
    /* 8001CB94 00000000 */ nop
.L8001CB98:
    /* 8001CB98 3C028006 */ lui $v0, %hi(D_800580C8)
    /* 8001CB9C 8C4280C8 */ lw $v0, %lo(D_800580C8)($v0)
    /* 8001CBA0 10400024 */ beqz $v0, .L8001CC34
    /* 8001CBA4 00000000 */ nop
    /* 8001CBA8 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CBAC 00401821 */ addu $v1, $v0, $zero
    /* 8001CBB0 00031140 */ sll $v0, $v1, 5
    /* 8001CBB4 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CBB8 00602021 */ addu $a0, $v1, $zero
    /* 8001CBBC 00041940 */ sll $v1, $a0, 5
    /* 8001CBC0 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CBC4 00802821 */ addu $a1, $a0, $zero
    /* 8001CBC8 00053140 */ sll $a2, $a1, 5
    /* 8001CBCC 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CBD0 00802821 */ addu $a1, $a0, $zero
    /* 8001CBD4 00053940 */ sll $a3, $a1, 5
    /* 8001CBD8 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CBDC 00802821 */ addu $a1, $a0, $zero
    /* 8001CBE0 00052140 */ sll $a0, $a1, 5
    /* 8001CBE4 3C018005 */ lui $at, %hi(D_80056E70)
    /* 8001CBE8 00240821 */ addu $at, $at, $a0
    /* 8001CBEC 8C256E70 */ lw $a1, %lo(D_80056E70)($at)
    /* 8001CBF0 AFA50010 */ sw $a1, 0x10($sp)
    /* 8001CBF4 3C018005 */ lui $at, %hi(D_80056E54)
    /* 8001CBF8 00220821 */ addu $at, $at, $v0
    /* 8001CBFC 8C246E54 */ lw $a0, %lo(D_80056E54)($at)
    /* 8001CC00 3C018005 */ lui $at, %hi(D_80056E58)
    /* 8001CC04 00230821 */ addu $at, $at, $v1
    /* 8001CC08 8C256E58 */ lw $a1, %lo(D_80056E58)($at)
    /* 8001CC0C 3C018005 */ lui $at, %hi(D_80056E5C)
    /* 8001CC10 00260821 */ addu $at, $at, $a2
    /* 8001CC14 8C266E5C */ lw $a2, %lo(D_80056E5C)($at)
    /* 8001CC18 3C018005 */ lui $at, %hi(D_80056E60)
    /* 8001CC1C 00270821 */ addu $at, $at, $a3
    /* 8001CC20 8C276E60 */ lw $a3, %lo(D_80056E60)($at)
    /* 8001CC24 0C0081C0 */ jal func_80020700
    /* 8001CC28 00000000 */ nop
    /* 8001CC2C 08007332 */ j .L8001CCC8
    /* 8001CC30 00000000 */ nop
.L8001CC34:
    /* 8001CC34 3C028006 */ lui $v0, %hi(D_800580D4)
    /* 8001CC38 8C4280D4 */ lw $v0, %lo(D_800580D4)($v0)
    /* 8001CC3C 10400022 */ beqz $v0, .L8001CCC8
    /* 8001CC40 00000000 */ nop
    /* 8001CC44 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CC48 00401821 */ addu $v1, $v0, $zero
    /* 8001CC4C 00031140 */ sll $v0, $v1, 5
    /* 8001CC50 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CC54 00602021 */ addu $a0, $v1, $zero
    /* 8001CC58 00041940 */ sll $v1, $a0, 5
    /* 8001CC5C 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CC60 00802821 */ addu $a1, $a0, $zero
    /* 8001CC64 00053140 */ sll $a2, $a1, 5
    /* 8001CC68 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CC6C 00802821 */ addu $a1, $a0, $zero
    /* 8001CC70 00053940 */ sll $a3, $a1, 5
    /* 8001CC74 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CC78 00802821 */ addu $a1, $a0, $zero
    /* 8001CC7C 00052140 */ sll $a0, $a1, 5
    /* 8001CC80 3C018005 */ lui $at, %hi(D_80056E6C)
    /* 8001CC84 00240821 */ addu $at, $at, $a0
    /* 8001CC88 8C256E6C */ lw $a1, %lo(D_80056E6C)($at)
    /* 8001CC8C AFA50010 */ sw $a1, 0x10($sp)
    /* 8001CC90 3C018005 */ lui $at, %hi(D_80056E54)
    /* 8001CC94 00220821 */ addu $at, $at, $v0
    /* 8001CC98 8C246E54 */ lw $a0, %lo(D_80056E54)($at)
    /* 8001CC9C 3C018005 */ lui $at, %hi(D_80056E58)
    /* 8001CCA0 00230821 */ addu $at, $at, $v1
    /* 8001CCA4 8C256E58 */ lw $a1, %lo(D_80056E58)($at)
    /* 8001CCA8 3C018005 */ lui $at, %hi(D_80056E5C)
    /* 8001CCAC 00260821 */ addu $at, $at, $a2
    /* 8001CCB0 8C266E5C */ lw $a2, %lo(D_80056E5C)($at)
    /* 8001CCB4 3C018005 */ lui $at, %hi(D_80056E60)
    /* 8001CCB8 00270821 */ addu $at, $at, $a3
    /* 8001CCBC 8C276E60 */ lw $a3, %lo(D_80056E60)($at)
    /* 8001CCC0 0C0081C0 */ jal func_80020700
    /* 8001CCC4 00000000 */ nop
.L8001CCC8:
    /* 8001CCC8 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CCCC 24620001 */ addiu $v0, $v1, 0x1
    /* 8001CCD0 00401821 */ addu $v1, $v0, $zero
    /* 8001CCD4 AFC30018 */ sw $v1, 0x18($fp)
    /* 8001CCD8 080072E0 */ j .L8001CB80
    /* 8001CCDC 00000000 */ nop
.L8001CCE0:
    /* 8001CCE0 0800739F */ j .L8001CE7C
    /* 8001CCE4 00000000 */ nop
.L8001CCE8:
    /* 8001CCE8 00000000 */ nop
    /* 8001CCEC 3C028006 */ lui $v0, %hi(D_80059610)
    /* 8001CCF0 8C429610 */ lw $v0, %lo(D_80059610)($v0)
    /* 8001CCF4 00401821 */ addu $v1, $v0, $zero
    /* 8001CCF8 00032040 */ sll $a0, $v1, 1
    /* 8001CCFC 00821021 */ addu $v0, $a0, $v0
    /* 8001CD00 AFC20018 */ sw $v0, 0x18($fp)
.L8001CD04:
    /* 8001CD04 3C028006 */ lui $v0, %hi(D_80059610)
    /* 8001CD08 8C429610 */ lw $v0, %lo(D_80059610)($v0)
    /* 8001CD0C 00402021 */ addu $a0, $v0, $zero
    /* 8001CD10 00041840 */ sll $v1, $a0, 1
    /* 8001CD14 00621821 */ addu $v1, $v1, $v0
    /* 8001CD18 24620003 */ addiu $v0, $v1, 0x3
    /* 8001CD1C 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CD20 0062102B */ sltu $v0, $v1, $v0
    /* 8001CD24 14400003 */ bnez $v0, .L8001CD34
    /* 8001CD28 00000000 */ nop
    /* 8001CD2C 0800739F */ j .L8001CE7C
    /* 8001CD30 00000000 */ nop
.L8001CD34:
    /* 8001CD34 3C028006 */ lui $v0, %hi(D_800580C8)
    /* 8001CD38 8C4280C8 */ lw $v0, %lo(D_800580C8)($v0)
    /* 8001CD3C 10400024 */ beqz $v0, .L8001CDD0
    /* 8001CD40 00000000 */ nop
    /* 8001CD44 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CD48 00401821 */ addu $v1, $v0, $zero
    /* 8001CD4C 00031140 */ sll $v0, $v1, 5
    /* 8001CD50 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CD54 00602021 */ addu $a0, $v1, $zero
    /* 8001CD58 00041940 */ sll $v1, $a0, 5
    /* 8001CD5C 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CD60 00802821 */ addu $a1, $a0, $zero
    /* 8001CD64 00053140 */ sll $a2, $a1, 5
    /* 8001CD68 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CD6C 00802821 */ addu $a1, $a0, $zero
    /* 8001CD70 00053940 */ sll $a3, $a1, 5
    /* 8001CD74 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CD78 00802821 */ addu $a1, $a0, $zero
    /* 8001CD7C 00052140 */ sll $a0, $a1, 5
    /* 8001CD80 3C018005 */ lui $at, %hi(D_80056E70)
    /* 8001CD84 00240821 */ addu $at, $at, $a0
    /* 8001CD88 8C256E70 */ lw $a1, %lo(D_80056E70)($at)
    /* 8001CD8C AFA50010 */ sw $a1, 0x10($sp)
    /* 8001CD90 3C018005 */ lui $at, %hi(D_80056E54)
    /* 8001CD94 00220821 */ addu $at, $at, $v0
    /* 8001CD98 8C246E54 */ lw $a0, %lo(D_80056E54)($at)
    /* 8001CD9C 3C018005 */ lui $at, %hi(D_80056E58)
    /* 8001CDA0 00230821 */ addu $at, $at, $v1
    /* 8001CDA4 8C256E58 */ lw $a1, %lo(D_80056E58)($at)
    /* 8001CDA8 3C018005 */ lui $at, %hi(D_80056E5C)
    /* 8001CDAC 00260821 */ addu $at, $at, $a2
    /* 8001CDB0 8C266E5C */ lw $a2, %lo(D_80056E5C)($at)
    /* 8001CDB4 3C018005 */ lui $at, %hi(D_80056E60)
    /* 8001CDB8 00270821 */ addu $at, $at, $a3
    /* 8001CDBC 8C276E60 */ lw $a3, %lo(D_80056E60)($at)
    /* 8001CDC0 0C0081C0 */ jal func_80020700
    /* 8001CDC4 00000000 */ nop
    /* 8001CDC8 08007399 */ j .L8001CE64
    /* 8001CDCC 00000000 */ nop
.L8001CDD0:
    /* 8001CDD0 3C028006 */ lui $v0, %hi(D_800580D4)
    /* 8001CDD4 8C4280D4 */ lw $v0, %lo(D_800580D4)($v0)
    /* 8001CDD8 10400022 */ beqz $v0, .L8001CE64
    /* 8001CDDC 00000000 */ nop
    /* 8001CDE0 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CDE4 00401821 */ addu $v1, $v0, $zero
    /* 8001CDE8 00031140 */ sll $v0, $v1, 5
    /* 8001CDEC 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CDF0 00602021 */ addu $a0, $v1, $zero
    /* 8001CDF4 00041940 */ sll $v1, $a0, 5
    /* 8001CDF8 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CDFC 00802821 */ addu $a1, $a0, $zero
    /* 8001CE00 00053140 */ sll $a2, $a1, 5
    /* 8001CE04 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CE08 00802821 */ addu $a1, $a0, $zero
    /* 8001CE0C 00053940 */ sll $a3, $a1, 5
    /* 8001CE10 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CE14 00802821 */ addu $a1, $a0, $zero
    /* 8001CE18 00052140 */ sll $a0, $a1, 5
    /* 8001CE1C 3C018005 */ lui $at, %hi(D_80056E6C)
    /* 8001CE20 00240821 */ addu $at, $at, $a0
    /* 8001CE24 8C256E6C */ lw $a1, %lo(D_80056E6C)($at)
    /* 8001CE28 AFA50010 */ sw $a1, 0x10($sp)
    /* 8001CE2C 3C018005 */ lui $at, %hi(D_80056E54)
    /* 8001CE30 00220821 */ addu $at, $at, $v0
    /* 8001CE34 8C246E54 */ lw $a0, %lo(D_80056E54)($at)
    /* 8001CE38 3C018005 */ lui $at, %hi(D_80056E58)
    /* 8001CE3C 00230821 */ addu $at, $at, $v1
    /* 8001CE40 8C256E58 */ lw $a1, %lo(D_80056E58)($at)
    /* 8001CE44 3C018005 */ lui $at, %hi(D_80056E5C)
    /* 8001CE48 00260821 */ addu $at, $at, $a2
    /* 8001CE4C 8C266E5C */ lw $a2, %lo(D_80056E5C)($at)
    /* 8001CE50 3C018005 */ lui $at, %hi(D_80056E60)
    /* 8001CE54 00270821 */ addu $at, $at, $a3
    /* 8001CE58 8C276E60 */ lw $a3, %lo(D_80056E60)($at)
    /* 8001CE5C 0C0081C0 */ jal func_80020700
    /* 8001CE60 00000000 */ nop
.L8001CE64:
    /* 8001CE64 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CE68 24620001 */ addiu $v0, $v1, 0x1
    /* 8001CE6C 00401821 */ addu $v1, $v0, $zero
    /* 8001CE70 AFC30018 */ sw $v1, 0x18($fp)
    /* 8001CE74 08007341 */ j .L8001CD04
    /* 8001CE78 00000000 */ nop
.L8001CE7C:
    /* 8001CE7C 3C040108 */ lui $a0, 0x108
    /* 8001CE80 2484B478 */ addiu $a0, $a0, -0x4B88
    /* 8001CE84 0C0082A8 */ jal func_80020AA0
    /* 8001CE88 00000000 */ nop
    /* 8001CE8C AFC00018 */ sw $zero, 0x18($fp)
.L8001CE90:
    /* 8001CE90 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CE94 2C43000C */ sltiu $v1, $v0, 0xC
    /* 8001CE98 14600003 */ bnez $v1, .L8001CEA8
    /* 8001CE9C 00000000 */ nop
    /* 8001CEA0 080073D1 */ j .L8001CF44
    /* 8001CEA4 00000000 */ nop
.L8001CEA8:
    /* 8001CEA8 8FC20018 */ lw $v0, 0x18($fp)
    /* 8001CEAC 00401821 */ addu $v1, $v0, $zero
    /* 8001CEB0 00031140 */ sll $v0, $v1, 5
    /* 8001CEB4 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CEB8 00602021 */ addu $a0, $v1, $zero
    /* 8001CEBC 00041940 */ sll $v1, $a0, 5
    /* 8001CEC0 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CEC4 00802821 */ addu $a1, $a0, $zero
    /* 8001CEC8 00053140 */ sll $a2, $a1, 5
    /* 8001CECC 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CED0 00802821 */ addu $a1, $a0, $zero
    /* 8001CED4 00053940 */ sll $a3, $a1, 5
    /* 8001CED8 8FC40018 */ lw $a0, 0x18($fp)
    /* 8001CEDC 00802821 */ addu $a1, $a0, $zero
    /* 8001CEE0 00052140 */ sll $a0, $a1, 5
    /* 8001CEE4 3C018005 */ lui $at, %hi(D_80056E64)
    /* 8001CEE8 00240821 */ addu $at, $at, $a0
    /* 8001CEEC 8C256E64 */ lw $a1, %lo(D_80056E64)($at)
    /* 8001CEF0 AFA50010 */ sw $a1, 0x10($sp)
    /* 8001CEF4 3C018005 */ lui $at, %hi(D_80056E54)
    /* 8001CEF8 00220821 */ addu $at, $at, $v0
    /* 8001CEFC 8C246E54 */ lw $a0, %lo(D_80056E54)($at)
    /* 8001CF00 3C018005 */ lui $at, %hi(D_80056E58)
    /* 8001CF04 00230821 */ addu $at, $at, $v1
    /* 8001CF08 8C256E58 */ lw $a1, %lo(D_80056E58)($at)
    /* 8001CF0C 3C018005 */ lui $at, %hi(D_80056E5C)
    /* 8001CF10 00260821 */ addu $at, $at, $a2
    /* 8001CF14 8C266E5C */ lw $a2, %lo(D_80056E5C)($at)
    /* 8001CF18 3C018005 */ lui $at, %hi(D_80056E60)
    /* 8001CF1C 00270821 */ addu $at, $at, $a3
    /* 8001CF20 8C276E60 */ lw $a3, %lo(D_80056E60)($at)
    /* 8001CF24 0C008310 */ jal func_80020C40
    /* 8001CF28 00000000 */ nop
    /* 8001CF2C 8FC30018 */ lw $v1, 0x18($fp)
    /* 8001CF30 24620001 */ addiu $v0, $v1, 0x1
    /* 8001CF34 00401821 */ addu $v1, $v0, $zero
    /* 8001CF38 AFC30018 */ sw $v1, 0x18($fp)
    /* 8001CF3C 080073A4 */ j .L8001CE90
    /* 8001CF40 00000000 */ nop
.L8001CF44:
    /* 8001CF44 03C0E821 */ addu $sp, $fp, $zero
    /* 8001CF48 8FBF0024 */ lw $ra, 0x24($sp)
    /* 8001CF4C 8FBE0020 */ lw $fp, 0x20($sp)
    /* 8001CF50 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8001CF54 03E00008 */ jr $ra
    /* 8001CF58 00000000 */ nop
