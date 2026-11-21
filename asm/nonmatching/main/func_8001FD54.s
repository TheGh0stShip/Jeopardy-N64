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
glabel func_8001FD54
    /* 8001FD54 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8001FD58 AFBF001C */ sw $ra, 0x1C($sp)
    /* 8001FD5C AFBE0018 */ sw $fp, 0x18($sp)
    /* 8001FD60 03A0F021 */ addu $fp, $sp, $zero
    /* 8001FD64 AFC40020 */ sw $a0, 0x20($fp)
    /* 8001FD68 AFC50024 */ sw $a1, 0x24($fp)
    /* 8001FD6C AFC60028 */ sw $a2, 0x28($fp)
    /* 8001FD70 AFC7002C */ sw $a3, 0x2C($fp)
    /* 8001FD74 8FC40030 */ lw $a0, 0x30($fp)
    /* 8001FD78 0C007D5B */ jal func_8001F56C
    /* 8001FD7C 00000000 */ nop
    /* 8001FD80 3C018006 */ lui $at, %hi(D_8005884C)
    /* 8001FD84 AC22884C */ sw $v0, %lo(D_8005884C)($at)
    /* 8001FD88 AFC00010 */ sw $zero, 0x10($fp)
.L8001FD8C:
    /* 8001FD8C 8FC20010 */ lw $v0, 0x10($fp)
    /* 8001FD90 3C038006 */ lui $v1, %hi(D_8005884C)
    /* 8001FD94 8C63884C */ lw $v1, %lo(D_8005884C)($v1)
    /* 8001FD98 0043102B */ sltu $v0, $v0, $v1
    /* 8001FD9C 14400003 */ bnez $v0, .L8001FDAC
    /* 8001FDA0 00000000 */ nop
    /* 8001FDA4 08007FA7 */ j .L8001FE9C
    /* 8001FDA8 00000000 */ nop
.L8001FDAC:
    /* 8001FDAC 8FC20010 */ lw $v0, 0x10($fp)
    /* 8001FDB0 00402021 */ addu $a0, $v0, $zero
    /* 8001FDB4 00041840 */ sll $v1, $a0, 1
    /* 8001FDB8 00621821 */ addu $v1, $v1, $v0
    /* 8001FDBC 000320C0 */ sll $a0, $v1, 3
    /* 8001FDC0 00822021 */ addu $a0, $a0, $v0
    /* 8001FDC4 00041040 */ sll $v0, $a0, 1
    /* 8001FDC8 3C03800D */ lui $v1, %hi(D_800D7710)
    /* 8001FDCC 24637710 */ addiu $v1, $v1, %lo(D_800D7710)
    /* 8001FDD0 00431021 */ addu $v0, $v0, $v1
    /* 8001FDD4 8FC30010 */ lw $v1, 0x10($fp)
    /* 8001FDD8 00602021 */ addu $a0, $v1, $zero
    /* 8001FDDC 00041880 */ sll $v1, $a0, 2
    /* 8001FDE0 3C04800E */ lui $a0, %hi(D_800E0E10)
    /* 8001FDE4 24840E10 */ addiu $a0, $a0, %lo(D_800E0E10)
    /* 8001FDE8 00641821 */ addu $v1, $v1, $a0
    /* 8001FDEC 8FC40028 */ lw $a0, 0x28($fp)
    /* 8001FDF0 8C650000 */ lw $a1, 0x0($v1)
    /* 8001FDF4 00851823 */ subu $v1, $a0, $a1
    /* 8001FDF8 00032042 */ srl $a0, $v1, 1
    /* 8001FDFC 8FC30020 */ lw $v1, 0x20($fp)
    /* 8001FE00 00832021 */ addu $a0, $a0, $v1
    /* 8001FE04 44840000 */ mtc1 $a0, $f0
    /* 8001FE08 46800021 */ cvt.d.w $f0, $f0
    /* 8001FE0C 04810005 */ bgez $a0, .L8001FE24
    /* 8001FE10 00000000 */ nop
    /* 8001FE14 3C018000 */ lui $at, %hi(D_80001138)
    /* 8001FE18 C4231138 */ lwc1 $f3, %lo(D_80001138)($at)
    /* 8001FE1C C422113C */ lwc1 $f2, %lo(D_8000113C)($at)
    /* 8001FE20 46220000 */ add.d $f0, $f0, $f2
.L8001FE24:
    /* 8001FE24 46200020 */ cvt.s.d $f0, $f0
    /* 8001FE28 8FC30010 */ lw $v1, 0x10($fp)
    /* 8001FE2C 00602821 */ addu $a1, $v1, $zero
    /* 8001FE30 00052040 */ sll $a0, $a1, 1
    /* 8001FE34 00832021 */ addu $a0, $a0, $v1
    /* 8001FE38 00042880 */ sll $a1, $a0, 2
    /* 8001FE3C 00A32821 */ addu $a1, $a1, $v1
    /* 8001FE40 24A30004 */ addiu $v1, $a1, 0x4
    /* 8001FE44 8FC40024 */ lw $a0, 0x24($fp)
    /* 8001FE48 00641821 */ addu $v1, $v1, $a0
    /* 8001FE4C 44831000 */ mtc1 $v1, $f2
    /* 8001FE50 468010A1 */ cvt.d.w $f2, $f2
    /* 8001FE54 04610005 */ bgez $v1, .L8001FE6C
    /* 8001FE58 00000000 */ nop
    /* 8001FE5C 3C018000 */ lui $at, %hi(D_80001140)
    /* 8001FE60 C4251140 */ lwc1 $f5, %lo(D_80001140)($at)
    /* 8001FE64 C4241144 */ lwc1 $f4, %lo(D_80001144)($at)
    /* 8001FE68 46241080 */ add.d $f2, $f2, $f4
.L8001FE6C:
    /* 8001FE6C 462010A0 */ cvt.s.d $f2, $f2
    /* 8001FE70 00402021 */ addu $a0, $v0, $zero
    /* 8001FE74 44050000 */ mfc1 $a1, $f0
    /* 8001FE78 44061000 */ mfc1 $a2, $f2
    /* 8001FE7C 0C004AC2 */ jal func_80012B08
    /* 8001FE80 00000000 */ nop
    /* 8001FE84 8FC30010 */ lw $v1, 0x10($fp)
    /* 8001FE88 24620001 */ addiu $v0, $v1, 0x1
    /* 8001FE8C 00401821 */ addu $v1, $v0, $zero
    /* 8001FE90 AFC30010 */ sw $v1, 0x10($fp)
    /* 8001FE94 08007F63 */ j .L8001FD8C
    /* 8001FE98 00000000 */ nop
.L8001FE9C:
    /* 8001FE9C 03C0E821 */ addu $sp, $fp, $zero
    /* 8001FEA0 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8001FEA4 8FBE0018 */ lw $fp, 0x18($sp)
    /* 8001FEA8 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8001FEAC 03E00008 */ jr $ra
    /* 8001FEB0 00000000 */ nop
