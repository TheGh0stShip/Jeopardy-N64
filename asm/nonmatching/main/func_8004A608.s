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
glabel func_8004A608
    /* 8004A608 00A6001A */ div $zero, $a1, $a2
    /* 8004A60C 00001012 */ mflo $v0
    /* 8004A610 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 8004A614 14C00002 */ bnez $a2, .L8004A620
    /* 8004A618 00000000 */ nop
    /* 8004A61C 0007000D */ break 7
.L8004A620:
    /* 8004A620 2401FFFF */ addiu $at, $zero, -0x1
    /* 8004A624 14C10004 */ bne $a2, $at, .L8004A638
    /* 8004A628 3C018000 */ lui $at, 0x8000
    /* 8004A62C 14A10002 */ bne $a1, $at, .L8004A638
    /* 8004A630 00000000 */ nop
    /* 8004A634 0006000D */ break 6
.L8004A638:
    /* 8004A638 00C20019 */ multu $a2, $v0
    /* 8004A63C AFA20000 */ sw $v0, 0x0($sp)
    /* 8004A640 27AF0000 */ addiu $t7, $sp, 0x0
    /* 8004A644 00007012 */ mflo $t6
    /* 8004A648 00AE1823 */ subu $v1, $a1, $t6
    /* 8004A64C 04410008 */ bgez $v0, .L8004A670
    /* 8004A650 AFA30004 */ sw $v1, 0x4($sp)
    /* 8004A654 AFA20000 */ sw $v0, 0x0($sp)
    /* 8004A658 18600005 */ blez $v1, .L8004A670
    /* 8004A65C AFA30004 */ sw $v1, 0x4($sp)
    /* 8004A660 24420001 */ addiu $v0, $v0, 0x1
    /* 8004A664 00661823 */ subu $v1, $v1, $a2
    /* 8004A668 AFA30004 */ sw $v1, 0x4($sp)
    /* 8004A66C AFA20000 */ sw $v0, 0x0($sp)
.L8004A670:
    /* 8004A670 8DE10000 */ lw $at, 0x0($t7)
    /* 8004A674 00801025 */ move $v0, $a0
    /* 8004A678 AC810000 */ sw $at, 0x0($a0)
    /* 8004A67C 8DE80004 */ lw $t0, 0x4($t7)
    /* 8004A680 27BD0008 */ addiu $sp, $sp, 0x8
    /* 8004A684 03E00008 */ jr $ra
    /* 8004A688 AC880004 */ sw $t0, 0x4($a0)
    /* 8004A68C 00000000 */ nop
    /* 8004A690 00000000 */ nop
    /* 8004A694 00000000 */ nop
