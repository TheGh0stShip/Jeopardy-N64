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
glabel func_8004C6A8
    /* 8004C6A8 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8004C6AC AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004C6B0 8C8E003C */ lw $t6, 0x3C($a0)
    /* 8004C6B4 24030030 */ addiu $v1, $zero, 0x30
    /* 8004C6B8 8C820040 */ lw $v0, 0x40($a0)
    /* 8004C6BC 01C30019 */ multu $t6, $v1
    /* 8004C6C0 00007812 */ mflo $t7
    /* 8004C6C4 01E2C021 */ addu $t8, $t7, $v0
    /* 8004C6C8 8F190028 */ lw $t9, 0x28($t8)
    /* 8004C6CC 5720000C */ bnel $t9, $zero, .L8004C700
    /* 8004C6D0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004C6D4 A7A00020 */ sh $zero, 0x20($sp)
    /* 8004C6D8 8C88003C */ lw $t0, 0x3C($a0)
    /* 8004C6DC 24840014 */ addiu $a0, $a0, 0x14
    /* 8004C6E0 27A50020 */ addiu $a1, $sp, 0x20
    /* 8004C6E4 01030019 */ multu $t0, $v1
    /* 8004C6E8 00003025 */ move $a2, $zero
    /* 8004C6EC 00004812 */ mflo $t1
    /* 8004C6F0 01225021 */ addu $t2, $t1, $v0
    /* 8004C6F4 0C010A21 */ jal alEvtqPostEvent
    /* 8004C6F8 AFAA0024 */ sw $t2, 0x24($sp)
    /* 8004C6FC 8FBF0014 */ lw $ra, 0x14($sp)
.L8004C700:
    /* 8004C700 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8004C704 03E00008 */ jr $ra
    /* 8004C708 00000000 */ nop
    /* 8004C70C 00000000 */ nop
    /* 8004C710 00000000 */ nop
    /* 8004C714 00000000 */ nop
