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
glabel func_8004C598
    /* 8004C598 8C860044 */ lw $a2, 0x44($a0)
    /* 8004C59C 8C820040 */ lw $v0, 0x40($a0)
    /* 8004C5A0 00001825 */ move $v1, $zero
    /* 8004C5A4 18C00020 */ blez $a2, .L8004C628
    /* 8004C5A8 24070030 */ addiu $a3, $zero, 0x30
.L8004C5AC:
    /* 8004C5AC 00670019 */ multu $v1, $a3
    /* 8004C5B0 00007012 */ mflo $t6
    /* 8004C5B4 004E2021 */ addu $a0, $v0, $t6
    /* 8004C5B8 8C8F001C */ lw $t7, 0x1C($a0)
    /* 8004C5BC 15E00014 */ bnez $t7, .L8004C610
    /* 8004C5C0 3C013F80 */ lui $at, 0x3F80
    /* 8004C5C4 44812000 */ mtc1 $at, $f4
    /* 8004C5C8 24180005 */ addiu $t8, $zero, 0x5
    /* 8004C5CC 24190040 */ addiu $t9, $zero, 0x40
    /* 8004C5D0 AC85001C */ sw $a1, 0x1C($a0)
    /* 8004C5D4 A4980020 */ sh $t8, 0x20($a0)
    /* 8004C5D8 AC800028 */ sw $zero, 0x28($a0)
    /* 8004C5DC A099002E */ sb $t9, 0x2E($a0)
    /* 8004C5E0 A080002F */ sb $zero, 0x2F($a0)
    /* 8004C5E4 E4840024 */ swc1 $f4, 0x24($a0)
    /* 8004C5E8 90A8000D */ lbu $t0, 0xD($a1)
    /* 8004C5EC 2401007F */ addiu $at, $zero, 0x7F
    /* 8004C5F0 00601025 */ move $v0, $v1
    /* 8004C5F4 00084BC0 */ sll $t1, $t0, 15
    /* 8004C5F8 01284823 */ subu $t1, $t1, $t0
    /* 8004C5FC 0121001A */ div $zero, $t1, $at
    /* 8004C600 00005012 */ mflo $t2
    /* 8004C604 A48A002C */ sh $t2, 0x2C($a0)
    /* 8004C608 03E00008 */ jr $ra
    /* 8004C60C 00000000 */ nop
.L8004C610:
    /* 8004C610 24630001 */ addiu $v1, $v1, 0x1
    /* 8004C614 00035C00 */ sll $t3, $v1, 16
    /* 8004C618 000B1C03 */ sra $v1, $t3, 16
    /* 8004C61C 0066082A */ slt $at, $v1, $a2
    /* 8004C620 1420FFE2 */ bnez $at, .L8004C5AC
    /* 8004C624 00000000 */ nop
.L8004C628:
    /* 8004C628 2402FFFF */ addiu $v0, $zero, -0x1
    /* 8004C62C 03E00008 */ jr $ra
    /* 8004C630 00000000 */ nop
    /* 8004C634 00000000 */ nop
