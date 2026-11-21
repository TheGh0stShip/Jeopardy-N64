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
glabel func_80042768
    /* 80042768 27BDFFC0 */ addiu $sp, $sp, -0x40
    /* 8004276C AFB30020 */ sw $s3, 0x20($sp)
    /* 80042770 00059C00 */ sll $s3, $a1, 16
    /* 80042774 AFB2001C */ sw $s2, 0x1C($sp)
    /* 80042778 00809025 */ move $s2, $a0
    /* 8004277C 00137403 */ sra $t6, $s3, 16
    /* 80042780 AFBF0024 */ sw $ra, 0x24($sp)
    /* 80042784 01C09825 */ move $s3, $t6
    /* 80042788 AFB10018 */ sw $s1, 0x18($sp)
    /* 8004278C AFB00014 */ sw $s0, 0x14($sp)
    /* 80042790 AFA50044 */ sw $a1, 0x44($sp)
    /* 80042794 0C01214A */ jal osSetIntMask
    /* 80042798 24040001 */ addiu $a0, $zero, 0x1
    /* 8004279C AFA2002C */ sw $v0, 0x2C($sp)
    /* 800427A0 8E500008 */ lw $s0, 0x8($s2)
    /* 800427A4 12000012 */ beqz $s0, .L800427F0
    /* 800427A8 00000000 */ nop
.L800427AC:
    /* 800427AC 860F000C */ lh $t7, 0xC($s0)
    /* 800427B0 8E110000 */ lw $s1, 0x0($s0)
    /* 800427B4 166F000C */ bne $s3, $t7, .L800427E8
    /* 800427B8 00000000 */ nop
    /* 800427BC 12200005 */ beqz $s1, .L800427D4
    /* 800427C0 00000000 */ nop
    /* 800427C4 8E380008 */ lw $t8, 0x8($s1)
    /* 800427C8 8E190008 */ lw $t9, 0x8($s0)
    /* 800427CC 03194021 */ addu $t0, $t8, $t9
    /* 800427D0 AE280008 */ sw $t0, 0x8($s1)
.L800427D4:
    /* 800427D4 0C00F52A */ jal alUnlink
    /* 800427D8 02002025 */ move $a0, $s0
    /* 800427DC 02002025 */ move $a0, $s0
    /* 800427E0 0C00F536 */ jal alLink
    /* 800427E4 02402825 */ move $a1, $s2
.L800427E8:
    /* 800427E8 1620FFF0 */ bnez $s1, .L800427AC
    /* 800427EC 02208025 */ move $s0, $s1
.L800427F0:
    /* 800427F0 0C01214A */ jal osSetIntMask
    /* 800427F4 8FA4002C */ lw $a0, 0x2C($sp)
    /* 800427F8 8FBF0024 */ lw $ra, 0x24($sp)
    /* 800427FC 8FB00014 */ lw $s0, 0x14($sp)
    /* 80042800 8FB10018 */ lw $s1, 0x18($sp)
    /* 80042804 8FB2001C */ lw $s2, 0x1C($sp)
    /* 80042808 8FB30020 */ lw $s3, 0x20($sp)
    /* 8004280C 03E00008 */ jr $ra
    /* 80042810 27BD0040 */ addiu $sp, $sp, 0x40
