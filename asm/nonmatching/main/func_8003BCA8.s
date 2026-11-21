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
glabel func_8003BCA8
    /* 8003BCA8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003BCAC 27A20018 */ addiu $v0, $sp, 0x18
    /* 8003BCB0 AFBF0020 */ sw $ra, 0x20($sp)
    /* 8003BCB4 0C00ED9A */ jal func_8003B668
    /* 8003BCB8 AFA20010 */ sw $v0, 0x10($sp)
    /* 8003BCBC 8FA20018 */ lw $v0, 0x18($sp)
    /* 8003BCC0 8FA3001C */ lw $v1, 0x1C($sp)
    /* 8003BCC4 8FBF0020 */ lw $ra, 0x20($sp)
    /* 8003BCC8 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003BCCC 03E00008 */ jr $ra
    /* 8003BCD0 00000000 */ nop
