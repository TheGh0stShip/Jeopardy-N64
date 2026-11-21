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
glabel func_8004A268
    /* 8004A268 27BDFF70 */ addiu $sp, $sp, -0x90
    /* 8004A26C AFB10020 */ sw $s1, 0x20($sp)
    /* 8004A270 30A200FF */ andi $v0, $a1, 0xFF
    /* 8004A274 24030058 */ addiu $v1, $zero, 0x58
    /* 8004A278 00808825 */ move $s1, $a0
    /* 8004A27C AFBF002C */ sw $ra, 0x2C($sp)
    /* 8004A280 AFB30028 */ sw $s3, 0x28($sp)
    /* 8004A284 AFB20024 */ sw $s2, 0x24($sp)
    /* 8004A288 AFB0001C */ sw $s0, 0x1C($sp)
    /* 8004A28C 14620004 */ bne $v1, $v0, .L8004A2A0
    /* 8004A290 AFA50094 */ sw $a1, 0x94($sp)
    /* 8004A294 3C138007 */ lui $s3, %hi(D_800723DC)
    /* 8004A298 10000003 */ b .L8004A2A8
    /* 8004A29C 267323DC */ addiu $s3, $s3, %lo(D_800723DC)
.L8004A2A0:
    /* 8004A2A0 3C138007 */ lui $s3, %hi(D_800723C8)
    /* 8004A2A4 267323C8 */ addiu $s3, $s3, %lo(D_800723C8)
.L8004A2A8:
    /* 8004A2A8 2401006F */ addiu $at, $zero, 0x6F
    /* 8004A2AC 14410003 */ bne $v0, $at, .L8004A2BC
    /* 8004A2B0 24100018 */ addiu $s0, $zero, 0x18
    /* 8004A2B4 10000009 */ b .L8004A2DC
    /* 8004A2B8 24090008 */ addiu $t1, $zero, 0x8
.L8004A2BC:
    /* 8004A2BC 24010078 */ addiu $at, $zero, 0x78
    /* 8004A2C0 10410005 */ beq $v0, $at, .L8004A2D8
    /* 8004A2C4 24080010 */ addiu $t0, $zero, 0x10
    /* 8004A2C8 10620003 */ beq $v1, $v0, .L8004A2D8
    /* 8004A2CC 00000000 */ nop
    /* 8004A2D0 10000001 */ b .L8004A2D8
    /* 8004A2D4 2408000A */ addiu $t0, $zero, 0xA
.L8004A2D8:
    /* 8004A2D8 01004825 */ move $t1, $t0
.L8004A2DC:
    /* 8004A2DC 8E380000 */ lw $t8, 0x0($s1)
    /* 8004A2E0 8E390004 */ lw $t9, 0x4($s1)
    /* 8004A2E4 24010064 */ addiu $at, $zero, 0x64
    /* 8004A2E8 AFB80060 */ sw $t8, 0x60($sp)
    /* 8004A2EC AFB80040 */ sw $t8, 0x40($sp)
    /* 8004A2F0 AFB90044 */ sw $t9, 0x44($sp)
    /* 8004A2F4 10410004 */ beq $v0, $at, .L8004A308
    /* 8004A2F8 AFB90064 */ sw $t9, 0x64($sp)
    /* 8004A2FC 24010069 */ addiu $at, $zero, 0x69
    /* 8004A300 54410010 */ bnel $v0, $at, .L8004A344
    /* 8004A304 8FAA0060 */ lw $t2, 0x60($sp)
.L8004A308:
    /* 8004A308 8FAC0040 */ lw $t4, 0x40($sp)
    /* 8004A30C 5D80000D */ bgtzl $t4, .L8004A344
    /* 8004A310 8FAA0060 */ lw $t2, 0x60($sp)
    /* 8004A314 05800003 */ bltz $t4, .L8004A324
    /* 8004A318 8FAE0060 */ lw $t6, 0x60($sp)
    /* 8004A31C 10000009 */ b .L8004A344
    /* 8004A320 8FAA0060 */ lw $t2, 0x60($sp)
.L8004A324:
    /* 8004A324 8FAF0064 */ lw $t7, 0x64($sp)
    /* 8004A328 01C0C027 */ not $t8, $t6
    /* 8004A32C 2DE10001 */ sltiu $at, $t7, 0x1
    /* 8004A330 0301C021 */ addu $t8, $t8, $at
    /* 8004A334 000FC823 */ negu $t9, $t7
    /* 8004A338 AFB90064 */ sw $t9, 0x64($sp)
    /* 8004A33C AFB80060 */ sw $t8, 0x60($sp)
    /* 8004A340 8FAA0060 */ lw $t2, 0x60($sp)
.L8004A344:
    /* 8004A344 8FAB0064 */ lw $t3, 0x64($sp)
    /* 8004A348 24080017 */ addiu $t0, $zero, 0x17
    /* 8004A34C 15400006 */ bnez $t2, .L8004A368
    /* 8004A350 8FA40060 */ lw $a0, 0x60($sp)
    /* 8004A354 55600005 */ bnel $t3, $zero, .L8004A36C
    /* 8004A358 24100017 */ addiu $s0, $zero, 0x17
    /* 8004A35C 8E2C0024 */ lw $t4, 0x24($s1)
    /* 8004A360 51800010 */ beql $t4, $zero, .L8004A3A4
    /* 8004A364 27B20078 */ addiu $s2, $sp, 0x78
.L8004A368:
    /* 8004A368 24100017 */ addiu $s0, $zero, 0x17
.L8004A36C:
    /* 8004A36C 8FA50064 */ lw $a1, 0x64($sp)
    /* 8004A370 01203825 */ move $a3, $t1
    /* 8004A374 000937C3 */ sra $a2, $t1, 31
    /* 8004A378 AFA8004C */ sw $t0, 0x4C($sp)
    /* 8004A37C 0C01202D */ jal __ull_rem
    /* 8004A380 AFA90070 */ sw $t1, 0x70($sp)
    /* 8004A384 8FA8004C */ lw $t0, 0x4C($sp)
    /* 8004A388 00737021 */ addu $t6, $v1, $s3
    /* 8004A38C 91CF0000 */ lbu $t7, 0x0($t6)
    /* 8004A390 27B20078 */ addiu $s2, $sp, 0x78
    /* 8004A394 8FA90070 */ lw $t1, 0x70($sp)
    /* 8004A398 0248C021 */ addu $t8, $s2, $t0
    /* 8004A39C A30F0000 */ sb $t7, 0x0($t8)
    /* 8004A3A0 27B20078 */ addiu $s2, $sp, 0x78
.L8004A3A4:
    /* 8004A3A4 8FA40060 */ lw $a0, 0x60($sp)
    /* 8004A3A8 8FA50064 */ lw $a1, 0x64($sp)
    /* 8004A3AC 01203825 */ move $a3, $t1
    /* 8004A3B0 000937C3 */ sra $a2, $t1, 31
    /* 8004A3B4 0C01203C */ jal __ull_div
    /* 8004A3B8 AFA90070 */ sw $t1, 0x70($sp)
    /* 8004A3BC 8FA90070 */ lw $t1, 0x70($sp)
    /* 8004A3C0 AE230004 */ sw $v1, 0x4($s1)
    /* 8004A3C4 0440002B */ bltz $v0, .L8004A474
    /* 8004A3C8 AE220000 */ sw $v0, 0x0($s1)
    /* 8004A3CC 1C400003 */ bgtz $v0, .L8004A3DC
    /* 8004A3D0 00000000 */ nop
    /* 8004A3D4 50600028 */ beql $v1, $zero, .L8004A478
    /* 8004A3D8 240C0018 */ addiu $t4, $zero, 0x18
.L8004A3DC:
    /* 8004A3DC 1A000025 */ blez $s0, .L8004A474
    /* 8004A3E0 000967C3 */ sra $t4, $t1, 31
    /* 8004A3E4 8E2A0000 */ lw $t2, 0x0($s1)
    /* 8004A3E8 8E2B0004 */ lw $t3, 0x4($s1)
    /* 8004A3EC AFA9003C */ sw $t1, 0x3C($sp)
    /* 8004A3F0 AFAC0038 */ sw $t4, 0x38($sp)
    /* 8004A3F4 AFAA0040 */ sw $t2, 0x40($sp)
    /* 8004A3F8 AFAB0044 */ sw $t3, 0x44($sp)
    /* 8004A3FC 8FAE0038 */ lw $t6, 0x38($sp)
.L8004A400:
    /* 8004A400 8FAF003C */ lw $t7, 0x3C($sp)
    /* 8004A404 27A40050 */ addiu $a0, $sp, 0x50
    /* 8004A408 8FA60040 */ lw $a2, 0x40($sp)
    /* 8004A40C 8FA70044 */ lw $a3, 0x44($sp)
    /* 8004A410 AFAE0010 */ sw $t6, 0x10($sp)
    /* 8004A414 0C012942 */ jal lldiv
    /* 8004A418 AFAF0014 */ sw $t7, 0x14($sp)
    /* 8004A41C 8FB80050 */ lw $t8, 0x50($sp)
    /* 8004A420 8FB90054 */ lw $t9, 0x54($sp)
    /* 8004A424 2604FFFF */ addiu $a0, $s0, -0x1
    /* 8004A428 AE380000 */ sw $t8, 0x0($s1)
    /* 8004A42C AE390004 */ sw $t9, 0x4($s1)
    /* 8004A430 8FAB005C */ lw $t3, 0x5C($sp)
    /* 8004A434 02447821 */ addu $t7, $s2, $a0
    /* 8004A438 00808025 */ move $s0, $a0
    /* 8004A43C 01736821 */ addu $t5, $t3, $s3
    /* 8004A440 91AE0000 */ lbu $t6, 0x0($t5)
    /* 8004A444 A1EE0000 */ sb $t6, 0x0($t7)
    /* 8004A448 8E380000 */ lw $t8, 0x0($s1)
    /* 8004A44C 8E390004 */ lw $t9, 0x4($s1)
    /* 8004A450 AFB80040 */ sw $t8, 0x40($sp)
    /* 8004A454 07000007 */ bltz $t8, .L8004A474
    /* 8004A458 AFB90044 */ sw $t9, 0x44($sp)
    /* 8004A45C 1F000003 */ bgtz $t8, .L8004A46C
    /* 8004A460 00000000 */ nop
    /* 8004A464 53200004 */ beql $t9, $zero, .L8004A478
    /* 8004A468 240C0018 */ addiu $t4, $zero, 0x18
.L8004A46C:
    /* 8004A46C 5E00FFE4 */ bgtzl $s0, .L8004A400
    /* 8004A470 8FAE0038 */ lw $t6, 0x38($sp)
.L8004A474:
    /* 8004A474 240C0018 */ addiu $t4, $zero, 0x18
.L8004A478:
    /* 8004A478 01903023 */ subu $a2, $t4, $s0
    /* 8004A47C AE260014 */ sw $a2, 0x14($s1)
    /* 8004A480 8E240008 */ lw $a0, 0x8($s1)
    /* 8004A484 0C012542 */ jal memcpy
    /* 8004A488 02502821 */ addu $a1, $s2, $s0
    /* 8004A48C 8E250014 */ lw $a1, 0x14($s1)
    /* 8004A490 8E240024 */ lw $a0, 0x24($s1)
    /* 8004A494 00A4082A */ slt $at, $a1, $a0
    /* 8004A498 10200002 */ beqz $at, .L8004A4A4
    /* 8004A49C 00856823 */ subu $t5, $a0, $a1
    /* 8004A4A0 AE2D0010 */ sw $t5, 0x10($s1)
.L8004A4A4:
    /* 8004A4A4 04830010 */ bgezl $a0, .L8004A4E8
    /* 8004A4A8 8FBF002C */ lw $ra, 0x2C($sp)
    /* 8004A4AC 8E2E0030 */ lw $t6, 0x30($s1)
    /* 8004A4B0 24010010 */ addiu $at, $zero, 0x10
    /* 8004A4B4 31CF0014 */ andi $t7, $t6, 0x14
    /* 8004A4B8 55E1000B */ bnel $t7, $at, .L8004A4E8
    /* 8004A4BC 8FBF002C */ lw $ra, 0x2C($sp)
    /* 8004A4C0 8E380028 */ lw $t8, 0x28($s1)
    /* 8004A4C4 8E39000C */ lw $t9, 0xC($s1)
    /* 8004A4C8 8E220010 */ lw $v0, 0x10($s1)
    /* 8004A4CC 03195023 */ subu $t2, $t8, $t9
    /* 8004A4D0 01425823 */ subu $t3, $t2, $v0
    /* 8004A4D4 01658023 */ subu $s0, $t3, $a1
    /* 8004A4D8 1A000002 */ blez $s0, .L8004A4E4
    /* 8004A4DC 00506021 */ addu $t4, $v0, $s0
    /* 8004A4E0 AE2C0010 */ sw $t4, 0x10($s1)
.L8004A4E4:
    /* 8004A4E4 8FBF002C */ lw $ra, 0x2C($sp)
.L8004A4E8:
    /* 8004A4E8 8FB0001C */ lw $s0, 0x1C($sp)
    /* 8004A4EC 8FB10020 */ lw $s1, 0x20($sp)
    /* 8004A4F0 8FB20024 */ lw $s2, 0x24($sp)
    /* 8004A4F4 8FB30028 */ lw $s3, 0x28($sp)
    /* 8004A4F8 03E00008 */ jr $ra
    /* 8004A4FC 27BD0090 */ addiu $sp, $sp, 0x90
    /* 8004A500 00000000 */ nop
    /* 8004A504 00000000 */ nop
