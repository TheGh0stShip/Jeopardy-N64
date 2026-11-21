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
glabel func_800483D8
    /* 800483D8 40085000 */ mfc0 $t0, $10 /* EntryHi */
    /* 800483DC 2409001F */ addiu $t1, $zero, 0x1F
    /* 800483E0 40890000 */ mtc0 $t1, $0 /* Index */
    /* 800483E4 40802800 */ mtc0 $zero, $5 /* PageMask */
    /* 800483E8 240A0017 */ addiu $t2, $zero, 0x17
    /* 800483EC 3C09C000 */ lui $t1, 0xC000
    /* 800483F0 40895000 */ mtc0 $t1, $10 /* EntryHi */
    /* 800483F4 3C098000 */ lui $t1, 0x8000
    /* 800483F8 00095982 */ srl $t3, $t1, 6
    /* 800483FC 016A5825 */ or $t3, $t3, $t2
    /* 80048400 408B1000 */ mtc0 $t3, $2 /* EntryLo0 */
    /* 80048404 24090001 */ addiu $t1, $zero, 0x1
    /* 80048408 40891800 */ mtc0 $t1, $3 /* EntryLo1 */
    /* 8004840C 00000000 */ nop
    /* 80048410 42000002 */ tlbwi
    /* 80048414 00000000 */ nop
    /* 80048418 00000000 */ nop
    /* 8004841C 00000000 */ nop
    /* 80048420 00000000 */ nop
    /* 80048424 40885000 */ mtc0 $t0, $10 /* EntryHi */
    /* 80048428 03E00008 */ jr $ra
    /* 8004842C 00000000 */ nop
