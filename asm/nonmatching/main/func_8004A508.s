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
glabel func_8004A508
    /* 8004A508 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 8004A50C AFA40030 */ sw $a0, 0x30($sp)
    /* 8004A510 AFBF0014 */ sw $ra, 0x14($sp)
    /* 8004A514 AFA60038 */ sw $a2, 0x38($sp)
    /* 8004A518 AFA7003C */ sw $a3, 0x3C($sp)
    /* 8004A51C 00C02025 */ move $a0, $a2
    /* 8004A520 00E02825 */ move $a1, $a3
    /* 8004A524 8FA70044 */ lw $a3, 0x44($sp)
    /* 8004A528 0C012065 */ jal __ll_div
    /* 8004A52C 8FA60040 */ lw $a2, 0x40($sp)
    /* 8004A530 AFA20020 */ sw $v0, 0x20($sp)
    /* 8004A534 AFA30024 */ sw $v1, 0x24($sp)
    /* 8004A538 8FA40040 */ lw $a0, 0x40($sp)
    /* 8004A53C 8FA50044 */ lw $a1, 0x44($sp)
    /* 8004A540 00403025 */ move $a2, $v0
    /* 8004A544 0C01207C */ jal __ll_mul
    /* 8004A548 00603825 */ move $a3, $v1
    /* 8004A54C 8FAE0038 */ lw $t6, 0x38($sp)
    /* 8004A550 8FAF003C */ lw $t7, 0x3C($sp)
    /* 8004A554 8FA80020 */ lw $t0, 0x20($sp)
    /* 8004A558 01C2C023 */ subu $t8, $t6, $v0
    /* 8004A55C 01E3082B */ sltu $at, $t7, $v1
    /* 8004A560 0301C023 */ subu $t8, $t8, $at
    /* 8004A564 01E3C823 */ subu $t9, $t7, $v1
    /* 8004A568 AFB9002C */ sw $t9, 0x2C($sp)
    /* 8004A56C AFB80028 */ sw $t8, 0x28($sp)
    /* 8004A570 1D000017 */ bgtz $t0, .L8004A5D0
    /* 8004A574 8FA90024 */ lw $t1, 0x24($sp)
    /* 8004A578 05000003 */ bltz $t0, .L8004A588
    /* 8004A57C 00000000 */ nop
    /* 8004A580 10000014 */ b .L8004A5D4
    /* 8004A584 27A80020 */ addiu $t0, $sp, 0x20
.L8004A588:
    /* 8004A588 07020012 */ bltzl $t8, .L8004A5D4
    /* 8004A58C 27A80020 */ addiu $t0, $sp, 0x20
    /* 8004A590 1F000003 */ bgtz $t8, .L8004A5A0
    /* 8004A594 252B0001 */ addiu $t3, $t1, 0x1
    /* 8004A598 5320000E */ beql $t9, $zero, .L8004A5D4
    /* 8004A59C 27A80020 */ addiu $t0, $sp, 0x20
.L8004A5A0:
    /* 8004A5A0 8FAC0040 */ lw $t4, 0x40($sp)
    /* 8004A5A4 8FAD0044 */ lw $t5, 0x44($sp)
    /* 8004A5A8 2D610001 */ sltiu $at, $t3, 0x1
    /* 8004A5AC 01015021 */ addu $t2, $t0, $at
    /* 8004A5B0 030C7023 */ subu $t6, $t8, $t4
    /* 8004A5B4 032D082B */ sltu $at, $t9, $t5
    /* 8004A5B8 01C17023 */ subu $t6, $t6, $at
    /* 8004A5BC 032D7823 */ subu $t7, $t9, $t5
    /* 8004A5C0 AFAA0020 */ sw $t2, 0x20($sp)
    /* 8004A5C4 AFAB0024 */ sw $t3, 0x24($sp)
    /* 8004A5C8 AFAF002C */ sw $t7, 0x2C($sp)
    /* 8004A5CC AFAE0028 */ sw $t6, 0x28($sp)
.L8004A5D0:
    /* 8004A5D0 27A80020 */ addiu $t0, $sp, 0x20
.L8004A5D4:
    /* 8004A5D4 8FA20030 */ lw $v0, 0x30($sp)
    /* 8004A5D8 8D010000 */ lw $at, 0x0($t0)
    /* 8004A5DC AC410000 */ sw $at, 0x0($v0)
    /* 8004A5E0 8D0B0004 */ lw $t3, 0x4($t0)
    /* 8004A5E4 AC4B0004 */ sw $t3, 0x4($v0)
    /* 8004A5E8 8D010008 */ lw $at, 0x8($t0)
    /* 8004A5EC AC410008 */ sw $at, 0x8($v0)
    /* 8004A5F0 8D0B000C */ lw $t3, 0xC($t0)
    /* 8004A5F4 AC4B000C */ sw $t3, 0xC($v0)
    /* 8004A5F8 8FBF0014 */ lw $ra, 0x14($sp)
    /* 8004A5FC 27BD0030 */ addiu $sp, $sp, 0x30
    /* 8004A600 03E00008 */ jr $ra
    /* 8004A604 00000000 */ nop
