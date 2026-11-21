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
glabel func_8004B4DC
    /* 8004B4DC 27BDFFB8 */ addiu $sp, $sp, -0x48
    /* 8004B4E0 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004B4E4 AFA00034 */ sw $zero, 0x34($sp)
    /* 8004B4E8 AFA00030 */ sw $zero, 0x30($sp)
    /* 8004B4EC 8E8E027C */ lw $t6, 0x27C($s4)
    /* 8004B4F0 27B50044 */ addiu $s5, $sp, 0x44
    /* 8004B4F4 26930078 */ addiu $s3, $s4, 0x78
    /* 8004B4F8 25CF0001 */ addiu $t7, $t6, 0x1
    /* 8004B4FC AE8F027C */ sw $t7, 0x27C($s4)
    /* 8004B500 02602025 */ move $a0, $s3
    /* 8004B504 02A02825 */ move $a1, $s5
    /* 8004B508 0C0104AE */ jal osRecvMesg
    /* 8004B50C 00003025 */ move $a2, $zero
    /* 8004B510 2410FFFF */ addiu $s0, $zero, -0x1
    /* 8004B514 50500023 */ beql $v0, $s0, .L8004B5A4
    /* 8004B518 8E8F0280 */ lw $t7, 0x280($s4)
    /* 8004B51C 24120001 */ addiu $s2, $zero, 0x1
    /* 8004B520 24110002 */ addiu $s1, $zero, 0x2
    /* 8004B524 8FB80044 */ lw $t8, 0x44($sp)
.L8004B528:
    /* 8004B528 02602025 */ move $a0, $s3
    /* 8004B52C 02A02825 */ move $a1, $s5
    /* 8004B530 8F030010 */ lw $v1, 0x10($t8)
    /* 8004B534 03001025 */ move $v0, $t8
    /* 8004B538 5471000B */ bnel $v1, $s1, .L8004B568
    /* 8004B53C 8E830270 */ lw $v1, 0x270($s4)
    /* 8004B540 8E83026C */ lw $v1, 0x26C($s4)
    /* 8004B544 50600004 */ beql $v1, $zero, .L8004B558
    /* 8004B548 AE820264 */ sw $v0, 0x264($s4)
    /* 8004B54C 10000002 */ b .L8004B558
    /* 8004B550 AC780000 */ sw $t8, 0x0($v1)
    /* 8004B554 AE820264 */ sw $v0, 0x264($s4)
.L8004B558:
    /* 8004B558 AE82026C */ sw $v0, 0x26C($s4)
    /* 8004B55C 10000008 */ b .L8004B580
    /* 8004B560 AE920280 */ sw $s2, 0x280($s4)
    /* 8004B564 8E830270 */ lw $v1, 0x270($s4)
.L8004B568:
    /* 8004B568 50600004 */ beql $v1, $zero, .L8004B57C
    /* 8004B56C AE820268 */ sw $v0, 0x268($s4)
    /* 8004B570 10000002 */ b .L8004B57C
    /* 8004B574 AC620000 */ sw $v0, 0x0($v1)
    /* 8004B578 AE820268 */ sw $v0, 0x268($s4)
.L8004B57C:
    /* 8004B57C AE820270 */ sw $v0, 0x270($s4)
.L8004B580:
    /* 8004B580 8C590008 */ lw $t9, 0x8($v0)
    /* 8004B584 AC400000 */ sw $zero, 0x0($v0)
    /* 8004B588 00003025 */ move $a2, $zero
    /* 8004B58C 332E0003 */ andi $t6, $t9, 0x3
    /* 8004B590 0C0104AE */ jal osRecvMesg
    /* 8004B594 AC4E0004 */ sw $t6, 0x4($v0)
    /* 8004B598 5450FFE3 */ bnel $v0, $s0, .L8004B528
    /* 8004B59C 8FB80044 */ lw $t8, 0x44($sp)
    /* 8004B5A0 8E8F0280 */ lw $t7, 0x280($s4)
.L8004B5A4:
    /* 8004B5A4 02802025 */ move $a0, $s4
    /* 8004B5A8 27A50034 */ addiu $a1, $sp, 0x34
    /* 8004B5AC 51E0000F */ beql $t7, $zero, .L8004B5EC
    /* 8004B5B0 8E8F0274 */ lw $t7, 0x274($s4)
    /* 8004B5B4 8E820274 */ lw $v0, 0x274($s4)
    /* 8004B5B8 5040000C */ beql $v0, $zero, .L8004B5EC
    /* 8004B5BC 8E8F0274 */ lw $t7, 0x274($s4)
    /* 8004B5C0 8C580010 */ lw $t8, 0x10($v0)
    /* 8004B5C4 24010001 */ addiu $at, $zero, 0x1
    /* 8004B5C8 57010017 */ bnel $t8, $at, .L8004B628
    /* 8004B5CC 8E900260 */ lw $s0, 0x260($s4)
    /* 8004B5D0 8C590004 */ lw $t9, 0x4($v0)
    /* 8004B5D4 372E0010 */ ori $t6, $t9, 0x10
    /* 8004B5D8 0C01304A */ jal osSpTaskYield
    /* 8004B5DC AC4E0004 */ sw $t6, 0x4($v0)
    /* 8004B5E0 10000011 */ b .L8004B628
    /* 8004B5E4 8E900260 */ lw $s0, 0x260($s4)
    /* 8004B5E8 8E8F0274 */ lw $t7, 0x274($s4)
.L8004B5EC:
    /* 8004B5EC 8E8E0278 */ lw $t6, 0x278($s4)
    /* 8004B5F0 27A60030 */ addiu $a2, $sp, 0x30
    /* 8004B5F4 2DF80001 */ sltiu $t8, $t7, 0x1
    /* 8004B5F8 0018C840 */ sll $t9, $t8, 1
    /* 8004B5FC 2DCF0001 */ sltiu $t7, $t6, 0x1
    /* 8004B600 032F8025 */ or $s0, $t9, $t7
    /* 8004B604 0C012C92 */ jal func_8004B248
    /* 8004B608 02003825 */ move $a3, $s0
    /* 8004B60C 50500006 */ beql $v0, $s0, .L8004B628
    /* 8004B610 8E900260 */ lw $s0, 0x260($s4)
    /* 8004B614 02809825 */ move $s3, $s4
    /* 8004B618 8FB00034 */ lw $s0, 0x34($sp)
    /* 8004B61C 0C012C6A */ jal func_8004B1A8
    /* 8004B620 8FB10030 */ lw $s1, 0x30($sp)
    /* 8004B624 8E900260 */ lw $s0, 0x260($s4)
.L8004B628:
    /* 8004B628 52000009 */ beql $s0, $zero, .L8004B650
    /* 8004B62C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004B630 8E040004 */ lw $a0, 0x4($s0)
.L8004B634:
    /* 8004B634 02802825 */ move $a1, $s4
    /* 8004B638 0C010516 */ jal osSendMesg
    /* 8004B63C 00003025 */ move $a2, $zero
    /* 8004B640 8E100000 */ lw $s0, 0x0($s0)
    /* 8004B644 5600FFFB */ bnel $s0, $zero, .L8004B634
    /* 8004B648 8E040004 */ lw $a0, 0x4($s0)
    /* 8004B64C 8FBF0014 */ lw $ra, 0x14($sp)
.L8004B650:
    /* 8004B650 27BD0048 */ addiu $sp, $sp, 0x48
    /* 8004B654 03E00008 */ jr $ra
    /* 8004B658 00000000 */ nop
