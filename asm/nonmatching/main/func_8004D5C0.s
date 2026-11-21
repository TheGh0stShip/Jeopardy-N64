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
glabel func_8004D5C0
    /* 8004D5C0 27BDFFC8 */ addiu $sp, $sp, -0x38
    /* 8004D5C4 AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004D5C8 AFA40038 */ sw $a0, 0x38($sp)
    /* 8004D5CC AFB00018 */ sw $s0, 0x18($sp)
    /* 8004D5D0 AFA0002C */ sw $zero, 0x2C($sp)
    /* 8004D5D4 0C01377A */ jal func_8004DDE8
    /* 8004D5D8 AFA00028 */ sw $zero, 0x28($sp)
    /* 8004D5DC AFA20034 */ sw $v0, 0x34($sp)
    /* 8004D5E0 8FAE0034 */ lw $t6, 0x34($sp)
    /* 8004D5E4 3C01800D */ lui $at, %hi(D_800D4440)
    /* 8004D5E8 95CF0002 */ lhu $t7, 0x2($t6)
    /* 8004D5EC 15E00004 */ bnez $t7, .L8004D600
    /* 8004D5F0 A42F4440 */ sh $t7, %lo(D_800D4440)($at)
    /* 8004D5F4 24180001 */ addiu $t8, $zero, 0x1
    /* 8004D5F8 3C01800D */ lui $at, %hi(D_800D4440)
    /* 8004D5FC A4384440 */ sh $t8, %lo(D_800D4440)($at)
.L8004D600:
    /* 8004D600 8FB90038 */ lw $t9, 0x38($sp)
    /* 8004D604 AFB90030 */ sw $t9, 0x30($sp)
.L8004D608:
    /* 8004D608 8FA80030 */ lw $t0, 0x30($sp)
    /* 8004D60C 27A5002C */ addiu $a1, $sp, 0x2C
    /* 8004D610 24060001 */ addiu $a2, $zero, 0x1
    /* 8004D614 0C0104AE */ jal osRecvMesg
    /* 8004D618 8D04000C */ lw $a0, 0xC($t0)
    /* 8004D61C 8FA9002C */ lw $t1, 0x2C($sp)
    /* 8004D620 2401000D */ addiu $at, $zero, 0xD
    /* 8004D624 95300000 */ lhu $s0, 0x0($t1)
    /* 8004D628 12010005 */ beq $s0, $at, .L8004D640
    /* 8004D62C 2401000E */ addiu $at, $zero, 0xE
    /* 8004D630 12010047 */ beq $s0, $at, .L8004D750
    /* 8004D634 00000000 */ nop
    /* 8004D638 1000FFF3 */ b .L8004D608
    /* 8004D63C 00000000 */ nop
.L8004D640:
    /* 8004D640 0C0136A2 */ jal __osViSwapContext
    /* 8004D644 00000000 */ nop
    /* 8004D648 3C0A800D */ lui $t2, %hi(D_800D4440)
    /* 8004D64C 954A4440 */ lhu $t2, %lo(D_800D4440)($t2)
    /* 8004D650 3C01800D */ lui $at, %hi(D_800D4440)
    /* 8004D654 254BFFFF */ addiu $t3, $t2, -0x1
    /* 8004D658 316CFFFF */ andi $t4, $t3, 0xFFFF
    /* 8004D65C 15800010 */ bnez $t4, .L8004D6A0
    /* 8004D660 A42B4440 */ sh $t3, %lo(D_800D4440)($at)
    /* 8004D664 0C01377A */ jal func_8004DDE8
    /* 8004D668 00000000 */ nop
    /* 8004D66C AFA20034 */ sw $v0, 0x34($sp)
    /* 8004D670 8FAD0034 */ lw $t5, 0x34($sp)
    /* 8004D674 8DAE0010 */ lw $t6, 0x10($t5)
    /* 8004D678 11C00005 */ beqz $t6, .L8004D690
    /* 8004D67C 00000000 */ nop
    /* 8004D680 01C02025 */ move $a0, $t6
    /* 8004D684 8DA50014 */ lw $a1, 0x14($t5)
    /* 8004D688 0C010516 */ jal osSendMesg
    /* 8004D68C 00003025 */ move $a2, $zero
.L8004D690:
    /* 8004D690 8FAF0034 */ lw $t7, 0x34($sp)
    /* 8004D694 3C01800D */ lui $at, %hi(D_800D4440)
    /* 8004D698 95F80002 */ lhu $t8, 0x2($t7)
    /* 8004D69C A4384440 */ sh $t8, %lo(D_800D4440)($at)
.L8004D6A0:
    /* 8004D6A0 3C19800D */ lui $t9, %hi(D_800D2F6C)
    /* 8004D6A4 8F392F6C */ lw $t9, %lo(D_800D2F6C)($t9)
    /* 8004D6A8 8FA90028 */ lw $t1, 0x28($sp)
    /* 8004D6AC 3C01800D */ lui $at, %hi(D_800D2F6C)
    /* 8004D6B0 27280001 */ addiu $t0, $t9, 0x1
    /* 8004D6B4 1120000C */ beqz $t1, .L8004D6E8
    /* 8004D6B8 AC282F6C */ sw $t0, %lo(D_800D2F6C)($at)
    /* 8004D6BC 0C010CCA */ jal func_80043328
    /* 8004D6C0 00000000 */ nop
    /* 8004D6C4 AFA20024 */ sw $v0, 0x24($sp)
    /* 8004D6C8 8FAA0024 */ lw $t2, 0x24($sp)
    /* 8004D6CC 240C0000 */ addiu $t4, $zero, 0x0
    /* 8004D6D0 3C01800D */ lui $at, %hi(D_800D2F60)
    /* 8004D6D4 AC2C2F60 */ sw $t4, %lo(D_800D2F60)($at)
    /* 8004D6D8 3C01800D */ lui $at, %hi(D_800D2F64)
    /* 8004D6DC 01406825 */ move $t5, $t2
    /* 8004D6E0 AC2D2F64 */ sw $t5, %lo(D_800D2F64)($at)
    /* 8004D6E4 AFA00028 */ sw $zero, 0x28($sp)
.L8004D6E8:
    /* 8004D6E8 3C0B800D */ lui $t3, %hi(D_800D2F68)
    /* 8004D6EC 8D6B2F68 */ lw $t3, %lo(D_800D2F68)($t3)
    /* 8004D6F0 0C010CCA */ jal func_80043328
    /* 8004D6F4 AFAB0024 */ sw $t3, 0x24($sp)
    /* 8004D6F8 3C01800D */ lui $at, %hi(D_800D2F68)
    /* 8004D6FC AC222F68 */ sw $v0, %lo(D_800D2F68)($at)
    /* 8004D700 3C0E800D */ lui $t6, %hi(D_800D2F68)
    /* 8004D704 8DCE2F68 */ lw $t6, %lo(D_800D2F68)($t6)
    /* 8004D708 8FAF0024 */ lw $t7, 0x24($sp)
    /* 8004D70C 3C0B800D */ lui $t3, %hi(D_800D2F64)
    /* 8004D710 8D6B2F64 */ lw $t3, %lo(D_800D2F64)($t3)
    /* 8004D714 01CFC023 */ subu $t8, $t6, $t7
    /* 8004D718 03004825 */ move $t1, $t8
    /* 8004D71C 3C0A800D */ lui $t2, %hi(D_800D2F60)
    /* 8004D720 012B6821 */ addu $t5, $t1, $t3
    /* 8004D724 8D4A2F60 */ lw $t2, %lo(D_800D2F60)($t2)
    /* 8004D728 24080000 */ addiu $t0, $zero, 0x0
    /* 8004D72C 01AB082B */ sltu $at, $t5, $t3
    /* 8004D730 00286021 */ addu $t4, $at, $t0
    /* 8004D734 3C01800D */ lui $at, %hi(D_800D2F60)
    /* 8004D738 018A6021 */ addu $t4, $t4, $t2
    /* 8004D73C AC2C2F60 */ sw $t4, %lo(D_800D2F60)($at)
    /* 8004D740 3C01800D */ lui $at, %hi(D_800D2F64)
    /* 8004D744 AFB80024 */ sw $t8, 0x24($sp)
    /* 8004D748 1000FFAF */ b .L8004D608
    /* 8004D74C AC2D2F64 */ sw $t5, %lo(D_800D2F64)($at)
.L8004D750:
    /* 8004D750 0C010BE9 */ jal __osTimerInterrupt
    /* 8004D754 00000000 */ nop
    /* 8004D758 1000FFAB */ b .L8004D608
    /* 8004D75C 00000000 */ nop
    /* 8004D760 00000000 */ nop
    /* 8004D764 00000000 */ nop
    /* 8004D768 00000000 */ nop
    /* 8004D76C 00000000 */ nop
    /* 8004D770 00000000 */ nop
    /* 8004D774 00000000 */ nop
    /* 8004D778 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004D77C 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004D780 27BD0038 */ addiu $sp, $sp, 0x38
    /* 8004D784 03E00008 */ jr $ra
    /* 8004D788 00000000 */ nop
    /* 8004D78C 00000000 */ nop
    /* 8004D790 00000000 */ nop
    /* 8004D794 00000000 */ nop
