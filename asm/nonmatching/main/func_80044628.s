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
glabel func_80044628
    /* 80044628 8C820018 */ lw $v0, 0x18($a0)
    /* 8004462C 241801E8 */ addiu $t8, $zero, 0x1E8
    /* 80044630 50400008 */ beql $v0, $zero, .L80044654
    /* 80044634 AC980024 */ sw $t8, 0x24($a0)
    /* 80044638 C4440008 */ lwc1 $f4, 0x8($v0)
    /* 8004463C 46046182 */ mul.s $f6, $f12, $f4
    /* 80044640 4600320D */ trunc.w.s $f8, $f6
    /* 80044644 440F4000 */ mfc1 $t7, $f8
    /* 80044648 03E00008 */ jr $ra
    /* 8004464C AC8F0024 */ sw $t7, 0x24($a0)
    /* 80044650 AC980024 */ sw $t8, 0x24($a0)
.L80044654:
    /* 80044654 03E00008 */ jr $ra
    /* 80044658 00000000 */ nop
