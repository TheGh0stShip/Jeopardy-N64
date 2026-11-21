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
glabel func_8004D19C
    /* 8004D19C 27BDFFB8 */ addiu $sp, $sp, -0x48
    /* 8004D1A0 AFBF0024 */ sw $ra, 0x24($sp)
    /* 8004D1A4 AFB00020 */ sw $s0, 0x20($sp)
    /* 8004D1A8 8CAE0000 */ lw $t6, 0x0($a1)
    /* 8004D1AC 240FFFFF */ addiu $t7, $zero, -0x1
    /* 8004D1B0 24183E80 */ addiu $t8, $zero, 0x3E80
    /* 8004D1B4 00A04025 */ move $t0, $a1
    /* 8004D1B8 AC8F003C */ sw $t7, 0x3C($a0)
    /* 8004D1BC AC980048 */ sw $t8, 0x48($a0)
    /* 8004D1C0 AC8E0044 */ sw $t6, 0x44($a0)
    /* 8004D1C4 8D190000 */ lw $t9, 0x0($t0)
    /* 8004D1C8 00808025 */ move $s0, $a0
    /* 8004D1CC 8D060008 */ lw $a2, 0x8($t0)
    /* 8004D1D0 00194880 */ sll $t1, $t9, 2
    /* 8004D1D4 01394823 */ subu $t1, $t1, $t9
    /* 8004D1D8 00094900 */ sll $t1, $t1, 4
    /* 8004D1DC AFA90010 */ sw $t1, 0x10($sp)
    /* 8004D1E0 AFA8004C */ sw $t0, 0x4C($sp)
    /* 8004D1E4 00002025 */ move $a0, $zero
    /* 8004D1E8 00002825 */ move $a1, $zero
    /* 8004D1EC 0C00F56A */ jal alHeapDBAlloc
    /* 8004D1F0 24070001 */ addiu $a3, $zero, 0x1
    /* 8004D1F4 8FA8004C */ lw $t0, 0x4C($sp)
    /* 8004D1F8 AE020040 */ sw $v0, 0x40($s0)
    /* 8004D1FC 00001825 */ move $v1, $zero
    /* 8004D200 8D0A0000 */ lw $t2, 0x0($t0)
    /* 8004D204 00402025 */ move $a0, $v0
    /* 8004D208 00002825 */ move $a1, $zero
    /* 8004D20C 11400008 */ beqz $t2, .L8004D230
    /* 8004D210 24070001 */ addiu $a3, $zero, 0x1
    /* 8004D214 AC80001C */ sw $zero, 0x1C($a0)
.L8004D218:
    /* 8004D218 8D0B0000 */ lw $t3, 0x0($t0)
    /* 8004D21C 24630001 */ addiu $v1, $v1, 0x1
    /* 8004D220 24840030 */ addiu $a0, $a0, 0x30
    /* 8004D224 006B082B */ sltu $at, $v1, $t3
    /* 8004D228 5420FFFB */ bnel $at, $zero, .L8004D218
    /* 8004D22C AC80001C */ sw $zero, 0x1C($a0)
.L8004D230:
    /* 8004D230 8D0C0004 */ lw $t4, 0x4($t0)
    /* 8004D234 8D060008 */ lw $a2, 0x8($t0)
    /* 8004D238 AFA8004C */ sw $t0, 0x4C($sp)
    /* 8004D23C 000C68C0 */ sll $t5, $t4, 3
    /* 8004D240 01AC6823 */ subu $t5, $t5, $t4
    /* 8004D244 000D6880 */ sll $t5, $t5, 2
    /* 8004D248 AFAD0010 */ sw $t5, 0x10($sp)
    /* 8004D24C 0C00F56A */ jal alHeapDBAlloc
    /* 8004D250 00002025 */ move $a0, $zero
    /* 8004D254 8FA8004C */ lw $t0, 0x4C($sp)
    /* 8004D258 26040014 */ addiu $a0, $s0, 0x14
    /* 8004D25C 00402825 */ move $a1, $v0
    /* 8004D260 8D060004 */ lw $a2, 0x4($t0)
    /* 8004D264 0C010A8D */ jal alEvtqNew
    /* 8004D268 AFA40028 */ sw $a0, 0x28($sp)
    /* 8004D26C 3C0E8007 */ lui $t6, %hi(D_80071FF8)
    /* 8004D270 8DC41FF8 */ lw $a0, %lo(D_80071FF8)($t6)
    /* 8004D274 3C0F8005 */ lui $t7, %hi(func_8004CC54)
    /* 8004D278 25EFCC54 */ addiu $t7, $t7, %lo(func_8004CC54)
    /* 8004D27C AE000000 */ sw $zero, 0x0($s0)
    /* 8004D280 AE0F0008 */ sw $t7, 0x8($s0)
    /* 8004D284 AE100004 */ sw $s0, 0x4($s0)
    /* 8004D288 02002825 */ move $a1, $s0
    /* 8004D28C 0C0122F2 */ jal alSynAddPlayer
    /* 8004D290 AE040038 */ sw $a0, 0x38($s0)
    /* 8004D294 24180005 */ addiu $t8, $zero, 0x5
    /* 8004D298 A7B80034 */ sh $t8, 0x34($sp)
    /* 8004D29C 8E060048 */ lw $a2, 0x48($s0)
    /* 8004D2A0 8FA40028 */ lw $a0, 0x28($sp)
    /* 8004D2A4 0C010A21 */ jal alEvtqPostEvent
    /* 8004D2A8 27A50034 */ addiu $a1, $sp, 0x34
    /* 8004D2AC 8FA40028 */ lw $a0, 0x28($sp)
    /* 8004D2B0 0C010A6A */ jal alEvtqNextEvent
    /* 8004D2B4 26050028 */ addiu $a1, $s0, 0x28
    /* 8004D2B8 AE02004C */ sw $v0, 0x4C($s0)
    /* 8004D2BC 8FBF0024 */ lw $ra, 0x24($sp)
    /* 8004D2C0 8FB00020 */ lw $s0, 0x20($sp)
    /* 8004D2C4 27BD0048 */ addiu $sp, $sp, 0x48
    /* 8004D2C8 03E00008 */ jr $ra
    /* 8004D2CC 00000000 */ nop
    /* 8004D2D0 00000000 */ nop
    /* 8004D2D4 00000000 */ nop
