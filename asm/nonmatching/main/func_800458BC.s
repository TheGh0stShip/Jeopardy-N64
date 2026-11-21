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
glabel func_800458BC
    /* 800458BC 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 800458C0 AFB20020 */ sw $s2, 0x20($sp)
    /* 800458C4 00809025 */ move $s2, $a0
    /* 800458C8 AFBF0024 */ sw $ra, 0x24($sp)
    /* 800458CC AFB1001C */ sw $s1, 0x1C($sp)
    /* 800458D0 AFB00018 */ sw $s0, 0x18($sp)
    /* 800458D4 AFA5002C */ sw $a1, 0x2C($sp)
    /* 800458D8 00A01025 */ move $v0, $a1
    /* 800458DC 8C51000C */ lw $s1, 0xC($v0)
.L800458E0:
    /* 800458E0 24420004 */ addiu $v0, $v0, 0x4
    /* 800458E4 5220FFFE */ beql $s1, $zero, .L800458E0
    /* 800458E8 8C51000C */ lw $s1, 0xC($v0)
    /* 800458EC 924E0034 */ lbu $t6, 0x34($s2)
    /* 800458F0 00008025 */ move $s0, $zero
    /* 800458F4 19C0000C */ blez $t6, .L80045928
    /* 800458F8 02402025 */ move $a0, $s2
.L800458FC:
    /* 800458FC 0C01160F */ jal __resetPerfChanState
    /* 80045900 02002825 */ move $a1, $s0
    /* 80045904 02402025 */ move $a0, $s2
    /* 80045908 02202825 */ move $a1, $s1
    /* 8004590C 0C0115FA */ jal __setInstChanState
    /* 80045910 02003025 */ move $a2, $s0
    /* 80045914 924F0034 */ lbu $t7, 0x34($s2)
    /* 80045918 26100001 */ addiu $s0, $s0, 0x1
    /* 8004591C 020F082A */ slt $at, $s0, $t7
    /* 80045920 5420FFF6 */ bnel $at, $zero, .L800458FC
    /* 80045924 02402025 */ move $a0, $s2
.L80045928:
    /* 80045928 8FB8002C */ lw $t8, 0x2C($sp)
    /* 8004592C 02402025 */ move $a0, $s2
    /* 80045930 8F190008 */ lw $t9, 0x8($t8)
    /* 80045934 53200009 */ beql $t9, $zero, .L8004595C
    /* 80045938 8FBF0024 */ lw $ra, 0x24($sp)
    /* 8004593C 0C01160F */ jal __resetPerfChanState
    /* 80045940 02002825 */ move $a1, $s0
    /* 80045944 8FA8002C */ lw $t0, 0x2C($sp)
    /* 80045948 02402025 */ move $a0, $s2
    /* 8004594C 24060009 */ addiu $a2, $zero, 0x9
    /* 80045950 0C0115FA */ jal __setInstChanState
    /* 80045954 8D050008 */ lw $a1, 0x8($t0)
    /* 80045958 8FBF0024 */ lw $ra, 0x24($sp)
.L8004595C:
    /* 8004595C 8FB00018 */ lw $s0, 0x18($sp)
    /* 80045960 8FB1001C */ lw $s1, 0x1C($sp)
    /* 80045964 8FB20020 */ lw $s2, 0x20($sp)
    /* 80045968 03E00008 */ jr $ra
    /* 8004596C 27BD0028 */ addiu $sp, $sp, 0x28
