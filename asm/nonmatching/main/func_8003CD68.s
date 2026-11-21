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
glabel func_8003CD68
    /* 8003CD68 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003CD6C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003CD70 AFA50034 */ sw $a1, 0x34($sp)
    /* 8003CD74 8C820040 */ lw $v0, 0x40($a0)
    /* 8003CD78 240E0008 */ addiu $t6, $zero, 0x8
    /* 8003CD7C A7AE0020 */ sh $t6, 0x20($sp)
    /* 8003CD80 8C8F003C */ lw $t7, 0x3C($a0)
    /* 8003CD84 00A04025 */ move $t0, $a1
    /* 8003CD88 A3A80028 */ sb $t0, 0x28($sp)
    /* 8003CD8C 000FC080 */ sll $t8, $t7, 2
    /* 8003CD90 030FC023 */ subu $t8, $t8, $t7
    /* 8003CD94 0018C100 */ sll $t8, $t8, 4
    /* 8003CD98 0302C821 */ addu $t9, $t8, $v0
    /* 8003CD9C AFB90024 */ sw $t9, 0x24($sp)
    /* 8003CDA0 27A50020 */ addiu $a1, $sp, 0x20
    /* 8003CDA4 24840014 */ addiu $a0, $a0, 0x14
    /* 8003CDA8 0C010A21 */ jal alEvtqPostEvent
    /* 8003CDAC 00003025 */ move $a2, $zero
    /* 8003CDB0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003CDB4 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003CDB8 03E00008 */ jr $ra
    /* 8003CDBC 00000000 */ nop
    /* 8003CDC0 00000000 */ nop
    /* 8003CDC4 00000000 */ nop
