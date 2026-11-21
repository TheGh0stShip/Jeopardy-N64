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
glabel func_8003F668
    /* 8003F668 27BDFF98 */ addiu $sp, $sp, -0x68
    /* 8003F66C AFB60058 */ sw $s6, 0x58($sp)
    /* 8003F670 00C0B025 */ move $s6, $a2
    /* 8003F674 AFBF0064 */ sw $ra, 0x64($sp)
    /* 8003F678 AFB50054 */ sw $s5, 0x54($sp)
    /* 8003F67C AFA5006C */ sw $a1, 0x6C($sp)
    /* 8003F680 3C068004 */ lui $a2, %hi(func_80043CAC)
    /* 8003F684 0080A825 */ move $s5, $a0
    /* 8003F688 AFBE0060 */ sw $fp, 0x60($sp)
    /* 8003F68C AFB7005C */ sw $s7, 0x5C($sp)
    /* 8003F690 AFB40050 */ sw $s4, 0x50($sp)
    /* 8003F694 AFB3004C */ sw $s3, 0x4C($sp)
    /* 8003F698 AFB20048 */ sw $s2, 0x48($sp)
    /* 8003F69C AFB10044 */ sw $s1, 0x44($sp)
    /* 8003F6A0 AFB00040 */ sw $s0, 0x40($sp)
    /* 8003F6A4 F7BA0038 */ sdc1 $f26, 0x38($sp)
    /* 8003F6A8 F7B80030 */ sdc1 $f24, 0x30($sp)
    /* 8003F6AC F7B60028 */ sdc1 $f22, 0x28($sp)
    /* 8003F6B0 F7B40020 */ sdc1 $f20, 0x20($sp)
    /* 8003F6B4 24C63CAC */ addiu $a2, $a2, %lo(func_80043CAC)
    /* 8003F6B8 00002825 */ move $a1, $zero
    /* 8003F6BC 0C010AAA */ jal func_80042AA8
    /* 8003F6C0 24070005 */ addiu $a3, $zero, 0x5
    /* 8003F6C4 8FA2006C */ lw $v0, 0x6C($sp)
    /* 8003F6C8 3C0E8004 */ lui $t6, %hi(alFxPull)
    /* 8003F6CC 3C0F8004 */ lui $t7, %hi(alFxParamHdl)
    /* 8003F6D0 25CE3CC4 */ addiu $t6, $t6, %lo(alFxPull)
    /* 8003F6D4 25EF3A50 */ addiu $t7, $t7, %lo(alFxParamHdl)
    /* 8003F6D8 AEAE0004 */ sw $t6, 0x4($s5)
    /* 8003F6DC AEAF0028 */ sw $t7, 0x28($s5)
    /* 8003F6E0 9058001C */ lbu $t8, 0x1C($v0)
    /* 8003F6E4 3C138007 */ lui $s3, %hi(D_80072170)
    /* 8003F6E8 26732170 */ addiu $s3, $s3, %lo(D_80072170)
    /* 8003F6EC 2719FFFF */ addiu $t9, $t8, -0x1
    /* 8003F6F0 2F210006 */ sltiu $at, $t9, 0x6
    /* 8003F6F4 10200017 */ beqz $at, .L8003F754
    /* 8003F6F8 0019C880 */ sll $t9, $t9, 2
    /* 8003F6FC 3C018000 */ lui $at, %hi(jtbl_80001DA8)
    /* 8003F700 00390821 */ addu $at, $at, $t9
    /* 8003F704 8C391DA8 */ lw $t9, %lo(jtbl_80001DA8)($at)
    /* 8003F708 03200008 */ jr $t9
    /* 8003F70C 00000000 */ nop
.L8003F710:
    /* 8003F710 3C138007 */ lui $s3, %hi(D_80072008)
    /* 8003F714 1000000F */ b .L8003F754
    /* 8003F718 26732008 */ addiu $s3, $s3, %lo(D_80072008)
.L8003F71C:
    /* 8003F71C 3C138007 */ lui $s3, %hi(D_80072070)
    /* 8003F720 1000000C */ b .L8003F754
    /* 8003F724 26732070 */ addiu $s3, $s3, %lo(D_80072070)
.L8003F728:
    /* 8003F728 3C138007 */ lui $s3, %hi(D_800720F8)
    /* 8003F72C 10000009 */ b .L8003F754
    /* 8003F730 267320F8 */ addiu $s3, $s3, %lo(D_800720F8)
.L8003F734:
    /* 8003F734 3C138007 */ lui $s3, %hi(D_80072120)
    /* 8003F738 10000006 */ b .L8003F754
    /* 8003F73C 26732120 */ addiu $s3, $s3, %lo(D_80072120)
.L8003F740:
    /* 8003F740 3C138007 */ lui $s3, %hi(D_80072148)
    /* 8003F744 10000003 */ b .L8003F754
    /* 8003F748 26732148 */ addiu $s3, $s3, %lo(D_80072148)
.L8003F74C:
    /* 8003F74C 10000001 */ b .L8003F754
    /* 8003F750 8C530020 */ lw $s3, 0x20($v0)
.L8003F754:
    /* 8003F754 8E680000 */ lw $t0, 0x0($s3)
    /* 8003F758 240A0028 */ addiu $t2, $zero, 0x28
    /* 8003F75C 24110002 */ addiu $s1, $zero, 0x2
    /* 8003F760 A2A80024 */ sb $t0, 0x24($s5)
    /* 8003F764 8E690004 */ lw $t1, 0x4($s3)
    /* 8003F768 00002025 */ move $a0, $zero
    /* 8003F76C 00002825 */ move $a1, $zero
    /* 8003F770 AEA9001C */ sw $t1, 0x1C($s5)
    /* 8003F774 AFAA0010 */ sw $t2, 0x10($sp)
    /* 8003F778 02C03025 */ move $a2, $s6
    /* 8003F77C 0C00F56A */ jal alHeapDBAlloc
    /* 8003F780 310700FF */ andi $a3, $t0, 0xFF
    /* 8003F784 AEA20020 */ sw $v0, 0x20($s5)
    /* 8003F788 8EA7001C */ lw $a3, 0x1C($s5)
    /* 8003F78C 240B0002 */ addiu $t3, $zero, 0x2
    /* 8003F790 AFAB0010 */ sw $t3, 0x10($sp)
    /* 8003F794 00002025 */ move $a0, $zero
    /* 8003F798 00002825 */ move $a1, $zero
    /* 8003F79C 0C00F56A */ jal alHeapDBAlloc
    /* 8003F7A0 02C03025 */ move $a2, $s6
    /* 8003F7A4 8EAC001C */ lw $t4, 0x1C($s5)
    /* 8003F7A8 AEA20014 */ sw $v0, 0x14($s5)
    /* 8003F7AC AEA20018 */ sw $v0, 0x18($s5)
    /* 8003F7B0 1180000C */ beqz $t4, .L8003F7E4
    /* 8003F7B4 00001825 */ move $v1, $zero
    /* 8003F7B8 8EAD0014 */ lw $t5, 0x14($s5)
.L8003F7BC:
    /* 8003F7BC 00037040 */ sll $t6, $v1, 1
    /* 8003F7C0 24630001 */ addiu $v1, $v1, 0x1
    /* 8003F7C4 01AE7821 */ addu $t7, $t5, $t6
    /* 8003F7C8 A5E00000 */ sh $zero, 0x0($t7)
    /* 8003F7CC 8EB9001C */ lw $t9, 0x1C($s5)
    /* 8003F7D0 3078FFFF */ andi $t8, $v1, 0xFFFF
    /* 8003F7D4 03001825 */ move $v1, $t8
    /* 8003F7D8 0319082B */ sltu $at, $t8, $t9
    /* 8003F7DC 5420FFF7 */ bnel $at, $zero, .L8003F7BC
    /* 8003F7E0 8EAD0014 */ lw $t5, 0x14($s5)
.L8003F7E4:
    /* 8003F7E4 92A80024 */ lbu $t0, 0x24($s5)
    /* 8003F7E8 0000A025 */ move $s4, $zero
    /* 8003F7EC 3C013F80 */ lui $at, 0x3F80
    /* 8003F7F0 1900009C */ blez $t0, .L8003FA64
    /* 8003F7F4 241E0001 */ addiu $fp, $zero, 0x1
    /* 8003F7F8 4481C000 */ mtc1 $at, $f24
    /* 8003F7FC 3C01447A */ lui $at, 0x447A
    /* 8003F800 4481B000 */ mtc1 $at, $f22
    /* 8003F804 3C018000 */ lui $at, %hi(D_80001DC0)
    /* 8003F808 4480D000 */ mtc1 $zero, $f26
    /* 8003F80C D4341DC0 */ ldc1 $f20, %lo(D_80001DC0)($at)
    /* 8003F810 24170028 */ addiu $s7, $zero, 0x28
.L8003F814:
    /* 8003F814 02970019 */ multu $s4, $s7
    /* 8003F818 00115880 */ sll $t3, $s1, 2
    /* 8003F81C 8EA90020 */ lw $t1, 0x20($s5)
    /* 8003F820 026B6021 */ addu $t4, $s3, $t3
    /* 8003F824 8D8D0000 */ lw $t5, 0x0($t4)
    /* 8003F828 26310001 */ addiu $s1, $s1, 0x1
    /* 8003F82C 322EFFFF */ andi $t6, $s1, 0xFFFF
    /* 8003F830 000E7880 */ sll $t7, $t6, 2
    /* 8003F834 026FC021 */ addu $t8, $s3, $t7
    /* 8003F838 25D10001 */ addiu $s1, $t6, 0x1
    /* 8003F83C 00005012 */ mflo $t2
    /* 8003F840 012A8021 */ addu $s0, $t1, $t2
    /* 8003F844 AE0D0000 */ sw $t5, 0x0($s0)
    /* 8003F848 8F190000 */ lw $t9, 0x0($t8)
    /* 8003F84C 3228FFFF */ andi $t0, $s1, 0xFFFF
    /* 8003F850 00084880 */ sll $t1, $t0, 2
    /* 8003F854 02695021 */ addu $t2, $s3, $t1
    /* 8003F858 AE190004 */ sw $t9, 0x4($s0)
    /* 8003F85C 8D4B0000 */ lw $t3, 0x0($t2)
    /* 8003F860 25110001 */ addiu $s1, $t0, 0x1
    /* 8003F864 322CFFFF */ andi $t4, $s1, 0xFFFF
    /* 8003F868 000C6880 */ sll $t5, $t4, 2
    /* 8003F86C 026D7021 */ addu $t6, $s3, $t5
    /* 8003F870 A60B000A */ sh $t3, 0xA($s0)
    /* 8003F874 8DCF0000 */ lw $t7, 0x0($t6)
    /* 8003F878 25910001 */ addiu $s1, $t4, 0x1
    /* 8003F87C 3238FFFF */ andi $t8, $s1, 0xFFFF
    /* 8003F880 0018C880 */ sll $t9, $t8, 2
    /* 8003F884 02794021 */ addu $t0, $s3, $t9
    /* 8003F888 A60F0008 */ sh $t7, 0x8($s0)
    /* 8003F88C 8D090000 */ lw $t1, 0x0($t0)
    /* 8003F890 27110001 */ addiu $s1, $t8, 0x1
    /* 8003F894 322AFFFF */ andi $t2, $s1, 0xFFFF
    /* 8003F898 000A5880 */ sll $t3, $t2, 2
    /* 8003F89C 026B6021 */ addu $t4, $s3, $t3
    /* 8003F8A0 A609000C */ sh $t1, 0xC($s0)
    /* 8003F8A4 8D820000 */ lw $v0, 0x0($t4)
    /* 8003F8A8 01408825 */ move $s1, $t2
    /* 8003F8AC 02204025 */ move $t0, $s1
    /* 8003F8B0 10400040 */ beqz $v0, .L8003F9B4
    /* 8003F8B4 25110002 */ addiu $s1, $t0, 0x2
    /* 8003F8B8 44822000 */ mtc1 $v0, $f4
    /* 8003F8BC 8FAD006C */ lw $t5, 0x6C($sp)
    /* 8003F8C0 8E180004 */ lw $t8, 0x4($s0)
    /* 8003F8C4 468021A0 */ cvt.s.w $f6, $f4
    /* 8003F8C8 8DAE0018 */ lw $t6, 0x18($t5)
    /* 8003F8CC 8E190000 */ lw $t9, 0x0($s0)
    /* 8003F8D0 25510001 */ addiu $s1, $t2, 0x1
    /* 8003F8D4 448E8000 */ mtc1 $t6, $f16
    /* 8003F8D8 322FFFFF */ andi $t7, $s1, 0xFFFF
    /* 8003F8DC 46163203 */ div.s $f8, $f6, $f22
    /* 8003F8E0 03194023 */ subu $t0, $t8, $t9
    /* 8003F8E4 01E08825 */ move $s1, $t7
    /* 8003F8E8 00114880 */ sll $t1, $s1, 2
    /* 8003F8EC 468084A1 */ cvt.d.w $f18, $f16
    /* 8003F8F0 02695021 */ addu $t2, $s3, $t1
    /* 8003F8F4 3C0141F0 */ lui $at, 0x41F0
    /* 8003F8F8 46004021 */ cvt.d.s $f0, $f8
    /* 8003F8FC 44884000 */ mtc1 $t0, $f8
    /* 8003F900 46200280 */ add.d $f10, $f0, $f0
    /* 8003F904 46804421 */ cvt.d.w $f16, $f8
    /* 8003F908 46325103 */ div.d $f4, $f10, $f18
    /* 8003F90C 462021A0 */ cvt.s.d $f6, $f4
    /* 8003F910 05010005 */ bgez $t0, .L8003F928
    /* 8003F914 E6060010 */ swc1 $f6, 0x10($s0)
    /* 8003F918 44815800 */ mtc1 $at, $f11
    /* 8003F91C 44805000 */ mtc1 $zero, $f10
    /* 8003F920 00000000 */ nop
    /* 8003F924 462A8400 */ add.d $f16, $f16, $f10
.L8003F928:
    /* 8003F928 8D4B0000 */ lw $t3, 0x0($t2)
    /* 8003F92C 26310001 */ addiu $s1, $s1, 0x1
    /* 8003F930 322CFFFF */ andi $t4, $s1, 0xFFFF
    /* 8003F934 448B9000 */ mtc1 $t3, $f18
    /* 8003F938 E6180014 */ swc1 $f24, 0x14($s0)
    /* 8003F93C AE000018 */ sw $zero, 0x18($s0)
    /* 8003F940 46809120 */ cvt.s.w $f4, $f18
    /* 8003F944 240D0034 */ addiu $t5, $zero, 0x34
    /* 8003F948 01808825 */ move $s1, $t4
    /* 8003F94C 00002025 */ move $a0, $zero
    /* 8003F950 00002825 */ move $a1, $zero
    /* 8003F954 02C03025 */ move $a2, $s6
    /* 8003F958 460021A1 */ cvt.d.s $f6, $f4
    /* 8003F95C 03C03825 */ move $a3, $fp
    /* 8003F960 46343203 */ div.d $f8, $f6, $f20
    /* 8003F964 46304282 */ mul.d $f10, $f8, $f16
    /* 8003F968 462054A0 */ cvt.s.d $f18, $f10
    /* 8003F96C E612001C */ swc1 $f18, 0x1C($s0)
    /* 8003F970 0C00F56A */ jal alHeapDBAlloc
    /* 8003F974 AFAD0010 */ sw $t5, 0x10($sp)
    /* 8003F978 AE020024 */ sw $v0, 0x24($s0)
    /* 8003F97C 240E0020 */ addiu $t6, $zero, 0x20
    /* 8003F980 AFAE0010 */ sw $t6, 0x10($sp)
    /* 8003F984 00002025 */ move $a0, $zero
    /* 8003F988 00002825 */ move $a1, $zero
    /* 8003F98C 02C03025 */ move $a2, $s6
    /* 8003F990 0C00F56A */ jal alHeapDBAlloc
    /* 8003F994 03C03825 */ move $a3, $fp
    /* 8003F998 8E0F0024 */ lw $t7, 0x24($s0)
    /* 8003F99C ADE20014 */ sw $v0, 0x14($t7)
    /* 8003F9A0 8E180024 */ lw $t8, 0x24($s0)
    /* 8003F9A4 E71A0020 */ swc1 $f26, 0x20($t8)
    /* 8003F9A8 8E190024 */ lw $t9, 0x24($s0)
    /* 8003F9AC 10000004 */ b .L8003F9C0
    /* 8003F9B0 AF3E0024 */ sw $fp, 0x24($t9)
.L8003F9B4:
    /* 8003F9B4 3229FFFF */ andi $t1, $s1, 0xFFFF
    /* 8003F9B8 AE000024 */ sw $zero, 0x24($s0)
    /* 8003F9BC 01208825 */ move $s1, $t1
.L8003F9C0:
    /* 8003F9C0 00115080 */ sll $t2, $s1, 2
    /* 8003F9C4 026A9021 */ addu $s2, $s3, $t2
    /* 8003F9C8 8E4B0000 */ lw $t3, 0x0($s2)
    /* 8003F9CC 00002025 */ move $a0, $zero
    /* 8003F9D0 00002825 */ move $a1, $zero
    /* 8003F9D4 11600019 */ beqz $t3, .L8003FA3C
    /* 8003F9D8 02C03025 */ move $a2, $s6
    /* 8003F9DC 240C0030 */ addiu $t4, $zero, 0x30
    /* 8003F9E0 AFAC0010 */ sw $t4, 0x10($sp)
    /* 8003F9E4 0C00F56A */ jal alHeapDBAlloc
    /* 8003F9E8 03C03825 */ move $a3, $fp
    /* 8003F9EC AE020020 */ sw $v0, 0x20($s0)
    /* 8003F9F0 240D0008 */ addiu $t5, $zero, 0x8
    /* 8003F9F4 AFAD0010 */ sw $t5, 0x10($sp)
    /* 8003F9F8 00002025 */ move $a0, $zero
    /* 8003F9FC 00002825 */ move $a1, $zero
    /* 8003FA00 02C03025 */ move $a2, $s6
    /* 8003FA04 0C00F56A */ jal alHeapDBAlloc
    /* 8003FA08 03C03825 */ move $a3, $fp
    /* 8003FA0C 8E0E0020 */ lw $t6, 0x20($s0)
    /* 8003FA10 26310001 */ addiu $s1, $s1, 0x1
    /* 8003FA14 3239FFFF */ andi $t9, $s1, 0xFFFF
    /* 8003FA18 ADC20028 */ sw $v0, 0x28($t6)
    /* 8003FA1C 8E180020 */ lw $t8, 0x20($s0)
    /* 8003FA20 8E4F0000 */ lw $t7, 0x0($s2)
    /* 8003FA24 03208825 */ move $s1, $t9
    /* 8003FA28 A70F0000 */ sh $t7, 0x0($t8)
    /* 8003FA2C 0C00FD72 */ jal init_lpfilter
    /* 8003FA30 8E040020 */ lw $a0, 0x20($s0)
    /* 8003FA34 10000006 */ b .L8003FA50
    /* 8003FA38 92AA0024 */ lbu $t2, 0x24($s5)
.L8003FA3C:
    /* 8003FA3C 26310001 */ addiu $s1, $s1, 0x1
    /* 8003FA40 3228FFFF */ andi $t0, $s1, 0xFFFF
    /* 8003FA44 AE000020 */ sw $zero, 0x20($s0)
    /* 8003FA48 01008825 */ move $s1, $t0
    /* 8003FA4C 92AA0024 */ lbu $t2, 0x24($s5)
.L8003FA50:
    /* 8003FA50 26940001 */ addiu $s4, $s4, 0x1
    /* 8003FA54 3289FFFF */ andi $t1, $s4, 0xFFFF
    /* 8003FA58 012A082A */ slt $at, $t1, $t2
    /* 8003FA5C 1420FF6D */ bnez $at, .L8003F814
    /* 8003FA60 0120A025 */ move $s4, $t1
.L8003FA64:
    /* 8003FA64 8FBF0064 */ lw $ra, 0x64($sp)
    /* 8003FA68 D7B40020 */ ldc1 $f20, 0x20($sp)
    /* 8003FA6C D7B60028 */ ldc1 $f22, 0x28($sp)
    /* 8003FA70 D7B80030 */ ldc1 $f24, 0x30($sp)
    /* 8003FA74 D7BA0038 */ ldc1 $f26, 0x38($sp)
    /* 8003FA78 8FB00040 */ lw $s0, 0x40($sp)
    /* 8003FA7C 8FB10044 */ lw $s1, 0x44($sp)
    /* 8003FA80 8FB20048 */ lw $s2, 0x48($sp)
    /* 8003FA84 8FB3004C */ lw $s3, 0x4C($sp)
    /* 8003FA88 8FB40050 */ lw $s4, 0x50($sp)
    /* 8003FA8C 8FB50054 */ lw $s5, 0x54($sp)
    /* 8003FA90 8FB60058 */ lw $s6, 0x58($sp)
    /* 8003FA94 8FB7005C */ lw $s7, 0x5C($sp)
    /* 8003FA98 8FBE0060 */ lw $fp, 0x60($sp)
    /* 8003FA9C 03E00008 */ jr $ra
    /* 8003FAA0 27BD0068 */ addiu $sp, $sp, 0x68
    /* 8003FAA4 00000000 */ nop
.section .rodata
.section .rodata.jtbl_80001DA8, "a"
glabel jtbl_80001DA8
    .word .L8003F710
    .word .L8003F71C
    .word .L8003F734
    .word .L8003F740
    .word .L8003F728
    .word .L8003F74C
