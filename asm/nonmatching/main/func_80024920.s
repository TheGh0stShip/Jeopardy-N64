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
glabel func_80024920
    /* 80024920 27BDFFF8 */ addiu $sp, $sp, -0x8
    /* 80024924 AFBE0000 */ sw $fp, 0x0($sp)
    /* 80024928 03A0F021 */ addu $fp, $sp, $zero
    /* 8002492C AFC40008 */ sw $a0, 0x8($fp)
    /* 80024930 8FC20008 */ lw $v0, 0x8($fp)
    /* 80024934 90430000 */ lbu $v1, 0x0($v0)
    /* 80024938 2462FFD0 */ addiu $v0, $v1, -0x30
    /* 8002493C 00402021 */ addu $a0, $v0, $zero
    /* 80024940 00041880 */ sll $v1, $a0, 2
    /* 80024944 00621821 */ addu $v1, $v1, $v0
    /* 80024948 00032040 */ sll $a0, $v1, 1
    /* 8002494C 2482FFD0 */ addiu $v0, $a0, -0x30
    /* 80024950 8FC40008 */ lw $a0, 0x8($fp)
    /* 80024954 24830001 */ addiu $v1, $a0, 0x1
    /* 80024958 90640000 */ lbu $a0, 0x0($v1)
    /* 8002495C 00441821 */ addu $v1, $v0, $a0
    /* 80024960 00601021 */ addu $v0, $v1, $zero
    /* 80024964 0800925B */ j .L8002496C
    /* 80024968 00000000 */ nop
.L8002496C:
    /* 8002496C 03C0E821 */ addu $sp, $fp, $zero
    /* 80024970 8FBE0000 */ lw $fp, 0x0($sp)
    /* 80024974 27BD0008 */ addiu $sp, $sp, 0x8
    /* 80024978 03E00008 */ jr $ra
    /* 8002497C 00000000 */ nop
