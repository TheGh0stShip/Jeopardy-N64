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
glabel func_8003CCA8
    /* 8003CCA8 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8003CCAC AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003CCB0 AFA50034 */ sw $a1, 0x34($sp)
    /* 8003CCB4 8C820040 */ lw $v0, 0x40($a0)
    /* 8003CCB8 240F0003 */ addiu $t7, $zero, 0x3
    /* 8003CCBC A7AF0020 */ sh $t7, 0x20($sp)
    /* 8003CCC0 8C98003C */ lw $t8, 0x3C($a0)
    /* 8003CCC4 00A07025 */ move $t6, $a1
    /* 8003CCC8 A7AE0028 */ sh $t6, 0x28($sp)
    /* 8003CCCC 0018C880 */ sll $t9, $t8, 2
    /* 8003CCD0 0338C823 */ subu $t9, $t9, $t8
    /* 8003CCD4 0019C900 */ sll $t9, $t9, 4
    /* 8003CCD8 03224821 */ addu $t1, $t9, $v0
    /* 8003CCDC AFA90024 */ sw $t1, 0x24($sp)
    /* 8003CCE0 27A50020 */ addiu $a1, $sp, 0x20
    /* 8003CCE4 24840014 */ addiu $a0, $a0, 0x14
    /* 8003CCE8 0C010A21 */ jal alEvtqPostEvent
    /* 8003CCEC 00003025 */ move $a2, $zero
    /* 8003CCF0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003CCF4 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8003CCF8 03E00008 */ jr $ra
    /* 8003CCFC 00000000 */ nop
    /* 8003CD00 00000000 */ nop
    /* 8003CD04 00000000 */ nop
