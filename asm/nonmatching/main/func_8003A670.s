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
glabel func_8003A670
    /* 8003A670 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003A674 AFB3001C */ sw $s3, 0x1C($sp)
    /* 8003A678 24130002 */ addiu $s3, $zero, 0x2
    /* 8003A67C AFB50024 */ sw $s5, 0x24($sp)
    /* 8003A680 3C158000 */ lui $s5, %hi(jtbl_80001BE0)
    /* 8003A684 26B51BE0 */ addiu $s5, $s5, %lo(jtbl_80001BE0)
    /* 8003A688 AFB20018 */ sw $s2, 0x18($sp)
    /* 8003A68C 2412FFFE */ addiu $s2, $zero, -0x2
    /* 8003A690 AFB40020 */ sw $s4, 0x20($sp)
    /* 8003A694 24140001 */ addiu $s4, $zero, 0x1
    /* 8003A698 AFBF0028 */ sw $ra, 0x28($sp)
    /* 8003A69C AFB10014 */ sw $s1, 0x14($sp)
    /* 8003A6A0 AFB00010 */ sw $s0, 0x10($sp)
    /* 8003A6A4 24110001 */ addiu $s1, $zero, 0x1
.L8003A6A8:
    /* 8003A6A8 3C04B1FF */ lui $a0, 0xB1FF
.L8003A6AC:
    /* 8003A6AC 0C00E7B0 */ jal func_80039EC0
    /* 8003A6B0 3484FFF0 */ ori $a0, $a0, 0xFFF0
    /* 8003A6B4 00408021 */ addu $s0, $v0, $zero
    /* 8003A6B8 16000005 */ bnez $s0, .L8003A6D0
    /* 8003A6BC 00000000 */ nop
    /* 8003A6C0 0C00E7BF */ jal func_80039EFC
    /* 8003A6C4 240403E8 */ addiu $a0, $zero, 0x3E8
    /* 8003A6C8 0800E9AB */ j .L8003A6AC
    /* 8003A6CC 3C04B1FF */ lui $a0, 0xB1FF
.L8003A6D0:
    /* 8003A6D0 16130008 */ bne $s0, $s3, .L8003A6F4
    /* 8003A6D4 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A6D8 3484FFFC */ ori $a0, $a0, 0xFFFC
    /* 8003A6DC 0C00E7A2 */ jal func_80039E88
    /* 8003A6E0 00002821 */ addu $a1, $zero, $zero
    /* 8003A6E4 0C00E7BF */ jal func_80039EFC
    /* 8003A6E8 240403E8 */ addiu $a0, $zero, 0x3E8
    /* 8003A6EC 0800EA17 */ j .L8003A85C
    /* 8003A6F0 00000000 */ nop
.L8003A6F4:
    /* 8003A6F4 3484FFFC */ ori $a0, $a0, 0xFFFC
    /* 8003A6F8 0C00E7A2 */ jal func_80039E88
    /* 8003A6FC 24050101 */ addiu $a1, $zero, 0x101
    /* 8003A700 3C04B1FF */ lui $a0, 0xB1FF
.L8003A704:
    /* 8003A704 0C00E7B0 */ jal func_80039EC0
    /* 8003A708 3484FFF0 */ ori $a0, $a0, 0xFFF0
    /* 8003A70C 54500005 */ bnel $v0, $s0, .L8003A724
    /* 8003A710 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A714 0C00E7BF */ jal func_80039EFC
    /* 8003A718 240401F4 */ addiu $a0, $zero, 0x1F4
    /* 8003A71C 0800E9C1 */ j .L8003A704
    /* 8003A720 3C04B1FF */ lui $a0, 0xB1FF
.L8003A724:
    /* 8003A724 0C00E7B0 */ jal func_80039EC0
    /* 8003A728 3484FFF0 */ ori $a0, $a0, 0xFFF0
    /* 8003A72C 14530007 */ bne $v0, $s3, .L8003A74C
    /* 8003A730 2603FFF0 */ addiu $v1, $s0, -0x10
    /* 8003A734 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A738 3484FFFC */ ori $a0, $a0, 0xFFFC
    /* 8003A73C 0C00E7A2 */ jal func_80039E88
    /* 8003A740 00002821 */ addu $a1, $zero, $zero
    /* 8003A744 0800EA17 */ j .L8003A85C
    /* 8003A748 00000000 */ nop
.L8003A74C:
    /* 8003A74C 2C620009 */ sltiu $v0, $v1, 0x9
    /* 8003A750 10400035 */ beqz $v0, .L8003A828
    /* 8003A754 00031080 */ sll $v0, $v1, 2
    /* 8003A758 00551021 */ addu $v0, $v0, $s5
    /* 8003A75C 8C420000 */ lw $v0, 0x0($v0)
    /* 8003A760 00400008 */ jr $v0
    /* 8003A764 00000000 */ nop
.L8003A768:
    /* 8003A768 0800EA0A */ j .L8003A828
    /* 8003A76C 00008821 */ addu $s1, $zero, $zero
.L8003A770:
    /* 8003A770 3C02800D */ lui $v0, %hi(D_800D0398)
    /* 8003A774 8C420398 */ lw $v0, %lo(D_800D0398)($v0)
    /* 8003A778 3C01800D */ lui $at, %hi(D_800D0540)
    /* 8003A77C A0200540 */ sb $zero, %lo(D_800D0540)($at)
    /* 8003A780 3C01800D */ lui $at, %hi(D_800D0542)
    /* 8003A784 A0200542 */ sb $zero, %lo(D_800D0542)($at)
    /* 8003A788 00521024 */ and $v0, $v0, $s2
    /* 8003A78C 3C01800D */ lui $at, %hi(D_800D0398)
    /* 8003A790 AC220398 */ sw $v0, %lo(D_800D0398)($at)
    /* 8003A794 0C00EBC5 */ jal func_8003AF14
    /* 8003A798 00000000 */ nop
    /* 8003A79C 0C00EBC8 */ jal func_8003AF20
    /* 8003A7A0 00522024 */ and $a0, $v0, $s2
    /* 8003A7A4 0800EA0B */ j .L8003A82C
    /* 8003A7A8 3C04B1FF */ lui $a0, 0xB1FF
.L8003A7AC:
    /* 8003A7AC 3C01800D */ lui $at, %hi(D_800D0542)
    /* 8003A7B0 A0200542 */ sb $zero, %lo(D_800D0542)($at)
    /* 8003A7B4 3C01800D */ lui $at, %hi(D_800D0540)
    /* 8003A7B8 A0200540 */ sb $zero, %lo(D_800D0540)($at)
    /* 8003A7BC 0800EA0B */ j .L8003A82C
    /* 8003A7C0 3C04B1FF */ lui $a0, 0xB1FF
.L8003A7C4:
    /* 8003A7C4 240200FF */ addiu $v0, $zero, 0xFF
    /* 8003A7C8 3C01800D */ lui $at, %hi(D_800D0542)
    /* 8003A7CC A0220542 */ sb $v0, %lo(D_800D0542)($at)
    /* 8003A7D0 0800EA0B */ j .L8003A82C
    /* 8003A7D4 3C04B1FF */ lui $a0, 0xB1FF
.L8003A7D8:
    /* 8003A7D8 3C01800D */ lui $at, %hi(D_800D0542)
    /* 8003A7DC A0200542 */ sb $zero, %lo(D_800D0542)($at)
    /* 8003A7E0 0800EA0B */ j .L8003A82C
    /* 8003A7E4 3C04B1FF */ lui $a0, 0xB1FF
.L8003A7E8:
    /* 8003A7E8 3C02800D */ lui $v0, %hi(D_800D0542)
    /* 8003A7EC 90420542 */ lbu $v0, %lo(D_800D0542)($v0)
    /* 8003A7F0 3C05800D */ lui $a1, %hi(D_800D0540)
    /* 8003A7F4 90A50540 */ lbu $a1, %lo(D_800D0540)($a1)
    /* 8003A7F8 3C04B1FE */ lui $a0, 0xB1FE
    /* 8003A7FC 00021600 */ sll $v0, $v0, 24
    /* 8003A800 00052C00 */ sll $a1, $a1, 16
    /* 8003A804 0C00E7A2 */ jal func_80039E88
    /* 8003A808 00452825 */ or $a1, $v0, $a1
    /* 8003A80C 0800EA0B */ j .L8003A82C
    /* 8003A810 3C04B1FF */ lui $a0, 0xB1FF
.L8003A814:
    /* 8003A814 0800EA08 */ j .L8003A820
    /* 8003A818 24040002 */ addiu $a0, $zero, 0x2
.L8003A81C:
    /* 8003A81C 24040001 */ addiu $a0, $zero, 0x1
.L8003A820:
    /* 8003A820 0C00E915 */ jal func_8003A454
    /* 8003A824 00000000 */ nop
.L8003A828:
    /* 8003A828 3C04B1FF */ lui $a0, 0xB1FF
.L8003A82C:
    /* 8003A82C 3484FFFC */ ori $a0, $a0, 0xFFFC
    /* 8003A830 0C00E7A2 */ jal func_80039E88
    /* 8003A834 00002821 */ addu $a1, $zero, $zero
    /* 8003A838 3C04B1FF */ lui $a0, 0xB1FF
.L8003A83C:
    /* 8003A83C 0C00E7B0 */ jal func_80039EC0
    /* 8003A840 3484FFF0 */ ori $a0, $a0, 0xFFF0
    /* 8003A844 14540005 */ bne $v0, $s4, .L8003A85C
    /* 8003A848 00000000 */ nop
    /* 8003A84C 0C00E7BF */ jal func_80039EFC
    /* 8003A850 240401F4 */ addiu $a0, $zero, 0x1F4
    /* 8003A854 0800EA0F */ j .L8003A83C
    /* 8003A858 3C04B1FF */ lui $a0, 0xB1FF
.L8003A85C:
    /* 8003A85C 1620FF92 */ bnez $s1, .L8003A6A8
    /* 8003A860 24110001 */ addiu $s1, $zero, 0x1
    /* 8003A864 3C02800D */ lui $v0, %hi(D_800D0542)
    /* 8003A868 90420542 */ lbu $v0, %lo(D_800D0542)($v0)
    /* 8003A86C 1040FF8F */ beqz $v0, .L8003A6AC
    /* 8003A870 3C04B1FF */ lui $a0, 0xB1FF
    /* 8003A874 8FBF0028 */ lw $ra, 0x28($sp)
    /* 8003A878 8FB50024 */ lw $s5, 0x24($sp)
    /* 8003A87C 8FB40020 */ lw $s4, 0x20($sp)
    /* 8003A880 8FB3001C */ lw $s3, 0x1C($sp)
    /* 8003A884 8FB20018 */ lw $s2, 0x18($sp)
    /* 8003A888 8FB10014 */ lw $s1, 0x14($sp)
    /* 8003A88C 8FB00010 */ lw $s0, 0x10($sp)
    /* 8003A890 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003A894 03E00008 */ jr $ra
    /* 8003A898 00000000 */ nop
.section .rodata
.section .rodata.jtbl_80001BE0, "a"
glabel jtbl_80001BE0
    .word .L8003A828
    .word .L8003A768
    .word .L8003A770
    .word .L8003A7AC
    .word .L8003A7C4
    .word .L8003A7D8
    .word .L8003A7E8
    .word .L8003A814
    .word .L8003A81C
