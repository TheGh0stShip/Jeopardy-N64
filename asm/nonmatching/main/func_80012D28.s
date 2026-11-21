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
glabel func_80012D28
    /* 80012D28 27BDFFC0 */ addiu $sp, $sp, -0x40
    /* 80012D2C AFBF003C */ sw $ra, 0x3C($sp)
    /* 80012D30 AFBE0038 */ sw $fp, 0x38($sp)
    /* 80012D34 03A0F021 */ addu $fp, $sp, $zero
    /* 80012D38 AFC40040 */ sw $a0, 0x40($fp)
    /* 80012D3C AFC50044 */ sw $a1, 0x44($fp)
    /* 80012D40 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80012D44 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80012D48 24430008 */ addiu $v1, $v0, 0x8
    /* 80012D4C 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80012D50 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80012D54 AFC20030 */ sw $v0, 0x30($fp)
    /* 80012D58 8FC20030 */ lw $v0, 0x30($fp)
    /* 80012D5C 3C030600 */ lui $v1, 0x600
    /* 80012D60 AC430000 */ sw $v1, 0x0($v0)
    /* 80012D64 8FC20030 */ lw $v0, 0x30($fp)
    /* 80012D68 3C030109 */ lui $v1, 0x109
    /* 80012D6C 24634258 */ addiu $v1, $v1, 0x4258
    /* 80012D70 AC430004 */ sw $v1, 0x4($v0)
    /* 80012D74 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80012D78 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80012D7C 24430008 */ addiu $v1, $v0, 0x8
    /* 80012D80 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80012D84 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80012D88 AFC20030 */ sw $v0, 0x30($fp)
    /* 80012D8C 8FC20030 */ lw $v0, 0x30($fp)
    /* 80012D90 3C030104 */ lui $v1, 0x104
    /* 80012D94 34630040 */ ori $v1, $v1, 0x40
    /* 80012D98 AC430000 */ sw $v1, 0x0($v0)
    /* 80012D9C 8FC20030 */ lw $v0, 0x30($fp)
    /* 80012DA0 8FC30044 */ lw $v1, 0x44($fp)
    /* 80012DA4 3C041FFF */ lui $a0, 0x1FFF
    /* 80012DA8 3484FFFF */ ori $a0, $a0, 0xFFFF
    /* 80012DAC 00641824 */ and $v1, $v1, $a0
    /* 80012DB0 AC430004 */ sw $v1, 0x4($v0)
    /* 80012DB4 8FC40040 */ lw $a0, 0x40($fp)
    /* 80012DB8 0C004746 */ jal func_80011D18
    /* 80012DBC 00000000 */ nop
    /* 80012DC0 AFC20028 */ sw $v0, 0x28($fp)
    /* 80012DC4 3C02800E */ lui $v0, %hi(D_800E3742)
    /* 80012DC8 94423742 */ lhu $v0, %lo(D_800E3742)($v0)
    /* 80012DCC 3C018005 */ lui $at, %hi(D_80055C32)
    /* 80012DD0 A4225C32 */ sh $v0, %lo(D_80055C32)($at)
    /* 80012DD4 3C018005 */ lui $at, %hi(D_80055C26)
    /* 80012DD8 A4225C26 */ sh $v0, %lo(D_80055C26)($at)
    /* 80012DDC 3C02800E */ lui $v0, %hi(D_800E3742)
    /* 80012DE0 94423742 */ lhu $v0, %lo(D_800E3742)($v0)
    /* 80012DE4 00021823 */ negu $v1, $v0
    /* 80012DE8 00601021 */ addu $v0, $v1, $zero
    /* 80012DEC 3C018005 */ lui $at, %hi(D_80055C2C)
    /* 80012DF0 A4225C2C */ sh $v0, %lo(D_80055C2C)($at)
    /* 80012DF4 3C018005 */ lui $at, %hi(D_80055C20)
    /* 80012DF8 A4225C20 */ sh $v0, %lo(D_80055C20)($at)
    /* 80012DFC 3C02800E */ lui $v0, %hi(D_800E3722)
    /* 80012E00 94423722 */ lhu $v0, %lo(D_800E3722)($v0)
    /* 80012E04 3C018005 */ lui $at, %hi(D_80055C28)
    /* 80012E08 A4225C28 */ sh $v0, %lo(D_80055C28)($at)
    /* 80012E0C 3C018005 */ lui $at, %hi(D_80055C22)
    /* 80012E10 A4225C22 */ sh $v0, %lo(D_80055C22)($at)
    /* 80012E14 3C02800E */ lui $v0, %hi(D_800E3722)
    /* 80012E18 94423722 */ lhu $v0, %lo(D_800E3722)($v0)
    /* 80012E1C 00021823 */ negu $v1, $v0
    /* 80012E20 00601021 */ addu $v0, $v1, $zero
    /* 80012E24 3C018005 */ lui $at, %hi(D_80055C34)
    /* 80012E28 A4225C34 */ sh $v0, %lo(D_80055C34)($at)
    /* 80012E2C 3C018005 */ lui $at, %hi(D_80055C2E)
    /* 80012E30 A4225C2E */ sh $v0, %lo(D_80055C2E)($at)
    /* 80012E34 3C03800E */ lui $v1, %hi(D_800E3724)
    /* 80012E38 8C633724 */ lw $v1, %lo(D_800E3724)($v1)
    /* 80012E3C 94620000 */ lhu $v0, 0x0($v1)
    /* 80012E40 24030001 */ addiu $v1, $zero, 0x1
    /* 80012E44 10430012 */ beq $v0, $v1, .L80012E90
    /* 80012E48 00000000 */ nop
    /* 80012E4C 28430002 */ slti $v1, $v0, 0x2
    /* 80012E50 10600005 */ beqz $v1, .L80012E68
    /* 80012E54 00000000 */ nop
    /* 80012E58 10400008 */ beqz $v0, .L80012E7C
    /* 80012E5C 00000000 */ nop
    /* 80012E60 08004BAF */ j .L80012EBC
    /* 80012E64 00000000 */ nop
.L80012E68:
    /* 80012E68 24030002 */ addiu $v1, $zero, 0x2
    /* 80012E6C 1043000E */ beq $v0, $v1, .L80012EA8
    /* 80012E70 00000000 */ nop
    /* 80012E74 08004BAF */ j .L80012EBC
    /* 80012E78 00000000 */ nop
.L80012E7C:
    /* 80012E7C A7C0002C */ sh $zero, 0x2C($fp)
    /* 80012E80 24020002 */ addiu $v0, $zero, 0x2
    /* 80012E84 A7C2002E */ sh $v0, 0x2E($fp)
    /* 80012E88 08004BB1 */ j .L80012EC4
    /* 80012E8C 00000000 */ nop
.L80012E90:
    /* 80012E90 24020003 */ addiu $v0, $zero, 0x3
    /* 80012E94 A7C2002C */ sh $v0, 0x2C($fp)
    /* 80012E98 24020001 */ addiu $v0, $zero, 0x1
    /* 80012E9C A7C2002E */ sh $v0, 0x2E($fp)
    /* 80012EA0 08004BB1 */ j .L80012EC4
    /* 80012EA4 00000000 */ nop
.L80012EA8:
    /* 80012EA8 24020003 */ addiu $v0, $zero, 0x3
    /* 80012EAC A7C2002C */ sh $v0, 0x2C($fp)
    /* 80012EB0 A7C0002E */ sh $zero, 0x2E($fp)
    /* 80012EB4 08004BB1 */ j .L80012EC4
    /* 80012EB8 00000000 */ nop
.L80012EBC:
    /* 80012EBC 08004BD3 */ j .L80012F4C
    /* 80012EC0 00000000 */ nop
.L80012EC4:
    /* 80012EC4 97C2002C */ lhu $v0, 0x2C($fp)
    /* 80012EC8 97C3002E */ lhu $v1, 0x2E($fp)
    /* 80012ECC AFA00010 */ sw $zero, 0x10($sp)
    /* 80012ED0 3C04800E */ lui $a0, %hi(D_800E3740)
    /* 80012ED4 8C843740 */ lw $a0, %lo(D_800E3740)($a0)
    /* 80012ED8 2485FFFF */ addiu $a1, $a0, -0x1
    /* 80012EDC AFA50014 */ sw $a1, 0x14($sp)
    /* 80012EE0 3C04800E */ lui $a0, %hi(D_800E3720)
    /* 80012EE4 8C843720 */ lw $a0, %lo(D_800E3720)($a0)
    /* 80012EE8 2485FFFF */ addiu $a1, $a0, -0x1
    /* 80012EEC AFA50018 */ sw $a1, 0x18($sp)
    /* 80012EF0 3C04800E */ lui $a0, %hi(D_800E3740)
    /* 80012EF4 8C843740 */ lw $a0, %lo(D_800E3740)($a0)
    /* 80012EF8 AFA4001C */ sw $a0, 0x1C($sp)
    /* 80012EFC 3C04800E */ lui $a0, %hi(D_800E3720)
    /* 80012F00 8C843720 */ lw $a0, %lo(D_800E3720)($a0)
    /* 80012F04 AFA40020 */ sw $a0, 0x20($sp)
    /* 80012F08 8FC40028 */ lw $a0, 0x28($fp)
    /* 80012F0C 00402821 */ addu $a1, $v0, $zero
    /* 80012F10 00603021 */ addu $a2, $v1, $zero
    /* 80012F14 00003821 */ addu $a3, $zero, $zero
    /* 80012F18 0C00273F */ jal func_80009CFC
    /* 80012F1C 00000000 */ nop
    /* 80012F20 3C02800E */ lui $v0, %hi(D_800E0F4C)
    /* 80012F24 8C420F4C */ lw $v0, %lo(D_800E0F4C)($v0)
    /* 80012F28 24430008 */ addiu $v1, $v0, 0x8
    /* 80012F2C 3C01800E */ lui $at, %hi(D_800E0F4C)
    /* 80012F30 AC230F4C */ sw $v1, %lo(D_800E0F4C)($at)
    /* 80012F34 AFC20030 */ sw $v0, 0x30($fp)
    /* 80012F38 8FC20030 */ lw $v0, 0x30($fp)
    /* 80012F3C 3C03BD00 */ lui $v1, 0xBD00
    /* 80012F40 AC430000 */ sw $v1, 0x0($v0)
    /* 80012F44 8FC20030 */ lw $v0, 0x30($fp)
    /* 80012F48 AC400004 */ sw $zero, 0x4($v0)
.L80012F4C:
    /* 80012F4C 03C0E821 */ addu $sp, $fp, $zero
    /* 80012F50 8FBF003C */ lw $ra, 0x3C($sp)
    /* 80012F54 8FBE0038 */ lw $fp, 0x38($sp)
    /* 80012F58 27BD0040 */ addiu $sp, $sp, 0x40
    /* 80012F5C 03E00008 */ jr $ra
    /* 80012F60 00000000 */ nop
