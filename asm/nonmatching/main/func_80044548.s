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
glabel func_80044548
    /* 80044548 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004454C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80044550 240E000D */ addiu $t6, $zero, 0xD
    /* 80044554 AFA5001C */ sw $a1, 0x1C($sp)
    /* 80044558 A7AE0018 */ sh $t6, 0x18($sp)
    /* 8004455C 27A50018 */ addiu $a1, $sp, 0x18
    /* 80044560 24840048 */ addiu $a0, $a0, 0x48
    /* 80044564 0C010A21 */ jal alEvtqPostEvent
    /* 80044568 00003025 */ move $a2, $zero
    /* 8004456C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80044570 27BD0028 */ addiu $sp, $sp, 0x28
    /* 80044574 03E00008 */ jr $ra
    /* 80044578 00000000 */ nop
    /* 8004457C 00000000 */ nop
    /* 80044580 00000000 */ nop
    /* 80044584 00000000 */ nop
