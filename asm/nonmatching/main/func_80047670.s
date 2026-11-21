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
glabel func_80047670
    /* 80047670 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 80047674 AFBF0014 */ sw $ra, 0x14($sp)
    /* 80047678 00803825 */ move $a3, $a0
    /* 8004767C AC850000 */ sw $a1, 0x0($a0)
    /* 80047680 AC860010 */ sw $a2, 0x10($a0)
    /* 80047684 A480001A */ sh $zero, 0x1A($a0)
    /* 80047688 AC80000C */ sw $zero, 0xC($a0)
    /* 8004768C 0C011D7C */ jal func_800475F0
    /* 80047690 AC850008 */ sw $a1, 0x8($a0)
    /* 80047694 3C014D54 */ lui $at, 0x4D54
    /* 80047698 34216864 */ ori $at, $at, 0x6864
    /* 8004769C 54410027 */ bnel $v0, $at, .L8004773C
    /* 800476A0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800476A4 0C011D7C */ jal func_800475F0
    /* 800476A8 00E02025 */ move $a0, $a3
    /* 800476AC 0C011D90 */ jal func_80047640
    /* 800476B0 00E02025 */ move $a0, $a3
    /* 800476B4 54400021 */ bnel $v0, $zero, .L8004773C
    /* 800476B8 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800476BC 0C011D90 */ jal func_80047640
    /* 800476C0 00E02025 */ move $a0, $a3
    /* 800476C4 24010001 */ addiu $at, $zero, 0x1
    /* 800476C8 5441001C */ bnel $v0, $at, .L8004773C
    /* 800476CC 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800476D0 0C011D90 */ jal func_80047640
    /* 800476D4 00E02025 */ move $a0, $a3
    /* 800476D8 A4E20018 */ sh $v0, 0x18($a3)
    /* 800476DC 84E30018 */ lh $v1, 0x18($a3)
    /* 800476E0 306E8000 */ andi $t6, $v1, 0x8000
    /* 800476E4 55C00015 */ bnel $t6, $zero, .L8004773C
    /* 800476E8 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800476EC 44833000 */ mtc1 $v1, $f6
    /* 800476F0 3C013FF0 */ lui $at, 0x3FF0
    /* 800476F4 44812800 */ mtc1 $at, $f5
    /* 800476F8 46803220 */ cvt.s.w $f8, $f6
    /* 800476FC 44802000 */ mtc1 $zero, $f4
    /* 80047700 00E02025 */ move $a0, $a3
    /* 80047704 460042A1 */ cvt.d.s $f10, $f8
    /* 80047708 462A2183 */ div.d $f6, $f4, $f10
    /* 8004770C 46203220 */ cvt.s.d $f8, $f6
    /* 80047710 0C011D7C */ jal func_800475F0
    /* 80047714 E4E80014 */ swc1 $f8, 0x14($a3)
    /* 80047718 3C014D54 */ lui $at, 0x4D54
    /* 8004771C 3421726B */ ori $at, $at, 0x726B
    /* 80047720 54410006 */ bnel $v0, $at, .L8004773C
    /* 80047724 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80047728 0C011D7C */ jal func_800475F0
    /* 8004772C 00E02025 */ move $a0, $a3
    /* 80047730 8CEF0008 */ lw $t7, 0x8($a3)
    /* 80047734 ACEF0004 */ sw $t7, 0x4($a3)
    /* 80047738 8FBF0014 */ lw $ra, 0x14($sp)
.L8004773C:
    /* 8004773C 27BD0018 */ addiu $sp, $sp, 0x18
    /* 80047740 03E00008 */ jr $ra
    /* 80047744 00000000 */ nop
