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
glabel func_8000A7A0
    /* 8000A7A0 27BDFF38 */ addiu $sp, $sp, -0xC8
    /* 8000A7A4 AFBF00C4 */ sw $ra, 0xC4($sp)
    /* 8000A7A8 AFBE00C0 */ sw $fp, 0xC0($sp)
    /* 8000A7AC AFB700BC */ sw $s7, 0xBC($sp)
    /* 8000A7B0 AFB600B8 */ sw $s6, 0xB8($sp)
    /* 8000A7B4 AFB500B4 */ sw $s5, 0xB4($sp)
    /* 8000A7B8 AFB400B0 */ sw $s4, 0xB0($sp)
    /* 8000A7BC AFB300AC */ sw $s3, 0xAC($sp)
    /* 8000A7C0 AFB200A8 */ sw $s2, 0xA8($sp)
    /* 8000A7C4 AFB100A4 */ sw $s1, 0xA4($sp)
    /* 8000A7C8 AFB000A0 */ sw $s0, 0xA0($sp)
    /* 8000A7CC 03A0F021 */ addu $fp, $sp, $zero
    /* 8000A7D0 AFC400C8 */ sw $a0, 0xC8($fp)
    /* 8000A7D4 00A08021 */ addu $s0, $a1, $zero
    /* 8000A7D8 00C08821 */ addu $s1, $a2, $zero
    /* 8000A7DC 00E09021 */ addu $s2, $a3, $zero
    /* 8000A7E0 8FD300D8 */ lw $s3, 0xD8($fp)
    /* 8000A7E4 8FD400DC */ lw $s4, 0xDC($fp)
    /* 8000A7E8 8FD500E0 */ lw $s5, 0xE0($fp)
    /* 8000A7EC 8FD600E4 */ lw $s6, 0xE4($fp)
    /* 8000A7F0 8FD700E8 */ lw $s7, 0xE8($fp)
    /* 8000A7F4 8FC800EC */ lw $t0, 0xEC($fp)
    /* 8000A7F8 AFC80084 */ sw $t0, 0x84($fp)
    /* 8000A7FC 8FC800F0 */ lw $t0, 0xF0($fp)
    /* 8000A800 AFC8008C */ sw $t0, 0x8C($fp)
    /* 8000A804 8FC800F4 */ lw $t0, 0xF4($fp)
    /* 8000A808 AFC80094 */ sw $t0, 0x94($fp)
    /* 8000A80C 8FC800F8 */ lw $t0, 0xF8($fp)
    /* 8000A810 AFC8009C */ sw $t0, 0x9C($fp)
    /* 8000A814 A7D00028 */ sh $s0, 0x28($fp)
    /* 8000A818 A7D1002A */ sh $s1, 0x2A($fp)
    /* 8000A81C A7D2002C */ sh $s2, 0x2C($fp)
    /* 8000A820 A7D3002E */ sh $s3, 0x2E($fp)
    /* 8000A824 A7D40030 */ sh $s4, 0x30($fp)
    /* 8000A828 A7D50032 */ sh $s5, 0x32($fp)
    /* 8000A82C A7D60034 */ sh $s6, 0x34($fp)
    /* 8000A830 A7D70036 */ sh $s7, 0x36($fp)
    /* 8000A834 97C80086 */ lhu $t0, 0x86($fp)
    /* 8000A838 A7C80038 */ sh $t0, 0x38($fp)
    /* 8000A83C 97C8008E */ lhu $t0, 0x8E($fp)
    /* 8000A840 A7C8003A */ sh $t0, 0x3A($fp)
    /* 8000A844 97C80096 */ lhu $t0, 0x96($fp)
    /* 8000A848 A7C8003C */ sh $t0, 0x3C($fp)
    /* 8000A84C 97C8009E */ lhu $t0, 0x9E($fp)
    /* 8000A850 A7C8003E */ sh $t0, 0x3E($fp)
    /* 8000A854 97C2002C */ lhu $v0, 0x2C($fp)
    /* 8000A858 10400006 */ beqz $v0, .L8000A874
    /* 8000A85C 00000000 */ nop
    /* 8000A860 24030001 */ addiu $v1, $zero, 0x1
    /* 8000A864 1043010C */ beq $v0, $v1, .L8000AC98
    /* 8000A868 00000000 */ nop
    /* 8000A86C 08002C3C */ j .L8000B0F0
    /* 8000A870 00000000 */ nop
.L8000A874:
    /* 8000A874 C7C000FC */ lwc1 $f0, 0xFC($fp)
    /* 8000A878 44801000 */ mtc1 $zero, $f2
    /* 8000A87C 4602003C */ c.lt.s $f0, $f2
    /* 8000A880 00000000 */ nop
    /* 8000A884 4500000A */ bc1f .L8000A8B0
    /* 8000A888 00000000 */ nop
    /* 8000A88C 87C20038 */ lh $v0, 0x38($fp)
    /* 8000A890 44820000 */ mtc1 $v0, $f0
    /* 8000A894 46800020 */ cvt.s.w $f0, $f0
    /* 8000A898 C7C200FC */ lwc1 $f2, 0xFC($fp)
    /* 8000A89C 46020001 */ sub.s $f0, $f0, $f2
    /* 8000A8A0 4600010D */ trunc.w.s $f4, $f0
    /* 8000A8A4 44022000 */ mfc1 $v0, $f4
    /* 8000A8A8 A7C20038 */ sh $v0, 0x38($fp)
    /* 8000A8AC AFC000FC */ sw $zero, 0xFC($fp)
.L8000A8B0:
    /* 8000A8B0 C7C00100 */ lwc1 $f0, 0x100($fp)
    /* 8000A8B4 44801000 */ mtc1 $zero, $f2
    /* 8000A8B8 4602003C */ c.lt.s $f0, $f2
    /* 8000A8BC 00000000 */ nop
    /* 8000A8C0 4500000A */ bc1f .L8000A8EC
    /* 8000A8C4 00000000 */ nop
    /* 8000A8C8 87C2003A */ lh $v0, 0x3A($fp)
    /* 8000A8CC 44820000 */ mtc1 $v0, $f0
    /* 8000A8D0 46800020 */ cvt.s.w $f0, $f0
    /* 8000A8D4 C7C20100 */ lwc1 $f2, 0x100($fp)
    /* 8000A8D8 46020001 */ sub.s $f0, $f0, $f2
    /* 8000A8DC 4600010D */ trunc.w.s $f4, $f0
    /* 8000A8E0 44022000 */ mfc1 $v0, $f4
    /* 8000A8E4 A7C2003A */ sh $v0, 0x3A($fp)
    /* 8000A8E8 AFC00100 */ sw $zero, 0x100($fp)
.L8000A8EC:
    /* 8000A8EC 87C2003C */ lh $v0, 0x3C($fp)
    /* 8000A8F0 87C30038 */ lh $v1, 0x38($fp)
    /* 8000A8F4 00431023 */ subu $v0, $v0, $v1
    /* 8000A8F8 28430141 */ slti $v1, $v0, 0x141
    /* 8000A8FC 14600004 */ bnez $v1, .L8000A910
    /* 8000A900 00000000 */ nop
    /* 8000A904 97C20038 */ lhu $v0, 0x38($fp)
    /* 8000A908 24430140 */ addiu $v1, $v0, 0x140
    /* 8000A90C A7C3003C */ sh $v1, 0x3C($fp)
.L8000A910:
    /* 8000A910 87C2003E */ lh $v0, 0x3E($fp)
    /* 8000A914 87C3003A */ lh $v1, 0x3A($fp)
    /* 8000A918 00431023 */ subu $v0, $v0, $v1
    /* 8000A91C 284300F1 */ slti $v1, $v0, 0xF1
    /* 8000A920 14600004 */ bnez $v1, .L8000A934
    /* 8000A924 00000000 */ nop
    /* 8000A928 97C2003A */ lhu $v0, 0x3A($fp)
    /* 8000A92C 244300F0 */ addiu $v1, $v0, 0xF0
    /* 8000A930 A7C3003E */ sh $v1, 0x3E($fp)
.L8000A934:
    /* 8000A934 C7C000FC */ lwc1 $f0, 0xFC($fp)
    /* 8000A938 3C018000 */ lui $at, %hi(D_8000060C)
    /* 8000A93C C422060C */ lwc1 $f2, %lo(D_8000060C)($at)
    /* 8000A940 4600103E */ c.le.s $f2, $f0
    /* 8000A944 00000000 */ nop
    /* 8000A948 45010014 */ bc1t .L8000A99C
    /* 8000A94C 00000000 */ nop
    /* 8000A950 C7C00100 */ lwc1 $f0, 0x100($fp)
    /* 8000A954 3C018000 */ lui $at, %hi(D_80000610)
    /* 8000A958 C4220610 */ lwc1 $f2, %lo(D_80000610)($at)
    /* 8000A95C 4600103E */ c.le.s $f2, $f0
    /* 8000A960 00000000 */ nop
    /* 8000A964 4501000D */ bc1t .L8000A99C
    /* 8000A968 00000000 */ nop
    /* 8000A96C 87C20038 */ lh $v0, 0x38($fp)
    /* 8000A970 87C3003C */ lh $v1, 0x3C($fp)
    /* 8000A974 0043102A */ slt $v0, $v0, $v1
    /* 8000A978 10400008 */ beqz $v0, .L8000A99C
    /* 8000A97C 00000000 */ nop
    /* 8000A980 87C2003A */ lh $v0, 0x3A($fp)
    /* 8000A984 87C3003E */ lh $v1, 0x3E($fp)
    /* 8000A988 0043102A */ slt $v0, $v0, $v1
    /* 8000A98C 10400003 */ beqz $v0, .L8000A99C
    /* 8000A990 00000000 */ nop
    /* 8000A994 08002A69 */ j .L8000A9A4
    /* 8000A998 00000000 */ nop
.L8000A99C:
    /* 8000A99C 08002C3C */ j .L8000B0F0
    /* 8000A9A0 00000000 */ nop
.L8000A9A4:
    /* 8000A9A4 00000000 */ nop
    /* 8000A9A8 87C2003A */ lh $v0, 0x3A($fp)
    /* 8000A9AC AFC20040 */ sw $v0, 0x40($fp)
    /* 8000A9B0 C7C00100 */ lwc1 $f0, 0x100($fp)
    /* 8000A9B4 4600010D */ trunc.w.s $f4, $f0
    /* 8000A9B8 E7C4004C */ swc1 $f4, 0x4C($fp)
.L8000A9BC:
    /* 8000A9BC 87C2003E */ lh $v0, 0x3E($fp)
    /* 8000A9C0 8FC30040 */ lw $v1, 0x40($fp)
    /* 8000A9C4 0062102A */ slt $v0, $v1, $v0
    /* 8000A9C8 14400003 */ bnez $v0, .L8000A9D8
    /* 8000A9CC 00000000 */ nop
    /* 8000A9D0 08002B24 */ j .L8000AC90
    /* 8000A9D4 00000000 */ nop
.L8000A9D8:
    /* 8000A9D8 87C20038 */ lh $v0, 0x38($fp)
    /* 8000A9DC AFC20044 */ sw $v0, 0x44($fp)
    /* 8000A9E0 C7C000FC */ lwc1 $f0, 0xFC($fp)
    /* 8000A9E4 4600010D */ trunc.w.s $f4, $f0
    /* 8000A9E8 E7C40048 */ swc1 $f4, 0x48($fp)
.L8000A9EC:
    /* 8000A9EC 87C2003C */ lh $v0, 0x3C($fp)
    /* 8000A9F0 8FC30044 */ lw $v1, 0x44($fp)
    /* 8000A9F4 0062102A */ slt $v0, $v1, $v0
    /* 8000A9F8 14400003 */ bnez $v0, .L8000AA08
    /* 8000A9FC 00000000 */ nop
    /* 8000AA00 08002B1A */ j .L8000AC68
    /* 8000AA04 00000000 */ nop
.L8000AA08:
    /* 8000AA08 8FC20044 */ lw $v0, 0x44($fp)
    /* 8000AA0C AFC20058 */ sw $v0, 0x58($fp)
    /* 8000AA10 8FC20040 */ lw $v0, 0x40($fp)
    /* 8000AA14 AFC2005C */ sw $v0, 0x5C($fp)
    /* 8000AA18 87C3003C */ lh $v1, 0x3C($fp)
    /* 8000AA1C 2462FFFF */ addiu $v0, $v1, -0x1
    /* 8000AA20 97C30034 */ lhu $v1, 0x34($fp)
    /* 8000AA24 8FC40044 */ lw $a0, 0x44($fp)
    /* 8000AA28 00641821 */ addu $v1, $v1, $a0
    /* 8000AA2C 0043202A */ slt $a0, $v0, $v1
    /* 8000AA30 10800002 */ beqz $a0, .L8000AA3C
    /* 8000AA34 00000000 */ nop
    /* 8000AA38 00401821 */ addu $v1, $v0, $zero
.L8000AA3C:
    /* 8000AA3C AFC30060 */ sw $v1, 0x60($fp)
    /* 8000AA40 87C3003E */ lh $v1, 0x3E($fp)
    /* 8000AA44 2462FFFF */ addiu $v0, $v1, -0x1
    /* 8000AA48 97C30036 */ lhu $v1, 0x36($fp)
    /* 8000AA4C 8FC40040 */ lw $a0, 0x40($fp)
    /* 8000AA50 00641821 */ addu $v1, $v1, $a0
    /* 8000AA54 0043202A */ slt $a0, $v0, $v1
    /* 8000AA58 10800002 */ beqz $a0, .L8000AA64
    /* 8000AA5C 00000000 */ nop
    /* 8000AA60 00401821 */ addu $v1, $v0, $zero
.L8000AA64:
    /* 8000AA64 AFC30064 */ sw $v1, 0x64($fp)
    /* 8000AA68 97C20028 */ lhu $v0, 0x28($fp)
    /* 8000AA6C 97C3002A */ lhu $v1, 0x2A($fp)
    /* 8000AA70 8FC4005C */ lw $a0, 0x5C($fp)
    /* 8000AA74 AFA40010 */ sw $a0, 0x10($sp)
    /* 8000AA78 8FC40060 */ lw $a0, 0x60($fp)
    /* 8000AA7C AFA40014 */ sw $a0, 0x14($sp)
    /* 8000AA80 8FC40064 */ lw $a0, 0x64($fp)
    /* 8000AA84 AFA40018 */ sw $a0, 0x18($sp)
    /* 8000AA88 97C40030 */ lhu $a0, 0x30($fp)
    /* 8000AA8C AFA4001C */ sw $a0, 0x1C($sp)
    /* 8000AA90 97C40032 */ lhu $a0, 0x32($fp)
    /* 8000AA94 AFA40020 */ sw $a0, 0x20($sp)
    /* 8000AA98 8FC400C8 */ lw $a0, 0xC8($fp)
    /* 8000AA9C 00402821 */ addu $a1, $v0, $zero
    /* 8000AAA0 00603021 */ addu $a2, $v1, $zero
    /* 8000AAA4 8FC70058 */ lw $a3, 0x58($fp)
    /* 8000AAA8 0C00273F */ jal func_80009CFC
    /* 8000AAAC 00000000 */ nop
    /* 8000AAB0 C7C00044 */ lwc1 $f0, 0x44($fp)
    /* 8000AAB4 46800020 */ cvt.s.w $f0, $f0
    /* 8000AAB8 E7C00070 */ swc1 $f0, 0x70($fp)
    /* 8000AABC C7C00040 */ lwc1 $f0, 0x40($fp)
    /* 8000AAC0 46800020 */ cvt.s.w $f0, $f0
    /* 8000AAC4 E7C00074 */ swc1 $f0, 0x74($fp)
    /* 8000AAC8 87C2003C */ lh $v0, 0x3C($fp)
    /* 8000AACC 8FC30044 */ lw $v1, 0x44($fp)
    /* 8000AAD0 00431023 */ subu $v0, $v0, $v1
    /* 8000AAD4 8FC30048 */ lw $v1, 0x48($fp)
    /* 8000AAD8 00431021 */ addu $v0, $v0, $v1
    /* 8000AADC 97C30034 */ lhu $v1, 0x34($fp)
    /* 8000AAE0 8FC40048 */ lw $a0, 0x48($fp)
    /* 8000AAE4 00641821 */ addu $v1, $v1, $a0
    /* 8000AAE8 0043202A */ slt $a0, $v0, $v1
    /* 8000AAEC 10800002 */ beqz $a0, .L8000AAF8
    /* 8000AAF0 00000000 */ nop
    /* 8000AAF4 00401821 */ addu $v1, $v0, $zero
.L8000AAF8:
    /* 8000AAF8 AFC30050 */ sw $v1, 0x50($fp)
    /* 8000AAFC 87C2003E */ lh $v0, 0x3E($fp)
    /* 8000AB00 8FC30040 */ lw $v1, 0x40($fp)
    /* 8000AB04 00431023 */ subu $v0, $v0, $v1
    /* 8000AB08 8FC3004C */ lw $v1, 0x4C($fp)
    /* 8000AB0C 00431021 */ addu $v0, $v0, $v1
    /* 8000AB10 97C30036 */ lhu $v1, 0x36($fp)
    /* 8000AB14 8FC4004C */ lw $a0, 0x4C($fp)
    /* 8000AB18 00641821 */ addu $v1, $v1, $a0
    /* 8000AB1C 0043202A */ slt $a0, $v0, $v1
    /* 8000AB20 10800002 */ beqz $a0, .L8000AB2C
    /* 8000AB24 00000000 */ nop
    /* 8000AB28 00401821 */ addu $v1, $v0, $zero
.L8000AB2C:
    /* 8000AB2C AFC30054 */ sw $v1, 0x54($fp)
    /* 8000AB30 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000AB34 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000AB38 24430008 */ addiu $v1, $v0, 0x8
    /* 8000AB3C 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000AB40 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000AB44 AFC20078 */ sw $v0, 0x78($fp)
    /* 8000AB48 8FC20078 */ lw $v0, 0x78($fp)
    /* 8000AB4C 8FC40050 */ lw $a0, 0x50($fp)
    /* 8000AB50 00041880 */ sll $v1, $a0, 2
    /* 8000AB54 30640FFF */ andi $a0, $v1, 0xFFF
    /* 8000AB58 00041B00 */ sll $v1, $a0, 12
    /* 8000AB5C 8FC50054 */ lw $a1, 0x54($fp)
    /* 8000AB60 00052080 */ sll $a0, $a1, 2
    /* 8000AB64 30850FFF */ andi $a1, $a0, 0xFFF
    /* 8000AB68 3C06E400 */ lui $a2, 0xE400
    /* 8000AB6C 00A62025 */ or $a0, $a1, $a2
    /* 8000AB70 00641825 */ or $v1, $v1, $a0
    /* 8000AB74 AC430000 */ sw $v1, 0x0($v0)
    /* 8000AB78 8FC20078 */ lw $v0, 0x78($fp)
    /* 8000AB7C 8FC40048 */ lw $a0, 0x48($fp)
    /* 8000AB80 00041880 */ sll $v1, $a0, 2
    /* 8000AB84 30640FFF */ andi $a0, $v1, 0xFFF
    /* 8000AB88 00041B00 */ sll $v1, $a0, 12
    /* 8000AB8C 8FC5004C */ lw $a1, 0x4C($fp)
    /* 8000AB90 00052080 */ sll $a0, $a1, 2
    /* 8000AB94 30850FFF */ andi $a1, $a0, 0xFFF
    /* 8000AB98 00651825 */ or $v1, $v1, $a1
    /* 8000AB9C AC430004 */ sw $v1, 0x4($v0)
    /* 8000ABA0 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000ABA4 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000ABA8 24430008 */ addiu $v1, $v0, 0x8
    /* 8000ABAC 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000ABB0 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000ABB4 AFC2007C */ sw $v0, 0x7C($fp)
    /* 8000ABB8 8FC2007C */ lw $v0, 0x7C($fp)
    /* 8000ABBC 3C03B400 */ lui $v1, 0xB400
    /* 8000ABC0 AC430000 */ sw $v1, 0x0($v0)
    /* 8000ABC4 8FC2007C */ lw $v0, 0x7C($fp)
    /* 8000ABC8 C7C00070 */ lwc1 $f0, 0x70($fp)
    /* 8000ABCC 3C018000 */ lui $at, %hi(D_80000614)
    /* 8000ABD0 C4220614 */ lwc1 $f2, %lo(D_80000614)($at)
    /* 8000ABD4 46020002 */ mul.s $f0, $f0, $f2
    /* 8000ABD8 4600010D */ trunc.w.s $f4, $f0
    /* 8000ABDC 44032000 */ mfc1 $v1, $f4
    /* 8000ABE0 3064FFFF */ andi $a0, $v1, 0xFFFF
    /* 8000ABE4 00041C00 */ sll $v1, $a0, 16
    /* 8000ABE8 C7C00074 */ lwc1 $f0, 0x74($fp)
    /* 8000ABEC 3C018000 */ lui $at, %hi(D_80000618)
    /* 8000ABF0 C4220618 */ lwc1 $f2, %lo(D_80000618)($at)
    /* 8000ABF4 46020002 */ mul.s $f0, $f0, $f2
    /* 8000ABF8 4600010D */ trunc.w.s $f4, $f0
    /* 8000ABFC 44042000 */ mfc1 $a0, $f4
    /* 8000AC00 3085FFFF */ andi $a1, $a0, 0xFFFF
    /* 8000AC04 00651825 */ or $v1, $v1, $a1
    /* 8000AC08 AC430004 */ sw $v1, 0x4($v0)
    /* 8000AC0C 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000AC10 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000AC14 24430008 */ addiu $v1, $v0, 0x8
    /* 8000AC18 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000AC1C AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000AC20 AFC2007C */ sw $v0, 0x7C($fp)
    /* 8000AC24 8FC2007C */ lw $v0, 0x7C($fp)
    /* 8000AC28 3C03B300 */ lui $v1, 0xB300
    /* 8000AC2C AC430000 */ sw $v1, 0x0($v0)
    /* 8000AC30 8FC2007C */ lw $v0, 0x7C($fp)
    /* 8000AC34 3C030400 */ lui $v1, 0x400
    /* 8000AC38 34630400 */ ori $v1, $v1, 0x400
    /* 8000AC3C AC430004 */ sw $v1, 0x4($v0)
    /* 8000AC40 97C20034 */ lhu $v0, 0x34($fp)
    /* 8000AC44 8FC30044 */ lw $v1, 0x44($fp)
    /* 8000AC48 00621021 */ addu $v0, $v1, $v0
    /* 8000AC4C AFC20044 */ sw $v0, 0x44($fp)
    /* 8000AC50 97C20034 */ lhu $v0, 0x34($fp)
    /* 8000AC54 8FC30048 */ lw $v1, 0x48($fp)
    /* 8000AC58 00621021 */ addu $v0, $v1, $v0
    /* 8000AC5C AFC20048 */ sw $v0, 0x48($fp)
    /* 8000AC60 08002A7B */ j .L8000A9EC
    /* 8000AC64 00000000 */ nop
.L8000AC68:
    /* 8000AC68 97C20036 */ lhu $v0, 0x36($fp)
    /* 8000AC6C 8FC30040 */ lw $v1, 0x40($fp)
    /* 8000AC70 00621021 */ addu $v0, $v1, $v0
    /* 8000AC74 AFC20040 */ sw $v0, 0x40($fp)
    /* 8000AC78 97C20036 */ lhu $v0, 0x36($fp)
    /* 8000AC7C 8FC3004C */ lw $v1, 0x4C($fp)
    /* 8000AC80 00621021 */ addu $v0, $v1, $v0
    /* 8000AC84 AFC2004C */ sw $v0, 0x4C($fp)
    /* 8000AC88 08002A6F */ j .L8000A9BC
    /* 8000AC8C 00000000 */ nop
.L8000AC90:
    /* 8000AC90 08002C3C */ j .L8000B0F0
    /* 8000AC94 00000000 */ nop
.L8000AC98:
    /* 8000AC98 C7C000FC */ lwc1 $f0, 0xFC($fp)
    /* 8000AC9C 44801000 */ mtc1 $zero, $f2
    /* 8000ACA0 4602003C */ c.lt.s $f0, $f2
    /* 8000ACA4 00000000 */ nop
    /* 8000ACA8 4500000A */ bc1f .L8000ACD4
    /* 8000ACAC 00000000 */ nop
    /* 8000ACB0 87C2003C */ lh $v0, 0x3C($fp)
    /* 8000ACB4 44820000 */ mtc1 $v0, $f0
    /* 8000ACB8 46800020 */ cvt.s.w $f0, $f0
    /* 8000ACBC C7C200FC */ lwc1 $f2, 0xFC($fp)
    /* 8000ACC0 46020000 */ add.s $f0, $f0, $f2
    /* 8000ACC4 4600010D */ trunc.w.s $f4, $f0
    /* 8000ACC8 44022000 */ mfc1 $v0, $f4
    /* 8000ACCC A7C2003C */ sh $v0, 0x3C($fp)
    /* 8000ACD0 AFC000FC */ sw $zero, 0xFC($fp)
.L8000ACD4:
    /* 8000ACD4 C7C00100 */ lwc1 $f0, 0x100($fp)
    /* 8000ACD8 44801000 */ mtc1 $zero, $f2
    /* 8000ACDC 4602003C */ c.lt.s $f0, $f2
    /* 8000ACE0 00000000 */ nop
    /* 8000ACE4 4500000A */ bc1f .L8000AD10
    /* 8000ACE8 00000000 */ nop
    /* 8000ACEC 87C2003A */ lh $v0, 0x3A($fp)
    /* 8000ACF0 44820000 */ mtc1 $v0, $f0
    /* 8000ACF4 46800020 */ cvt.s.w $f0, $f0
    /* 8000ACF8 C7C20100 */ lwc1 $f2, 0x100($fp)
    /* 8000ACFC 46020001 */ sub.s $f0, $f0, $f2
    /* 8000AD00 4600010D */ trunc.w.s $f4, $f0
    /* 8000AD04 44022000 */ mfc1 $v0, $f4
    /* 8000AD08 A7C2003A */ sh $v0, 0x3A($fp)
    /* 8000AD0C AFC00100 */ sw $zero, 0x100($fp)
.L8000AD10:
    /* 8000AD10 87C2003C */ lh $v0, 0x3C($fp)
    /* 8000AD14 87C30038 */ lh $v1, 0x38($fp)
    /* 8000AD18 00431023 */ subu $v0, $v0, $v1
    /* 8000AD1C 28430141 */ slti $v1, $v0, 0x141
    /* 8000AD20 14600004 */ bnez $v1, .L8000AD34
    /* 8000AD24 00000000 */ nop
    /* 8000AD28 97C20038 */ lhu $v0, 0x38($fp)
    /* 8000AD2C 24430140 */ addiu $v1, $v0, 0x140
    /* 8000AD30 A7C3003C */ sh $v1, 0x3C($fp)
.L8000AD34:
    /* 8000AD34 87C2003E */ lh $v0, 0x3E($fp)
    /* 8000AD38 87C3003A */ lh $v1, 0x3A($fp)
    /* 8000AD3C 00431023 */ subu $v0, $v0, $v1
    /* 8000AD40 284300F1 */ slti $v1, $v0, 0xF1
    /* 8000AD44 14600004 */ bnez $v1, .L8000AD58
    /* 8000AD48 00000000 */ nop
    /* 8000AD4C 97C2003A */ lhu $v0, 0x3A($fp)
    /* 8000AD50 244300F0 */ addiu $v1, $v0, 0xF0
    /* 8000AD54 A7C3003E */ sh $v1, 0x3E($fp)
.L8000AD58:
    /* 8000AD58 C7C000FC */ lwc1 $f0, 0xFC($fp)
    /* 8000AD5C 3C018000 */ lui $at, %hi(D_8000061C)
    /* 8000AD60 C422061C */ lwc1 $f2, %lo(D_8000061C)($at)
    /* 8000AD64 4600103E */ c.le.s $f2, $f0
    /* 8000AD68 00000000 */ nop
    /* 8000AD6C 45010014 */ bc1t .L8000ADC0
    /* 8000AD70 00000000 */ nop
    /* 8000AD74 C7C00100 */ lwc1 $f0, 0x100($fp)
    /* 8000AD78 3C018000 */ lui $at, %hi(D_80000620)
    /* 8000AD7C C4220620 */ lwc1 $f2, %lo(D_80000620)($at)
    /* 8000AD80 4600103E */ c.le.s $f2, $f0
    /* 8000AD84 00000000 */ nop
    /* 8000AD88 4501000D */ bc1t .L8000ADC0
    /* 8000AD8C 00000000 */ nop
    /* 8000AD90 87C20038 */ lh $v0, 0x38($fp)
    /* 8000AD94 87C3003C */ lh $v1, 0x3C($fp)
    /* 8000AD98 0043102A */ slt $v0, $v0, $v1
    /* 8000AD9C 10400008 */ beqz $v0, .L8000ADC0
    /* 8000ADA0 00000000 */ nop
    /* 8000ADA4 87C2003A */ lh $v0, 0x3A($fp)
    /* 8000ADA8 87C3003E */ lh $v1, 0x3E($fp)
    /* 8000ADAC 0043102A */ slt $v0, $v0, $v1
    /* 8000ADB0 10400003 */ beqz $v0, .L8000ADC0
    /* 8000ADB4 00000000 */ nop
    /* 8000ADB8 08002B72 */ j .L8000ADC8
    /* 8000ADBC 00000000 */ nop
.L8000ADC0:
    /* 8000ADC0 08002C3C */ j .L8000B0F0
    /* 8000ADC4 00000000 */ nop
.L8000ADC8:
    /* 8000ADC8 00000000 */ nop
    /* 8000ADCC 87C2003A */ lh $v0, 0x3A($fp)
    /* 8000ADD0 AFC20040 */ sw $v0, 0x40($fp)
    /* 8000ADD4 C7C00100 */ lwc1 $f0, 0x100($fp)
    /* 8000ADD8 4600010D */ trunc.w.s $f4, $f0
    /* 8000ADDC E7C4004C */ swc1 $f4, 0x4C($fp)
.L8000ADE0:
    /* 8000ADE0 87C2003E */ lh $v0, 0x3E($fp)
    /* 8000ADE4 8FC30040 */ lw $v1, 0x40($fp)
    /* 8000ADE8 0062102A */ slt $v0, $v1, $v0
    /* 8000ADEC 14400003 */ bnez $v0, .L8000ADFC
    /* 8000ADF0 00000000 */ nop
    /* 8000ADF4 08002C3A */ j .L8000B0E8
    /* 8000ADF8 00000000 */ nop
.L8000ADFC:
    /* 8000ADFC 87C2003C */ lh $v0, 0x3C($fp)
    /* 8000AE00 AFC20044 */ sw $v0, 0x44($fp)
    /* 8000AE04 C7C000FC */ lwc1 $f0, 0xFC($fp)
    /* 8000AE08 4600010D */ trunc.w.s $f4, $f0
    /* 8000AE0C E7C40048 */ swc1 $f4, 0x48($fp)
.L8000AE10:
    /* 8000AE10 87C20038 */ lh $v0, 0x38($fp)
    /* 8000AE14 8FC30044 */ lw $v1, 0x44($fp)
    /* 8000AE18 0043102A */ slt $v0, $v0, $v1
    /* 8000AE1C 14400003 */ bnez $v0, .L8000AE2C
    /* 8000AE20 00000000 */ nop
    /* 8000AE24 08002C30 */ j .L8000B0C0
    /* 8000AE28 00000000 */ nop
.L8000AE2C:
    /* 8000AE2C 97C20034 */ lhu $v0, 0x34($fp)
    /* 8000AE30 24430001 */ addiu $v1, $v0, 0x1
    /* 8000AE34 8FC20044 */ lw $v0, 0x44($fp)
    /* 8000AE38 00431823 */ subu $v1, $v0, $v1
    /* 8000AE3C 00601021 */ addu $v0, $v1, $zero
    /* 8000AE40 04410002 */ bgez $v0, .L8000AE4C
    /* 8000AE44 00000000 */ nop
    /* 8000AE48 00001021 */ addu $v0, $zero, $zero
.L8000AE4C:
    /* 8000AE4C AFC20058 */ sw $v0, 0x58($fp)
    /* 8000AE50 8FC20040 */ lw $v0, 0x40($fp)
    /* 8000AE54 2443FFFF */ addiu $v1, $v0, -0x1
    /* 8000AE58 00601021 */ addu $v0, $v1, $zero
    /* 8000AE5C 04410002 */ bgez $v0, .L8000AE68
    /* 8000AE60 00000000 */ nop
    /* 8000AE64 00001021 */ addu $v0, $zero, $zero
.L8000AE68:
    /* 8000AE68 AFC2005C */ sw $v0, 0x5C($fp)
    /* 8000AE6C 87C2003C */ lh $v0, 0x3C($fp)
    /* 8000AE70 2443FFFF */ addiu $v1, $v0, -0x1
    /* 8000AE74 8FC20044 */ lw $v0, 0x44($fp)
    /* 8000AE78 0062202A */ slt $a0, $v1, $v0
    /* 8000AE7C 10800002 */ beqz $a0, .L8000AE88
    /* 8000AE80 00000000 */ nop
    /* 8000AE84 00601021 */ addu $v0, $v1, $zero
.L8000AE88:
    /* 8000AE88 AFC20060 */ sw $v0, 0x60($fp)
    /* 8000AE8C 87C3003E */ lh $v1, 0x3E($fp)
    /* 8000AE90 2462FFFF */ addiu $v0, $v1, -0x1
    /* 8000AE94 97C30036 */ lhu $v1, 0x36($fp)
    /* 8000AE98 8FC40040 */ lw $a0, 0x40($fp)
    /* 8000AE9C 00641821 */ addu $v1, $v1, $a0
    /* 8000AEA0 0043202A */ slt $a0, $v0, $v1
    /* 8000AEA4 10800002 */ beqz $a0, .L8000AEB0
    /* 8000AEA8 00000000 */ nop
    /* 8000AEAC 00401821 */ addu $v1, $v0, $zero
.L8000AEB0:
    /* 8000AEB0 AFC30064 */ sw $v1, 0x64($fp)
    /* 8000AEB4 97C20028 */ lhu $v0, 0x28($fp)
    /* 8000AEB8 97C3002A */ lhu $v1, 0x2A($fp)
    /* 8000AEBC 8FC4005C */ lw $a0, 0x5C($fp)
    /* 8000AEC0 AFA40010 */ sw $a0, 0x10($sp)
    /* 8000AEC4 8FC40060 */ lw $a0, 0x60($fp)
    /* 8000AEC8 AFA40014 */ sw $a0, 0x14($sp)
    /* 8000AECC 8FC40064 */ lw $a0, 0x64($fp)
    /* 8000AED0 AFA40018 */ sw $a0, 0x18($sp)
    /* 8000AED4 97C40030 */ lhu $a0, 0x30($fp)
    /* 8000AED8 AFA4001C */ sw $a0, 0x1C($sp)
    /* 8000AEDC 97C40032 */ lhu $a0, 0x32($fp)
    /* 8000AEE0 AFA40020 */ sw $a0, 0x20($sp)
    /* 8000AEE4 8FC400C8 */ lw $a0, 0xC8($fp)
    /* 8000AEE8 00402821 */ addu $a1, $v0, $zero
    /* 8000AEEC 00603021 */ addu $a2, $v1, $zero
    /* 8000AEF0 8FC70058 */ lw $a3, 0x58($fp)
    /* 8000AEF4 0C00273F */ jal func_80009CFC
    /* 8000AEF8 00000000 */ nop
    /* 8000AEFC C7C00044 */ lwc1 $f0, 0x44($fp)
    /* 8000AF00 46800020 */ cvt.s.w $f0, $f0
    /* 8000AF04 3C018000 */ lui $at, %hi(D_80000624)
    /* 8000AF08 C4220624 */ lwc1 $f2, %lo(D_80000624)($at)
    /* 8000AF0C 46020001 */ sub.s $f0, $f0, $f2
    /* 8000AF10 E7C00070 */ swc1 $f0, 0x70($fp)
    /* 8000AF14 C7C00040 */ lwc1 $f0, 0x40($fp)
    /* 8000AF18 46800020 */ cvt.s.w $f0, $f0
    /* 8000AF1C E7C00074 */ swc1 $f0, 0x74($fp)
    /* 8000AF20 87C20038 */ lh $v0, 0x38($fp)
    /* 8000AF24 8FC30044 */ lw $v1, 0x44($fp)
    /* 8000AF28 00621023 */ subu $v0, $v1, $v0
    /* 8000AF2C 8FC30048 */ lw $v1, 0x48($fp)
    /* 8000AF30 00431021 */ addu $v0, $v0, $v1
    /* 8000AF34 97C30034 */ lhu $v1, 0x34($fp)
    /* 8000AF38 8FC40048 */ lw $a0, 0x48($fp)
    /* 8000AF3C 00641821 */ addu $v1, $v1, $a0
    /* 8000AF40 0043202A */ slt $a0, $v0, $v1
    /* 8000AF44 10800002 */ beqz $a0, .L8000AF50
    /* 8000AF48 00000000 */ nop
    /* 8000AF4C 00401821 */ addu $v1, $v0, $zero
.L8000AF50:
    /* 8000AF50 AFC30050 */ sw $v1, 0x50($fp)
    /* 8000AF54 87C2003E */ lh $v0, 0x3E($fp)
    /* 8000AF58 8FC30040 */ lw $v1, 0x40($fp)
    /* 8000AF5C 00431023 */ subu $v0, $v0, $v1
    /* 8000AF60 8FC3004C */ lw $v1, 0x4C($fp)
    /* 8000AF64 00431021 */ addu $v0, $v0, $v1
    /* 8000AF68 97C30036 */ lhu $v1, 0x36($fp)
    /* 8000AF6C 8FC4004C */ lw $a0, 0x4C($fp)
    /* 8000AF70 00641821 */ addu $v1, $v1, $a0
    /* 8000AF74 0043202A */ slt $a0, $v0, $v1
    /* 8000AF78 10800002 */ beqz $a0, .L8000AF84
    /* 8000AF7C 00000000 */ nop
    /* 8000AF80 00401821 */ addu $v1, $v0, $zero
.L8000AF84:
    /* 8000AF84 AFC30054 */ sw $v1, 0x54($fp)
    /* 8000AF88 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000AF8C 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000AF90 24430008 */ addiu $v1, $v0, 0x8
    /* 8000AF94 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000AF98 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000AF9C AFC2007C */ sw $v0, 0x7C($fp)
    /* 8000AFA0 8FC2007C */ lw $v0, 0x7C($fp)
    /* 8000AFA4 8FC40050 */ lw $a0, 0x50($fp)
    /* 8000AFA8 00041880 */ sll $v1, $a0, 2
    /* 8000AFAC 30640FFF */ andi $a0, $v1, 0xFFF
    /* 8000AFB0 00041B00 */ sll $v1, $a0, 12
    /* 8000AFB4 8FC50054 */ lw $a1, 0x54($fp)
    /* 8000AFB8 00052080 */ sll $a0, $a1, 2
    /* 8000AFBC 30850FFF */ andi $a1, $a0, 0xFFF
    /* 8000AFC0 3C06E400 */ lui $a2, 0xE400
    /* 8000AFC4 00A62025 */ or $a0, $a1, $a2
    /* 8000AFC8 00641825 */ or $v1, $v1, $a0
    /* 8000AFCC AC430000 */ sw $v1, 0x0($v0)
    /* 8000AFD0 8FC2007C */ lw $v0, 0x7C($fp)
    /* 8000AFD4 8FC40048 */ lw $a0, 0x48($fp)
    /* 8000AFD8 00041880 */ sll $v1, $a0, 2
    /* 8000AFDC 30640FFF */ andi $a0, $v1, 0xFFF
    /* 8000AFE0 00041B00 */ sll $v1, $a0, 12
    /* 8000AFE4 8FC5004C */ lw $a1, 0x4C($fp)
    /* 8000AFE8 00052080 */ sll $a0, $a1, 2
    /* 8000AFEC 30850FFF */ andi $a1, $a0, 0xFFF
    /* 8000AFF0 00651825 */ or $v1, $v1, $a1
    /* 8000AFF4 AC430004 */ sw $v1, 0x4($v0)
    /* 8000AFF8 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000AFFC 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000B000 24430008 */ addiu $v1, $v0, 0x8
    /* 8000B004 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000B008 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000B00C AFC20078 */ sw $v0, 0x78($fp)
    /* 8000B010 8FC20078 */ lw $v0, 0x78($fp)
    /* 8000B014 3C03B400 */ lui $v1, 0xB400
    /* 8000B018 AC430000 */ sw $v1, 0x0($v0)
    /* 8000B01C 8FC20078 */ lw $v0, 0x78($fp)
    /* 8000B020 C7C00070 */ lwc1 $f0, 0x70($fp)
    /* 8000B024 3C018000 */ lui $at, %hi(D_80000628)
    /* 8000B028 C4220628 */ lwc1 $f2, %lo(D_80000628)($at)
    /* 8000B02C 46020002 */ mul.s $f0, $f0, $f2
    /* 8000B030 4600010D */ trunc.w.s $f4, $f0
    /* 8000B034 44032000 */ mfc1 $v1, $f4
    /* 8000B038 3064FFFF */ andi $a0, $v1, 0xFFFF
    /* 8000B03C 00041C00 */ sll $v1, $a0, 16
    /* 8000B040 C7C00074 */ lwc1 $f0, 0x74($fp)
    /* 8000B044 3C018000 */ lui $at, %hi(D_8000062C)
    /* 8000B048 C422062C */ lwc1 $f2, %lo(D_8000062C)($at)
    /* 8000B04C 46020002 */ mul.s $f0, $f0, $f2
    /* 8000B050 4600010D */ trunc.w.s $f4, $f0
    /* 8000B054 44042000 */ mfc1 $a0, $f4
    /* 8000B058 3085FFFF */ andi $a1, $a0, 0xFFFF
    /* 8000B05C 00651825 */ or $v1, $v1, $a1
    /* 8000B060 AC430004 */ sw $v1, 0x4($v0)
    /* 8000B064 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 8000B068 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 8000B06C 24430008 */ addiu $v1, $v0, 0x8
    /* 8000B070 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 8000B074 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 8000B078 AFC20078 */ sw $v0, 0x78($fp)
    /* 8000B07C 8FC20078 */ lw $v0, 0x78($fp)
    /* 8000B080 3C03B300 */ lui $v1, 0xB300
    /* 8000B084 AC430000 */ sw $v1, 0x0($v0)
    /* 8000B088 8FC20078 */ lw $v0, 0x78($fp)
    /* 8000B08C 3C03FC00 */ lui $v1, 0xFC00
    /* 8000B090 34630400 */ ori $v1, $v1, 0x400
    /* 8000B094 AC430004 */ sw $v1, 0x4($v0)
    /* 8000B098 97C20034 */ lhu $v0, 0x34($fp)
    /* 8000B09C 8FC30044 */ lw $v1, 0x44($fp)
    /* 8000B0A0 00621023 */ subu $v0, $v1, $v0
    /* 8000B0A4 AFC20044 */ sw $v0, 0x44($fp)
    /* 8000B0A8 97C20034 */ lhu $v0, 0x34($fp)
    /* 8000B0AC 8FC30048 */ lw $v1, 0x48($fp)
    /* 8000B0B0 00621021 */ addu $v0, $v1, $v0
    /* 8000B0B4 AFC20048 */ sw $v0, 0x48($fp)
    /* 8000B0B8 08002B84 */ j .L8000AE10
    /* 8000B0BC 00000000 */ nop
.L8000B0C0:
    /* 8000B0C0 97C20036 */ lhu $v0, 0x36($fp)
    /* 8000B0C4 8FC30040 */ lw $v1, 0x40($fp)
    /* 8000B0C8 00621021 */ addu $v0, $v1, $v0
    /* 8000B0CC AFC20040 */ sw $v0, 0x40($fp)
    /* 8000B0D0 97C20036 */ lhu $v0, 0x36($fp)
    /* 8000B0D4 8FC3004C */ lw $v1, 0x4C($fp)
    /* 8000B0D8 00621021 */ addu $v0, $v1, $v0
    /* 8000B0DC AFC2004C */ sw $v0, 0x4C($fp)
    /* 8000B0E0 08002B78 */ j .L8000ADE0
    /* 8000B0E4 00000000 */ nop
.L8000B0E8:
    /* 8000B0E8 08002C3C */ j .L8000B0F0
    /* 8000B0EC 00000000 */ nop
.L8000B0F0:
    /* 8000B0F0 03C0E821 */ addu $sp, $fp, $zero
    /* 8000B0F4 8FBF00C4 */ lw $ra, 0xC4($sp)
    /* 8000B0F8 8FBE00C0 */ lw $fp, 0xC0($sp)
    /* 8000B0FC 8FB700BC */ lw $s7, 0xBC($sp)
    /* 8000B100 8FB600B8 */ lw $s6, 0xB8($sp)
    /* 8000B104 8FB500B4 */ lw $s5, 0xB4($sp)
    /* 8000B108 8FB400B0 */ lw $s4, 0xB0($sp)
    /* 8000B10C 8FB300AC */ lw $s3, 0xAC($sp)
    /* 8000B110 8FB200A8 */ lw $s2, 0xA8($sp)
    /* 8000B114 8FB100A4 */ lw $s1, 0xA4($sp)
    /* 8000B118 8FB000A0 */ lw $s0, 0xA0($sp)
    /* 8000B11C 27BD00C8 */ addiu $sp, $sp, 0xC8
    /* 8000B120 03E00008 */ jr $ra
    /* 8000B124 00000000 */ nop
