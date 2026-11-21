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
glabel func_8004D438
    /* 8004D438 3C0E8007 */ lui $t6, %hi(D_80073288)
    /* 8004D43C 8DCE3288 */ lw $t6, %lo(D_80073288)($t6)
    /* 8004D440 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8004D444 AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004D448 15C00059 */ bnez $t6, .L8004D5B0
    /* 8004D44C AFA40030 */ sw $a0, 0x30($sp)
    /* 8004D450 0C010BC6 */ jal __osTimerServicesInit
    /* 8004D454 00000000 */ nop
    /* 8004D458 3C04800D */ lui $a0, %hi(D_800D43E0)
    /* 8004D45C 3C05800D */ lui $a1, %hi(D_800D43F8)
    /* 8004D460 24A543F8 */ addiu $a1, $a1, %lo(D_800D43F8)
    /* 8004D464 248443E0 */ addiu $a0, $a0, %lo(D_800D43E0)
    /* 8004D468 0C01210E */ jal osCreateMesgQueue
    /* 8004D46C 24060005 */ addiu $a2, $zero, 0x5
    /* 8004D470 3C01800D */ lui $at, %hi(D_800D4410)
    /* 8004D474 240F000D */ addiu $t7, $zero, 0xD
    /* 8004D478 A42F4410 */ sh $t7, %lo(D_800D4410)($at)
    /* 8004D47C A0204412 */ sb $zero, %lo(D_800D4412)($at)
    /* 8004D480 AC204414 */ sw $zero, %lo(D_800D4414)($at)
    /* 8004D484 3C01800D */ lui $at, %hi(D_800D4428)
    /* 8004D488 2418000E */ addiu $t8, $zero, 0xE
    /* 8004D48C 3C05800D */ lui $a1, %hi(D_800D43E0)
    /* 8004D490 3C06800D */ lui $a2, %hi(D_800D4410)
    /* 8004D494 A4384428 */ sh $t8, %lo(D_800D4428)($at)
    /* 8004D498 A020442A */ sb $zero, %lo(D_800D442A)($at)
    /* 8004D49C AC20442C */ sw $zero, %lo(D_800D442C)($at)
    /* 8004D4A0 24C64410 */ addiu $a2, $a2, %lo(D_800D4410)
    /* 8004D4A4 24A543E0 */ addiu $a1, $a1, %lo(D_800D43E0)
    /* 8004D4A8 0C01056A */ jal osSetEventMesg
    /* 8004D4AC 24040007 */ addiu $a0, $zero, 0x7
    /* 8004D4B0 3C05800D */ lui $a1, %hi(D_800D43E0)
    /* 8004D4B4 3C06800D */ lui $a2, %hi(D_800D4428)
    /* 8004D4B8 24C64428 */ addiu $a2, $a2, %lo(D_800D4428)
    /* 8004D4BC 24A543E0 */ addiu $a1, $a1, %lo(D_800D43E0)
    /* 8004D4C0 0C01056A */ jal osSetEventMesg
    /* 8004D4C4 24040003 */ addiu $a0, $zero, 0x3
    /* 8004D4C8 2419FFFF */ addiu $t9, $zero, -0x1
    /* 8004D4CC AFB90028 */ sw $t9, 0x28($sp)
    /* 8004D4D0 0C011F4A */ jal func_80047D28
    /* 8004D4D4 00002025 */ move $a0, $zero
    /* 8004D4D8 AFA20024 */ sw $v0, 0x24($sp)
    /* 8004D4DC 8FA80024 */ lw $t0, 0x24($sp)
    /* 8004D4E0 8FA90030 */ lw $t1, 0x30($sp)
    /* 8004D4E4 0109082A */ slt $at, $t0, $t1
    /* 8004D4E8 10200005 */ beqz $at, .L8004D500
    /* 8004D4EC 00000000 */ nop
    /* 8004D4F0 AFA80028 */ sw $t0, 0x28($sp)
    /* 8004D4F4 00002025 */ move $a0, $zero
    /* 8004D4F8 0C00FEAA */ jal osSetThreadPri
    /* 8004D4FC 01202825 */ move $a1, $t1
.L8004D500:
    /* 8004D500 0C00FF3A */ jal __osDisableInt
    /* 8004D504 00000000 */ nop
    /* 8004D508 3C018007 */ lui $at, %hi(D_80073288)
    /* 8004D50C 3C0C800D */ lui $t4, %hi(D_800D43E0)
    /* 8004D510 3C0B800D */ lui $t3, %hi(D_800D3230)
    /* 8004D514 258C43E0 */ addiu $t4, $t4, %lo(D_800D43E0)
    /* 8004D518 240A0001 */ addiu $t2, $zero, 0x1
    /* 8004D51C 256B3230 */ addiu $t3, $t3, %lo(D_800D3230)
    /* 8004D520 AC2A3288 */ sw $t2, %lo(D_80073288)($at)
    /* 8004D524 AC2B328C */ sw $t3, %lo(D_8007328C)($at)
    /* 8004D528 AC2C3290 */ sw $t4, %lo(D_80073290)($at)
    /* 8004D52C AC2C3294 */ sw $t4, %lo(D_80073294)($at)
    /* 8004D530 3C0D800D */ lui $t5, %hi(D_800D33E0)
    /* 8004D534 8FAF0030 */ lw $t7, 0x30($sp)
    /* 8004D538 3C018007 */ lui $at, %hi(D_80073298)
    /* 8004D53C 25AD33E0 */ addiu $t5, $t5, %lo(D_800D33E0)
    /* 8004D540 25AE1000 */ addiu $t6, $t5, 0x1000
    /* 8004D544 3C068005 */ lui $a2, %hi(func_8004D5C0)
    /* 8004D548 3C078007 */ lui $a3, %hi(D_80073288)
    /* 8004D54C AFA2002C */ sw $v0, 0x2C($sp)
    /* 8004D550 AC203298 */ sw $zero, %lo(D_80073298)($at)
    /* 8004D554 AC20329C */ sw $zero, %lo(D_8007329C)($at)
    /* 8004D558 AC2032A0 */ sw $zero, %lo(D_800732A0)($at)
    /* 8004D55C 24E73288 */ addiu $a3, $a3, %lo(D_80073288)
    /* 8004D560 24C6D5C0 */ addiu $a2, $a2, %lo(func_8004D5C0)
    /* 8004D564 AFAE0010 */ sw $t6, 0x10($sp)
    /* 8004D568 01602025 */ move $a0, $t3
    /* 8004D56C 00002825 */ move $a1, $zero
    /* 8004D570 0C01059A */ jal osCreateThread
    /* 8004D574 AFAF0014 */ sw $t7, 0x14($sp)
    /* 8004D578 0C013082 */ jal __osViInit
    /* 8004D57C 00000000 */ nop
    /* 8004D580 3C04800D */ lui $a0, %hi(D_800D3230)
    /* 8004D584 0C011EE6 */ jal osStartThread
    /* 8004D588 24843230 */ addiu $a0, $a0, %lo(D_800D3230)
    /* 8004D58C 0C00FF42 */ jal func_8003FD08
    /* 8004D590 8FA4002C */ lw $a0, 0x2C($sp)
    /* 8004D594 8FB80028 */ lw $t8, 0x28($sp)
    /* 8004D598 2401FFFF */ addiu $at, $zero, -0x1
    /* 8004D59C 13010004 */ beq $t8, $at, .L8004D5B0
    /* 8004D5A0 00000000 */ nop
    /* 8004D5A4 00002025 */ move $a0, $zero
    /* 8004D5A8 0C00FEAA */ jal osSetThreadPri
    /* 8004D5AC 03002825 */ move $a1, $t8
.L8004D5B0:
    /* 8004D5B0 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004D5B4 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8004D5B8 03E00008 */ jr $ra
    /* 8004D5BC 00000000 */ nop
