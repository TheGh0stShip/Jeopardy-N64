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
glabel func_80048938
    /* 80048938 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8004893C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80048940 AFA50024 */ sw $a1, 0x24($sp)
    /* 80048944 AFA60028 */ sw $a2, 0x28($sp)
    /* 80048948 AFA7002C */ sw $a3, 0x2C($sp)
    /* 8004894C 8CAF0008 */ lw $t7, 0x8($a1)
    /* 80048950 51E0001D */ beql $t7, $zero, .L800489C8
    /* 80048954 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80048958 0C00F3B6 */ jal __allocParam
    /* 8004895C AFA40020 */ sw $a0, 0x20($sp)
    /* 80048960 10400018 */ beqz $v0, .L800489C4
    /* 80048964 8FA40020 */ lw $a0, 0x20($sp)
    /* 80048968 8FB90024 */ lw $t9, 0x24($sp)
    /* 8004896C 8C98001C */ lw $t8, 0x1C($a0)
    /* 80048970 240B000B */ addiu $t3, $zero, 0xB
    /* 80048974 8F280008 */ lw $t0, 0x8($t9)
    /* 80048978 8D0900D8 */ lw $t1, 0xD8($t0)
    /* 8004897C A44B0008 */ sh $t3, 0x8($v0)
    /* 80048980 03095021 */ addu $t2, $t8, $t1
    /* 80048984 AC4A0004 */ sw $t2, 0x4($v0)
    /* 80048988 87AC002A */ lh $t4, 0x2A($sp)
    /* 8004898C AC4C000C */ sw $t4, 0xC($v0)
    /* 80048990 AFA2001C */ sw $v0, 0x1C($sp)
    /* 80048994 0C00F374 */ jal _timeToSamples
    /* 80048998 8FA5002C */ lw $a1, 0x2C($sp)
    /* 8004899C 8FA6001C */ lw $a2, 0x1C($sp)
    /* 800489A0 24050003 */ addiu $a1, $zero, 0x3
    /* 800489A4 ACC20010 */ sw $v0, 0x10($a2)
    /* 800489A8 ACC00000 */ sw $zero, 0x0($a2)
    /* 800489AC 8FAD0024 */ lw $t5, 0x24($sp)
    /* 800489B0 8DAE0008 */ lw $t6, 0x8($t5)
    /* 800489B4 8DC4000C */ lw $a0, 0xC($t6)
    /* 800489B8 8C990008 */ lw $t9, 0x8($a0)
    /* 800489BC 0320F809 */ jalr $t9
    /* 800489C0 00000000 */ nop
.L800489C4:
    /* 800489C4 8FBF0014 */ lw $ra, 0x14($sp)
.L800489C8:
    /* 800489C8 27BD0020 */ addiu $sp, $sp, 0x20
    /* 800489CC 03E00008 */ jr $ra
    /* 800489D0 00000000 */ nop
    /* 800489D4 00000000 */ nop
