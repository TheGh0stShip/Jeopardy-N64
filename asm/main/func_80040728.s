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
glabel func_80040728
    /* 80040728 0C0105EE */ jal osDestroyThread
    /* 8004072C 00002025 */ move $a0, $zero
