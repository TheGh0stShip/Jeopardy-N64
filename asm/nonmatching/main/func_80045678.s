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
glabel func_80045678
    /* 80045678 27BDFFC0 */ addiu $sp, $sp, -0x40
    /* 8004567C AFBF0024 */ sw $ra, 0x24($sp)
    /* 80045680 AFB10020 */ sw $s1, 0x20($sp)
    /* 80045684 AFB0001C */ sw $s0, 0x1C($sp)
    /* 80045688 8CA6000C */ lw $a2, 0xC($a1)
    /* 8004568C AC800020 */ sw $zero, 0x20($a0)
    /* 80045690 AC800018 */ sw $zero, 0x18($a0)
    /* 80045694 3C0E8007 */ lui $t6, %hi(D_80071FF8)
    /* 80045698 8DCE1FF8 */ lw $t6, %lo(D_80071FF8)($t6)
    /* 8004569C 240F00FF */ addiu $t7, $zero, 0xFF
    /* 800456A0 241801E8 */ addiu $t8, $zero, 0x1E8
    /* 800456A4 24197FFF */ addiu $t9, $zero, 0x7FFF
    /* 800456A8 24083E80 */ addiu $t0, $zero, 0x3E80
    /* 800456AC A48F0030 */ sh $t7, 0x30($a0)
    /* 800456B0 AC980024 */ sw $t8, 0x24($a0)
    /* 800456B4 AC800028 */ sw $zero, 0x28($a0)
    /* 800456B8 AC80002C */ sw $zero, 0x2C($a0)
    /* 800456BC A4990032 */ sh $t9, 0x32($a0)
    /* 800456C0 AC88005C */ sw $t0, 0x5C($a0)
    /* 800456C4 AC80001C */ sw $zero, 0x1C($a0)
    /* 800456C8 AC8E0014 */ sw $t6, 0x14($a0)
    /* 800456CC 8CA90010 */ lw $t1, 0x10($a1)
    /* 800456D0 240C0009 */ addiu $t4, $zero, 0x9
    /* 800456D4 00A08825 */ move $s1, $a1
    /* 800456D8 AC890070 */ sw $t1, 0x70($a0)
    /* 800456DC 8CAA0014 */ lw $t2, 0x14($a1)
    /* 800456E0 00808025 */ move $s0, $a0
    /* 800456E4 240E0010 */ addiu $t6, $zero, 0x10
    /* 800456E8 AC8A0074 */ sw $t2, 0x74($a0)
    /* 800456EC 8CAB0018 */ lw $t3, 0x18($a1)
    /* 800456F0 A48C0038 */ sh $t4, 0x38($a0)
    /* 800456F4 AC8B0078 */ sw $t3, 0x78($a0)
    /* 800456F8 90AD0008 */ lbu $t5, 0x8($a1)
    /* 800456FC 00002825 */ move $a1, $zero
    /* 80045700 A08D0034 */ sb $t5, 0x34($a0)
    /* 80045704 92270008 */ lbu $a3, 0x8($s1)
    /* 80045708 AFAE0010 */ sw $t6, 0x10($sp)
    /* 8004570C 00002025 */ move $a0, $zero
    /* 80045710 0C00F56A */ jal alHeapDBAlloc
    /* 80045714 AFA6002C */ sw $a2, 0x2C($sp)
    /* 80045718 AE020060 */ sw $v0, 0x60($s0)
    /* 8004571C 0C011BCB */ jal __initChanState
    /* 80045720 02002025 */ move $a0, $s0
    /* 80045724 8E270000 */ lw $a3, 0x0($s1)
    /* 80045728 240F0038 */ addiu $t7, $zero, 0x38
    /* 8004572C AFAF0010 */ sw $t7, 0x10($sp)
    /* 80045730 00002025 */ move $a0, $zero
    /* 80045734 00002825 */ move $a1, $zero
    /* 80045738 0C00F56A */ jal alHeapDBAlloc
    /* 8004573C 8FA6002C */ lw $a2, 0x2C($sp)
    /* 80045740 AE00006C */ sw $zero, 0x6C($s0)
    /* 80045744 8E380000 */ lw $t8, 0x0($s1)
    /* 80045748 00002025 */ move $a0, $zero
    /* 8004574C 00002825 */ move $a1, $zero
    /* 80045750 1B00000B */ blez $t8, .L80045780
    /* 80045754 2409001C */ addiu $t1, $zero, 0x1C
    /* 80045758 00401825 */ move $v1, $v0
    /* 8004575C 8E19006C */ lw $t9, 0x6C($s0)
.L80045760:
    /* 80045760 24840001 */ addiu $a0, $a0, 0x1
    /* 80045764 AC790000 */ sw $t9, 0x0($v1)
    /* 80045768 AE03006C */ sw $v1, 0x6C($s0)
    /* 8004576C 8E280000 */ lw $t0, 0x0($s1)
    /* 80045770 24630038 */ addiu $v1, $v1, 0x38
    /* 80045774 0088082A */ slt $at, $a0, $t0
    /* 80045778 5420FFF9 */ bnel $at, $zero, .L80045760
    /* 8004577C 8E19006C */ lw $t9, 0x6C($s0)
.L80045780:
    /* 80045780 AE000064 */ sw $zero, 0x64($s0)
    /* 80045784 AE000068 */ sw $zero, 0x68($s0)
    /* 80045788 8E270004 */ lw $a3, 0x4($s1)
    /* 8004578C AFA90010 */ sw $t1, 0x10($sp)
    /* 80045790 8FA6002C */ lw $a2, 0x2C($sp)
    /* 80045794 0C00F56A */ jal alHeapDBAlloc
    /* 80045798 00002025 */ move $a0, $zero
    /* 8004579C 26040048 */ addiu $a0, $s0, 0x48
    /* 800457A0 00402825 */ move $a1, $v0
    /* 800457A4 0C010A8D */ jal alEvtqNew
    /* 800457A8 8E260004 */ lw $a2, 0x4($s1)
    /* 800457AC 3C0A8004 */ lui $t2, %hi(func_80045064)
    /* 800457B0 254A5064 */ addiu $t2, $t2, %lo(func_80045064)
    /* 800457B4 AE000000 */ sw $zero, 0x0($s0)
    /* 800457B8 AE0A0008 */ sw $t2, 0x8($s0)
    /* 800457BC AE100004 */ sw $s0, 0x4($s0)
    /* 800457C0 3C048007 */ lui $a0, %hi(D_80071FF8)
    /* 800457C4 8C841FF8 */ lw $a0, %lo(D_80071FF8)($a0)
    /* 800457C8 0C0122F2 */ jal alSynAddPlayer
    /* 800457CC 02002825 */ move $a1, $s0
    /* 800457D0 8FBF0024 */ lw $ra, 0x24($sp)
    /* 800457D4 8FB0001C */ lw $s0, 0x1C($sp)
    /* 800457D8 8FB10020 */ lw $s1, 0x20($sp)
    /* 800457DC 03E00008 */ jr $ra
    /* 800457E0 27BD0040 */ addiu $sp, $sp, 0x40
    /* 800457E4 00000000 */ nop
