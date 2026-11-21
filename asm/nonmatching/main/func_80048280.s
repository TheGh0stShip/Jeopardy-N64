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
glabel func_80048280
    /* 80048280 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 80048284 AFA40008 */ sw $a0, 0x8($sp)
    /* 80048288 AFA5000C */ sw $a1, 0xC($sp)
    /* 8004828C AFA60010 */ sw $a2, 0x10($sp)
    /* 80048290 AFA70014 */ sw $a3, 0x14($sp)
    /* 80048294 DFAF0010 */ ld $t7, 0x10($sp)
    /* 80048298 DFAE0008 */ ld $t6, 0x8($sp)
    /* 8004829C 01CF001E */ ddiv $zero, $t6, $t7
    /* 800482A0 00000000 */ nop
    /* 800482A4 15E00002 */ bnez $t7, .L800482B0
    /* 800482A8 00000000 */ nop
    /* 800482AC 0007000D */ break 7
.L800482B0:
    /* 800482B0 6401FFFF */ daddiu $at, $zero, -0x1
    /* 800482B4 15E10005 */ bne $t7, $at, .L800482CC
    /* 800482B8 64010001 */ daddiu $at, $zero, 0x1
    /* 800482BC 00010FFC */ dsll32 $at, $at, 31
    /* 800482C0 15C10002 */ bne $t6, $at, .L800482CC
    /* 800482C4 00000000 */ nop
    /* 800482C8 0006000D */ break 6
.L800482CC:
    /* 800482CC 0000C010 */ mfhi $t8
    /* 800482D0 FFB80000 */ sd $t8, 0x0($sp)
    /* 800482D4 07010003 */ bgez $t8, .L800482E4
    /* 800482D8 00000000 */ nop
    /* 800482DC 1DE00007 */ bgtz $t7, .L800482FC
    /* 800482E0 00000000 */ nop
.L800482E4:
    /* 800482E4 DFB90000 */ ld $t9, 0x0($sp)
    /* 800482E8 1B200008 */ blez $t9, .L8004830C
    /* 800482EC 00000000 */ nop
    /* 800482F0 DFA80010 */ ld $t0, 0x10($sp)
    /* 800482F4 05010005 */ bgez $t0, .L8004830C
    /* 800482F8 00000000 */ nop
.L800482FC:
    /* 800482FC DFA90000 */ ld $t1, 0x0($sp)
    /* 80048300 DFAA0010 */ ld $t2, 0x10($sp)
    /* 80048304 012A582D */ daddu $t3, $t1, $t2
    /* 80048308 FFAB0000 */ sd $t3, 0x0($sp)
.L8004830C:
    /* 8004830C 8FA20000 */ lw $v0, 0x0($sp)
    /* 80048310 8FA30004 */ lw $v1, 0x4($sp)
    /* 80048314 03E00008 */ jr $ra
    /* 80048318 27BD0008 */ addiu $sp, $sp, 0x8
