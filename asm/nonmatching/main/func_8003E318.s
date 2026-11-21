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
glabel func_8003E318
    /* 8003E318 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8003E31C AFBF0014 */ sw $ra, 0x14($sp)
    /* 8003E320 240E000E */ addiu $t6, $zero, 0xE
    /* 8003E324 AFA5001C */ sw $a1, 0x1C($sp)
    /* 8003E328 A7AE0018 */ sh $t6, 0x18($sp)
    /* 8003E32C 27A50018 */ addiu $a1, $sp, 0x18
    /* 8003E330 24840048 */ addiu $a0, $a0, 0x48
    /* 8003E334 0C010A21 */ jal alEvtqPostEvent
    /* 8003E338 00003025 */ move $a2, $zero
    /* 8003E33C 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8003E340 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8003E344 03E00008 */ jr $ra
    /* 8003E348 00000000 */ nop
    /* 8003E34C 00000000 */ nop
    /* 8003E350 00000000 */ nop
    /* 8003E354 00000000 */ nop
