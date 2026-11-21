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
glabel func_8003FB88
    /* 8003FB88 AFA40000 */ sw $a0, 0x0($sp)
    /* 8003FB8C 8FAE0000 */ lw $t6, 0x0($sp)
    /* 8003FB90 AFA50004 */ sw $a1, 0x4($sp)
    /* 8003FB94 3C01800D */ lui $at, %hi(D_800D2F60)
    /* 8003FB98 8FAF0004 */ lw $t7, 0x4($sp)
    /* 8003FB9C AC2E2F60 */ sw $t6, %lo(D_800D2F60)($at)
    /* 8003FBA0 3C01800D */ lui $at, %hi(D_800D2F64)
    /* 8003FBA4 03E00008 */ jr $ra
    /* 8003FBA8 AC2F2F64 */ sw $t7, %lo(D_800D2F64)($at)
    /* 8003FBAC 00000000 */ nop
    /* 8003FBB0 00000000 */ nop
    /* 8003FBB4 00000000 */ nop
