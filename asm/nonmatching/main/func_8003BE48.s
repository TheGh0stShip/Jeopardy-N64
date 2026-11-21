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
glabel func_8003BE48
    /* 8003BE48 27BDFFE0 */ addiu $sp, $sp, -0x20
    /* 8003BE4C 3C0F8007 */ lui $t7, %hi(D_80071FA8)
    /* 8003BE50 91EF1FA8 */ lbu $t7, %lo(D_80071FA8)($t7)
    /* 8003BE54 AFA40020 */ sw $a0, 0x20($sp)
    /* 8003BE58 8FAE0020 */ lw $t6, 0x20($sp)
    /* 8003BE5C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003BE60 AFA50024 */ sw $a1, 0x24($sp)
    /* 8003BE64 11E00003 */ beqz $t7, .L8003BE74
    /* 8003BE68 AFAE001C */ sw $t6, 0x1C($sp)
    /* 8003BE6C 25D8E000 */ addiu $t8, $t6, -0x2000
    /* 8003BE70 AFB8001C */ sw $t8, 0x1C($sp)
.L8003BE74:
    /* 8003BE74 8FB90020 */ lw $t9, 0x20($sp)
    /* 8003BE78 8FA80024 */ lw $t0, 0x24($sp)
    /* 8003BE7C 24012000 */ addiu $at, $zero, 0x2000
    /* 8003BE80 03284821 */ addu $t1, $t9, $t0
    /* 8003BE84 312A3FFF */ andi $t2, $t1, 0x3FFF
    /* 8003BE88 15410005 */ bne $t2, $at, .L8003BEA0
    /* 8003BE8C 00000000 */ nop
    /* 8003BE90 240B0001 */ addiu $t3, $zero, 0x1
    /* 8003BE94 3C018007 */ lui $at, %hi(D_80071FA8)
    /* 8003BE98 10000003 */ b .L8003BEA8
    /* 8003BE9C A02B1FA8 */ sb $t3, %lo(D_80071FA8)($at)
.L8003BEA0:
    /* 8003BEA0 3C018007 */ lui $at, %hi(D_80071FA8)
    /* 8003BEA4 A0201FA8 */ sb $zero, %lo(D_80071FA8)($at)
.L8003BEA8:
    /* 8003BEA8 0C00EFBE */ jal __osAiDeviceBusy
    /* 8003BEAC 00000000 */ nop
    /* 8003BEB0 10400003 */ beqz $v0, .L8003BEC0
    /* 8003BEB4 00000000 */ nop
    /* 8003BEB8 10000009 */ b .L8003BEE0
    /* 8003BEBC 2402FFFF */ addiu $v0, $zero, -0x1
.L8003BEC0:
    /* 8003BEC0 0C010CCE */ jal osVirtualToPhysical
    /* 8003BEC4 8FA4001C */ lw $a0, 0x1C($sp)
    /* 8003BEC8 3C0CA450 */ lui $t4, %hi(D_A4500000)
    /* 8003BECC AD820000 */ sw $v0, %lo(D_A4500000)($t4)
    /* 8003BED0 8FAD0024 */ lw $t5, 0x24($sp)
    /* 8003BED4 3C0FA450 */ lui $t7, %hi(D_A4500004)
    /* 8003BED8 00001025 */ move $v0, $zero
    /* 8003BEDC ADED0004 */ sw $t5, %lo(D_A4500004)($t7)
.L8003BEE0:
    /* 8003BEE0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003BEE4 27BD0020 */ addiu $sp, $sp, 0x20
    /* 8003BEE8 03E00008 */ jr $ra
    /* 8003BEEC 00000000 */ nop
    /* 8003BEF0 00000000 */ nop
    /* 8003BEF4 00000000 */ nop
