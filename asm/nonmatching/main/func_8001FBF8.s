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
glabel func_8001FBF8
    /* 8001FBF8 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8001FBFC AFBF001C */ sw $ra, 0x1C($sp)
    /* 8001FC00 AFBE0018 */ sw $fp, 0x18($sp)
    /* 8001FC04 03A0F021 */ addu $fp, $sp, $zero
    /* 8001FC08 AFC40020 */ sw $a0, 0x20($fp)
    /* 8001FC0C AFC50024 */ sw $a1, 0x24($fp)
    /* 8001FC10 AFC60028 */ sw $a2, 0x28($fp)
    /* 8001FC14 AFC7002C */ sw $a3, 0x2C($fp)
    /* 8001FC18 8FC40030 */ lw $a0, 0x30($fp)
    /* 8001FC1C 0C007D5B */ jal func_8001F56C
    /* 8001FC20 00000000 */ nop
    /* 8001FC24 3C018006 */ lui $at, %hi(D_8005884C)
    /* 8001FC28 AC22884C */ sw $v0, %lo(D_8005884C)($at)
    /* 8001FC2C AFC00010 */ sw $zero, 0x10($fp)
.L8001FC30:
    /* 8001FC30 8FC20010 */ lw $v0, 0x10($fp)
    /* 8001FC34 3C038006 */ lui $v1, %hi(D_8005884C)
    /* 8001FC38 8C63884C */ lw $v1, %lo(D_8005884C)($v1)
    /* 8001FC3C 0043102B */ sltu $v0, $v0, $v1
    /* 8001FC40 14400003 */ bnez $v0, .L8001FC50
    /* 8001FC44 00000000 */ nop
    /* 8001FC48 08007F4F */ j .L8001FD3C
    /* 8001FC4C 00000000 */ nop
.L8001FC50:
    /* 8001FC50 8FC20010 */ lw $v0, 0x10($fp)
    /* 8001FC54 00402021 */ addu $a0, $v0, $zero
    /* 8001FC58 00041840 */ sll $v1, $a0, 1
    /* 8001FC5C 00621821 */ addu $v1, $v1, $v0
    /* 8001FC60 000320C0 */ sll $a0, $v1, 3
    /* 8001FC64 00822021 */ addu $a0, $a0, $v0
    /* 8001FC68 00041040 */ sll $v0, $a0, 1
    /* 8001FC6C 3C03800D */ lui $v1, %hi(D_800D7710)
    /* 8001FC70 24637710 */ addiu $v1, $v1, %lo(D_800D7710)
    /* 8001FC74 00431021 */ addu $v0, $v0, $v1
    /* 8001FC78 8FC30010 */ lw $v1, 0x10($fp)
    /* 8001FC7C 00602021 */ addu $a0, $v1, $zero
    /* 8001FC80 00041880 */ sll $v1, $a0, 2
    /* 8001FC84 3C04800E */ lui $a0, %hi(D_800E0E10)
    /* 8001FC88 24840E10 */ addiu $a0, $a0, %lo(D_800E0E10)
    /* 8001FC8C 00641821 */ addu $v1, $v1, $a0
    /* 8001FC90 8FC40028 */ lw $a0, 0x28($fp)
    /* 8001FC94 8C650000 */ lw $a1, 0x0($v1)
    /* 8001FC98 00851823 */ subu $v1, $a0, $a1
    /* 8001FC9C 00032042 */ srl $a0, $v1, 1
    /* 8001FCA0 8FC30020 */ lw $v1, 0x20($fp)
    /* 8001FCA4 00832021 */ addu $a0, $a0, $v1
    /* 8001FCA8 44840000 */ mtc1 $a0, $f0
    /* 8001FCAC 46800021 */ cvt.d.w $f0, $f0
    /* 8001FCB0 04810005 */ bgez $a0, .L8001FCC8
    /* 8001FCB4 00000000 */ nop
    /* 8001FCB8 3C018000 */ lui $at, %hi(D_80001128)
    /* 8001FCBC C4231128 */ lwc1 $f3, %lo(D_80001128)($at)
    /* 8001FCC0 C422112C */ lwc1 $f2, %lo(D_8000112C)($at)
    /* 8001FCC4 46220000 */ add.d $f0, $f0, $f2
.L8001FCC8:
    /* 8001FCC8 46200020 */ cvt.s.d $f0, $f0
    /* 8001FCCC 8FC30010 */ lw $v1, 0x10($fp)
    /* 8001FCD0 00602821 */ addu $a1, $v1, $zero
    /* 8001FCD4 00052080 */ sll $a0, $a1, 2
    /* 8001FCD8 00832021 */ addu $a0, $a0, $v1
    /* 8001FCDC 00041840 */ sll $v1, $a0, 1
    /* 8001FCE0 24640004 */ addiu $a0, $v1, 0x4
    /* 8001FCE4 8FC30024 */ lw $v1, 0x24($fp)
    /* 8001FCE8 00832021 */ addu $a0, $a0, $v1
    /* 8001FCEC 44841000 */ mtc1 $a0, $f2
    /* 8001FCF0 468010A1 */ cvt.d.w $f2, $f2
    /* 8001FCF4 04810005 */ bgez $a0, .L8001FD0C
    /* 8001FCF8 00000000 */ nop
    /* 8001FCFC 3C018000 */ lui $at, %hi(D_80001130)
    /* 8001FD00 C4251130 */ lwc1 $f5, %lo(D_80001130)($at)
    /* 8001FD04 C4241134 */ lwc1 $f4, %lo(D_80001134)($at)
    /* 8001FD08 46241080 */ add.d $f2, $f2, $f4
.L8001FD0C:
    /* 8001FD0C 462010A0 */ cvt.s.d $f2, $f2
    /* 8001FD10 00402021 */ addu $a0, $v0, $zero
    /* 8001FD14 44050000 */ mfc1 $a1, $f0
    /* 8001FD18 44061000 */ mfc1 $a2, $f2
    /* 8001FD1C 0C004AC2 */ jal func_80012B08
    /* 8001FD20 00000000 */ nop
    /* 8001FD24 8FC30010 */ lw $v1, 0x10($fp)
    /* 8001FD28 24620001 */ addiu $v0, $v1, 0x1
    /* 8001FD2C 00401821 */ addu $v1, $v0, $zero
    /* 8001FD30 AFC30010 */ sw $v1, 0x10($fp)
    /* 8001FD34 08007F0C */ j .L8001FC30
    /* 8001FD38 00000000 */ nop
.L8001FD3C:
    /* 8001FD3C 03C0E821 */ addu $sp, $fp, $zero
    /* 8001FD40 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8001FD44 8FBE0018 */ lw $fp, 0x18($sp)
    /* 8001FD48 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8001FD4C 03E00008 */ jr $ra
    /* 8001FD50 00000000 */ nop
