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
glabel func_800478E0
    /* 800478E0 27BDFFD0 */ addiu $sp, $sp, -0x30
    /* 800478E4 AFBF001C */ sw $ra, 0x1C($sp)
    /* 800478E8 AFB00018 */ sw $s0, 0x18($sp)
    /* 800478EC AFA40030 */ sw $a0, 0x30($sp)
    /* 800478F0 AFA0002C */ sw $zero, 0x2C($sp)
    /* 800478F4 84CE0000 */ lh $t6, 0x0($a2)
    /* 800478F8 00A08025 */ move $s0, $a1
    /* 800478FC A4AE0016 */ sh $t6, 0x16($a1)
    /* 80047900 90CF0004 */ lbu $t7, 0x4($a2)
    /* 80047904 ACA0000C */ sw $zero, 0xC($a1)
    /* 80047908 A4AF001A */ sh $t7, 0x1A($a1)
    /* 8004790C 84D80002 */ lh $t8, 0x2($a2)
    /* 80047910 A4A00014 */ sh $zero, 0x14($a1)
    /* 80047914 ACA00008 */ sw $zero, 0x8($a1)
    /* 80047918 A4B80018 */ sh $t8, 0x18($a1)
    /* 8004791C 84C60000 */ lh $a2, 0x0($a2)
    /* 80047920 8FA40030 */ lw $a0, 0x30($sp)
    /* 80047924 0C011DFE */ jal _allocatePVoice
    /* 80047928 27A5002C */ addiu $a1, $sp, 0x2C
    /* 8004792C 8FB9002C */ lw $t9, 0x2C($sp)
    /* 80047930 53200035 */ beql $t9, $zero, .L80047A08
    /* 80047934 8FA2002C */ lw $v0, 0x2C($sp)
    /* 80047938 1040002C */ beqz $v0, .L800479EC
    /* 8004793C 8F24000C */ lw $a0, 0xC($t9)
    /* 80047940 24080200 */ addiu $t0, $zero, 0x200
    /* 80047944 AF2800D8 */ sw $t0, 0xD8($t9)
    /* 80047948 8FA9002C */ lw $t1, 0x2C($sp)
    /* 8004794C 8D2A0008 */ lw $t2, 0x8($t1)
    /* 80047950 AD400008 */ sw $zero, 0x8($t2)
    /* 80047954 0C00F3B6 */ jal __allocParam
    /* 80047958 AFA40028 */ sw $a0, 0x28($sp)
    /* 8004795C 8FAB0030 */ lw $t3, 0x30($sp)
    /* 80047960 8FA40028 */ lw $a0, 0x28($sp)
    /* 80047964 240D000B */ addiu $t5, $zero, 0xB
    /* 80047968 8D6C001C */ lw $t4, 0x1C($t3)
    /* 8004796C A44D0008 */ sh $t5, 0x8($v0)
    /* 80047970 AC40000C */ sw $zero, 0xC($v0)
    /* 80047974 AC4C0004 */ sw $t4, 0x4($v0)
    /* 80047978 8FAE002C */ lw $t6, 0x2C($sp)
    /* 8004797C 24050003 */ addiu $a1, $zero, 0x3
    /* 80047980 00403025 */ move $a2, $v0
    /* 80047984 8DCF00D8 */ lw $t7, 0xD8($t6)
    /* 80047988 25F8FFC0 */ addiu $t8, $t7, -0x40
    /* 8004798C AC580010 */ sw $t8, 0x10($v0)
    /* 80047990 8C990008 */ lw $t9, 0x8($a0)
    /* 80047994 0320F809 */ jalr $t9
    /* 80047998 00000000 */ nop
    /* 8004799C 0C00F3B6 */ jal __allocParam
    /* 800479A0 00000000 */ nop
    /* 800479A4 8FA40028 */ lw $a0, 0x28($sp)
    /* 800479A8 10400012 */ beqz $v0, .L800479F4
    /* 800479AC 00403025 */ move $a2, $v0
    /* 800479B0 8FA80030 */ lw $t0, 0x30($sp)
    /* 800479B4 8FAA002C */ lw $t2, 0x2C($sp)
    /* 800479B8 240D000F */ addiu $t5, $zero, 0xF
    /* 800479BC 8D09001C */ lw $t1, 0x1C($t0)
    /* 800479C0 8D4B00D8 */ lw $t3, 0xD8($t2)
    /* 800479C4 A44D0008 */ sh $t5, 0x8($v0)
    /* 800479C8 AC400000 */ sw $zero, 0x0($v0)
    /* 800479CC 012B6021 */ addu $t4, $t1, $t3
    /* 800479D0 AC4C0004 */ sw $t4, 0x4($v0)
    /* 800479D4 8C990008 */ lw $t9, 0x8($a0)
    /* 800479D8 24050003 */ addiu $a1, $zero, 0x3
    /* 800479DC 0320F809 */ jalr $t9
    /* 800479E0 00000000 */ nop
    /* 800479E4 10000004 */ b .L800479F8
    /* 800479E8 8FAF002C */ lw $t7, 0x2C($sp)
.L800479EC:
    /* 800479EC 8FAE002C */ lw $t6, 0x2C($sp)
    /* 800479F0 ADC000D8 */ sw $zero, 0xD8($t6)
.L800479F4:
    /* 800479F4 8FAF002C */ lw $t7, 0x2C($sp)
.L800479F8:
    /* 800479F8 ADF00008 */ sw $s0, 0x8($t7)
    /* 800479FC 8FB8002C */ lw $t8, 0x2C($sp)
    /* 80047A00 AE180008 */ sw $t8, 0x8($s0)
    /* 80047A04 8FA2002C */ lw $v0, 0x2C($sp)
.L80047A08:
    /* 80047A08 8FBF001C */ lw $ra, 0x1C($sp)
    /* 80047A0C 8FB00018 */ lw $s0, 0x18($sp)
    /* 80047A10 0002402B */ sltu $t0, $zero, $v0
    /* 80047A14 01001025 */ move $v0, $t0
    /* 80047A18 03E00008 */ jr $ra
    /* 80047A1C 27BD0030 */ addiu $sp, $sp, 0x30
    /* 80047A20 00000000 */ nop
    /* 80047A24 00000000 */ nop
