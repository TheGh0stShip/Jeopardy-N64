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
glabel func_8004B248
    /* 8004B248 27BDFFD8 */ addiu $sp, $sp, -0x28
    /* 8004B24C AFBF001C */ sw $ra, 0x1C($sp)
    /* 8004B250 AFB00018 */ sw $s0, 0x18($sp)
    /* 8004B254 00804025 */ move $t0, $a0
    /* 8004B258 2409FFFD */ addiu $t1, $zero, -0x3
.L8004B25C:
    /* 8004B25C 8D0E0280 */ lw $t6, 0x280($t0)
    /* 8004B260 00E01825 */ move $v1, $a3
    /* 8004B264 8D100268 */ lw $s0, 0x268($t0)
    /* 8004B268 11C00016 */ beqz $t6, .L8004B2C4
    /* 8004B26C 8D020264 */ lw $v0, 0x264($t0)
    /* 8004B270 30EF0002 */ andi $t7, $a3, 0x2
    /* 8004B274 51E00014 */ beql $t7, $zero, .L8004B2C8
    /* 8004B278 02002025 */ move $a0, $s0
    /* 8004B27C 52000009 */ beql $s0, $zero, .L8004B2A4
    /* 8004B280 ACA20000 */ sw $v0, 0x0($a1)
    /* 8004B284 8E180008 */ lw $t8, 0x8($s0)
    /* 8004B288 00E91824 */ and $v1, $a3, $t1
    /* 8004B28C 33190010 */ andi $t9, $t8, 0x10
    /* 8004B290 53200004 */ beql $t9, $zero, .L8004B2A4
    /* 8004B294 ACA20000 */ sw $v0, 0x0($a1)
    /* 8004B298 1000005B */ b .L8004B408
    /* 8004B29C ACB00000 */ sw $s0, 0x0($a1)
    /* 8004B2A0 ACA20000 */ sw $v0, 0x0($a1)
.L8004B2A4:
    /* 8004B2A4 8D0B0264 */ lw $t3, 0x264($t0)
    /* 8004B2A8 AD000280 */ sw $zero, 0x280($t0)
    /* 8004B2AC 00E91824 */ and $v1, $a3, $t1
    /* 8004B2B0 8D6C0000 */ lw $t4, 0x0($t3)
    /* 8004B2B4 15800054 */ bnez $t4, .L8004B408
    /* 8004B2B8 AD0C0264 */ sw $t4, 0x264($t0)
    /* 8004B2BC 10000052 */ b .L8004B408
    /* 8004B2C0 AD00026C */ sw $zero, 0x26C($t0)
.L8004B2C4:
    /* 8004B2C4 02002025 */ move $a0, $s0
.L8004B2C8:
    /* 8004B2C8 AFA30024 */ sw $v1, 0x24($sp)
    /* 8004B2CC AFA5002C */ sw $a1, 0x2C($sp)
    /* 8004B2D0 AFA60030 */ sw $a2, 0x30($sp)
    /* 8004B2D4 AFA70034 */ sw $a3, 0x34($sp)
    /* 8004B2D8 0C012C56 */ jal __scTaskReady
    /* 8004B2DC AFA80028 */ sw $t0, 0x28($sp)
    /* 8004B2E0 8FA30024 */ lw $v1, 0x24($sp)
    /* 8004B2E4 8FA5002C */ lw $a1, 0x2C($sp)
    /* 8004B2E8 8FA60030 */ lw $a2, 0x30($sp)
    /* 8004B2EC 8FA70034 */ lw $a3, 0x34($sp)
    /* 8004B2F0 8FA80028 */ lw $t0, 0x28($sp)
    /* 8004B2F4 2409FFFD */ addiu $t1, $zero, -0x3
    /* 8004B2F8 10400043 */ beqz $v0, .L8004B408
    /* 8004B2FC 240AFFFE */ addiu $t2, $zero, -0x2
    /* 8004B300 8E0E0008 */ lw $t6, 0x8($s0)
    /* 8004B304 31CF0007 */ andi $t7, $t6, 0x7
    /* 8004B308 25F8FFFF */ addiu $t8, $t7, -0x1
    /* 8004B30C 2F010007 */ sltiu $at, $t8, 0x7
    /* 8004B310 1020003D */ beqz $at, .L8004B408
    /* 8004B314 0018C080 */ sll $t8, $t8, 2
    /* 8004B318 3C018000 */ lui $at, %hi(jtbl_80002578)
    /* 8004B31C 00380821 */ addu $at, $at, $t8
    /* 8004B320 8C382578 */ lw $t8, %lo(jtbl_80002578)($at)
    /* 8004B324 03000008 */ jr $t8
    /* 8004B328 00000000 */ nop
.L8004B32C:
    /* 8004B32C 8E190004 */ lw $t9, 0x4($s0)
    /* 8004B330 30EC0002 */ andi $t4, $a3, 0x2
    /* 8004B334 24010003 */ addiu $at, $zero, 0x3
    /* 8004B338 332B0020 */ andi $t3, $t9, 0x20
    /* 8004B33C 11600011 */ beqz $t3, .L8004B384
    /* 8004B340 00000000 */ nop
    /* 8004B344 11800030 */ beqz $t4, .L8004B408
    /* 8004B348 00000000 */ nop
    /* 8004B34C ACB00000 */ sw $s0, 0x0($a1)
    /* 8004B350 8E0D0004 */ lw $t5, 0x4($s0)
    /* 8004B354 00E91824 */ and $v1, $a3, $t1
    /* 8004B358 31AE0001 */ andi $t6, $t5, 0x1
    /* 8004B35C 51C00004 */ beql $t6, $zero, .L8004B370
    /* 8004B360 8D0F0268 */ lw $t7, 0x268($t0)
    /* 8004B364 ACD00000 */ sw $s0, 0x0($a2)
    /* 8004B368 006A1824 */ and $v1, $v1, $t2
    /* 8004B36C 8D0F0268 */ lw $t7, 0x268($t0)
.L8004B370:
    /* 8004B370 8DF80000 */ lw $t8, 0x0($t7)
    /* 8004B374 17000024 */ bnez $t8, .L8004B408
    /* 8004B378 AD180268 */ sw $t8, 0x268($t0)
    /* 8004B37C 10000022 */ b .L8004B408
    /* 8004B380 AD000270 */ sw $zero, 0x270($t0)
.L8004B384:
    /* 8004B384 14E10020 */ bne $a3, $at, .L8004B408
    /* 8004B388 00000000 */ nop
    /* 8004B38C ACD00000 */ sw $s0, 0x0($a2)
    /* 8004B390 ACB00000 */ sw $s0, 0x0($a1)
    /* 8004B394 8D0B0268 */ lw $t3, 0x268($t0)
    /* 8004B398 2401FFFC */ addiu $at, $zero, -0x4
    /* 8004B39C 00E11824 */ and $v1, $a3, $at
    /* 8004B3A0 8D6C0000 */ lw $t4, 0x0($t3)
    /* 8004B3A4 15800018 */ bnez $t4, .L8004B408
    /* 8004B3A8 AD0C0268 */ sw $t4, 0x268($t0)
    /* 8004B3AC 10000016 */ b .L8004B408
    /* 8004B3B0 AD000270 */ sw $zero, 0x270($t0)
.L8004B3B4:
    /* 8004B3B4 8E020004 */ lw $v0, 0x4($s0)
    /* 8004B3B8 30EF0002 */ andi $t7, $a3, 0x2
    /* 8004B3BC 304E0002 */ andi $t6, $v0, 0x2
    /* 8004B3C0 11C00006 */ beqz $t6, .L8004B3DC
    /* 8004B3C4 30580001 */ andi $t8, $v0, 0x1
    /* 8004B3C8 11E0000F */ beqz $t7, .L8004B408
    /* 8004B3CC 00000000 */ nop
    /* 8004B3D0 ACB00000 */ sw $s0, 0x0($a1)
    /* 8004B3D4 1000000C */ b .L8004B408
    /* 8004B3D8 00E91824 */ and $v1, $a3, $t1
.L8004B3DC:
    /* 8004B3DC 1300000A */ beqz $t8, .L8004B408
    /* 8004B3E0 30F90001 */ andi $t9, $a3, 0x1
    /* 8004B3E4 13200008 */ beqz $t9, .L8004B408
    /* 8004B3E8 00000000 */ nop
    /* 8004B3EC ACD00000 */ sw $s0, 0x0($a2)
    /* 8004B3F0 8D0B0268 */ lw $t3, 0x268($t0)
    /* 8004B3F4 00EA1824 */ and $v1, $a3, $t2
    /* 8004B3F8 8D6C0000 */ lw $t4, 0x0($t3)
    /* 8004B3FC 15800002 */ bnez $t4, .L8004B408
    /* 8004B400 AD0C0268 */ sw $t4, 0x268($t0)
    /* 8004B404 AD000270 */ sw $zero, 0x270($t0)
.L8004B408:
    /* 8004B408 50670004 */ beql $v1, $a3, .L8004B41C
    /* 8004B40C 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004B410 1000FF92 */ b .L8004B25C
    /* 8004B414 00603825 */ move $a3, $v1
    /* 8004B418 8FBF001C */ lw $ra, 0x1C($sp)
.L8004B41C:
    /* 8004B41C 8FB00018 */ lw $s0, 0x18($sp)
    /* 8004B420 27BD0028 */ addiu $sp, $sp, 0x28
    /* 8004B424 03E00008 */ jr $ra
    /* 8004B428 00601025 */ move $v0, $v1
.section .rodata
.section .rodata.jtbl_80002578, "a"
glabel jtbl_80002578
    .word .L8004B408
    .word .L8004B3B4
    .word .L8004B32C
    .word .L8004B408
    .word .L8004B408
    .word .L8004B3B4
    .word .L8004B3B4
