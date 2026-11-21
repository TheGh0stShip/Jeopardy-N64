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
glabel func_80047AA8
    /* 80047AA8 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 80047AAC AFBF0014 */ sw $ra, 0x14($sp)
    /* 80047AB0 AFA50024 */ sw $a1, 0x24($sp)
    /* 80047AB4 AFA60028 */ sw $a2, 0x28($sp)
    /* 80047AB8 AFA7002C */ sw $a3, 0x2C($sp)
    /* 80047ABC 8CAE0008 */ lw $t6, 0x8($a1)
    /* 80047AC0 51C0002F */ beql $t6, $zero, .L80047B80
    /* 80047AC4 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80047AC8 AFA40020 */ sw $a0, 0x20($sp)
    /* 80047ACC 0C00F3B6 */ jal __allocParam
    /* 80047AD0 AFA50024 */ sw $a1, 0x24($sp)
    /* 80047AD4 8FA40020 */ lw $a0, 0x20($sp)
    /* 80047AD8 8FA70024 */ lw $a3, 0x24($sp)
    /* 80047ADC 10400027 */ beqz $v0, .L80047B7C
    /* 80047AE0 00403025 */ move $a2, $v0
    /* 80047AE4 93A3003B */ lbu $v1, 0x3B($sp)
    /* 80047AE8 04610004 */ bgez $v1, .L80047AFC
    /* 80047AEC 00601025 */ move $v0, $v1
    /* 80047AF0 00021823 */ negu $v1, $v0
    /* 80047AF4 306F00FF */ andi $t7, $v1, 0xFF
    /* 80047AF8 01E01825 */ move $v1, $t7
.L80047AFC:
    /* 80047AFC 8CF90008 */ lw $t9, 0x8($a3)
    /* 80047B00 8C98001C */ lw $t8, 0x1C($a0)
    /* 80047B04 240A000D */ addiu $t2, $zero, 0xD
    /* 80047B08 8F2800D8 */ lw $t0, 0xD8($t9)
    /* 80047B0C ACC00000 */ sw $zero, 0x0($a2)
    /* 80047B10 A4CA0008 */ sh $t2, 0x8($a2)
    /* 80047B14 03084821 */ addu $t1, $t8, $t0
    /* 80047B18 ACC90004 */ sw $t1, 0x4($a2)
    /* 80047B1C 84EB001A */ lh $t3, 0x1A($a3)
    /* 80047B20 A4CB000A */ sh $t3, 0xA($a2)
    /* 80047B24 93AC0037 */ lbu $t4, 0x37($sp)
    /* 80047B28 A0CC0012 */ sb $t4, 0x12($a2)
    /* 80047B2C 87AD0032 */ lh $t5, 0x32($sp)
    /* 80047B30 A0C30013 */ sb $v1, 0x13($a2)
    /* 80047B34 A4CD0010 */ sh $t5, 0x10($a2)
    /* 80047B38 C7A4002C */ lwc1 $f4, 0x2C($sp)
    /* 80047B3C E4C4000C */ swc1 $f4, 0xC($a2)
    /* 80047B40 AFA70024 */ sw $a3, 0x24($sp)
    /* 80047B44 AFA6001C */ sw $a2, 0x1C($sp)
    /* 80047B48 0C00F374 */ jal _timeToSamples
    /* 80047B4C 8FA5003C */ lw $a1, 0x3C($sp)
    /* 80047B50 8FA6001C */ lw $a2, 0x1C($sp)
    /* 80047B54 8FA70024 */ lw $a3, 0x24($sp)
    /* 80047B58 24050003 */ addiu $a1, $zero, 0x3
    /* 80047B5C ACC20014 */ sw $v0, 0x14($a2)
    /* 80047B60 8FAE0028 */ lw $t6, 0x28($sp)
    /* 80047B64 ACCE0018 */ sw $t6, 0x18($a2)
    /* 80047B68 8CEF0008 */ lw $t7, 0x8($a3)
    /* 80047B6C 8DE4000C */ lw $a0, 0xC($t7)
    /* 80047B70 8C990008 */ lw $t9, 0x8($a0)
    /* 80047B74 0320F809 */ jalr $t9
    /* 80047B78 00000000 */ nop
.L80047B7C:
    /* 80047B7C 8FBF0014 */ lw $ra, 0x14($sp)
.L80047B80:
    /* 80047B80 27BD0020 */ addiu $sp, $sp, 0x20
    /* 80047B84 03E00008 */ jr $ra
    /* 80047B88 00000000 */ nop
    /* 80047B8C 00000000 */ nop
    /* 80047B90 00000000 */ nop
    /* 80047B94 00000000 */ nop
