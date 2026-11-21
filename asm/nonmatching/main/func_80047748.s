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
glabel func_80047748
    /* 80047748 27BDFFE8 */ addiu $sp, $sp, -0x18
    /* 8004774C AFBF0014 */ sw $ra, 0x14($sp)
    /* 80047750 8CA60008 */ lw $a2, 0x8($a1)
    /* 80047754 00804025 */ move $t0, $a0
    /* 80047758 00A03825 */ move $a3, $a1
    /* 8004775C 50C00023 */ beql $a2, $zero, .L800477EC
    /* 80047760 8FBF0014 */ lw $ra, 0x14($sp)
    /* 80047764 8CCE00D8 */ lw $t6, 0xD8($a2)
    /* 80047768 51C0001A */ beql $t6, $zero, .L800477D4
    /* 8004776C 01002025 */ move $a0, $t0
    /* 80047770 AFA5001C */ sw $a1, 0x1C($sp)
    /* 80047774 0C00F3B6 */ jal __allocParam
    /* 80047778 AFA40018 */ sw $a0, 0x18($sp)
    /* 8004777C 8FA7001C */ lw $a3, 0x1C($sp)
    /* 80047780 8FA80018 */ lw $t0, 0x18($sp)
    /* 80047784 10400018 */ beqz $v0, .L800477E8
    /* 80047788 00403025 */ move $a2, $v0
    /* 8004778C 8CF80008 */ lw $t8, 0x8($a3)
    /* 80047790 8D0F001C */ lw $t7, 0x1C($t0)
    /* 80047794 24050003 */ addiu $a1, $zero, 0x3
    /* 80047798 8F1900D8 */ lw $t9, 0xD8($t8)
    /* 8004779C A4400008 */ sh $zero, 0x8($v0)
    /* 800477A0 01F94821 */ addu $t1, $t7, $t9
    /* 800477A4 AC490004 */ sw $t1, 0x4($v0)
    /* 800477A8 8CEA0008 */ lw $t2, 0x8($a3)
    /* 800477AC AC4A000C */ sw $t2, 0xC($v0)
    /* 800477B0 8CEB0008 */ lw $t3, 0x8($a3)
    /* 800477B4 8D64000C */ lw $a0, 0xC($t3)
    /* 800477B8 AFA7001C */ sw $a3, 0x1C($sp)
    /* 800477BC 8C990008 */ lw $t9, 0x8($a0)
    /* 800477C0 0320F809 */ jalr $t9
    /* 800477C4 00000000 */ nop
    /* 800477C8 10000006 */ b .L800477E4
    /* 800477CC 8FA7001C */ lw $a3, 0x1C($sp)
    /* 800477D0 01002025 */ move $a0, $t0
.L800477D4:
    /* 800477D4 00C02825 */ move $a1, $a2
    /* 800477D8 0C00F38A */ jal _freePVoice
    /* 800477DC AFA7001C */ sw $a3, 0x1C($sp)
    /* 800477E0 8FA7001C */ lw $a3, 0x1C($sp)
.L800477E4:
    /* 800477E4 ACE00008 */ sw $zero, 0x8($a3)
.L800477E8:
    /* 800477E8 8FBF0014 */ lw $ra, 0x14($sp)
.L800477EC:
    /* 800477EC 27BD0018 */ addiu $sp, $sp, 0x18
    /* 800477F0 03E00008 */ jr $ra
    /* 800477F4 00000000 */ nop
