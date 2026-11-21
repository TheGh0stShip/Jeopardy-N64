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
glabel func_8003C638
    /* 8003C638 27BDFFB8 */ addiu $sp, $sp, -0x48
    /* 8003C63C AFA40048 */ sw $a0, 0x48($sp)
    /* 8003C640 8FAE0048 */ lw $t6, 0x48($sp)
    /* 8003C644 AFBF001C */ sw $ra, 0x1C($sp)
    /* 8003C648 AFA00030 */ sw $zero, 0x30($sp)
    /* 8003C64C AFA00044 */ sw $zero, 0x44($sp)
    /* 8003C650 AFA00038 */ sw $zero, 0x38($sp)
    /* 8003C654 AFAE0034 */ sw $t6, 0x34($sp)
.L8003C658:
    /* 8003C658 8FAF0034 */ lw $t7, 0x34($sp)
    /* 8003C65C 27A50044 */ addiu $a1, $sp, 0x44
    /* 8003C660 24060001 */ addiu $a2, $zero, 0x1
    /* 8003C664 0C0104AE */ jal osRecvMesg
    /* 8003C668 8DE40008 */ lw $a0, 0x8($t7)
    /* 8003C66C 8FB80044 */ lw $t8, 0x44($sp)
    /* 8003C670 8F190014 */ lw $t9, 0x14($t8)
    /* 8003C674 132000A1 */ beqz $t9, .L8003C8FC
    /* 8003C678 00000000 */ nop
    /* 8003C67C 93280004 */ lbu $t0, 0x4($t9)
    /* 8003C680 24010002 */ addiu $at, $zero, 0x2
    /* 8003C684 1501009D */ bne $t0, $at, .L8003C8FC
    /* 8003C688 00000000 */ nop
    /* 8003C68C 8F290014 */ lw $t1, 0x14($t9)
    /* 8003C690 11200003 */ beqz $t1, .L8003C6A0
    /* 8003C694 24010001 */ addiu $at, $zero, 0x1
    /* 8003C698 15210098 */ bne $t1, $at, .L8003C8FC
    /* 8003C69C 00000000 */ nop
.L8003C6A0:
    /* 8003C6A0 8FAA0044 */ lw $t2, 0x44($sp)
    /* 8003C6A4 2408FFFF */ addiu $t0, $zero, -0x1
    /* 8003C6A8 24010003 */ addiu $at, $zero, 0x3
    /* 8003C6AC 8D4B0014 */ lw $t3, 0x14($t2)
    /* 8003C6B0 256C0014 */ addiu $t4, $t3, 0x14
    /* 8003C6B4 AFAC0028 */ sw $t4, 0x28($sp)
    /* 8003C6B8 958D0006 */ lhu $t5, 0x6($t4)
    /* 8003C6BC 000D70C0 */ sll $t6, $t5, 3
    /* 8003C6C0 01CD7021 */ addu $t6, $t6, $t5
    /* 8003C6C4 000E7080 */ sll $t6, $t6, 2
    /* 8003C6C8 018E7821 */ addu $t7, $t4, $t6
    /* 8003C6CC 25F80018 */ addiu $t8, $t7, 0x18
    /* 8003C6D0 AFB8002C */ sw $t8, 0x2C($sp)
    /* 8003C6D4 AD880008 */ sw $t0, 0x8($t4)
    /* 8003C6D8 8FB90028 */ lw $t9, 0x28($sp)
    /* 8003C6DC 97290004 */ lhu $t1, 0x4($t9)
    /* 8003C6E0 11210006 */ beq $t1, $at, .L8003C6FC
    /* 8003C6E4 00000000 */ nop
    /* 8003C6E8 8FAA002C */ lw $t2, 0x2C($sp)
    /* 8003C6EC 8D4B0004 */ lw $t3, 0x4($t2)
    /* 8003C6F0 8D4D000C */ lw $t5, 0xC($t2)
    /* 8003C6F4 016D7023 */ subu $t6, $t3, $t5
    /* 8003C6F8 AD4E0004 */ sw $t6, 0x4($t2)
.L8003C6FC:
    /* 8003C6FC 8FAF0028 */ lw $t7, 0x28($sp)
    /* 8003C700 24010002 */ addiu $at, $zero, 0x2
    /* 8003C704 95F80004 */ lhu $t8, 0x4($t7)
    /* 8003C708 17010009 */ bne $t8, $at, .L8003C730
    /* 8003C70C 00000000 */ nop
    /* 8003C710 8FA80044 */ lw $t0, 0x44($sp)
    /* 8003C714 8D0C0014 */ lw $t4, 0x14($t0)
    /* 8003C718 8D990014 */ lw $t9, 0x14($t4)
    /* 8003C71C 17200004 */ bnez $t9, .L8003C730
    /* 8003C720 00000000 */ nop
    /* 8003C724 24090001 */ addiu $t1, $zero, 0x1
    /* 8003C728 10000002 */ b .L8003C734
    /* 8003C72C AFA90030 */ sw $t1, 0x30($sp)
.L8003C730:
    /* 8003C730 AFA00030 */ sw $zero, 0x30($sp)
.L8003C734:
    /* 8003C734 8FAB0034 */ lw $t3, 0x34($sp)
    /* 8003C738 27A5003C */ addiu $a1, $sp, 0x3C
    /* 8003C73C 24060001 */ addiu $a2, $zero, 0x1
    /* 8003C740 0C0104AE */ jal osRecvMesg
    /* 8003C744 8D640010 */ lw $a0, 0x10($t3)
    /* 8003C748 3C040010 */ lui $a0, 0x10
    /* 8003C74C 0C0104FE */ jal __osResetGlobalIntMask
    /* 8003C750 34840401 */ ori $a0, $a0, 0x401
    /* 8003C754 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8003C758 8FAD0044 */ lw $t5, 0x44($sp)
    /* 8003C75C 3C018000 */ lui $at, 0x8000
    /* 8003C760 8DC60010 */ lw $a2, 0x10($t6)
    /* 8003C764 3C050500 */ lui $a1, 0x500
    /* 8003C768 34A50510 */ ori $a1, $a1, 0x510
    /* 8003C76C 00C15025 */ or $t2, $a2, $at
    /* 8003C770 01403025 */ move $a2, $t2
    /* 8003C774 0C00F2C6 */ jal osEPiRawWriteIo
    /* 8003C778 8DA40014 */ lw $a0, 0x14($t5)
.L8003C77C:
    /* 8003C77C 8FAF0034 */ lw $t7, 0x34($sp)
    /* 8003C780 27A50040 */ addiu $a1, $sp, 0x40
    /* 8003C784 24060001 */ addiu $a2, $zero, 0x1
    /* 8003C788 0C0104AE */ jal osRecvMesg
    /* 8003C78C 8DE4000C */ lw $a0, 0xC($t7)
    /* 8003C790 8FB80044 */ lw $t8, 0x44($sp)
    /* 8003C794 2401001D */ addiu $at, $zero, 0x1D
    /* 8003C798 8F080014 */ lw $t0, 0x14($t8)
    /* 8003C79C 250C0014 */ addiu $t4, $t0, 0x14
    /* 8003C7A0 AFAC0028 */ sw $t4, 0x28($sp)
    /* 8003C7A4 95990006 */ lhu $t9, 0x6($t4)
    /* 8003C7A8 001948C0 */ sll $t1, $t9, 3
    /* 8003C7AC 01394821 */ addu $t1, $t1, $t9
    /* 8003C7B0 00094880 */ sll $t1, $t1, 2
    /* 8003C7B4 01895821 */ addu $t3, $t4, $t1
    /* 8003C7B8 256D0018 */ addiu $t5, $t3, 0x18
    /* 8003C7BC AFAD002C */ sw $t5, 0x2C($sp)
    /* 8003C7C0 8D6E0018 */ lw $t6, 0x18($t3)
    /* 8003C7C4 15C1002E */ bne $t6, $at, .L8003C880
    /* 8003C7C8 00000000 */ nop
    /* 8003C7CC 8D860010 */ lw $a2, 0x10($t4)
    /* 8003C7D0 3C011000 */ lui $at, 0x1000
    /* 8003C7D4 3C050500 */ lui $a1, 0x500
    /* 8003C7D8 00C15025 */ or $t2, $a2, $at
    /* 8003C7DC 01403025 */ move $a2, $t2
    /* 8003C7E0 34A50510 */ ori $a1, $a1, 0x510
    /* 8003C7E4 0C00F2C6 */ jal osEPiRawWriteIo
    /* 8003C7E8 8F040014 */ lw $a0, 0x14($t8)
    /* 8003C7EC 8FAF0044 */ lw $t7, 0x44($sp)
    /* 8003C7F0 8FA80028 */ lw $t0, 0x28($sp)
    /* 8003C7F4 3C050500 */ lui $a1, 0x500
    /* 8003C7F8 34A50510 */ ori $a1, $a1, 0x510
    /* 8003C7FC 8DE40014 */ lw $a0, 0x14($t7)
    /* 8003C800 0C00F2C6 */ jal osEPiRawWriteIo
    /* 8003C804 8D060010 */ lw $a2, 0x10($t0)
    /* 8003C808 8FB90044 */ lw $t9, 0x44($sp)
    /* 8003C80C 3C050500 */ lui $a1, 0x500
    /* 8003C810 34A50508 */ ori $a1, $a1, 0x508
    /* 8003C814 27A60024 */ addiu $a2, $sp, 0x24
    /* 8003C818 0C00F2B2 */ jal osEPiRawReadIo
    /* 8003C81C 8F240014 */ lw $a0, 0x14($t9)
    /* 8003C820 8FA90024 */ lw $t1, 0x24($sp)
    /* 8003C824 3C010200 */ lui $at, 0x200
    /* 8003C828 01216824 */ and $t5, $t1, $at
    /* 8003C82C 11A0000B */ beqz $t5, .L8003C85C
    /* 8003C830 00000000 */ nop
    /* 8003C834 8FAE0028 */ lw $t6, 0x28($sp)
    /* 8003C838 8FAB0044 */ lw $t3, 0x44($sp)
    /* 8003C83C 3C010100 */ lui $at, 0x100
    /* 8003C840 8DC60010 */ lw $a2, 0x10($t6)
    /* 8003C844 3C050500 */ lui $a1, 0x500
    /* 8003C848 34A50510 */ ori $a1, $a1, 0x510
    /* 8003C84C 00C1C025 */ or $t8, $a2, $at
    /* 8003C850 03003025 */ move $a2, $t8
    /* 8003C854 0C00F2C6 */ jal osEPiRawWriteIo
    /* 8003C858 8D640014 */ lw $a0, 0x14($t3)
.L8003C85C:
    /* 8003C85C 8FAA002C */ lw $t2, 0x2C($sp)
    /* 8003C860 240C0004 */ addiu $t4, $zero, 0x4
    /* 8003C864 240F0002 */ addiu $t7, $zero, 0x2
    /* 8003C868 3C08A460 */ lui $t0, %hi(D_A4600010)
    /* 8003C86C 3C040010 */ lui $a0, 0x10
    /* 8003C870 AD4C0000 */ sw $t4, 0x0($t2)
    /* 8003C874 AD0F0010 */ sw $t7, %lo(D_A4600010)($t0)
    /* 8003C878 0C010586 */ jal __osSetGlobalIntMask
    /* 8003C87C 34840C01 */ ori $a0, $a0, 0xC01
.L8003C880:
    /* 8003C880 8FB90044 */ lw $t9, 0x44($sp)
    /* 8003C884 00003025 */ move $a2, $zero
    /* 8003C888 8F240004 */ lw $a0, 0x4($t9)
    /* 8003C88C 0C010516 */ jal osSendMesg
    /* 8003C890 03202825 */ move $a1, $t9
    /* 8003C894 8FA90030 */ lw $t1, 0x30($sp)
    /* 8003C898 24010001 */ addiu $at, $zero, 0x1
    /* 8003C89C 15210008 */ bne $t1, $at, .L8003C8C0
    /* 8003C8A0 00000000 */ nop
    /* 8003C8A4 8FAD0044 */ lw $t5, 0x44($sp)
    /* 8003C8A8 8DAB0014 */ lw $t3, 0x14($t5)
    /* 8003C8AC 8D6E002C */ lw $t6, 0x2C($t3)
    /* 8003C8B0 15C00003 */ bnez $t6, .L8003C8C0
    /* 8003C8B4 00000000 */ nop
    /* 8003C8B8 1000FFB0 */ b .L8003C77C
    /* 8003C8BC AFA00030 */ sw $zero, 0x30($sp)
.L8003C8C0:
    /* 8003C8C0 8FB80034 */ lw $t8, 0x34($sp)
    /* 8003C8C4 00002825 */ move $a1, $zero
    /* 8003C8C8 00003025 */ move $a2, $zero
    /* 8003C8CC 0C010516 */ jal osSendMesg
    /* 8003C8D0 8F040010 */ lw $a0, 0x10($t8)
    /* 8003C8D4 8FAC0044 */ lw $t4, 0x44($sp)
    /* 8003C8D8 24010001 */ addiu $at, $zero, 0x1
    /* 8003C8DC 8D8A0014 */ lw $t2, 0x14($t4)
    /* 8003C8E0 954F001A */ lhu $t7, 0x1A($t2)
    /* 8003C8E4 15E1FF5C */ bne $t7, $at, .L8003C658
    /* 8003C8E8 00000000 */ nop
    /* 8003C8EC 0C00FCAE */ jal osYieldThread
    /* 8003C8F0 00000000 */ nop
    /* 8003C8F4 1000FF58 */ b .L8003C658
    /* 8003C8F8 00000000 */ nop
.L8003C8FC:
    /* 8003C8FC 8FA80044 */ lw $t0, 0x44($sp)
    /* 8003C900 95190000 */ lhu $t9, 0x0($t0)
    /* 8003C904 2729FFF6 */ addiu $t1, $t9, -0xA
    /* 8003C908 2D210007 */ sltiu $at, $t1, 0x7
    /* 8003C90C 10200051 */ beqz $at, .L8003CA54
    /* 8003C910 00000000 */ nop
    /* 8003C914 00094880 */ sll $t1, $t1, 2
    /* 8003C918 3C018000 */ lui $at, %hi(jtbl_80001D08)
    /* 8003C91C 00290821 */ addu $at, $at, $t1
    /* 8003C920 8C291D08 */ lw $t1, %lo(jtbl_80001D08)($at)
    /* 8003C924 01200008 */ jr $t1
    /* 8003C928 00000000 */ nop
.L8003C92C:
    /* 8003C92C 8FAD0034 */ lw $t5, 0x34($sp)
    /* 8003C930 27A5003C */ addiu $a1, $sp, 0x3C
    /* 8003C934 24060001 */ addiu $a2, $zero, 0x1
    /* 8003C938 0C0104AE */ jal osRecvMesg
    /* 8003C93C 8DA40010 */ lw $a0, 0x10($t5)
    /* 8003C940 8FAE0034 */ lw $t6, 0x34($sp)
    /* 8003C944 8FAB0044 */ lw $t3, 0x44($sp)
    /* 8003C948 00002025 */ move $a0, $zero
    /* 8003C94C 8DD90014 */ lw $t9, 0x14($t6)
    /* 8003C950 8D65000C */ lw $a1, 0xC($t3)
    /* 8003C954 8D660008 */ lw $a2, 0x8($t3)
    /* 8003C958 0320F809 */ jalr $t9
    /* 8003C95C 8D670010 */ lw $a3, 0x10($t3)
    /* 8003C960 1000003E */ b .L8003CA5C
    /* 8003C964 AFA20038 */ sw $v0, 0x38($sp)
.L8003C968:
    /* 8003C968 8FB80034 */ lw $t8, 0x34($sp)
    /* 8003C96C 27A5003C */ addiu $a1, $sp, 0x3C
    /* 8003C970 24060001 */ addiu $a2, $zero, 0x1
    /* 8003C974 0C0104AE */ jal osRecvMesg
    /* 8003C978 8F040010 */ lw $a0, 0x10($t8)
    /* 8003C97C 8FAA0034 */ lw $t2, 0x34($sp)
    /* 8003C980 8FAC0044 */ lw $t4, 0x44($sp)
    /* 8003C984 24040001 */ addiu $a0, $zero, 0x1
    /* 8003C988 8D590014 */ lw $t9, 0x14($t2)
    /* 8003C98C 8D85000C */ lw $a1, 0xC($t4)
    /* 8003C990 8D860008 */ lw $a2, 0x8($t4)
    /* 8003C994 0320F809 */ jalr $t9
    /* 8003C998 8D870010 */ lw $a3, 0x10($t4)
    /* 8003C99C 1000002F */ b .L8003CA5C
    /* 8003C9A0 AFA20038 */ sw $v0, 0x38($sp)
.L8003C9A4:
    /* 8003C9A4 8FAF0034 */ lw $t7, 0x34($sp)
    /* 8003C9A8 27A5003C */ addiu $a1, $sp, 0x3C
    /* 8003C9AC 24060001 */ addiu $a2, $zero, 0x1
    /* 8003C9B0 0C0104AE */ jal osRecvMesg
    /* 8003C9B4 8DE40010 */ lw $a0, 0x10($t7)
    /* 8003C9B8 8FA80044 */ lw $t0, 0x44($sp)
    /* 8003C9BC 8FAD0034 */ lw $t5, 0x34($sp)
    /* 8003C9C0 00002825 */ move $a1, $zero
    /* 8003C9C4 8D090010 */ lw $t1, 0x10($t0)
    /* 8003C9C8 8D040014 */ lw $a0, 0x14($t0)
    /* 8003C9CC 8D06000C */ lw $a2, 0xC($t0)
    /* 8003C9D0 8D070008 */ lw $a3, 0x8($t0)
    /* 8003C9D4 AFA90010 */ sw $t1, 0x10($sp)
    /* 8003C9D8 8DB90018 */ lw $t9, 0x18($t5)
    /* 8003C9DC 0320F809 */ jalr $t9
    /* 8003C9E0 00000000 */ nop
    /* 8003C9E4 1000001D */ b .L8003CA5C
    /* 8003C9E8 AFA20038 */ sw $v0, 0x38($sp)
.L8003C9EC:
    /* 8003C9EC 8FAB0034 */ lw $t3, 0x34($sp)
    /* 8003C9F0 27A5003C */ addiu $a1, $sp, 0x3C
    /* 8003C9F4 24060001 */ addiu $a2, $zero, 0x1
    /* 8003C9F8 0C0104AE */ jal osRecvMesg
    /* 8003C9FC 8D640010 */ lw $a0, 0x10($t3)
    /* 8003CA00 8FAE0044 */ lw $t6, 0x44($sp)
    /* 8003CA04 8FAC0034 */ lw $t4, 0x34($sp)
    /* 8003CA08 24050001 */ addiu $a1, $zero, 0x1
    /* 8003CA0C 8DD80010 */ lw $t8, 0x10($t6)
    /* 8003CA10 8DC40014 */ lw $a0, 0x14($t6)
    /* 8003CA14 8DC6000C */ lw $a2, 0xC($t6)
    /* 8003CA18 8DC70008 */ lw $a3, 0x8($t6)
    /* 8003CA1C AFB80010 */ sw $t8, 0x10($sp)
    /* 8003CA20 8D990018 */ lw $t9, 0x18($t4)
    /* 8003CA24 0320F809 */ jalr $t9
    /* 8003CA28 00000000 */ nop
    /* 8003CA2C 1000000B */ b .L8003CA5C
    /* 8003CA30 AFA20038 */ sw $v0, 0x38($sp)
.L8003CA34:
    /* 8003CA34 8FAA0044 */ lw $t2, 0x44($sp)
    /* 8003CA38 00003025 */ move $a2, $zero
    /* 8003CA3C 8D440004 */ lw $a0, 0x4($t2)
    /* 8003CA40 0C010516 */ jal osSendMesg
    /* 8003CA44 01402825 */ move $a1, $t2
    /* 8003CA48 240FFFFF */ addiu $t7, $zero, -0x1
    /* 8003CA4C 10000003 */ b .L8003CA5C
    /* 8003CA50 AFAF0038 */ sw $t7, 0x38($sp)
.L8003CA54:
    /* 8003CA54 2408FFFF */ addiu $t0, $zero, -0x1
    /* 8003CA58 AFA80038 */ sw $t0, 0x38($sp)
.L8003CA5C:
    /* 8003CA5C 8FA90038 */ lw $t1, 0x38($sp)
    /* 8003CA60 1520FEFD */ bnez $t1, .L8003C658
    /* 8003CA64 00000000 */ nop
    /* 8003CA68 8FAD0034 */ lw $t5, 0x34($sp)
    /* 8003CA6C 27A50040 */ addiu $a1, $sp, 0x40
    /* 8003CA70 24060001 */ addiu $a2, $zero, 0x1
    /* 8003CA74 0C0104AE */ jal osRecvMesg
    /* 8003CA78 8DA4000C */ lw $a0, 0xC($t5)
    /* 8003CA7C 8FAB0044 */ lw $t3, 0x44($sp)
    /* 8003CA80 00003025 */ move $a2, $zero
    /* 8003CA84 8D640004 */ lw $a0, 0x4($t3)
    /* 8003CA88 0C010516 */ jal osSendMesg
    /* 8003CA8C 01602825 */ move $a1, $t3
    /* 8003CA90 8FAE0034 */ lw $t6, 0x34($sp)
    /* 8003CA94 00002825 */ move $a1, $zero
    /* 8003CA98 00003025 */ move $a2, $zero
    /* 8003CA9C 0C010516 */ jal osSendMesg
    /* 8003CAA0 8DC40010 */ lw $a0, 0x10($t6)
    /* 8003CAA4 1000FEEC */ b .L8003C658
    /* 8003CAA8 00000000 */ nop
    /* 8003CAAC 00000000 */ nop
    /* 8003CAB0 00000000 */ nop
    /* 8003CAB4 00000000 */ nop
    /* 8003CAB8 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8003CABC 27BD0048 */ addiu $sp, $sp, 0x48
    /* 8003CAC0 03E00008 */ jr $ra
    /* 8003CAC4 00000000 */ nop
.section .rodata
.section .rodata.jtbl_80001D08, "a"
glabel jtbl_80001D08
    .word .L8003CA34
    .word .L8003C92C
    .word .L8003C968
    .word .L8003CA54
    .word .L8003CA54
    .word .L8003C9A4
    .word .L8003C9EC
