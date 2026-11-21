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
glabel func_80013090
    /* 80013090 27BDFFC0 */ addiu $sp, $sp, -0x40
    /* 80013094 AFBF0038 */ sw $ra, 0x38($sp)
    /* 80013098 AFBE0034 */ sw $fp, 0x34($sp)
    /* 8001309C AFB40030 */ sw $s4, 0x30($sp)
    /* 800130A0 AFB3002C */ sw $s3, 0x2C($sp)
    /* 800130A4 AFB20028 */ sw $s2, 0x28($sp)
    /* 800130A8 AFB10024 */ sw $s1, 0x24($sp)
    /* 800130AC AFB00020 */ sw $s0, 0x20($sp)
    /* 800130B0 03A0F021 */ addu $fp, $sp, $zero
    /* 800130B4 00808021 */ addu $s0, $a0, $zero
    /* 800130B8 00A08821 */ addu $s1, $a1, $zero
    /* 800130BC 00C09021 */ addu $s2, $a2, $zero
    /* 800130C0 00E09821 */ addu $s3, $a3, $zero
    /* 800130C4 8FD40050 */ lw $s4, 0x50($fp)
    /* 800130C8 A7D00010 */ sh $s0, 0x10($fp)
    /* 800130CC A7D10012 */ sh $s1, 0x12($fp)
    /* 800130D0 A7D20014 */ sh $s2, 0x14($fp)
    /* 800130D4 A7D30016 */ sh $s3, 0x16($fp)
    /* 800130D8 A7D40018 */ sh $s4, 0x18($fp)
    /* 800130DC 97C20010 */ lhu $v0, 0x10($fp)
    /* 800130E0 00402021 */ addu $a0, $v0, $zero
    /* 800130E4 0C00469F */ jal func_80011A7C
    /* 800130E8 00000000 */ nop
    /* 800130EC AFC2001C */ sw $v0, 0x1C($fp)
    /* 800130F0 8FC2001C */ lw $v0, 0x1C($fp)
    /* 800130F4 97C30012 */ lhu $v1, 0x12($fp)
    /* 800130F8 A4430000 */ sh $v1, 0x0($v0)
    /* 800130FC 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80013100 97C30014 */ lhu $v1, 0x14($fp)
    /* 80013104 A4430002 */ sh $v1, 0x2($v0)
    /* 80013108 8FC2001C */ lw $v0, 0x1C($fp)
    /* 8001310C 97C30016 */ lhu $v1, 0x16($fp)
    /* 80013110 A4430004 */ sh $v1, 0x4($v0)
    /* 80013114 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80013118 97C30018 */ lhu $v1, 0x18($fp)
    /* 8001311C A4430006 */ sh $v1, 0x6($v0)
    /* 80013120 03C0E821 */ addu $sp, $fp, $zero
    /* 80013124 8FBF0038 */ lw $ra, 0x38($sp)
    /* 80013128 8FBE0034 */ lw $fp, 0x34($sp)
    /* 8001312C 8FB40030 */ lw $s4, 0x30($sp)
    /* 80013130 8FB3002C */ lw $s3, 0x2C($sp)
    /* 80013134 8FB20028 */ lw $s2, 0x28($sp)
    /* 80013138 8FB10024 */ lw $s1, 0x24($sp)
    /* 8001313C 8FB00020 */ lw $s0, 0x20($sp)
    /* 80013140 27BD0040 */ addiu $sp, $sp, 0x40
    /* 80013144 03E00008 */ jr $ra
    /* 80013148 00000000 */ nop
