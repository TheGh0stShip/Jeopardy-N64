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
glabel func_80046F9C
    /* 80046F9C 27BDFFC0 */ addiu $sp, $sp, -0x40
    /* 80046FA0 AFBF0024 */ sw $ra, 0x24($sp)
    /* 80046FA4 AFB10020 */ sw $s1, 0x20($sp)
    /* 80046FA8 AFB0001C */ sw $s0, 0x1C($sp)
    /* 80046FAC 8CA6000C */ lw $a2, 0xC($a1)
    /* 80046FB0 AC800020 */ sw $zero, 0x20($a0)
    /* 80046FB4 AC800018 */ sw $zero, 0x18($a0)
    /* 80046FB8 3C0E8007 */ lui $t6, %hi(D_80071FF8)
    /* 80046FBC 8DCE1FF8 */ lw $t6, %lo(D_80071FF8)($t6)
    /* 80046FC0 240F00FF */ addiu $t7, $zero, 0xFF
    /* 80046FC4 241801E8 */ addiu $t8, $zero, 0x1E8
    /* 80046FC8 24197FFF */ addiu $t9, $zero, 0x7FFF
    /* 80046FCC A48F0030 */ sh $t7, 0x30($a0)
    /* 80046FD0 AC980024 */ sw $t8, 0x24($a0)
    /* 80046FD4 AC800028 */ sw $zero, 0x28($a0)
    /* 80046FD8 AC80002C */ sw $zero, 0x2C($a0)
    /* 80046FDC A4990032 */ sh $t9, 0x32($a0)
    /* 80046FE0 AC8E0014 */ sw $t6, 0x14($a0)
    /* 80046FE4 90A80009 */ lbu $t0, 0x9($a1)
    /* 80046FE8 24093E80 */ addiu $t1, $zero, 0x3E80
    /* 80046FEC AC89005C */ sw $t1, 0x5C($a0)
    /* 80046FF0 AC80001C */ sw $zero, 0x1C($a0)
    /* 80046FF4 A0880035 */ sb $t0, 0x35($a0)
    /* 80046FF8 8CAA0010 */ lw $t2, 0x10($a1)
    /* 80046FFC 240D0009 */ addiu $t5, $zero, 0x9
    /* 80047000 00A08825 */ move $s1, $a1
    /* 80047004 AC8A0070 */ sw $t2, 0x70($a0)
    /* 80047008 8CAB0014 */ lw $t3, 0x14($a1)
    /* 8004700C 00808025 */ move $s0, $a0
    /* 80047010 240F0010 */ addiu $t7, $zero, 0x10
    /* 80047014 AC8B0074 */ sw $t3, 0x74($a0)
    /* 80047018 8CAC0018 */ lw $t4, 0x18($a1)
    /* 8004701C AC80007C */ sw $zero, 0x7C($a0)
    /* 80047020 AC800080 */ sw $zero, 0x80($a0)
    /* 80047024 AC800084 */ sw $zero, 0x84($a0)
    /* 80047028 A48D0038 */ sh $t5, 0x38($a0)
    /* 8004702C AC8C0078 */ sw $t4, 0x78($a0)
    /* 80047030 90AE0008 */ lbu $t6, 0x8($a1)
    /* 80047034 00002825 */ move $a1, $zero
    /* 80047038 A08E0034 */ sb $t6, 0x34($a0)
    /* 8004703C 92270008 */ lbu $a3, 0x8($s1)
    /* 80047040 AFAF0010 */ sw $t7, 0x10($sp)
    /* 80047044 00002025 */ move $a0, $zero
    /* 80047048 0C00F56A */ jal alHeapDBAlloc
    /* 8004704C AFA6002C */ sw $a2, 0x2C($sp)
    /* 80047050 AE020060 */ sw $v0, 0x60($s0)
    /* 80047054 0C011BCB */ jal __initChanState
    /* 80047058 02002025 */ move $a0, $s0
    /* 8004705C 8E270000 */ lw $a3, 0x0($s1)
    /* 80047060 24180038 */ addiu $t8, $zero, 0x38
    /* 80047064 AFB80010 */ sw $t8, 0x10($sp)
    /* 80047068 00002025 */ move $a0, $zero
    /* 8004706C 00002825 */ move $a1, $zero
    /* 80047070 0C00F56A */ jal alHeapDBAlloc
    /* 80047074 8FA6002C */ lw $a2, 0x2C($sp)
    /* 80047078 AE00006C */ sw $zero, 0x6C($s0)
    /* 8004707C 8E390000 */ lw $t9, 0x0($s1)
    /* 80047080 00002025 */ move $a0, $zero
    /* 80047084 00002825 */ move $a1, $zero
    /* 80047088 1B20000B */ blez $t9, .L800470B8
    /* 8004708C 240A001C */ addiu $t2, $zero, 0x1C
    /* 80047090 00401825 */ move $v1, $v0
    /* 80047094 8E08006C */ lw $t0, 0x6C($s0)
.L80047098:
    /* 80047098 24840001 */ addiu $a0, $a0, 0x1
    /* 8004709C AC680000 */ sw $t0, 0x0($v1)
    /* 800470A0 AE03006C */ sw $v1, 0x6C($s0)
    /* 800470A4 8E290000 */ lw $t1, 0x0($s1)
    /* 800470A8 24630038 */ addiu $v1, $v1, 0x38
    /* 800470AC 0089082A */ slt $at, $a0, $t1
    /* 800470B0 5420FFF9 */ bnel $at, $zero, .L80047098
    /* 800470B4 8E08006C */ lw $t0, 0x6C($s0)
.L800470B8:
    /* 800470B8 AE000064 */ sw $zero, 0x64($s0)
    /* 800470BC AE000068 */ sw $zero, 0x68($s0)
    /* 800470C0 8E270004 */ lw $a3, 0x4($s1)
    /* 800470C4 AFAA0010 */ sw $t2, 0x10($sp)
    /* 800470C8 8FA6002C */ lw $a2, 0x2C($sp)
    /* 800470CC 0C00F56A */ jal alHeapDBAlloc
    /* 800470D0 00002025 */ move $a0, $zero
    /* 800470D4 26040048 */ addiu $a0, $s0, 0x48
    /* 800470D8 00402825 */ move $a1, $v0
    /* 800470DC 0C010A8D */ jal alEvtqNew
    /* 800470E0 8E260004 */ lw $a2, 0x4($s1)
    /* 800470E4 3C0B8004 */ lui $t3, %hi(func_80046804)
    /* 800470E8 256B6804 */ addiu $t3, $t3, %lo(func_80046804)
    /* 800470EC AE000000 */ sw $zero, 0x0($s0)
    /* 800470F0 AE0B0008 */ sw $t3, 0x8($s0)
    /* 800470F4 AE100004 */ sw $s0, 0x4($s0)
    /* 800470F8 3C048007 */ lui $a0, %hi(D_80071FF8)
    /* 800470FC 8C841FF8 */ lw $a0, %lo(D_80071FF8)($a0)
    /* 80047100 0C0122F2 */ jal alSynAddPlayer
    /* 80047104 02002825 */ move $a1, $s0
    /* 80047108 8FBF0024 */ lw $ra, 0x24($sp)
    /* 8004710C 8FB0001C */ lw $s0, 0x1C($sp)
    /* 80047110 8FB10020 */ lw $s1, 0x20($sp)
    /* 80047114 03E00008 */ jr $ra
    /* 80047118 27BD0040 */ addiu $sp, $sp, 0x40
    /* 8004711C 00000000 */ nop
    /* 80047120 00000000 */ nop
    /* 80047124 00000000 */ nop
