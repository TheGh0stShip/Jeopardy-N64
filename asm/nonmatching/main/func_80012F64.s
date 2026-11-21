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
glabel func_80012F64
    /* 80012F64 27BDFFB0 */ addiu $sp, $sp, -0x50
    /* 80012F68 AFBF004C */ sw $ra, 0x4C($sp)
    /* 80012F6C AFBE0048 */ sw $fp, 0x48($sp)
    /* 80012F70 AFB70044 */ sw $s7, 0x44($sp)
    /* 80012F74 AFB60040 */ sw $s6, 0x40($sp)
    /* 80012F78 AFB5003C */ sw $s5, 0x3C($sp)
    /* 80012F7C AFB40038 */ sw $s4, 0x38($sp)
    /* 80012F80 AFB30034 */ sw $s3, 0x34($sp)
    /* 80012F84 AFB20030 */ sw $s2, 0x30($sp)
    /* 80012F88 AFB1002C */ sw $s1, 0x2C($sp)
    /* 80012F8C AFB00028 */ sw $s0, 0x28($sp)
    /* 80012F90 03A0F021 */ addu $fp, $sp, $zero
    /* 80012F94 00808021 */ addu $s0, $a0, $zero
    /* 80012F98 00A08821 */ addu $s1, $a1, $zero
    /* 80012F9C 00C09021 */ addu $s2, $a2, $zero
    /* 80012FA0 00E09821 */ addu $s3, $a3, $zero
    /* 80012FA4 8FD40060 */ lw $s4, 0x60($fp)
    /* 80012FA8 8FD50064 */ lw $s5, 0x64($fp)
    /* 80012FAC 8FD60068 */ lw $s6, 0x68($fp)
    /* 80012FB0 8FD7006C */ lw $s7, 0x6C($fp)
    /* 80012FB4 8FC80070 */ lw $t0, 0x70($fp)
    /* 80012FB8 AFC80024 */ sw $t0, 0x24($fp)
    /* 80012FBC A7D00010 */ sh $s0, 0x10($fp)
    /* 80012FC0 A3D10012 */ sb $s1, 0x12($fp)
    /* 80012FC4 A3D20013 */ sb $s2, 0x13($fp)
    /* 80012FC8 A3D30014 */ sb $s3, 0x14($fp)
    /* 80012FCC A3D40015 */ sb $s4, 0x15($fp)
    /* 80012FD0 A3D50016 */ sb $s5, 0x16($fp)
    /* 80012FD4 A3D60017 */ sb $s6, 0x17($fp)
    /* 80012FD8 A3D70018 */ sb $s7, 0x18($fp)
    /* 80012FDC 93C80027 */ lbu $t0, 0x27($fp)
    /* 80012FE0 A3C80019 */ sb $t0, 0x19($fp)
    /* 80012FE4 97C20010 */ lhu $v0, 0x10($fp)
    /* 80012FE8 00402021 */ addu $a0, $v0, $zero
    /* 80012FEC 0C00469F */ jal func_80011A7C
    /* 80012FF0 00000000 */ nop
    /* 80012FF4 AFC2001C */ sw $v0, 0x1C($fp)
    /* 80012FF8 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80012FFC 93C30012 */ lbu $v1, 0x12($fp)
    /* 80013000 A0430014 */ sb $v1, 0x14($v0)
    /* 80013004 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80013008 93C30013 */ lbu $v1, 0x13($fp)
    /* 8001300C A0430015 */ sb $v1, 0x15($v0)
    /* 80013010 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80013014 93C30014 */ lbu $v1, 0x14($fp)
    /* 80013018 A0430016 */ sb $v1, 0x16($v0)
    /* 8001301C 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80013020 93C30015 */ lbu $v1, 0x15($fp)
    /* 80013024 A0430017 */ sb $v1, 0x17($v0)
    /* 80013028 8FC2001C */ lw $v0, 0x1C($fp)
    /* 8001302C 93C30016 */ lbu $v1, 0x16($fp)
    /* 80013030 A0430010 */ sb $v1, 0x10($v0)
    /* 80013034 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80013038 93C30017 */ lbu $v1, 0x17($fp)
    /* 8001303C A0430011 */ sb $v1, 0x11($v0)
    /* 80013040 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80013044 93C30018 */ lbu $v1, 0x18($fp)
    /* 80013048 A0430012 */ sb $v1, 0x12($v0)
    /* 8001304C 8FC2001C */ lw $v0, 0x1C($fp)
    /* 80013050 93C30019 */ lbu $v1, 0x19($fp)
    /* 80013054 A0430013 */ sb $v1, 0x13($v0)
    /* 80013058 03C0E821 */ addu $sp, $fp, $zero
    /* 8001305C 8FBF004C */ lw $ra, 0x4C($sp)
    /* 80013060 8FBE0048 */ lw $fp, 0x48($sp)
    /* 80013064 8FB70044 */ lw $s7, 0x44($sp)
    /* 80013068 8FB60040 */ lw $s6, 0x40($sp)
    /* 8001306C 8FB5003C */ lw $s5, 0x3C($sp)
    /* 80013070 8FB40038 */ lw $s4, 0x38($sp)
    /* 80013074 8FB30034 */ lw $s3, 0x34($sp)
    /* 80013078 8FB20030 */ lw $s2, 0x30($sp)
    /* 8001307C 8FB1002C */ lw $s1, 0x2C($sp)
    /* 80013080 8FB00028 */ lw $s0, 0x28($sp)
    /* 80013084 27BD0050 */ addiu $sp, $sp, 0x50
    /* 80013088 03E00008 */ jr $ra
    /* 8001308C 00000000 */ nop
