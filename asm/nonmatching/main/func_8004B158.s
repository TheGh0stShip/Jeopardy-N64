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
glabel func_8004B158
    /* 8004B158 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004B15C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004B160 1080000C */ beqz $a0, .L8004B194
    /* 8004B164 AFA40028 */ sw $a0, 0x28($sp)
    /* 8004B168 0C013072 */ jal osViGetCurrentFramebuffer
    /* 8004B16C 00000000 */ nop
    /* 8004B170 0C0130D2 */ jal osViGetNextFramebuffer
    /* 8004B174 AFA20018 */ sw $v0, 0x18($sp)
    /* 8004B178 8FAF0018 */ lw $t7, 0x18($sp)
    /* 8004B17C 104F0003 */ beq $v0, $t7, .L8004B18C
    /* 8004B180 00000000 */ nop
    /* 8004B184 10000004 */ b .L8004B198
    /* 8004B188 00001025 */ move $v0, $zero
.L8004B18C:
    /* 8004B18C 10000002 */ b .L8004B198
    /* 8004B190 8FA20028 */ lw $v0, 0x28($sp)
.L8004B194:
    /* 8004B194 00001025 */ move $v0, $zero
.L8004B198:
    /* 8004B198 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004B19C 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8004B1A0 03E00008 */ jr $ra
    /* 8004B1A4 00000000 */ nop
