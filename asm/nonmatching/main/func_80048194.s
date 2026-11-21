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
glabel func_80048194
    /* 80048194 AFA40000 */ sw $a0, 0x0($sp)
    /* 80048198 AFA50004 */ sw $a1, 0x4($sp)
    /* 8004819C AFA60008 */ sw $a2, 0x8($sp)
    /* 800481A0 AFA7000C */ sw $a3, 0xC($sp)
    /* 800481A4 DFAF0008 */ ld $t7, 0x8($sp)
    /* 800481A8 DFAE0000 */ ld $t6, 0x0($sp)
    /* 800481AC 01CF001E */ ddiv $zero, $t6, $t7
    /* 800481B0 00000000 */ nop
    /* 800481B4 15E00002 */ bnez $t7, .L800481C0
    /* 800481B8 00000000 */ nop
    /* 800481BC 0007000D */ break 7
.L800481C0:
    /* 800481C0 6401FFFF */ daddiu $at, $zero, -0x1
    /* 800481C4 15E10005 */ bne $t7, $at, .L800481DC
    /* 800481C8 64010001 */ daddiu $at, $zero, 0x1
    /* 800481CC 00010FFC */ dsll32 $at, $at, 31
    /* 800481D0 15C10002 */ bne $t6, $at, .L800481DC
    /* 800481D4 00000000 */ nop
    /* 800481D8 0006000D */ break 6
.L800481DC:
    /* 800481DC 00001012 */ mflo $v0
    /* 800481E0 0002183C */ dsll32 $v1, $v0, 0
    /* 800481E4 0003183F */ dsra32 $v1, $v1, 0
    /* 800481E8 03E00008 */ jr $ra
    /* 800481EC 0002103F */ dsra32 $v0, $v0, 0
