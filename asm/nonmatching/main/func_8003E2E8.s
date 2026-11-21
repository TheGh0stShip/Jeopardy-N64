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
glabel func_8003E2E8
    /* 8003E2E8 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003E2EC AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003E2F0 240E000F */ addiu $t6, $zero, 0xF
    /* 8003E2F4 A7AE0018 */ sh $t6, 0x18($sp)
    /* 8003E2F8 27A50018 */ addiu $a1, $sp, 0x18
    /* 8003E2FC 24840048 */ addiu $a0, $a0, 0x48
    /* 8003E300 0C010A21 */ jal alEvtqPostEvent
    /* 8003E304 00003025 */ move $a2, $zero
    /* 8003E308 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003E30C 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003E310 03E00008 */ jr $ra
    /* 8003E314 00000000 */ nop
