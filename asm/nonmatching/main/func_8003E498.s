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
glabel func_8003E498
    /* 8003E498 00851021 */ addu $v0, $a0, $a1
    /* 8003E49C 904E0098 */ lbu $t6, 0x98($v0)
    /* 8003E4A0 00057880 */ sll $t7, $a1, 2
    /* 8003E4A4 008F3021 */ addu $a2, $a0, $t7
    /* 8003E4A8 51C0000D */ beql $t6, $zero, .L8003E4E0
    /* 8003E4AC 8CC70018 */ lw $a3, 0x18($a2)
    /* 8003E4B0 00057880 */ sll $t7, $a1, 2
    /* 8003E4B4 008F3021 */ addu $a2, $a0, $t7
    /* 8003E4B8 8CC70058 */ lw $a3, 0x58($a2)
    /* 8003E4BC 90E30000 */ lbu $v1, 0x0($a3)
    /* 8003E4C0 24F80001 */ addiu $t8, $a3, 0x1
    /* 8003E4C4 ACD80058 */ sw $t8, 0x58($a2)
    /* 8003E4C8 90590098 */ lbu $t9, 0x98($v0)
    /* 8003E4CC 272EFFFF */ addiu $t6, $t9, -0x1
    /* 8003E4D0 A04E0098 */ sb $t6, 0x98($v0)
    /* 8003E4D4 03E00008 */ jr $ra
    /* 8003E4D8 00601025 */ move $v0, $v1
    /* 8003E4DC 8CC70018 */ lw $a3, 0x18($a2)
.L8003E4E0:
    /* 8003E4E0 240800FE */ addiu $t0, $zero, 0xFE
    /* 8003E4E4 90E30000 */ lbu $v1, 0x0($a3)
    /* 8003E4E8 24F80001 */ addiu $t8, $a3, 0x1
    /* 8003E4EC ACD80018 */ sw $t8, 0x18($a2)
    /* 8003E4F0 15030018 */ bne $t0, $v1, .L8003E554
    /* 8003E4F4 00000000 */ nop
    /* 8003E4F8 93040000 */ lbu $a0, 0x0($t8)
    /* 8003E4FC 27190001 */ addiu $t9, $t8, 0x1
    /* 8003E500 ACD90018 */ sw $t9, 0x18($a2)
    /* 8003E504 11040013 */ beq $t0, $a0, .L8003E554
    /* 8003E508 272E0001 */ addiu $t6, $t9, 0x1
    /* 8003E50C 93230000 */ lbu $v1, 0x0($t9)
    /* 8003E510 ACCE0018 */ sw $t6, 0x18($a2)
    /* 8003E514 91C50000 */ lbu $a1, 0x0($t6)
    /* 8003E518 25CF0001 */ addiu $t7, $t6, 0x1
    /* 8003E51C 0004CA00 */ sll $t9, $a0, 8
    /* 8003E520 ACCF0018 */ sw $t7, 0x18($a2)
    /* 8003E524 03237021 */ addu $t6, $t9, $v1
    /* 8003E528 01EE7823 */ subu $t7, $t7, $t6
    /* 8003E52C 25F9FFFC */ addiu $t9, $t7, -0x4
    /* 8003E530 ACD90058 */ sw $t9, 0x58($a2)
    /* 8003E534 A0450098 */ sb $a1, 0x98($v0)
    /* 8003E538 8CC70058 */ lw $a3, 0x58($a2)
    /* 8003E53C 90E30000 */ lbu $v1, 0x0($a3)
    /* 8003E540 24F80001 */ addiu $t8, $a3, 0x1
    /* 8003E544 ACD80058 */ sw $t8, 0x58($a2)
    /* 8003E548 904E0098 */ lbu $t6, 0x98($v0)
    /* 8003E54C 25CFFFFF */ addiu $t7, $t6, -0x1
    /* 8003E550 A04F0098 */ sb $t7, 0x98($v0)
.L8003E554:
    /* 8003E554 03E00008 */ jr $ra
    /* 8003E558 00601025 */ move $v0, $v1
