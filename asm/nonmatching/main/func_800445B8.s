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
glabel func_800445B8
    /* 800445B8 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 800445BC AFBF0014 */ sw $ra, 0x14($sp)
    /* 800445C0 8C8E002C */ lw $t6, 0x2C($a0)
    /* 800445C4 24010001 */ addiu $at, $zero, 0x1
    /* 800445C8 00803825 */ move $a3, $a0
    /* 800445CC 55C10013 */ bnel $t6, $at, .L8004461C
    /* 800445D0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800445D4 8C840018 */ lw $a0, 0x18($a0)
    /* 800445D8 27A5001C */ addiu $a1, $sp, 0x1C
    /* 800445DC 5080000F */ beql $a0, $zero, .L8004461C
    /* 800445E0 8FBF0014 */ lw $ra, 0x14($sp)
    /* 800445E4 0C00FB29 */ jal __alCSeqNextDelta
    /* 800445E8 AFA70030 */ sw $a3, 0x30($sp)
    /* 800445EC 1040000A */ beqz $v0, .L80044618
    /* 800445F0 8FA70030 */ lw $a3, 0x30($sp)
    /* 800445F4 A7A00020 */ sh $zero, 0x20($sp)
    /* 800445F8 8CEF0024 */ lw $t7, 0x24($a3)
    /* 800445FC 8FB8001C */ lw $t8, 0x1C($sp)
    /* 80044600 24E40048 */ addiu $a0, $a3, 0x48
    /* 80044604 27A50020 */ addiu $a1, $sp, 0x20
    /* 80044608 01F80019 */ multu $t7, $t8
    /* 8004460C 00003012 */ mflo $a2
    /* 80044610 0C010A21 */ jal alEvtqPostEvent
    /* 80044614 00000000 */ nop
.L80044618:
    /* 80044618 8FBF0014 */ lw $ra, 0x14($sp)
.L8004461C:
    /* 8004461C 27BD0030 */ addiu $sp, $sp, 0x30
    /* 80044620 03E00008 */ jr $ra
    /* 80044624 00000000 */ nop
