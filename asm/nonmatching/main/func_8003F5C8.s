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
glabel func_8003F5C8
    /* 8003F5C8 84820000 */ lh $v0, 0x0($a0)
    /* 8003F5CC 24194000 */ addiu $t9, $zero, 0x4000
    /* 8003F5D0 24090001 */ addiu $t1, $zero, 0x1
    /* 8003F5D4 00027380 */ sll $t6, $v0, 14
    /* 8003F5D8 000E1BC3 */ sra $v1, $t6, 15
    /* 8003F5DC 00037C00 */ sll $t7, $v1, 16
    /* 8003F5E0 000F1C03 */ sra $v1, $t7, 16
    /* 8003F5E4 03234023 */ subu $t0, $t9, $v1
    /* 8003F5E8 A4880002 */ sh $t0, 0x2($a0)
    /* 8003F5EC AC89002C */ sw $t1, 0x2C($a0)
    /* 8003F5F0 00002825 */ move $a1, $zero
    /* 8003F5F4 00803025 */ move $a2, $a0
.L8003F5F8:
    /* 8003F5F8 24A50001 */ addiu $a1, $a1, 0x1
    /* 8003F5FC 28A10008 */ slti $at, $a1, 0x8
    /* 8003F600 24C60002 */ addiu $a2, $a2, 0x2
    /* 8003F604 1420FFFC */ bnez $at, .L8003F5F8
    /* 8003F608 A4C00006 */ sh $zero, 0x6($a2)
    /* 8003F60C 44832000 */ mtc1 $v1, $f4
    /* 8003F610 3C0140D0 */ lui $at, 0x40D0
    /* 8003F614 44816800 */ mtc1 $at, $f13
    /* 8003F618 468021A1 */ cvt.d.w $f6, $f4
    /* 8003F61C 44806000 */ mtc1 $zero, $f12
    /* 8003F620 24A50001 */ addiu $a1, $a1, 0x1
    /* 8003F624 28A10010 */ slti $at, $a1, 0x10
    /* 8003F628 A4C30008 */ sh $v1, 0x8($a2)
    /* 8003F62C 462C3083 */ div.d $f2, $f6, $f12
    /* 8003F630 24C60002 */ addiu $a2, $a2, 0x2
    /* 8003F634 1020000A */ beqz $at, .L8003F660
    /* 8003F638 46201006 */ mov.d $f0, $f2
.L8003F63C:
    /* 8003F63C 46220002 */ mul.d $f0, $f0, $f2
    /* 8003F640 24A50001 */ addiu $a1, $a1, 0x1
    /* 8003F644 28A10010 */ slti $at, $a1, 0x10
    /* 8003F648 24C60002 */ addiu $a2, $a2, 0x2
    /* 8003F64C 462C0202 */ mul.d $f8, $f0, $f12
    /* 8003F650 4620428D */ trunc.w.d $f10, $f8
    /* 8003F654 440B5000 */ mfc1 $t3, $f10
    /* 8003F658 1420FFF8 */ bnez $at, .L8003F63C
    /* 8003F65C A4CB0006 */ sh $t3, 0x6($a2)
.L8003F660:
    /* 8003F660 03E00008 */ jr $ra
    /* 8003F664 00000000 */ nop
