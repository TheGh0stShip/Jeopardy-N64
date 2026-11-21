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
glabel func_8003CC48
    /* 8003CC48 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003CC4C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003CC50 8C820040 */ lw $v0, 0x40($a0)
    /* 8003CC54 240E0004 */ addiu $t6, $zero, 0x4
    /* 8003CC58 A7AE0020 */ sh $t6, 0x20($sp)
    /* 8003CC5C 8C8F003C */ lw $t7, 0x3C($a0)
    /* 8003CC60 44856000 */ mtc1 $a1, $f12
    /* 8003CC64 27A50020 */ addiu $a1, $sp, 0x20
    /* 8003CC68 000FC080 */ sll $t8, $t7, 2
    /* 8003CC6C 030FC023 */ subu $t8, $t8, $t7
    /* 8003CC70 0018C100 */ sll $t8, $t8, 4
    /* 8003CC74 0302C821 */ addu $t9, $t8, $v0
    /* 8003CC78 AFB90024 */ sw $t9, 0x24($sp)
    /* 8003CC7C 24840014 */ addiu $a0, $a0, 0x14
    /* 8003CC80 00003025 */ move $a2, $zero
    /* 8003CC84 0C010A21 */ jal alEvtqPostEvent
    /* 8003CC88 E7AC0028 */ swc1 $f12, 0x28($sp)
    /* 8003CC8C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003CC90 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003CC94 03E00008 */ jr $ra
    /* 8003CC98 00000000 */ nop
    /* 8003CC9C 00000000 */ nop
    /* 8003CCA0 00000000 */ nop
    /* 8003CCA4 00000000 */ nop
