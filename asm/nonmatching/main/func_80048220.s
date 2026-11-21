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
glabel func_80048220
    /* 80048220 87AF0012 */ lh $t7, 0x12($sp)
    /* 80048224 AFA60008 */ sw $a2, 0x8($sp)
    /* 80048228 AFA7000C */ sw $a3, 0xC($sp)
    /* 8004822C DFAE0008 */ ld $t6, 0x8($sp)
    /* 80048230 01E0C025 */ move $t8, $t7
    /* 80048234 0300C825 */ move $t9, $t8
    /* 80048238 01D9001F */ ddivu $zero, $t6, $t9
    /* 8004823C 17200002 */ bnez $t9, .L80048248
    /* 80048240 00000000 */ nop
    /* 80048244 0007000D */ break 7
.L80048248:
    /* 80048248 00004012 */ mflo $t0
    /* 8004824C FC880000 */ sd $t0, 0x0($a0)
    /* 80048250 87AA0012 */ lh $t2, 0x12($sp)
    /* 80048254 DFA90008 */ ld $t1, 0x8($sp)
    /* 80048258 01405825 */ move $t3, $t2
    /* 8004825C 01606025 */ move $t4, $t3
    /* 80048260 012C001F */ ddivu $zero, $t1, $t4
    /* 80048264 15800002 */ bnez $t4, .L80048270
    /* 80048268 00000000 */ nop
    /* 8004826C 0007000D */ break 7
.L80048270:
    /* 80048270 00006810 */ mfhi $t5
    /* 80048274 FCAD0000 */ sd $t5, 0x0($a1)
    /* 80048278 03E00008 */ jr $ra
    /* 8004827C 00000000 */ nop
