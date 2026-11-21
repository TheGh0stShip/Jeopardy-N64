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
glabel func_8003D1A8
    /* 8003D1A8 27BDFF88 */ addiu $sp, $sp, -0x78
    /* 8003D1AC AFBF0044 */ sw $ra, 0x44($sp)
    /* 8003D1B0 AFBE0040 */ sw $fp, 0x40($sp)
    /* 8003D1B4 AFB7003C */ sw $s7, 0x3C($sp)
    /* 8003D1B8 AFB60038 */ sw $s6, 0x38($sp)
    /* 8003D1BC AFB50034 */ sw $s5, 0x34($sp)
    /* 8003D1C0 AFB40030 */ sw $s4, 0x30($sp)
    /* 8003D1C4 AFB3002C */ sw $s3, 0x2C($sp)
    /* 8003D1C8 AFB20028 */ sw $s2, 0x28($sp)
    /* 8003D1CC AFB10024 */ sw $s1, 0x24($sp)
    /* 8003D1D0 AFB00020 */ sw $s0, 0x20($sp)
    /* 8003D1D4 8CB70014 */ lw $s7, 0x14($a1)
    /* 8003D1D8 AC800000 */ sw $zero, 0x0($a0)
    /* 8003D1DC 8CAE0004 */ lw $t6, 0x4($a1)
    /* 8003D1E0 AC800020 */ sw $zero, 0x20($a0)
    /* 8003D1E4 AC80001C */ sw $zero, 0x1C($a0)
    /* 8003D1E8 AC8E003C */ sw $t6, 0x3C($a0)
    /* 8003D1EC 8CAF0018 */ lw $t7, 0x18($a1)
    /* 8003D1F0 241800A0 */ addiu $t8, $zero, 0xA0
    /* 8003D1F4 AC980048 */ sw $t8, 0x48($a0)
    /* 8003D1F8 AC8F0044 */ sw $t7, 0x44($a0)
    /* 8003D1FC 8CB90010 */ lw $t9, 0x10($a1)
    /* 8003D200 0080B025 */ move $s6, $a0
    /* 8003D204 00A0F025 */ move $fp, $a1
    /* 8003D208 2408001C */ addiu $t0, $zero, 0x1C
    /* 8003D20C AC990024 */ sw $t9, 0x24($a0)
    /* 8003D210 AFA80010 */ sw $t0, 0x10($sp)
    /* 8003D214 00002025 */ move $a0, $zero
    /* 8003D218 00002825 */ move $a1, $zero
    /* 8003D21C 24070001 */ addiu $a3, $zero, 0x1
    /* 8003D220 0C00F56A */ jal alHeapDBAlloc
    /* 8003D224 02E03025 */ move $a2, $s7
    /* 8003D228 AFA2005C */ sw $v0, 0x5C($sp)
    /* 8003D22C 0C00FCC2 */ jal alSaveNew
    /* 8003D230 00402025 */ move $a0, $v0
    /* 8003D234 8FA9005C */ lw $t1, 0x5C($sp)
    /* 8003D238 240A004C */ addiu $t2, $zero, 0x4C
    /* 8003D23C 00002025 */ move $a0, $zero
    /* 8003D240 AEC90038 */ sw $t1, 0x38($s6)
    /* 8003D244 AFAA0010 */ sw $t2, 0x10($sp)
    /* 8003D248 00002825 */ move $a1, $zero
    /* 8003D24C 02E03025 */ move $a2, $s7
    /* 8003D250 0C00F56A */ jal alHeapDBAlloc
    /* 8003D254 24070001 */ addiu $a3, $zero, 0x1
    /* 8003D258 240B0001 */ addiu $t3, $zero, 0x1
    /* 8003D25C AEC20034 */ sw $v0, 0x34($s6)
    /* 8003D260 AECB0040 */ sw $t3, 0x40($s6)
    /* 8003D264 8FC70004 */ lw $a3, 0x4($fp)
    /* 8003D268 240C0004 */ addiu $t4, $zero, 0x4
    /* 8003D26C AFAC0010 */ sw $t4, 0x10($sp)
    /* 8003D270 00002025 */ move $a0, $zero
    /* 8003D274 00002825 */ move $a1, $zero
    /* 8003D278 0C00F56A */ jal alHeapDBAlloc
    /* 8003D27C 02E03025 */ move $a2, $s7
    /* 8003D280 8EC40034 */ lw $a0, 0x34($s6)
    /* 8003D284 00402825 */ move $a1, $v0
    /* 8003D288 0C00FCE8 */ jal alAuxBusNew
    /* 8003D28C 8FC60004 */ lw $a2, 0x4($fp)
    /* 8003D290 240D0020 */ addiu $t5, $zero, 0x20
    /* 8003D294 AFAD0010 */ sw $t5, 0x10($sp)
    /* 8003D298 00002025 */ move $a0, $zero
    /* 8003D29C 00002825 */ move $a1, $zero
    /* 8003D2A0 02E03025 */ move $a2, $s7
    /* 8003D2A4 0C00F56A */ jal alHeapDBAlloc
    /* 8003D2A8 24070001 */ addiu $a3, $zero, 0x1
    /* 8003D2AC AEC20030 */ sw $v0, 0x30($s6)
    /* 8003D2B0 8FC70004 */ lw $a3, 0x4($fp)
    /* 8003D2B4 240E0004 */ addiu $t6, $zero, 0x4
    /* 8003D2B8 AFAE0010 */ sw $t6, 0x10($sp)
    /* 8003D2BC 00002025 */ move $a0, $zero
    /* 8003D2C0 00002825 */ move $a1, $zero
    /* 8003D2C4 0C00F56A */ jal alHeapDBAlloc
    /* 8003D2C8 02E03025 */ move $a2, $s7
    /* 8003D2CC 8EC40030 */ lw $a0, 0x30($s6)
    /* 8003D2D0 00402825 */ move $a1, $v0
    /* 8003D2D4 0C00FCD3 */ jal alMainBusNew
    /* 8003D2D8 8FC60004 */ lw $a2, 0x4($fp)
    /* 8003D2DC 93CF001C */ lbu $t7, 0x1C($fp)
    /* 8003D2E0 02C02025 */ move $a0, $s6
    /* 8003D2E4 03C03025 */ move $a2, $fp
    /* 8003D2E8 11E00006 */ beqz $t7, .L8003D304
    /* 8003D2EC 24050002 */ addiu $a1, $zero, 0x2
    /* 8003D2F0 00002825 */ move $a1, $zero
    /* 8003D2F4 0C0122C6 */ jal alSynAllocFX
    /* 8003D2F8 02E03825 */ move $a3, $s7
    /* 8003D2FC 10000005 */ b .L8003D314
    /* 8003D300 AEC00004 */ sw $zero, 0x4($s6)
.L8003D304:
    /* 8003D304 8EC40030 */ lw $a0, 0x30($s6)
    /* 8003D308 0C010AB2 */ jal alMainBusParam
    /* 8003D30C 8EC60034 */ lw $a2, 0x34($s6)
    /* 8003D310 AEC00004 */ sw $zero, 0x4($s6)
.L8003D314:
    /* 8003D314 AEC00008 */ sw $zero, 0x8($s6)
    /* 8003D318 AEC00014 */ sw $zero, 0x14($s6)
    /* 8003D31C AEC00018 */ sw $zero, 0x18($s6)
    /* 8003D320 AEC0000C */ sw $zero, 0xC($s6)
    /* 8003D324 AEC00010 */ sw $zero, 0x10($s6)
    /* 8003D328 8FC70004 */ lw $a3, 0x4($fp)
    /* 8003D32C 241800DC */ addiu $t8, $zero, 0xDC
    /* 8003D330 AFB80010 */ sw $t8, 0x10($sp)
    /* 8003D334 00002025 */ move $a0, $zero
    /* 8003D338 00002825 */ move $a1, $zero
    /* 8003D33C 0C00F56A */ jal alHeapDBAlloc
    /* 8003D340 02E03025 */ move $a2, $s7
    /* 8003D344 8FD90004 */ lw $t9, 0x4($fp)
    /* 8003D348 0000A025 */ move $s4, $zero
    /* 8003D34C 00408025 */ move $s0, $v0
    /* 8003D350 1B20002F */ blez $t9, .L8003D410
    /* 8003D354 26C50004 */ addiu $a1, $s6, 0x4
    /* 8003D358 2451008C */ addiu $s1, $v0, 0x8C
    /* 8003D35C 24520058 */ addiu $s2, $v0, 0x58
    /* 8003D360 24530010 */ addiu $s3, $v0, 0x10
    /* 8003D364 AFA50048 */ sw $a1, 0x48($sp)
.L8003D368:
    /* 8003D368 8FA50048 */ lw $a1, 0x48($sp)
    /* 8003D36C 0200A825 */ move $s5, $s0
    /* 8003D370 0C00F536 */ jal alLink
    /* 8003D374 02002025 */ move $a0, $s0
    /* 8003D378 AE000008 */ sw $zero, 0x8($s0)
    /* 8003D37C 8EC50024 */ lw $a1, 0x24($s6)
    /* 8003D380 02602025 */ move $a0, $s3
    /* 8003D384 0C00FD1F */ jal alLoadNew
    /* 8003D388 02E03025 */ move $a2, $s7
    /* 8003D38C 02602025 */ move $a0, $s3
    /* 8003D390 24050001 */ addiu $a1, $zero, 0x1
    /* 8003D394 0C00F582 */ jal alLoadParam
    /* 8003D398 00003025 */ move $a2, $zero
    /* 8003D39C 02402025 */ move $a0, $s2
    /* 8003D3A0 0C00FCFD */ jal alResampleNew
    /* 8003D3A4 02E02825 */ move $a1, $s7
    /* 8003D3A8 02402025 */ move $a0, $s2
    /* 8003D3AC 24050001 */ addiu $a1, $zero, 0x1
    /* 8003D3B0 0C010B06 */ jal alResampleParam
    /* 8003D3B4 02603025 */ move $a2, $s3
    /* 8003D3B8 02202025 */ move $a0, $s1
    /* 8003D3BC 0C00FD49 */ jal alEnvmixerNew
    /* 8003D3C0 02E02825 */ move $a1, $s7
    /* 8003D3C4 02202025 */ move $a0, $s1
    /* 8003D3C8 24050001 */ addiu $a1, $zero, 0x1
    /* 8003D3CC 0C010707 */ jal alEnvmixerParam
    /* 8003D3D0 02403025 */ move $a2, $s2
    /* 8003D3D4 8EC40034 */ lw $a0, 0x34($s6)
    /* 8003D3D8 24050002 */ addiu $a1, $zero, 0x2
    /* 8003D3DC 0C00F876 */ jal alAuxBusParam
    /* 8003D3E0 02203025 */ move $a2, $s1
    /* 8003D3E4 26A8008C */ addiu $t0, $s5, 0x8C
    /* 8003D3E8 AEA8000C */ sw $t0, 0xC($s5)
    /* 8003D3EC 8FC90004 */ lw $t1, 0x4($fp)
    /* 8003D3F0 26940001 */ addiu $s4, $s4, 0x1
    /* 8003D3F4 261000DC */ addiu $s0, $s0, 0xDC
    /* 8003D3F8 0289082A */ slt $at, $s4, $t1
    /* 8003D3FC 263100DC */ addiu $s1, $s1, 0xDC
    /* 8003D400 265200DC */ addiu $s2, $s2, 0xDC
    /* 8003D404 1420FFD8 */ bnez $at, .L8003D368
    /* 8003D408 267300DC */ addiu $s3, $s3, 0xDC
    /* 8003D40C 0000A025 */ move $s4, $zero
.L8003D410:
    /* 8003D410 8FA4005C */ lw $a0, 0x5C($sp)
    /* 8003D414 24050001 */ addiu $a1, $zero, 0x1
    /* 8003D418 0C011002 */ jal alSaveParam
    /* 8003D41C 8EC60030 */ lw $a2, 0x30($s6)
    /* 8003D420 8FC70008 */ lw $a3, 0x8($fp)
    /* 8003D424 240A001C */ addiu $t2, $zero, 0x1C
    /* 8003D428 AFAA0010 */ sw $t2, 0x10($sp)
    /* 8003D42C 00002025 */ move $a0, $zero
    /* 8003D430 00002825 */ move $a1, $zero
    /* 8003D434 0C00F56A */ jal alHeapDBAlloc
    /* 8003D438 02E03025 */ move $a2, $s7
    /* 8003D43C AEC0002C */ sw $zero, 0x2C($s6)
    /* 8003D440 8FCB0008 */ lw $t3, 0x8($fp)
    /* 8003D444 00401825 */ move $v1, $v0
    /* 8003D448 5960000B */ blezl $t3, .L8003D478
    /* 8003D44C AED70028 */ sw $s7, 0x28($s6)
    /* 8003D450 8ECC002C */ lw $t4, 0x2C($s6)
.L8003D454:
    /* 8003D454 26940001 */ addiu $s4, $s4, 0x1
    /* 8003D458 AC6C0000 */ sw $t4, 0x0($v1)
    /* 8003D45C AEC3002C */ sw $v1, 0x2C($s6)
    /* 8003D460 8FCD0008 */ lw $t5, 0x8($fp)
    /* 8003D464 2463001C */ addiu $v1, $v1, 0x1C
    /* 8003D468 028D082A */ slt $at, $s4, $t5
    /* 8003D46C 5420FFF9 */ bnel $at, $zero, .L8003D454
    /* 8003D470 8ECC002C */ lw $t4, 0x2C($s6)
    /* 8003D474 AED70028 */ sw $s7, 0x28($s6)
.L8003D478:
    /* 8003D478 8FBF0044 */ lw $ra, 0x44($sp)
    /* 8003D47C 8FBE0040 */ lw $fp, 0x40($sp)
    /* 8003D480 8FB7003C */ lw $s7, 0x3C($sp)
    /* 8003D484 8FB60038 */ lw $s6, 0x38($sp)
    /* 8003D488 8FB50034 */ lw $s5, 0x34($sp)
    /* 8003D48C 8FB40030 */ lw $s4, 0x30($sp)
    /* 8003D490 8FB3002C */ lw $s3, 0x2C($sp)
    /* 8003D494 8FB20028 */ lw $s2, 0x28($sp)
    /* 8003D498 8FB10024 */ lw $s1, 0x24($sp)
    /* 8003D49C 8FB00020 */ lw $s0, 0x20($sp)
    /* 8003D4A0 03E00008 */ jr $ra
    /* 8003D4A4 27BD0078 */ addiu $sp, $sp, 0x78
