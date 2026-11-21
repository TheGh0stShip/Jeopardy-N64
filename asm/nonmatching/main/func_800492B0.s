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
glabel func_800492B0
    /* 800492B0 27BDFFF0 */ addiu $sp, $sp, -0x10
    /* 800492B4 308400FF */ andi $a0, $a0, 0xFF
    /* 800492B8 AFA00000 */ sw $zero, 0x0($sp)
.L800492BC:
    /* 800492BC 8FAE0000 */ lw $t6, 0x0($sp)
    /* 800492C0 8FB80000 */ lw $t8, 0x0($sp)
    /* 800492C4 3C01800D */ lui $at, %hi(D_800D3160)
    /* 800492C8 000E7880 */ sll $t7, $t6, 2
    /* 800492CC 002F0821 */ addu $at, $at, $t7
    /* 800492D0 AC203160 */ sw $zero, %lo(D_800D3160)($at)
    /* 800492D4 27190001 */ addiu $t9, $t8, 0x1
    /* 800492D8 2B210010 */ slti $at, $t9, 0x10
    /* 800492DC 1420FFF7 */ bnez $at, .L800492BC
    /* 800492E0 AFB90000 */ sw $t9, 0x0($sp)
    /* 800492E4 3C19800D */ lui $t9, %hi(D_800D31A1)
    /* 800492E8 933931A1 */ lbu $t9, %lo(D_800D31A1)($t9)
    /* 800492EC 3C09800D */ lui $t1, %hi(D_800D3160)
    /* 800492F0 24080001 */ addiu $t0, $zero, 0x1
    /* 800492F4 3C01800D */ lui $at, %hi(D_800D319C)
    /* 800492F8 25293160 */ addiu $t1, $t1, %lo(D_800D3160)
    /* 800492FC 240A00FF */ addiu $t2, $zero, 0xFF
    /* 80049300 240B0001 */ addiu $t3, $zero, 0x1
    /* 80049304 240C0003 */ addiu $t4, $zero, 0x3
    /* 80049308 240D00FF */ addiu $t5, $zero, 0xFF
    /* 8004930C 240E00FF */ addiu $t6, $zero, 0xFF
    /* 80049310 240F00FF */ addiu $t7, $zero, 0xFF
    /* 80049314 241800FF */ addiu $t8, $zero, 0xFF
    /* 80049318 AC28319C */ sw $t0, %lo(D_800D319C)($at)
    /* 8004931C AFA9000C */ sw $t1, 0xC($sp)
    /* 80049320 A3AA0004 */ sb $t2, 0x4($sp)
    /* 80049324 A3AB0005 */ sb $t3, 0x5($sp)
    /* 80049328 A3AC0006 */ sb $t4, 0x6($sp)
    /* 8004932C A3A40007 */ sb $a0, 0x7($sp)
    /* 80049330 A3AD0008 */ sb $t5, 0x8($sp)
    /* 80049334 A3AE0009 */ sb $t6, 0x9($sp)
    /* 80049338 A3AF000A */ sb $t7, 0xA($sp)
    /* 8004933C A3B8000B */ sb $t8, 0xB($sp)
    /* 80049340 1B200013 */ blez $t9, .L80049390
    /* 80049344 AFA00000 */ sw $zero, 0x0($sp)
.L80049348:
    /* 80049348 27A90004 */ addiu $t1, $sp, 0x4
    /* 8004934C 8D210000 */ lw $at, 0x0($t1)
    /* 80049350 8FA8000C */ lw $t0, 0xC($sp)
    /* 80049354 3C18800D */ lui $t8, %hi(D_800D31A1)
    /* 80049358 A9010000 */ swl $at, 0x0($t0)
    /* 8004935C B9010003 */ swr $at, 0x3($t0)
    /* 80049360 8D2B0004 */ lw $t3, 0x4($t1)
    /* 80049364 A90B0004 */ swl $t3, 0x4($t0)
    /* 80049368 B90B0007 */ swr $t3, 0x7($t0)
    /* 8004936C 8FAE0000 */ lw $t6, 0x0($sp)
    /* 80049370 931831A1 */ lbu $t8, %lo(D_800D31A1)($t8)
    /* 80049374 8FAC000C */ lw $t4, 0xC($sp)
    /* 80049378 25CF0001 */ addiu $t7, $t6, 0x1
    /* 8004937C 01F8082A */ slt $at, $t7, $t8
    /* 80049380 258D0008 */ addiu $t5, $t4, 0x8
    /* 80049384 AFAF0000 */ sw $t7, 0x0($sp)
    /* 80049388 1420FFEF */ bnez $at, .L80049348
    /* 8004938C AFAD000C */ sw $t5, 0xC($sp)
.L80049390:
    /* 80049390 8FAA000C */ lw $t2, 0xC($sp)
    /* 80049394 241900FE */ addiu $t9, $zero, 0xFE
    /* 80049398 27BD0010 */ addiu $sp, $sp, 0x10
    /* 8004939C 03E00008 */ jr $ra
    /* 800493A0 A1590000 */ sb $t9, 0x0($t2)
    /* 800493A4 00000000 */ nop
