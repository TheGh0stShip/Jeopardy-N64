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
glabel func_80045C68
    /* 80045C68 27BDFFC8 */ addiu $sp, $sp, -0x38
    /* 80045C6C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80045C70 8C8E002C */ lw $t6, 0x2C($a0)
    /* 80045C74 24010001 */ addiu $at, $zero, 0x1
    /* 80045C78 00803825 */ move $a3, $a0
    /* 80045C7C 15C1002D */ bne $t6, $at, .L80045D34
    /* 80045C80 8C860018 */ lw $a2, 0x18($a0)
    /* 80045C84 10C0002B */ beqz $a2, .L80045D34
    /* 80045C88 00C02025 */ move $a0, $a2
    /* 80045C8C 27A50024 */ addiu $a1, $sp, 0x24
    /* 80045C90 AFA60020 */ sw $a2, 0x20($sp)
    /* 80045C94 0C011D66 */ jal __alSeqNextDelta
    /* 80045C98 AFA70038 */ sw $a3, 0x38($sp)
    /* 80045C9C 8FA60020 */ lw $a2, 0x20($sp)
    /* 80045CA0 10400024 */ beqz $v0, .L80045D34
    /* 80045CA4 8FA70038 */ lw $a3, 0x38($sp)
    /* 80045CA8 8CEF0084 */ lw $t7, 0x84($a3)
    /* 80045CAC 00C02025 */ move $a0, $a2
    /* 80045CB0 51E00018 */ beql $t7, $zero, .L80045D14
    /* 80045CB4 A7A00028 */ sh $zero, 0x28($sp)
    /* 80045CB8 AFA60020 */ sw $a2, 0x20($sp)
    /* 80045CBC 0C011C58 */ jal alSeqGetTicks
    /* 80045CC0 AFA70038 */ sw $a3, 0x38($sp)
    /* 80045CC4 8FA70038 */ lw $a3, 0x38($sp)
    /* 80045CC8 8FB80024 */ lw $t8, 0x24($sp)
    /* 80045CCC 8FA60020 */ lw $a2, 0x20($sp)
    /* 80045CD0 8CE80080 */ lw $t0, 0x80($a3)
    /* 80045CD4 0058C821 */ addu $t9, $v0, $t8
    /* 80045CD8 00C02025 */ move $a0, $a2
    /* 80045CDC 8D090008 */ lw $t1, 0x8($t0)
    /* 80045CE0 0329082A */ slt $at, $t9, $t1
    /* 80045CE4 5420000B */ bnel $at, $zero, .L80045D14
    /* 80045CE8 A7A00028 */ sh $zero, 0x28($sp)
    /* 80045CEC 8CE5007C */ lw $a1, 0x7C($a3)
    /* 80045CF0 0C011C51 */ jal func_80047144
    /* 80045CF4 AFA70038 */ sw $a3, 0x38($sp)
    /* 80045CF8 8FA70038 */ lw $a3, 0x38($sp)
    /* 80045CFC 2401FFFF */ addiu $at, $zero, -0x1
    /* 80045D00 8CE20084 */ lw $v0, 0x84($a3)
    /* 80045D04 10410002 */ beq $v0, $at, .L80045D10
    /* 80045D08 244AFFFF */ addiu $t2, $v0, -0x1
    /* 80045D0C ACEA0084 */ sw $t2, 0x84($a3)
.L80045D10:
    /* 80045D10 A7A00028 */ sh $zero, 0x28($sp)
.L80045D14:
    /* 80045D14 8CEB0024 */ lw $t3, 0x24($a3)
    /* 80045D18 8FAC0024 */ lw $t4, 0x24($sp)
    /* 80045D1C 24E40048 */ addiu $a0, $a3, 0x48
    /* 80045D20 27A50028 */ addiu $a1, $sp, 0x28
    /* 80045D24 016C0019 */ multu $t3, $t4
    /* 80045D28 00003012 */ mflo $a2
    /* 80045D2C 0C010A21 */ jal alEvtqPostEvent
    /* 80045D30 00000000 */ nop
.L80045D34:
    /* 80045D34 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80045D38 27BD0038 */ addiu $sp, $sp, 0x38
    /* 80045D3C 03E00008 */ jr $ra
    /* 80045D40 00000000 */ nop
