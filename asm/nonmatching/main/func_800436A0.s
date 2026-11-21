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
glabel func_800436A0
    /* 800436A0 27BDFFA0 */ addiu $sp, $sp, -0x60
    /* 800436A4 AFBF001C */ sw $ra, 0x1C($sp)
    /* 800436A8 AFB00018 */ sw $s0, 0x18($sp)
    /* 800436AC 8C83001C */ lw $v1, 0x1C($a0)
    /* 800436B0 8C820014 */ lw $v0, 0x14($a0)
    /* 800436B4 8FA80070 */ lw $t0, 0x70($sp)
    /* 800436B8 00037040 */ sll $t6, $v1, 1
    /* 800436BC 00A2082B */ sltu $at, $a1, $v0
    /* 800436C0 00805025 */ move $t2, $a0
    /* 800436C4 00C06825 */ move $t5, $a2
    /* 800436C8 00E05825 */ move $t3, $a3
    /* 800436CC 10200002 */ beqz $at, .L800436D8
    /* 800436D0 004E4821 */ addu $t1, $v0, $t6
    /* 800436D4 00AE2821 */ addu $a1, $a1, $t6
.L800436D8:
    /* 800436D8 000B3040 */ sll $a2, $t3, 1
    /* 800436DC 00C53821 */ addu $a3, $a2, $a1
    /* 800436E0 0127082B */ sltu $at, $t1, $a3
    /* 800436E4 10200037 */ beqz $at, .L800437C4
    /* 800436E8 25100008 */ addiu $s0, $t0, 0x8
    /* 800436EC 31AFFFFF */ andi $t7, $t5, 0xFFFF
    /* 800436F0 3C010800 */ lui $at, 0x800
    /* 800436F4 01255823 */ subu $t3, $t1, $a1
    /* 800436F8 000BC843 */ sra $t9, $t3, 1
    /* 800436FC 01E1C025 */ or $t8, $t7, $at
    /* 80043700 00197040 */ sll $t6, $t9, 1
    /* 80043704 31CFFFFF */ andi $t7, $t6, 0xFFFF
    /* 80043708 AD180000 */ sw $t8, 0x0($t0)
    /* 8004370C 25100008 */ addiu $s0, $t0, 0x8
    /* 80043710 AD0F0004 */ sw $t7, 0x4($t0)
    /* 80043714 02006025 */ move $t4, $s0
    /* 80043718 3C180400 */ lui $t8, 0x400
    /* 8004371C AD980000 */ sw $t8, 0x0($t4)
    /* 80043720 AFAD0068 */ sw $t5, 0x68($sp)
    /* 80043724 AFAC0044 */ sw $t4, 0x44($sp)
    /* 80043728 AFAE0024 */ sw $t6, 0x24($sp)
    /* 8004372C AFAA0060 */ sw $t2, 0x60($sp)
    /* 80043730 AFA9004C */ sw $t1, 0x4C($sp)
    /* 80043734 AFA70028 */ sw $a3, 0x28($sp)
    /* 80043738 AFA6002C */ sw $a2, 0x2C($sp)
    /* 8004373C 26100008 */ addiu $s0, $s0, 0x8
    /* 80043740 0C010CCE */ jal osVirtualToPhysical
    /* 80043744 00A02025 */ move $a0, $a1
    /* 80043748 8FAB0024 */ lw $t3, 0x24($sp)
    /* 8004374C 8FAD0068 */ lw $t5, 0x68($sp)
    /* 80043750 8FA70028 */ lw $a3, 0x28($sp)
    /* 80043754 8FA9004C */ lw $t1, 0x4C($sp)
    /* 80043758 8FAC0044 */ lw $t4, 0x44($sp)
    /* 8004375C 016DC821 */ addu $t9, $t3, $t5
    /* 80043760 332EFFFF */ andi $t6, $t9, 0xFFFF
    /* 80043764 3C010800 */ lui $at, 0x800
    /* 80043768 8FAA0060 */ lw $t2, 0x60($sp)
    /* 8004376C 01C17825 */ or $t7, $t6, $at
    /* 80043770 00E9C023 */ subu $t8, $a3, $t1
    /* 80043774 0018C843 */ sra $t9, $t8, 1
    /* 80043778 02001825 */ move $v1, $s0
    /* 8004377C AD820004 */ sw $v0, 0x4($t4)
    /* 80043780 AC6F0000 */ sw $t7, 0x0($v1)
    /* 80043784 00197040 */ sll $t6, $t9, 1
    /* 80043788 31CFFFFF */ andi $t7, $t6, 0xFFFF
    /* 8004378C 26100008 */ addiu $s0, $s0, 0x8
    /* 80043790 AC6F0004 */ sw $t7, 0x4($v1)
    /* 80043794 02002825 */ move $a1, $s0
    /* 80043798 3C180400 */ lui $t8, 0x400
    /* 8004379C ACB80000 */ sw $t8, 0x0($a1)
    /* 800437A0 8D440014 */ lw $a0, 0x14($t2)
    /* 800437A4 AFA5003C */ sw $a1, 0x3C($sp)
    /* 800437A8 0C010CCE */ jal osVirtualToPhysical
    /* 800437AC 26100008 */ addiu $s0, $s0, 0x8
    /* 800437B0 8FA5003C */ lw $a1, 0x3C($sp)
    /* 800437B4 8FA6002C */ lw $a2, 0x2C($sp)
    /* 800437B8 ACA20004 */ sw $v0, 0x4($a1)
    /* 800437BC 10000012 */ b .L80043808
    /* 800437C0 30C7FFFF */ andi $a3, $a2, 0xFFFF
.L800437C4:
    /* 800437C4 31B9FFFF */ andi $t9, $t5, 0xFFFF
    /* 800437C8 3C010800 */ lui $at, 0x800
    /* 800437CC 03217025 */ or $t6, $t9, $at
    /* 800437D0 30C7FFFF */ andi $a3, $a2, 0xFFFF
    /* 800437D4 AD070004 */ sw $a3, 0x4($t0)
    /* 800437D8 AD0E0000 */ sw $t6, 0x0($t0)
    /* 800437DC 02001825 */ move $v1, $s0
    /* 800437E0 3C0F0400 */ lui $t7, 0x400
    /* 800437E4 AC6F0000 */ sw $t7, 0x0($v1)
    /* 800437E8 AFA70028 */ sw $a3, 0x28($sp)
    /* 800437EC AFA30034 */ sw $v1, 0x34($sp)
    /* 800437F0 26100008 */ addiu $s0, $s0, 0x8
    /* 800437F4 0C010CCE */ jal osVirtualToPhysical
    /* 800437F8 00A02025 */ move $a0, $a1
    /* 800437FC 8FA30034 */ lw $v1, 0x34($sp)
    /* 80043800 8FA70028 */ lw $a3, 0x28($sp)
    /* 80043804 AC620004 */ sw $v0, 0x4($v1)
.L80043808:
    /* 80043808 02001825 */ move $v1, $s0
    /* 8004380C 3C180800 */ lui $t8, 0x800
    /* 80043810 AC780000 */ sw $t8, 0x0($v1)
    /* 80043814 AC670004 */ sw $a3, 0x4($v1)
    /* 80043818 8FBF001C */ lw $ra, 0x1C($sp)
    /* 8004381C 26020008 */ addiu $v0, $s0, 0x8
    /* 80043820 8FB00018 */ lw $s0, 0x18($sp)
    /* 80043824 03E00008 */ jr $ra
    /* 80043828 27BD0060 */ addiu $sp, $sp, 0x60
