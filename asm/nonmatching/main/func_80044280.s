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
glabel func_80044280
    /* 80044280 3C014780 */ lui $at, 0x4780
    /* 80044284 44810000 */ mtc1 $at, $f0
    /* 80044288 27BDFFF0 */ addiu $sp, $sp, -0x10
    /* 8004428C 00A01025 */ move $v0, $a1
    /* 80044290 24A30020 */ addiu $v1, $a1, 0x20
    /* 80044294 00003025 */ move $a2, $zero
    /* 80044298 00804025 */ move $t0, $a0
    /* 8004429C 240C0004 */ addiu $t4, $zero, 0x4
    /* 800442A0 240B0002 */ addiu $t3, $zero, 0x2
    /* 800442A4 3C0AFFFF */ lui $t2, 0xFFFF
.L800442A8:
    /* 800442A8 00002025 */ move $a0, $zero
    /* 800442AC 01004825 */ move $t1, $t0
.L800442B0:
    /* 800442B0 8C6E0000 */ lw $t6, 0x0($v1)
    /* 800442B4 8C590000 */ lw $t9, 0x0($v0)
    /* 800442B8 24840001 */ addiu $a0, $a0, 0x1
    /* 800442BC 000E7C02 */ srl $t7, $t6, 16
    /* 800442C0 31F8FFFF */ andi $t8, $t7, 0xFFFF
    /* 800442C4 032A6824 */ and $t5, $t9, $t2
    /* 800442C8 030D7025 */ or $t6, $t8, $t5
    /* 800442CC AFAE0004 */ sw $t6, 0x4($sp)
    /* 800442D0 8C6F0000 */ lw $t7, 0x0($v1)
    /* 800442D4 8C580000 */ lw $t8, 0x0($v0)
    /* 800442D8 8FA50004 */ lw $a1, 0x4($sp)
    /* 800442DC 31F9FFFF */ andi $t9, $t7, 0xFFFF
    /* 800442E0 00186C00 */ sll $t5, $t8, 16
    /* 800442E4 44859000 */ mtc1 $a1, $f18
    /* 800442E8 01AA7024 */ and $t6, $t5, $t2
    /* 800442EC 032E3825 */ or $a3, $t9, $t6
    /* 800442F0 468094A0 */ cvt.s.w $f18, $f18
    /* 800442F4 44878000 */ mtc1 $a3, $f16
    /* 800442F8 AFA70000 */ sw $a3, 0x0($sp)
    /* 800442FC 24420004 */ addiu $v0, $v0, 0x4
    /* 80044300 24630004 */ addiu $v1, $v1, 0x4
    /* 80044304 46808420 */ cvt.s.w $f16, $f16
    /* 80044308 25290008 */ addiu $t1, $t1, 0x8
    /* 8004430C 46009483 */ div.s $f18, $f18, $f0
    /* 80044310 46008403 */ div.s $f16, $f16, $f0
    /* 80044314 E532FFF8 */ swc1 $f18, -0x8($t1)
    /* 80044318 148BFFE5 */ bne $a0, $t3, .L800442B0
    /* 8004431C E530FFFC */ swc1 $f16, -0x4($t1)
    /* 80044320 24C60001 */ addiu $a2, $a2, 0x1
    /* 80044324 14CCFFE0 */ bne $a2, $t4, .L800442A8
    /* 80044328 25080010 */ addiu $t0, $t0, 0x10
    /* 8004432C 03E00008 */ jr $ra
    /* 80044330 27BD0010 */ addiu $sp, $sp, 0x10
    /* 80044334 00000000 */ nop
