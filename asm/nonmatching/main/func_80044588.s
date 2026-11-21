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
glabel func_80044588
    /* 80044588 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004458C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80044590 240E0011 */ addiu $t6, $zero, 0x11
    /* 80044594 A7AE0018 */ sh $t6, 0x18($sp)
    /* 80044598 27A50018 */ addiu $a1, $sp, 0x18
    /* 8004459C 24840048 */ addiu $a0, $a0, 0x48
    /* 800445A0 0C010A21 */ jal alEvtqPostEvent
    /* 800445A4 00003025 */ move $a2, $zero
    /* 800445A8 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800445AC 27BD0028 */ addiu $sp, $sp, 0x28
    /* 800445B0 03E00008 */ jr $ra
    /* 800445B4 00000000 */ nop
