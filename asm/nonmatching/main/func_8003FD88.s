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
glabel func_8003FD88
    /* 8003FD88 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003FD8C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003FD90 8C820040 */ lw $v0, 0x40($a0)
    /* 8003FD94 240E0001 */ addiu $t6, $zero, 0x1
    /* 8003FD98 A7AE0020 */ sh $t6, 0x20($sp)
    /* 8003FD9C 8C8F003C */ lw $t7, 0x3C($a0)
    /* 8003FDA0 27A50020 */ addiu $a1, $sp, 0x20
    /* 8003FDA4 24840014 */ addiu $a0, $a0, 0x14
    /* 8003FDA8 000FC080 */ sll $t8, $t7, 2
    /* 8003FDAC 030FC023 */ subu $t8, $t8, $t7
    /* 8003FDB0 0018C100 */ sll $t8, $t8, 4
    /* 8003FDB4 0302C821 */ addu $t9, $t8, $v0
    /* 8003FDB8 AFB90024 */ sw $t9, 0x24($sp)
    /* 8003FDBC 0C010A21 */ jal alEvtqPostEvent
    /* 8003FDC0 00003025 */ move $a2, $zero
    /* 8003FDC4 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003FDC8 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003FDCC 03E00008 */ jr $ra
    /* 8003FDD0 00000000 */ nop
    /* 8003FDD4 00000000 */ nop
