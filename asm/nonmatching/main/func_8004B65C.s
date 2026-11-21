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
glabel func_8004B65C
    /* 8004B65C 27BDFF78 */ addiu $sp, $sp, -0x88
    /* 8004B660 AFBE0038 */ sw $fp, 0x38($sp)
    /* 8004B664 AFB70034 */ sw $s7, 0x34($sp)
    /* 8004B668 AFB60030 */ sw $s6, 0x30($sp)
    /* 8004B66C 0080B025 */ move $s6, $a0
    /* 8004B670 AFBF003C */ sw $ra, 0x3C($sp)
    /* 8004B674 AFB5002C */ sw $s5, 0x2C($sp)
    /* 8004B678 AFB40028 */ sw $s4, 0x28($sp)
    /* 8004B67C AFB30024 */ sw $s3, 0x24($sp)
    /* 8004B680 AFB20020 */ sw $s2, 0x20($sp)
    /* 8004B684 AFB1001C */ sw $s1, 0x1C($sp)
    /* 8004B688 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004B68C 24970040 */ addiu $s7, $a0, 0x40
    /* 8004B690 241E029A */ addiu $fp, $zero, 0x29A
.L8004B694:
    /* 8004B694 02E02025 */ move $a0, $s7
.L8004B698:
    /* 8004B698 27A50084 */ addiu $a1, $sp, 0x84
    /* 8004B69C 0C0104AE */ jal osRecvMesg
    /* 8004B6A0 24060001 */ addiu $a2, $zero, 0x1
    /* 8004B6A4 8FA30084 */ lw $v1, 0x84($sp)
    /* 8004B6A8 2401029B */ addiu $at, $zero, 0x29B
    /* 8004B6AC 107E0009 */ beq $v1, $fp, .L8004B6D4
    /* 8004B6B0 00000000 */ nop
    /* 8004B6B4 1061000B */ beq $v1, $at, .L8004B6E4
    /* 8004B6B8 2401029C */ addiu $at, $zero, 0x29C
    /* 8004B6BC 1061003C */ beq $v1, $at, .L8004B7B0
    /* 8004B6C0 2401029D */ addiu $at, $zero, 0x29D
    /* 8004B6C4 50610057 */ beql $v1, $at, .L8004B824
    /* 8004B6C8 8ED00260 */ lw $s0, 0x260($s6)
    /* 8004B6CC 1000FFF2 */ b .L8004B698
    /* 8004B6D0 02E02025 */ move $a0, $s7
.L8004B6D4:
    /* 8004B6D4 0C012D37 */ jal func_8004B4DC
    /* 8004B6D8 02C0A025 */ move $s4, $s6
    /* 8004B6DC 1000FFEE */ b .L8004B698
    /* 8004B6E0 02E02025 */ move $a0, $s7
.L8004B6E4:
    /* 8004B6E4 AFA00068 */ sw $zero, 0x68($sp)
    /* 8004B6E8 AFA00064 */ sw $zero, 0x64($sp)
    /* 8004B6EC 8ED00274 */ lw $s0, 0x274($s6)
    /* 8004B6F0 AEC00274 */ sw $zero, 0x274($s6)
    /* 8004B6F4 8E0E0004 */ lw $t6, 0x4($s0)
    /* 8004B6F8 31CF0010 */ andi $t7, $t6, 0x10
    /* 8004B6FC 51E00015 */ beql $t7, $zero, .L8004B754
    /* 8004B700 8E0E0004 */ lw $t6, 0x4($s0)
    /* 8004B704 0C013052 */ jal osSpTaskYielded
    /* 8004B708 26040010 */ addiu $a0, $s0, 0x10
    /* 8004B70C 50400011 */ beql $v0, $zero, .L8004B754
    /* 8004B710 8E0E0004 */ lw $t6, 0x4($s0)
    /* 8004B714 8E180004 */ lw $t8, 0x4($s0)
    /* 8004B718 8E0E0008 */ lw $t6, 0x8($s0)
    /* 8004B71C 24010003 */ addiu $at, $zero, 0x3
    /* 8004B720 37190020 */ ori $t9, $t8, 0x20
    /* 8004B724 31CF0007 */ andi $t7, $t6, 0x7
    /* 8004B728 15E1000F */ bne $t7, $at, .L8004B768
    /* 8004B72C AE190004 */ sw $t9, 0x4($s0)
    /* 8004B730 8ED80268 */ lw $t8, 0x268($s6)
    /* 8004B734 AE180000 */ sw $t8, 0x0($s0)
    /* 8004B738 8ED90270 */ lw $t9, 0x270($s6)
    /* 8004B73C AED00268 */ sw $s0, 0x268($s6)
    /* 8004B740 5720000A */ bnel $t9, $zero, .L8004B76C
    /* 8004B744 8ED80274 */ lw $t8, 0x274($s6)
    /* 8004B748 10000007 */ b .L8004B768
    /* 8004B74C AED00270 */ sw $s0, 0x270($s6)
    /* 8004B750 8E0E0004 */ lw $t6, 0x4($s0)
.L8004B754:
    /* 8004B754 2401FFFD */ addiu $at, $zero, -0x3
    /* 8004B758 01C17824 */ and $t7, $t6, $at
    /* 8004B75C AE0F0004 */ sw $t7, 0x4($s0)
    /* 8004B760 0C012D0B */ jal func_8004B42C
    /* 8004B764 AFB60000 */ sw $s6, 0x0($sp)
.L8004B768:
    /* 8004B768 8ED80274 */ lw $t8, 0x274($s6)
.L8004B76C:
    /* 8004B76C 8ECF0278 */ lw $t7, 0x278($s6)
    /* 8004B770 02C02025 */ move $a0, $s6
    /* 8004B774 2F190001 */ sltiu $t9, $t8, 0x1
    /* 8004B778 00197040 */ sll $t6, $t9, 1
    /* 8004B77C 2DF80001 */ sltiu $t8, $t7, 0x1
    /* 8004B780 01D88025 */ or $s0, $t6, $t8
    /* 8004B784 02003825 */ move $a3, $s0
    /* 8004B788 27A50068 */ addiu $a1, $sp, 0x68
    /* 8004B78C 0C012C92 */ jal func_8004B248
    /* 8004B790 27A60064 */ addiu $a2, $sp, 0x64
    /* 8004B794 1050FFBF */ beq $v0, $s0, .L8004B694
    /* 8004B798 02C09825 */ move $s3, $s6
    /* 8004B79C 8FB00068 */ lw $s0, 0x68($sp)
    /* 8004B7A0 0C012C6A */ jal func_8004B1A8
    /* 8004B7A4 8FB10064 */ lw $s1, 0x64($sp)
    /* 8004B7A8 1000FFBB */ b .L8004B698
    /* 8004B7AC 02E02025 */ move $a0, $s7
.L8004B7B0:
    /* 8004B7B0 AFA00050 */ sw $zero, 0x50($sp)
    /* 8004B7B4 AFA0004C */ sw $zero, 0x4C($sp)
    /* 8004B7B8 8ED00278 */ lw $s0, 0x278($s6)
    /* 8004B7BC AEC00278 */ sw $zero, 0x278($s6)
    /* 8004B7C0 2401FFFE */ addiu $at, $zero, -0x2
    /* 8004B7C4 8E190004 */ lw $t9, 0x4($s0)
    /* 8004B7C8 03217824 */ and $t7, $t9, $at
    /* 8004B7CC AE0F0004 */ sw $t7, 0x4($s0)
    /* 8004B7D0 0C012D0B */ jal func_8004B42C
    /* 8004B7D4 AFB60000 */ sw $s6, 0x0($sp)
    /* 8004B7D8 8ECE0274 */ lw $t6, 0x274($s6)
    /* 8004B7DC 8ECF0278 */ lw $t7, 0x278($s6)
    /* 8004B7E0 02C02025 */ move $a0, $s6
    /* 8004B7E4 2DD80001 */ sltiu $t8, $t6, 0x1
    /* 8004B7E8 0018C840 */ sll $t9, $t8, 1
    /* 8004B7EC 2DEE0001 */ sltiu $t6, $t7, 0x1
    /* 8004B7F0 032E8025 */ or $s0, $t9, $t6
    /* 8004B7F4 02003825 */ move $a3, $s0
    /* 8004B7F8 27A50050 */ addiu $a1, $sp, 0x50
    /* 8004B7FC 0C012C92 */ jal func_8004B248
    /* 8004B800 27A6004C */ addiu $a2, $sp, 0x4C
    /* 8004B804 1050FFA3 */ beq $v0, $s0, .L8004B694
    /* 8004B808 02C09825 */ move $s3, $s6
    /* 8004B80C 8FB00050 */ lw $s0, 0x50($sp)
    /* 8004B810 0C012C6A */ jal func_8004B1A8
    /* 8004B814 8FB1004C */ lw $s1, 0x4C($sp)
    /* 8004B818 1000FF9F */ b .L8004B698
    /* 8004B81C 02E02025 */ move $a0, $s7
    /* 8004B820 8ED00260 */ lw $s0, 0x260($s6)
.L8004B824:
    /* 8004B824 26D10020 */ addiu $s1, $s6, 0x20
    /* 8004B828 5200FF9B */ beql $s0, $zero, .L8004B698
    /* 8004B82C 02E02025 */ move $a0, $s7
    /* 8004B830 8E040004 */ lw $a0, 0x4($s0)
.L8004B834:
    /* 8004B834 02202825 */ move $a1, $s1
    /* 8004B838 0C010516 */ jal osSendMesg
    /* 8004B83C 00003025 */ move $a2, $zero
    /* 8004B840 8E100000 */ lw $s0, 0x0($s0)
    /* 8004B844 5600FFFB */ bnel $s0, $zero, .L8004B834
    /* 8004B848 8E040004 */ lw $a0, 0x4($s0)
    /* 8004B84C 1000FF92 */ b .L8004B698
    /* 8004B850 02E02025 */ move $a0, $s7
    /* 8004B854 00000000 */ nop
    /* 8004B858 8FBF003C */ lw $ra, 0x3C($sp)
    /* 8004B85C 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004B860 8FB1001C */ lw $s1, 0x1C($sp)
    /* 8004B864 8FB20020 */ lw $s2, 0x20($sp)
    /* 8004B868 8FB30024 */ lw $s3, 0x24($sp)
    /* 8004B86C 8FB40028 */ lw $s4, 0x28($sp)
    /* 8004B870 8FB5002C */ lw $s5, 0x2C($sp)
    /* 8004B874 8FB60030 */ lw $s6, 0x30($sp)
    /* 8004B878 8FB70034 */ lw $s7, 0x34($sp)
    /* 8004B87C 8FBE0038 */ lw $fp, 0x38($sp)
    /* 8004B880 03E00008 */ jr $ra
    /* 8004B884 27BD0088 */ addiu $sp, $sp, 0x88
