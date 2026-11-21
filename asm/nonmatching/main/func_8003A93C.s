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
glabel func_8003A93C
    /* 8003A93C 90820000 */ lbu $v0, 0x0($a0)
    /* 8003A940 10400004 */ beqz $v0, .L8003A954
    /* 8003A944 24830001 */ addiu $v1, $a0, 0x1
.L8003A948:
    /* 8003A948 90620000 */ lbu $v0, 0x0($v1)
    /* 8003A94C 1440FFFE */ bnez $v0, .L8003A948
    /* 8003A950 24630001 */ addiu $v1, $v1, 0x1
.L8003A954:
    /* 8003A954 03E00008 */ jr $ra
    /* 8003A958 00641023 */ subu $v0, $v1, $a0
