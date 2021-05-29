.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global DBClose
DBClose:
/* 800AE560 000AB4A0  4E 80 00 20 */	blr 

.global DBOpen
DBOpen:
/* 800AE564 000AB4A4  4E 80 00 20 */	blr 

.global DBWrite
DBWrite:
/* 800AE568 000AB4A8  7C 08 02 A6 */	mflr r0
/* 800AE56C 000AB4AC  90 01 00 04 */	stw r0, 4(r1)
/* 800AE570 000AB4B0  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 800AE574 000AB4B4  BF 01 00 58 */	stmw r24, 0x58(r1)
/* 800AE578 000AB4B8  3B 43 00 00 */	addi r26, r3, 0
/* 800AE57C 000AB4BC  3B 64 00 00 */	addi r27, r4, 0
/* 800AE580 000AB4C0  4B FE 1C 4D */	bl OSDisableInterrupts
/* 800AE584 000AB4C4  3B 83 00 00 */	addi r28, r3, 0
/* 800AE588 000AB4C8  3F 20 CC 00 */	lis r25, 0xCC006828@ha
/* 800AE58C 000AB4CC  3F E0 40 00 */	lis r31, 0x4000
lbl_800AE590:
/* 800AE590 000AB4D0  80 19 68 28 */	lwz r0, 0xCC006828@l(r25)
/* 800AE594 000AB4D4  3B D9 68 00 */	addi r30, r25, 0x6800
/* 800AE598 000AB4D8  38 61 00 50 */	addi r3, r1, 0x50
/* 800AE59C 000AB4DC  70 00 04 05 */	andi. r0, r0, 0x405
/* 800AE5A0 000AB4E0  38 80 00 02 */	li r4, 2
/* 800AE5A4 000AB4E4  38 A0 00 01 */	li r5, 1
/* 800AE5A8 000AB4E8  60 00 00 C0 */	ori r0, r0, 0xc0
/* 800AE5AC 000AB4EC  94 1E 00 28 */	stwu r0, 0x28(r30)
/* 800AE5B0 000AB4F0  93 E1 00 50 */	stw r31, 0x50(r1)
/* 800AE5B4 000AB4F4  48 00 07 95 */	bl DBGEXIImm
/* 800AE5B8 000AB4F8  7C 60 00 34 */	cntlzw r0, r3
/* 800AE5BC 000AB4FC  54 18 D9 7E */	srwi r24, r0, 5
lbl_800AE5C0:
/* 800AE5C0 000AB500  3B B9 68 00 */	addi r29, r25, 0x6800
/* 800AE5C4 000AB504  84 1D 00 34 */	lwzu r0, 0x34(r29)
/* 800AE5C8 000AB508  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE5CC 000AB50C  40 82 FF F4 */	bne lbl_800AE5C0
/* 800AE5D0 000AB510  38 61 00 54 */	addi r3, r1, 0x54
/* 800AE5D4 000AB514  38 80 00 04 */	li r4, 4
/* 800AE5D8 000AB518  38 A0 00 00 */	li r5, 0
/* 800AE5DC 000AB51C  48 00 07 6D */	bl DBGEXIImm
lbl_800AE5E0:
/* 800AE5E0 000AB520  80 1D 00 00 */	lwz r0, 0(r29)
/* 800AE5E4 000AB524  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE5E8 000AB528  40 82 FF F8 */	bne lbl_800AE5E0
/* 800AE5EC 000AB52C  80 1E 00 00 */	lwz r0, 0(r30)
/* 800AE5F0 000AB530  70 00 04 05 */	andi. r0, r0, 0x405
/* 800AE5F4 000AB534  90 1E 00 00 */	stw r0, 0(r30)
/* 800AE5F8 000AB538  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800AE5FC 000AB53C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800AE600 000AB540  40 82 FF 90 */	bne lbl_800AE590
/* 800AE604 000AB544  88 6D 82 E8 */	lbz r3, SendCount@sda21(r13)
/* 800AE608 000AB548  38 03 00 01 */	addi r0, r3, 1
/* 800AE60C 000AB54C  98 0D 82 E8 */	stb r0, SendCount@sda21(r13)
/* 800AE610 000AB550  88 0D 82 E8 */	lbz r0, SendCount@sda21(r13)
/* 800AE614 000AB554  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE618 000AB558  41 82 00 0C */	beq lbl_800AE624
/* 800AE61C 000AB55C  38 60 10 00 */	li r3, 0x1000
/* 800AE620 000AB560  48 00 00 08 */	b lbl_800AE628
lbl_800AE624:
/* 800AE624 000AB564  38 60 00 00 */	li r3, 0
lbl_800AE628:
/* 800AE628 000AB568  38 1B 00 03 */	addi r0, r27, 3
/* 800AE62C 000AB56C  64 79 00 01 */	oris r25, r3, 1
/* 800AE630 000AB570  54 18 00 3A */	rlwinm r24, r0, 0, 0, 0x1d
/* 800AE634 000AB574  63 39 C0 00 */	ori r25, r25, 0xc000
lbl_800AE638:
/* 800AE638 000AB578  38 79 00 00 */	addi r3, r25, 0
/* 800AE63C 000AB57C  38 9A 00 00 */	addi r4, r26, 0
/* 800AE640 000AB580  38 B8 00 00 */	addi r5, r24, 0
/* 800AE644 000AB584  48 00 04 A1 */	bl DBGWrite
/* 800AE648 000AB588  2C 03 00 00 */	cmpwi r3, 0
/* 800AE64C 000AB58C  41 82 FF EC */	beq lbl_800AE638
/* 800AE650 000AB590  3F E0 40 00 */	lis r31, 0x4000
lbl_800AE654:
/* 800AE654 000AB594  80 1E 00 00 */	lwz r0, 0(r30)
/* 800AE658 000AB598  38 61 00 4C */	addi r3, r1, 0x4c
/* 800AE65C 000AB59C  38 80 00 02 */	li r4, 2
/* 800AE660 000AB5A0  70 00 04 05 */	andi. r0, r0, 0x405
/* 800AE664 000AB5A4  38 A0 00 01 */	li r5, 1
/* 800AE668 000AB5A8  60 00 00 C0 */	ori r0, r0, 0xc0
/* 800AE66C 000AB5AC  90 1E 00 00 */	stw r0, 0(r30)
/* 800AE670 000AB5B0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800AE674 000AB5B4  48 00 06 D5 */	bl DBGEXIImm
/* 800AE678 000AB5B8  7C 60 00 34 */	cntlzw r0, r3
/* 800AE67C 000AB5BC  54 1A D9 7E */	srwi r26, r0, 5
lbl_800AE680:
/* 800AE680 000AB5C0  80 1D 00 00 */	lwz r0, 0(r29)
/* 800AE684 000AB5C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE688 000AB5C8  40 82 FF F8 */	bne lbl_800AE680
/* 800AE68C 000AB5CC  38 61 00 54 */	addi r3, r1, 0x54
/* 800AE690 000AB5D0  38 80 00 04 */	li r4, 4
/* 800AE694 000AB5D4  38 A0 00 00 */	li r5, 0
/* 800AE698 000AB5D8  48 00 06 B1 */	bl DBGEXIImm
lbl_800AE69C:
/* 800AE69C 000AB5DC  80 1D 00 00 */	lwz r0, 0(r29)
/* 800AE6A0 000AB5E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE6A4 000AB5E4  40 82 FF F8 */	bne lbl_800AE69C
/* 800AE6A8 000AB5E8  80 1E 00 00 */	lwz r0, 0(r30)
/* 800AE6AC 000AB5EC  70 00 04 05 */	andi. r0, r0, 0x405
/* 800AE6B0 000AB5F0  90 1E 00 00 */	stw r0, 0(r30)
/* 800AE6B4 000AB5F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800AE6B8 000AB5F8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800AE6BC 000AB5FC  40 82 FF 98 */	bne lbl_800AE654
/* 800AE6C0 000AB600  88 0D 82 E8 */	lbz r0, SendCount@sda21(r13)
/* 800AE6C4 000AB604  54 00 80 1E */	slwi r0, r0, 0x10
/* 800AE6C8 000AB608  64 00 1F 00 */	oris r0, r0, 0x1f00
/* 800AE6CC 000AB60C  7C 00 DB 78 */	or r0, r0, r27
/* 800AE6D0 000AB610  54 00 00 FE */	clrlwi r0, r0, 3
/* 800AE6D4 000AB614  64 18 C0 00 */	oris r24, r0, 0xc000
lbl_800AE6D8:
/* 800AE6D8 000AB618  80 1E 00 00 */	lwz r0, 0(r30)
/* 800AE6DC 000AB61C  38 61 00 44 */	addi r3, r1, 0x44
/* 800AE6E0 000AB620  38 80 00 04 */	li r4, 4
/* 800AE6E4 000AB624  70 00 04 05 */	andi. r0, r0, 0x405
/* 800AE6E8 000AB628  38 A0 00 01 */	li r5, 1
/* 800AE6EC 000AB62C  60 00 00 C0 */	ori r0, r0, 0xc0
/* 800AE6F0 000AB630  90 1E 00 00 */	stw r0, 0(r30)
/* 800AE6F4 000AB634  93 01 00 44 */	stw r24, 0x44(r1)
/* 800AE6F8 000AB638  48 00 06 51 */	bl DBGEXIImm
/* 800AE6FC 000AB63C  7C 60 00 34 */	cntlzw r0, r3
/* 800AE700 000AB640  54 03 D9 7E */	srwi r3, r0, 5
lbl_800AE704:
/* 800AE704 000AB644  80 1D 00 00 */	lwz r0, 0(r29)
/* 800AE708 000AB648  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE70C 000AB64C  40 82 FF F8 */	bne lbl_800AE704
/* 800AE710 000AB650  80 1E 00 00 */	lwz r0, 0(r30)
/* 800AE714 000AB654  70 00 04 05 */	andi. r0, r0, 0x405
/* 800AE718 000AB658  2C 03 00 00 */	cmpwi r3, 0
/* 800AE71C 000AB65C  90 1E 00 00 */	stw r0, 0(r30)
/* 800AE720 000AB660  40 82 FF B8 */	bne lbl_800AE6D8
/* 800AE724 000AB664  3F 60 40 00 */	lis r27, 0x4000
lbl_800AE728:
/* 800AE728 000AB668  80 1E 00 00 */	lwz r0, 0(r30)
/* 800AE72C 000AB66C  38 61 00 3C */	addi r3, r1, 0x3c
/* 800AE730 000AB670  38 80 00 02 */	li r4, 2
/* 800AE734 000AB674  70 00 04 05 */	andi. r0, r0, 0x405
/* 800AE738 000AB678  38 A0 00 01 */	li r5, 1
/* 800AE73C 000AB67C  60 00 00 C0 */	ori r0, r0, 0xc0
/* 800AE740 000AB680  90 1E 00 00 */	stw r0, 0(r30)
/* 800AE744 000AB684  93 61 00 3C */	stw r27, 0x3c(r1)
/* 800AE748 000AB688  48 00 06 01 */	bl DBGEXIImm
/* 800AE74C 000AB68C  7C 60 00 34 */	cntlzw r0, r3
/* 800AE750 000AB690  54 1A D9 7E */	srwi r26, r0, 5
lbl_800AE754:
/* 800AE754 000AB694  80 1D 00 00 */	lwz r0, 0(r29)
/* 800AE758 000AB698  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE75C 000AB69C  40 82 FF F8 */	bne lbl_800AE754
/* 800AE760 000AB6A0  38 61 00 54 */	addi r3, r1, 0x54
/* 800AE764 000AB6A4  38 80 00 04 */	li r4, 4
/* 800AE768 000AB6A8  38 A0 00 00 */	li r5, 0
/* 800AE76C 000AB6AC  48 00 05 DD */	bl DBGEXIImm
/* 800AE770 000AB6B0  7C 60 00 34 */	cntlzw r0, r3
/* 800AE774 000AB6B4  54 00 D9 7E */	srwi r0, r0, 5
/* 800AE778 000AB6B8  7F 43 03 78 */	or r3, r26, r0
lbl_800AE77C:
/* 800AE77C 000AB6BC  80 1D 00 00 */	lwz r0, 0(r29)
/* 800AE780 000AB6C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE784 000AB6C4  40 82 FF F8 */	bne lbl_800AE77C
/* 800AE788 000AB6C8  80 1E 00 00 */	lwz r0, 0(r30)
/* 800AE78C 000AB6CC  70 00 04 05 */	andi. r0, r0, 0x405
/* 800AE790 000AB6D0  2C 03 00 00 */	cmpwi r3, 0
/* 800AE794 000AB6D4  90 1E 00 00 */	stw r0, 0(r30)
/* 800AE798 000AB6D8  40 82 FF 90 */	bne lbl_800AE728
/* 800AE79C 000AB6DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800AE7A0 000AB6E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800AE7A4 000AB6E4  40 82 FF 84 */	bne lbl_800AE728
/* 800AE7A8 000AB6E8  7F 83 E3 78 */	mr r3, r28
/* 800AE7AC 000AB6EC  4B FE 1A 49 */	bl OSRestoreInterrupts
/* 800AE7B0 000AB6F0  BB 01 00 58 */	lmw r24, 0x58(r1)
/* 800AE7B4 000AB6F4  38 60 00 00 */	li r3, 0
/* 800AE7B8 000AB6F8  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 800AE7BC 000AB6FC  38 21 00 78 */	addi r1, r1, 0x78
/* 800AE7C0 000AB700  7C 08 03 A6 */	mtlr r0
/* 800AE7C4 000AB704  4E 80 00 20 */	blr 

.global DBRead
DBRead:
/* 800AE7C8 000AB708  7C 08 02 A6 */	mflr r0
/* 800AE7CC 000AB70C  90 01 00 04 */	stw r0, 4(r1)
/* 800AE7D0 000AB710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AE7D4 000AB714  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AE7D8 000AB718  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800AE7DC 000AB71C  3B C4 00 00 */	addi r30, r4, 0
/* 800AE7E0 000AB720  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800AE7E4 000AB724  3B A3 00 00 */	addi r29, r3, 0
/* 800AE7E8 000AB728  4B FE 19 E5 */	bl OSDisableInterrupts
/* 800AE7EC 000AB72C  80 0D 95 A8 */	lwz r0, SendMailData@sda21(r13)
/* 800AE7F0 000AB730  3B E3 00 00 */	addi r31, r3, 0
/* 800AE7F4 000AB734  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800AE7F8 000AB738  41 82 00 0C */	beq lbl_800AE804
/* 800AE7FC 000AB73C  38 60 10 00 */	li r3, 0x1000
/* 800AE800 000AB740  48 00 00 08 */	b lbl_800AE808
lbl_800AE804:
/* 800AE804 000AB744  38 60 00 00 */	li r3, 0
lbl_800AE808:
/* 800AE808 000AB748  3C 63 00 02 */	addis r3, r3, 2
/* 800AE80C 000AB74C  38 1E 00 03 */	addi r0, r30, 3
/* 800AE810 000AB750  38 9D 00 00 */	addi r4, r29, 0
/* 800AE814 000AB754  54 05 00 3A */	rlwinm r5, r0, 0, 0, 0x1d
/* 800AE818 000AB758  38 63 E0 00 */	addi r3, r3, -8192
/* 800AE81C 000AB75C  48 00 03 A5 */	bl DBGRead
/* 800AE820 000AB760  38 00 00 00 */	li r0, 0
/* 800AE824 000AB764  90 0D 95 AC */	stw r0, RecvDataLeng@sda21(r13)
/* 800AE828 000AB768  7F E3 FB 78 */	mr r3, r31
/* 800AE82C 000AB76C  98 0D 95 B4 */	stb r0, EXIInputFlag@sda21(r13)
/* 800AE830 000AB770  4B FE 19 C5 */	bl OSRestoreInterrupts
/* 800AE834 000AB774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AE838 000AB778  38 60 00 00 */	li r3, 0
/* 800AE83C 000AB77C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AE840 000AB780  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800AE844 000AB784  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800AE848 000AB788  38 21 00 20 */	addi r1, r1, 0x20
/* 800AE84C 000AB78C  7C 08 03 A6 */	mtlr r0
/* 800AE850 000AB790  4E 80 00 20 */	blr 

.global DBQueryData
DBQueryData:
/* 800AE854 000AB794  7C 08 02 A6 */	mflr r0
/* 800AE858 000AB798  38 60 00 00 */	li r3, 0
/* 800AE85C 000AB79C  90 01 00 04 */	stw r0, 4(r1)
/* 800AE860 000AB7A0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800AE864 000AB7A4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800AE868 000AB7A8  80 0D 95 AC */	lwz r0, RecvDataLeng@sda21(r13)
/* 800AE86C 000AB7AC  98 6D 95 B4 */	stb r3, EXIInputFlag@sda21(r13)
/* 800AE870 000AB7B0  2C 00 00 00 */	cmpwi r0, 0
/* 800AE874 000AB7B4  40 82 00 64 */	bne lbl_800AE8D8
/* 800AE878 000AB7B8  4B FE 19 55 */	bl OSDisableInterrupts
/* 800AE87C 000AB7BC  3B E3 00 00 */	addi r31, r3, 0
/* 800AE880 000AB7C0  38 61 00 08 */	addi r3, r1, 8
/* 800AE884 000AB7C4  48 00 01 B5 */	bl DBGReadStatus
/* 800AE888 000AB7C8  80 01 00 08 */	lwz r0, 8(r1)
/* 800AE88C 000AB7CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE890 000AB7D0  41 82 00 40 */	beq lbl_800AE8D0
/* 800AE894 000AB7D4  38 61 00 08 */	addi r3, r1, 8
/* 800AE898 000AB7D8  48 00 04 05 */	bl DBGReadMailbox
/* 800AE89C 000AB7DC  80 01 00 08 */	lwz r0, 8(r1)
/* 800AE8A0 000AB7E0  54 00 00 FE */	clrlwi r0, r0, 3
/* 800AE8A4 000AB7E4  90 01 00 08 */	stw r0, 8(r1)
/* 800AE8A8 000AB7E8  80 81 00 08 */	lwz r4, 8(r1)
/* 800AE8AC 000AB7EC  54 83 00 CE */	rlwinm r3, r4, 0, 3, 7
/* 800AE8B0 000AB7F0  3C 03 E1 00 */	addis r0, r3, 0xe100
/* 800AE8B4 000AB7F4  28 00 00 00 */	cmplwi r0, 0
/* 800AE8B8 000AB7F8  40 82 00 18 */	bne lbl_800AE8D0
/* 800AE8BC 000AB7FC  54 83 04 7E */	clrlwi r3, r4, 0x11
/* 800AE8C0 000AB800  90 8D 95 A8 */	stw r4, SendMailData@sda21(r13)
/* 800AE8C4 000AB804  38 00 00 01 */	li r0, 1
/* 800AE8C8 000AB808  90 6D 95 AC */	stw r3, RecvDataLeng@sda21(r13)
/* 800AE8CC 000AB80C  98 0D 95 B4 */	stb r0, EXIInputFlag@sda21(r13)
lbl_800AE8D0:
/* 800AE8D0 000AB810  7F E3 FB 78 */	mr r3, r31
/* 800AE8D4 000AB814  4B FE 19 21 */	bl OSRestoreInterrupts
lbl_800AE8D8:
/* 800AE8D8 000AB818  80 6D 95 AC */	lwz r3, RecvDataLeng@sda21(r13)
/* 800AE8DC 000AB81C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800AE8E0 000AB820  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800AE8E4 000AB824  38 21 00 18 */	addi r1, r1, 0x18
/* 800AE8E8 000AB828  7C 08 03 A6 */	mtlr r0
/* 800AE8EC 000AB82C  4E 80 00 20 */	blr 

.global DBInitInterrupts
DBInitInterrupts:
/* 800AE8F0 000AB830  7C 08 02 A6 */	mflr r0
/* 800AE8F4 000AB834  3C 60 00 02 */	lis r3, 0x00018000@ha
/* 800AE8F8 000AB838  90 01 00 04 */	stw r0, 4(r1)
/* 800AE8FC 000AB83C  38 63 80 00 */	addi r3, r3, 0x00018000@l
/* 800AE900 000AB840  94 21 FF F8 */	stwu r1, -8(r1)
/* 800AE904 000AB844  4B FE 1C 91 */	bl __OSMaskInterrupts
/* 800AE908 000AB848  38 60 00 40 */	li r3, 0x40
/* 800AE90C 000AB84C  4B FE 1C 89 */	bl __OSMaskInterrupts
/* 800AE910 000AB850  3C 60 80 0B */	lis r3, MWCallback@ha
/* 800AE914 000AB854  38 03 E9 FC */	addi r0, r3, MWCallback@l
/* 800AE918 000AB858  3C 60 80 0B */	lis r3, DBGHandler@ha
/* 800AE91C 000AB85C  90 0D 95 A4 */	stw r0, DBGCallback@sda21(r13)
/* 800AE920 000AB860  38 83 E9 BC */	addi r4, r3, DBGHandler@l
/* 800AE924 000AB864  38 60 00 19 */	li r3, 0x19
/* 800AE928 000AB868  4B FE 18 F1 */	bl __OSSetInterruptHandler
/* 800AE92C 000AB86C  38 60 00 40 */	li r3, 0x40
/* 800AE930 000AB870  4B FE 1C ED */	bl __OSUnmaskInterrupts
/* 800AE934 000AB874  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800AE938 000AB878  38 21 00 08 */	addi r1, r1, 8
/* 800AE93C 000AB87C  7C 08 03 A6 */	mtlr r0
/* 800AE940 000AB880  4E 80 00 20 */	blr 

.global DBInitComm
DBInitComm:
/* 800AE944 000AB884  7C 08 02 A6 */	mflr r0
/* 800AE948 000AB888  90 01 00 04 */	stw r0, 4(r1)
/* 800AE94C 000AB88C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AE950 000AB890  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AE954 000AB894  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800AE958 000AB898  3B C4 00 00 */	addi r30, r4, 0
/* 800AE95C 000AB89C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800AE960 000AB8A0  3B A3 00 00 */	addi r29, r3, 0
/* 800AE964 000AB8A4  4B FE 18 69 */	bl OSDisableInterrupts
/* 800AE968 000AB8A8  38 0D 95 B4 */	addi r0, r13, EXIInputFlag@sda21
/* 800AE96C 000AB8AC  90 0D 95 B0 */	stw r0, pEXIInputFlag@sda21(r13)
/* 800AE970 000AB8B0  3C 80 00 02 */	lis r4, 0x00018000@ha
/* 800AE974 000AB8B4  3B E3 00 00 */	addi r31, r3, 0
/* 800AE978 000AB8B8  80 0D 95 B0 */	lwz r0, pEXIInputFlag@sda21(r13)
/* 800AE97C 000AB8BC  38 64 80 00 */	addi r3, r4, 0x00018000@l
/* 800AE980 000AB8C0  90 1D 00 00 */	stw r0, 0(r29)
/* 800AE984 000AB8C4  93 CD 95 A0 */	stw r30, MTRCallback@sda21(r13)
/* 800AE988 000AB8C8  4B FE 1C 0D */	bl __OSMaskInterrupts
/* 800AE98C 000AB8CC  3C 60 CC 00 */	lis r3, 0xCC006828@ha
/* 800AE990 000AB8D0  38 00 00 00 */	li r0, 0
/* 800AE994 000AB8D4  90 03 68 28 */	stw r0, 0xCC006828@l(r3)
/* 800AE998 000AB8D8  7F E3 FB 78 */	mr r3, r31
/* 800AE99C 000AB8DC  4B FE 18 59 */	bl OSRestoreInterrupts
/* 800AE9A0 000AB8E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AE9A4 000AB8E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AE9A8 000AB8E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800AE9AC 000AB8EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800AE9B0 000AB8F0  38 21 00 20 */	addi r1, r1, 0x20
/* 800AE9B4 000AB8F4  7C 08 03 A6 */	mtlr r0
/* 800AE9B8 000AB8F8  4E 80 00 20 */	blr 

.global DBGHandler
DBGHandler:
/* 800AE9BC 000AB8FC  7C 08 02 A6 */	mflr r0
/* 800AE9C0 000AB900  3C A0 CC 00 */	lis r5, 0xCC003000@ha
/* 800AE9C4 000AB904  90 01 00 04 */	stw r0, 4(r1)
/* 800AE9C8 000AB908  38 00 10 00 */	li r0, 0x1000
/* 800AE9CC 000AB90C  94 21 FF F8 */	stwu r1, -8(r1)
/* 800AE9D0 000AB910  81 8D 95 A4 */	lwz r12, DBGCallback@sda21(r13)
/* 800AE9D4 000AB914  90 05 30 00 */	stw r0, 0xCC003000@l(r5)
/* 800AE9D8 000AB918  28 0C 00 00 */	cmplwi r12, 0
/* 800AE9DC 000AB91C  41 82 00 10 */	beq lbl_800AE9EC
/* 800AE9E0 000AB920  7D 88 03 A6 */	mtlr r12
/* 800AE9E4 000AB924  7C 63 07 34 */	extsh r3, r3
/* 800AE9E8 000AB928  4E 80 00 21 */	blrl 
lbl_800AE9EC:
/* 800AE9EC 000AB92C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800AE9F0 000AB930  38 21 00 08 */	addi r1, r1, 8
/* 800AE9F4 000AB934  7C 08 03 A6 */	mtlr r0
/* 800AE9F8 000AB938  4E 80 00 20 */	blr 

.global MWCallback
MWCallback:
/* 800AE9FC 000AB93C  7C 08 02 A6 */	mflr r0
/* 800AEA00 000AB940  90 01 00 04 */	stw r0, 4(r1)
/* 800AEA04 000AB944  38 00 00 01 */	li r0, 1
/* 800AEA08 000AB948  94 21 FF F8 */	stwu r1, -8(r1)
/* 800AEA0C 000AB94C  81 8D 95 A0 */	lwz r12, MTRCallback@sda21(r13)
/* 800AEA10 000AB950  98 0D 95 B4 */	stb r0, EXIInputFlag@sda21(r13)
/* 800AEA14 000AB954  28 0C 00 00 */	cmplwi r12, 0
/* 800AEA18 000AB958  41 82 00 10 */	beq lbl_800AEA28
/* 800AEA1C 000AB95C  7D 88 03 A6 */	mtlr r12
/* 800AEA20 000AB960  38 60 00 00 */	li r3, 0
/* 800AEA24 000AB964  4E 80 00 21 */	blrl 
lbl_800AEA28:
/* 800AEA28 000AB968  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800AEA2C 000AB96C  38 21 00 08 */	addi r1, r1, 8
/* 800AEA30 000AB970  7C 08 03 A6 */	mtlr r0
/* 800AEA34 000AB974  4E 80 00 20 */	blr 

.global DBGReadStatus
DBGReadStatus:
/* 800AEA38 000AB978  7C 08 02 A6 */	mflr r0
/* 800AEA3C 000AB97C  38 80 00 02 */	li r4, 2
/* 800AEA40 000AB980  90 01 00 04 */	stw r0, 4(r1)
/* 800AEA44 000AB984  3C 00 40 00 */	lis r0, 0x4000
/* 800AEA48 000AB988  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800AEA4C 000AB98C  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800AEA50 000AB990  3F C0 CC 00 */	lis r30, 0xCC006800@ha
/* 800AEA54 000AB994  3B 63 00 00 */	addi r27, r3, 0
/* 800AEA58 000AB998  3B BE 68 00 */	addi r29, r30, 0xCC006800@l
/* 800AEA5C 000AB99C  38 61 00 18 */	addi r3, r1, 0x18
/* 800AEA60 000AB9A0  80 BE 68 28 */	lwz r5, 0x6828(r30)
/* 800AEA64 000AB9A4  70 A5 04 05 */	andi. r5, r5, 0x405
/* 800AEA68 000AB9A8  60 A5 00 C0 */	ori r5, r5, 0xc0
/* 800AEA6C 000AB9AC  94 BD 00 28 */	stwu r5, 0x28(r29)
/* 800AEA70 000AB9B0  38 A0 00 01 */	li r5, 1
/* 800AEA74 000AB9B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 800AEA78 000AB9B8  48 00 02 D1 */	bl DBGEXIImm
/* 800AEA7C 000AB9BC  7C 60 00 34 */	cntlzw r0, r3
/* 800AEA80 000AB9C0  54 1F D9 7E */	srwi r31, r0, 5
lbl_800AEA84:
/* 800AEA84 000AB9C4  3B 9E 68 00 */	addi r28, r30, 0x6800
/* 800AEA88 000AB9C8  84 1C 00 34 */	lwzu r0, 0x34(r28)
/* 800AEA8C 000AB9CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEA90 000AB9D0  40 82 FF F4 */	bne lbl_800AEA84
/* 800AEA94 000AB9D4  38 7B 00 00 */	addi r3, r27, 0
/* 800AEA98 000AB9D8  38 80 00 04 */	li r4, 4
/* 800AEA9C 000AB9DC  38 A0 00 00 */	li r5, 0
/* 800AEAA0 000AB9E0  48 00 02 A9 */	bl DBGEXIImm
/* 800AEAA4 000AB9E4  7C 60 00 34 */	cntlzw r0, r3
/* 800AEAA8 000AB9E8  54 00 D9 7E */	srwi r0, r0, 5
/* 800AEAAC 000AB9EC  7F E3 03 78 */	or r3, r31, r0
lbl_800AEAB0:
/* 800AEAB0 000AB9F0  80 1C 00 00 */	lwz r0, 0(r28)
/* 800AEAB4 000AB9F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEAB8 000AB9F8  40 82 FF F8 */	bne lbl_800AEAB0
/* 800AEABC 000AB9FC  80 9D 00 00 */	lwz r4, 0(r29)
/* 800AEAC0 000ABA00  7C 60 00 34 */	cntlzw r0, r3
/* 800AEAC4 000ABA04  54 03 D9 7E */	srwi r3, r0, 5
/* 800AEAC8 000ABA08  70 80 04 05 */	andi. r0, r4, 0x405
/* 800AEACC 000ABA0C  90 1D 00 00 */	stw r0, 0(r29)
/* 800AEAD0 000ABA10  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 800AEAD4 000ABA14  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800AEAD8 000ABA18  38 21 00 38 */	addi r1, r1, 0x38
/* 800AEADC 000ABA1C  7C 08 03 A6 */	mtlr r0
/* 800AEAE0 000ABA20  4E 80 00 20 */	blr 

.global DBGWrite
DBGWrite:
/* 800AEAE4 000ABA24  7C 08 02 A6 */	mflr r0
/* 800AEAE8 000ABA28  90 01 00 04 */	stw r0, 4(r1)
/* 800AEAEC 000ABA2C  54 60 41 EA */	rlwinm r0, r3, 8, 7, 0x15
/* 800AEAF0 000ABA30  64 00 A0 00 */	oris r0, r0, 0xa000
/* 800AEAF4 000ABA34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800AEAF8 000ABA38  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800AEAFC 000ABA3C  3F A0 CC 00 */	lis r29, 0xCC006800@ha
/* 800AEB00 000ABA40  3B C5 00 00 */	addi r30, r5, 0
/* 800AEB04 000ABA44  3B 44 00 00 */	addi r26, r4, 0
/* 800AEB08 000ABA48  3B FD 68 00 */	addi r31, r29, 0xCC006800@l
/* 800AEB0C 000ABA4C  38 61 00 24 */	addi r3, r1, 0x24
/* 800AEB10 000ABA50  38 80 00 04 */	li r4, 4
/* 800AEB14 000ABA54  38 A0 00 01 */	li r5, 1
/* 800AEB18 000ABA58  80 DD 68 28 */	lwz r6, 0x6828(r29)
/* 800AEB1C 000ABA5C  70 C6 04 05 */	andi. r6, r6, 0x405
/* 800AEB20 000ABA60  60 C6 00 C0 */	ori r6, r6, 0xc0
/* 800AEB24 000ABA64  94 DF 00 28 */	stwu r6, 0x28(r31)
/* 800AEB28 000ABA68  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AEB2C 000ABA6C  48 00 02 1D */	bl DBGEXIImm
/* 800AEB30 000ABA70  7C 60 00 34 */	cntlzw r0, r3
/* 800AEB34 000ABA74  54 00 D9 7E */	srwi r0, r0, 5
/* 800AEB38 000ABA78  7C 1B 03 78 */	mr r27, r0
lbl_800AEB3C:
/* 800AEB3C 000ABA7C  3B 9D 68 00 */	addi r28, r29, 0x6800
/* 800AEB40 000ABA80  84 1C 00 34 */	lwzu r0, 0x34(r28)
/* 800AEB44 000ABA84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEB48 000ABA88  40 82 FF F4 */	bne lbl_800AEB3C
/* 800AEB4C 000ABA8C  48 00 00 44 */	b lbl_800AEB90
lbl_800AEB50:
/* 800AEB50 000ABA90  80 1A 00 00 */	lwz r0, 0(r26)
/* 800AEB54 000ABA94  38 61 00 20 */	addi r3, r1, 0x20
/* 800AEB58 000ABA98  38 80 00 04 */	li r4, 4
/* 800AEB5C 000ABA9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 800AEB60 000ABAA0  38 A0 00 01 */	li r5, 1
/* 800AEB64 000ABAA4  3B 5A 00 04 */	addi r26, r26, 4
/* 800AEB68 000ABAA8  48 00 01 E1 */	bl DBGEXIImm
/* 800AEB6C 000ABAAC  7C 60 00 34 */	cntlzw r0, r3
/* 800AEB70 000ABAB0  54 00 D9 7E */	srwi r0, r0, 5
/* 800AEB74 000ABAB4  7F 7B 03 78 */	or r27, r27, r0
lbl_800AEB78:
/* 800AEB78 000ABAB8  80 1C 00 00 */	lwz r0, 0(r28)
/* 800AEB7C 000ABABC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEB80 000ABAC0  40 82 FF F8 */	bne lbl_800AEB78
/* 800AEB84 000ABAC4  37 DE FF FC */	addic. r30, r30, -4
/* 800AEB88 000ABAC8  40 80 00 08 */	bge lbl_800AEB90
/* 800AEB8C 000ABACC  3B C0 00 00 */	li r30, 0
lbl_800AEB90:
/* 800AEB90 000ABAD0  2C 1E 00 00 */	cmpwi r30, 0
/* 800AEB94 000ABAD4  40 82 FF BC */	bne lbl_800AEB50
/* 800AEB98 000ABAD8  80 9F 00 00 */	lwz r4, 0(r31)
/* 800AEB9C 000ABADC  7F 60 00 34 */	cntlzw r0, r27
/* 800AEBA0 000ABAE0  54 03 D9 7E */	srwi r3, r0, 5
/* 800AEBA4 000ABAE4  70 80 04 05 */	andi. r0, r4, 0x405
/* 800AEBA8 000ABAE8  90 1F 00 00 */	stw r0, 0(r31)
/* 800AEBAC 000ABAEC  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800AEBB0 000ABAF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800AEBB4 000ABAF4  38 21 00 40 */	addi r1, r1, 0x40
/* 800AEBB8 000ABAF8  7C 08 03 A6 */	mtlr r0
/* 800AEBBC 000ABAFC  4E 80 00 20 */	blr 

.global DBGRead
DBGRead:
/* 800AEBC0 000ABB00  7C 08 02 A6 */	mflr r0
/* 800AEBC4 000ABB04  90 01 00 04 */	stw r0, 4(r1)
/* 800AEBC8 000ABB08  54 60 41 EA */	rlwinm r0, r3, 8, 7, 0x15
/* 800AEBCC 000ABB0C  64 00 20 00 */	oris r0, r0, 0x2000
/* 800AEBD0 000ABB10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800AEBD4 000ABB14  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800AEBD8 000ABB18  3F A0 CC 00 */	lis r29, 0xCC006800@ha
/* 800AEBDC 000ABB1C  3B C5 00 00 */	addi r30, r5, 0
/* 800AEBE0 000ABB20  3B 44 00 00 */	addi r26, r4, 0
/* 800AEBE4 000ABB24  3B FD 68 00 */	addi r31, r29, 0xCC006800@l
/* 800AEBE8 000ABB28  38 61 00 24 */	addi r3, r1, 0x24
/* 800AEBEC 000ABB2C  38 80 00 04 */	li r4, 4
/* 800AEBF0 000ABB30  38 A0 00 01 */	li r5, 1
/* 800AEBF4 000ABB34  80 DD 68 28 */	lwz r6, 0x6828(r29)
/* 800AEBF8 000ABB38  70 C6 04 05 */	andi. r6, r6, 0x405
/* 800AEBFC 000ABB3C  60 C6 00 C0 */	ori r6, r6, 0xc0
/* 800AEC00 000ABB40  94 DF 00 28 */	stwu r6, 0x28(r31)
/* 800AEC04 000ABB44  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AEC08 000ABB48  48 00 01 41 */	bl DBGEXIImm
/* 800AEC0C 000ABB4C  7C 60 00 34 */	cntlzw r0, r3
/* 800AEC10 000ABB50  54 00 D9 7E */	srwi r0, r0, 5
/* 800AEC14 000ABB54  7C 1B 03 78 */	mr r27, r0
lbl_800AEC18:
/* 800AEC18 000ABB58  3B 9D 68 00 */	addi r28, r29, 0x6800
/* 800AEC1C 000ABB5C  84 1C 00 34 */	lwzu r0, 0x34(r28)
/* 800AEC20 000ABB60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEC24 000ABB64  40 82 FF F4 */	bne lbl_800AEC18
/* 800AEC28 000ABB68  48 00 00 44 */	b lbl_800AEC6C
lbl_800AEC2C:
/* 800AEC2C 000ABB6C  38 61 00 20 */	addi r3, r1, 0x20
/* 800AEC30 000ABB70  38 80 00 04 */	li r4, 4
/* 800AEC34 000ABB74  38 A0 00 00 */	li r5, 0
/* 800AEC38 000ABB78  48 00 01 11 */	bl DBGEXIImm
/* 800AEC3C 000ABB7C  7C 60 00 34 */	cntlzw r0, r3
/* 800AEC40 000ABB80  54 00 D9 7E */	srwi r0, r0, 5
/* 800AEC44 000ABB84  7F 7B 03 78 */	or r27, r27, r0
lbl_800AEC48:
/* 800AEC48 000ABB88  80 1C 00 00 */	lwz r0, 0(r28)
/* 800AEC4C 000ABB8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEC50 000ABB90  40 82 FF F8 */	bne lbl_800AEC48
/* 800AEC54 000ABB94  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800AEC58 000ABB98  37 DE FF FC */	addic. r30, r30, -4
/* 800AEC5C 000ABB9C  90 1A 00 00 */	stw r0, 0(r26)
/* 800AEC60 000ABBA0  3B 5A 00 04 */	addi r26, r26, 4
/* 800AEC64 000ABBA4  40 80 00 08 */	bge lbl_800AEC6C
/* 800AEC68 000ABBA8  3B C0 00 00 */	li r30, 0
lbl_800AEC6C:
/* 800AEC6C 000ABBAC  2C 1E 00 00 */	cmpwi r30, 0
/* 800AEC70 000ABBB0  40 82 FF BC */	bne lbl_800AEC2C
/* 800AEC74 000ABBB4  80 9F 00 00 */	lwz r4, 0(r31)
/* 800AEC78 000ABBB8  7F 60 00 34 */	cntlzw r0, r27
/* 800AEC7C 000ABBBC  54 03 D9 7E */	srwi r3, r0, 5
/* 800AEC80 000ABBC0  70 80 04 05 */	andi. r0, r4, 0x405
/* 800AEC84 000ABBC4  90 1F 00 00 */	stw r0, 0(r31)
/* 800AEC88 000ABBC8  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800AEC8C 000ABBCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800AEC90 000ABBD0  38 21 00 40 */	addi r1, r1, 0x40
/* 800AEC94 000ABBD4  7C 08 03 A6 */	mtlr r0
/* 800AEC98 000ABBD8  4E 80 00 20 */	blr 

.global DBGReadMailbox
DBGReadMailbox:
/* 800AEC9C 000ABBDC  7C 08 02 A6 */	mflr r0
/* 800AECA0 000ABBE0  38 80 00 02 */	li r4, 2
/* 800AECA4 000ABBE4  90 01 00 04 */	stw r0, 4(r1)
/* 800AECA8 000ABBE8  3C 00 60 00 */	lis r0, 0x6000
/* 800AECAC 000ABBEC  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800AECB0 000ABBF0  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800AECB4 000ABBF4  3F C0 CC 00 */	lis r30, 0xCC006800@ha
/* 800AECB8 000ABBF8  3B 63 00 00 */	addi r27, r3, 0
/* 800AECBC 000ABBFC  3B BE 68 00 */	addi r29, r30, 0xCC006800@l
/* 800AECC0 000ABC00  38 61 00 18 */	addi r3, r1, 0x18
/* 800AECC4 000ABC04  80 BE 68 28 */	lwz r5, 0x6828(r30)
/* 800AECC8 000ABC08  70 A5 04 05 */	andi. r5, r5, 0x405
/* 800AECCC 000ABC0C  60 A5 00 C0 */	ori r5, r5, 0xc0
/* 800AECD0 000ABC10  94 BD 00 28 */	stwu r5, 0x28(r29)
/* 800AECD4 000ABC14  38 A0 00 01 */	li r5, 1
/* 800AECD8 000ABC18  90 01 00 18 */	stw r0, 0x18(r1)
/* 800AECDC 000ABC1C  48 00 00 6D */	bl DBGEXIImm
/* 800AECE0 000ABC20  7C 60 00 34 */	cntlzw r0, r3
/* 800AECE4 000ABC24  54 1F D9 7E */	srwi r31, r0, 5
lbl_800AECE8:
/* 800AECE8 000ABC28  3B 9E 68 00 */	addi r28, r30, 0x6800
/* 800AECEC 000ABC2C  84 1C 00 34 */	lwzu r0, 0x34(r28)
/* 800AECF0 000ABC30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AECF4 000ABC34  40 82 FF F4 */	bne lbl_800AECE8
/* 800AECF8 000ABC38  38 7B 00 00 */	addi r3, r27, 0
/* 800AECFC 000ABC3C  38 80 00 04 */	li r4, 4
/* 800AED00 000ABC40  38 A0 00 00 */	li r5, 0
/* 800AED04 000ABC44  48 00 00 45 */	bl DBGEXIImm
/* 800AED08 000ABC48  7C 60 00 34 */	cntlzw r0, r3
/* 800AED0C 000ABC4C  54 00 D9 7E */	srwi r0, r0, 5
/* 800AED10 000ABC50  7F E3 03 78 */	or r3, r31, r0
lbl_800AED14:
/* 800AED14 000ABC54  80 1C 00 00 */	lwz r0, 0(r28)
/* 800AED18 000ABC58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AED1C 000ABC5C  40 82 FF F8 */	bne lbl_800AED14
/* 800AED20 000ABC60  80 9D 00 00 */	lwz r4, 0(r29)
/* 800AED24 000ABC64  7C 60 00 34 */	cntlzw r0, r3
/* 800AED28 000ABC68  54 03 D9 7E */	srwi r3, r0, 5
/* 800AED2C 000ABC6C  70 80 04 05 */	andi. r0, r4, 0x405
/* 800AED30 000ABC70  90 1D 00 00 */	stw r0, 0(r29)
/* 800AED34 000ABC74  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 800AED38 000ABC78  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800AED3C 000ABC7C  38 21 00 38 */	addi r1, r1, 0x38
/* 800AED40 000ABC80  7C 08 03 A6 */	mtlr r0
/* 800AED44 000ABC84  4E 80 00 20 */	blr 

.global DBGEXIImm
DBGEXIImm:
/* 800AED48 000ABC88  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 800AED4C 000ABC8C  28 05 00 00 */	cmplwi r5, 0
/* 800AED50 000ABC90  BE C1 00 20 */	stmw r22, 0x20(r1)
/* 800AED54 000ABC94  41 82 01 38 */	beq lbl_800AEE8C
/* 800AED58 000ABC98  3B A0 00 00 */	li r29, 0
/* 800AED5C 000ABC9C  7C 1D 20 00 */	cmpw r29, r4
/* 800AED60 000ABCA0  3B C0 00 00 */	li r30, 0
/* 800AED64 000ABCA4  40 80 01 20 */	bge lbl_800AEE84
/* 800AED68 000ABCA8  2C 04 00 08 */	cmpwi r4, 8
/* 800AED6C 000ABCAC  38 C4 FF F8 */	addi r6, r4, -8
/* 800AED70 000ABCB0  40 81 02 5C */	ble lbl_800AEFCC
/* 800AED74 000ABCB4  38 06 00 07 */	addi r0, r6, 7
/* 800AED78 000ABCB8  54 00 E8 FE */	srwi r0, r0, 3
/* 800AED7C 000ABCBC  2C 06 00 00 */	cmpwi r6, 0
/* 800AED80 000ABCC0  7C 09 03 A6 */	mtctr r0
/* 800AED84 000ABCC4  3B E3 00 00 */	addi r31, r3, 0
/* 800AED88 000ABCC8  40 81 02 44 */	ble lbl_800AEFCC
lbl_800AED8C:
/* 800AED8C 000ABCCC  20 DD 00 03 */	subfic r6, r29, 3
/* 800AED90 000ABCD0  89 9F 00 00 */	lbz r12, 0(r31)
/* 800AED94 000ABCD4  38 1D 00 01 */	addi r0, r29, 1
/* 800AED98 000ABCD8  89 7F 00 01 */	lbz r11, 1(r31)
/* 800AED9C 000ABCDC  54 CA 18 38 */	slwi r10, r6, 3
/* 800AEDA0 000ABCE0  89 3F 00 02 */	lbz r9, 2(r31)
/* 800AEDA4 000ABCE4  21 00 00 03 */	subfic r8, r0, 3
/* 800AEDA8 000ABCE8  88 FF 00 03 */	lbz r7, 3(r31)
/* 800AEDAC 000ABCEC  38 DD 00 02 */	addi r6, r29, 2
/* 800AEDB0 000ABCF0  88 1F 00 04 */	lbz r0, 4(r31)
/* 800AEDB4 000ABCF4  7D 8C 50 30 */	slw r12, r12, r10
/* 800AEDB8 000ABCF8  8A FF 00 05 */	lbz r23, 5(r31)
/* 800AEDBC 000ABCFC  55 0A 18 38 */	slwi r10, r8, 3
/* 800AEDC0 000ABD00  8B 3F 00 06 */	lbz r25, 6(r31)
/* 800AEDC4 000ABD04  20 C6 00 03 */	subfic r6, r6, 3
/* 800AEDC8 000ABD08  8B 7F 00 07 */	lbz r27, 7(r31)
/* 800AEDCC 000ABD0C  54 C8 18 38 */	slwi r8, r6, 3
/* 800AEDD0 000ABD10  7C DD 00 D0 */	neg r6, r29
/* 800AEDD4 000ABD14  3A DD 00 04 */	addi r22, r29, 4
/* 800AEDD8 000ABD18  54 C6 18 38 */	slwi r6, r6, 3
/* 800AEDDC 000ABD1C  22 D6 00 03 */	subfic r22, r22, 3
/* 800AEDE0 000ABD20  3B 1D 00 05 */	addi r24, r29, 5
/* 800AEDE4 000ABD24  56 D6 18 38 */	slwi r22, r22, 3
/* 800AEDE8 000ABD28  23 18 00 03 */	subfic r24, r24, 3
/* 800AEDEC 000ABD2C  3B 5D 00 06 */	addi r26, r29, 6
/* 800AEDF0 000ABD30  57 18 18 38 */	slwi r24, r24, 3
/* 800AEDF4 000ABD34  23 5A 00 03 */	subfic r26, r26, 3
/* 800AEDF8 000ABD38  3B 9D 00 07 */	addi r28, r29, 7
/* 800AEDFC 000ABD3C  57 5A 18 38 */	slwi r26, r26, 3
/* 800AEE00 000ABD40  23 9C 00 03 */	subfic r28, r28, 3
/* 800AEE04 000ABD44  57 9C 18 38 */	slwi r28, r28, 3
/* 800AEE08 000ABD48  7F DE 63 78 */	or r30, r30, r12
/* 800AEE0C 000ABD4C  7D 6A 50 30 */	slw r10, r11, r10
/* 800AEE10 000ABD50  7F DE 53 78 */	or r30, r30, r10
/* 800AEE14 000ABD54  7D 28 40 30 */	slw r8, r9, r8
/* 800AEE18 000ABD58  7F DE 43 78 */	or r30, r30, r8
/* 800AEE1C 000ABD5C  7C E6 30 30 */	slw r6, r7, r6
/* 800AEE20 000ABD60  7F DE 33 78 */	or r30, r30, r6
/* 800AEE24 000ABD64  7C 00 B0 30 */	slw r0, r0, r22
/* 800AEE28 000ABD68  7F DE 03 78 */	or r30, r30, r0
/* 800AEE2C 000ABD6C  7E E0 C0 30 */	slw r0, r23, r24
/* 800AEE30 000ABD70  7F DE 03 78 */	or r30, r30, r0
/* 800AEE34 000ABD74  7F 20 D0 30 */	slw r0, r25, r26
/* 800AEE38 000ABD78  7F DE 03 78 */	or r30, r30, r0
/* 800AEE3C 000ABD7C  7F 60 E0 30 */	slw r0, r27, r28
/* 800AEE40 000ABD80  7F DE 03 78 */	or r30, r30, r0
/* 800AEE44 000ABD84  3B FF 00 08 */	addi r31, r31, 8
/* 800AEE48 000ABD88  3B BD 00 08 */	addi r29, r29, 8
/* 800AEE4C 000ABD8C  42 00 FF 40 */	bdnz lbl_800AED8C
/* 800AEE50 000ABD90  48 00 01 7C */	b lbl_800AEFCC
lbl_800AEE54:
/* 800AEE54 000ABD94  7C 1D 20 50 */	subf r0, r29, r4
/* 800AEE58 000ABD98  7C 1D 20 00 */	cmpw r29, r4
/* 800AEE5C 000ABD9C  7C 09 03 A6 */	mtctr r0
/* 800AEE60 000ABDA0  40 80 00 24 */	bge lbl_800AEE84
lbl_800AEE64:
/* 800AEE64 000ABDA4  20 1D 00 03 */	subfic r0, r29, 3
/* 800AEE68 000ABDA8  88 C7 00 00 */	lbz r6, 0(r7)
/* 800AEE6C 000ABDAC  54 00 18 38 */	slwi r0, r0, 3
/* 800AEE70 000ABDB0  7C C0 00 30 */	slw r0, r6, r0
/* 800AEE74 000ABDB4  7F DE 03 78 */	or r30, r30, r0
/* 800AEE78 000ABDB8  38 E7 00 01 */	addi r7, r7, 1
/* 800AEE7C 000ABDBC  3B BD 00 01 */	addi r29, r29, 1
/* 800AEE80 000ABDC0  42 00 FF E4 */	bdnz lbl_800AEE64
lbl_800AEE84:
/* 800AEE84 000ABDC4  3C C0 CC 00 */	lis r6, 0xCC006838@ha
/* 800AEE88 000ABDC8  93 C6 68 38 */	stw r30, 0xCC006838@l(r6)
lbl_800AEE8C:
/* 800AEE8C 000ABDCC  38 04 FF FF */	addi r0, r4, -1
/* 800AEE90 000ABDD0  3C C0 CC 00 */	lis r6, 0xCC006800@ha
/* 800AEE94 000ABDD4  54 A7 10 3A */	slwi r7, r5, 2
/* 800AEE98 000ABDD8  39 06 68 00 */	addi r8, r6, 0xCC006800@l
/* 800AEE9C 000ABDDC  60 E6 00 01 */	ori r6, r7, 1
/* 800AEEA0 000ABDE0  54 00 20 36 */	slwi r0, r0, 4
/* 800AEEA4 000ABDE4  7C C0 03 78 */	or r0, r6, r0
/* 800AEEA8 000ABDE8  94 08 00 34 */	stwu r0, 0x34(r8)
lbl_800AEEAC:
/* 800AEEAC 000ABDEC  80 08 00 00 */	lwz r0, 0(r8)
/* 800AEEB0 000ABDF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEEB4 000ABDF4  40 82 FF F8 */	bne lbl_800AEEAC
/* 800AEEB8 000ABDF8  28 05 00 00 */	cmplwi r5, 0
/* 800AEEBC 000ABDFC  40 82 01 08 */	bne lbl_800AEFC4
/* 800AEEC0 000ABE00  38 A0 00 00 */	li r5, 0
/* 800AEEC4 000ABE04  3C C0 CC 00 */	lis r6, 0xCC006838@ha
/* 800AEEC8 000ABE08  7C 05 20 00 */	cmpw r5, r4
/* 800AEECC 000ABE0C  80 06 68 38 */	lwz r0, 0xCC006838@l(r6)
/* 800AEED0 000ABE10  40 80 00 F4 */	bge lbl_800AEFC4
/* 800AEED4 000ABE14  2C 04 00 08 */	cmpwi r4, 8
/* 800AEED8 000ABE18  38 E4 FF F8 */	addi r7, r4, -8
/* 800AEEDC 000ABE1C  40 81 00 BC */	ble lbl_800AEF98
/* 800AEEE0 000ABE20  38 C7 00 07 */	addi r6, r7, 7
/* 800AEEE4 000ABE24  54 C6 E8 FE */	srwi r6, r6, 3
/* 800AEEE8 000ABE28  2C 07 00 00 */	cmpwi r7, 0
/* 800AEEEC 000ABE2C  7C C9 03 A6 */	mtctr r6
/* 800AEEF0 000ABE30  40 81 00 A8 */	ble lbl_800AEF98
lbl_800AEEF4:
/* 800AEEF4 000ABE34  20 C5 00 03 */	subfic r6, r5, 3
/* 800AEEF8 000ABE38  54 C7 18 38 */	slwi r7, r6, 3
/* 800AEEFC 000ABE3C  38 C5 00 01 */	addi r6, r5, 1
/* 800AEF00 000ABE40  7C 08 3C 30 */	srw r8, r0, r7
/* 800AEF04 000ABE44  20 C6 00 03 */	subfic r6, r6, 3
/* 800AEF08 000ABE48  99 03 00 00 */	stb r8, 0(r3)
/* 800AEF0C 000ABE4C  54 C7 18 38 */	slwi r7, r6, 3
/* 800AEF10 000ABE50  38 C5 00 02 */	addi r6, r5, 2
/* 800AEF14 000ABE54  7C 0C 3C 30 */	srw r12, r0, r7
/* 800AEF18 000ABE58  20 C6 00 03 */	subfic r6, r6, 3
/* 800AEF1C 000ABE5C  99 83 00 01 */	stb r12, 1(r3)
/* 800AEF20 000ABE60  54 C6 18 38 */	slwi r6, r6, 3
/* 800AEF24 000ABE64  7C 0B 34 30 */	srw r11, r0, r6
/* 800AEF28 000ABE68  7C C5 00 D0 */	neg r6, r5
/* 800AEF2C 000ABE6C  99 63 00 02 */	stb r11, 2(r3)
/* 800AEF30 000ABE70  54 C7 18 38 */	slwi r7, r6, 3
/* 800AEF34 000ABE74  38 C5 00 04 */	addi r6, r5, 4
/* 800AEF38 000ABE78  7C 0A 3C 30 */	srw r10, r0, r7
/* 800AEF3C 000ABE7C  20 C6 00 03 */	subfic r6, r6, 3
/* 800AEF40 000ABE80  99 43 00 03 */	stb r10, 3(r3)
/* 800AEF44 000ABE84  54 C7 18 38 */	slwi r7, r6, 3
/* 800AEF48 000ABE88  38 C5 00 05 */	addi r6, r5, 5
/* 800AEF4C 000ABE8C  7C 09 3C 30 */	srw r9, r0, r7
/* 800AEF50 000ABE90  20 C6 00 03 */	subfic r6, r6, 3
/* 800AEF54 000ABE94  99 23 00 04 */	stb r9, 4(r3)
/* 800AEF58 000ABE98  54 C7 18 38 */	slwi r7, r6, 3
/* 800AEF5C 000ABE9C  7C 08 3C 30 */	srw r8, r0, r7
/* 800AEF60 000ABEA0  38 C5 00 06 */	addi r6, r5, 6
/* 800AEF64 000ABEA4  99 03 00 05 */	stb r8, 5(r3)
/* 800AEF68 000ABEA8  20 E6 00 03 */	subfic r7, r6, 3
/* 800AEF6C 000ABEAC  38 C5 00 07 */	addi r6, r5, 7
/* 800AEF70 000ABEB0  54 E7 18 38 */	slwi r7, r7, 3
/* 800AEF74 000ABEB4  7C 07 3C 30 */	srw r7, r0, r7
/* 800AEF78 000ABEB8  20 C6 00 03 */	subfic r6, r6, 3
/* 800AEF7C 000ABEBC  98 E3 00 06 */	stb r7, 6(r3)
/* 800AEF80 000ABEC0  54 C6 18 38 */	slwi r6, r6, 3
/* 800AEF84 000ABEC4  7C 06 34 30 */	srw r6, r0, r6
/* 800AEF88 000ABEC8  98 C3 00 07 */	stb r6, 7(r3)
/* 800AEF8C 000ABECC  38 63 00 08 */	addi r3, r3, 8
/* 800AEF90 000ABED0  38 A5 00 08 */	addi r5, r5, 8
/* 800AEF94 000ABED4  42 00 FF 60 */	bdnz lbl_800AEEF4
lbl_800AEF98:
/* 800AEF98 000ABED8  7C C5 20 50 */	subf r6, r5, r4
/* 800AEF9C 000ABEDC  7C 05 20 00 */	cmpw r5, r4
/* 800AEFA0 000ABEE0  7C C9 03 A6 */	mtctr r6
/* 800AEFA4 000ABEE4  40 80 00 20 */	bge lbl_800AEFC4
lbl_800AEFA8:
/* 800AEFA8 000ABEE8  20 85 00 03 */	subfic r4, r5, 3
/* 800AEFAC 000ABEEC  54 84 18 38 */	slwi r4, r4, 3
/* 800AEFB0 000ABEF0  7C 04 24 30 */	srw r4, r0, r4
/* 800AEFB4 000ABEF4  98 83 00 00 */	stb r4, 0(r3)
/* 800AEFB8 000ABEF8  38 63 00 01 */	addi r3, r3, 1
/* 800AEFBC 000ABEFC  38 A5 00 01 */	addi r5, r5, 1
/* 800AEFC0 000ABF00  42 00 FF E8 */	bdnz lbl_800AEFA8
lbl_800AEFC4:
/* 800AEFC4 000ABF04  38 60 00 01 */	li r3, 1
/* 800AEFC8 000ABF08  48 00 00 0C */	b lbl_800AEFD4
lbl_800AEFCC:
/* 800AEFCC 000ABF0C  7C E3 EA 14 */	add r7, r3, r29
/* 800AEFD0 000ABF10  4B FF FE 84 */	b lbl_800AEE54
lbl_800AEFD4:
/* 800AEFD4 000ABF14  BA C1 00 20 */	lmw r22, 0x20(r1)
/* 800AEFD8 000ABF18  38 21 00 48 */	addi r1, r1, 0x48
/* 800AEFDC 000ABF1C  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
SendCount:
  .4byte 0x80000000
  .4byte 0

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
MTRCallback:
	.skip 0x4
DBGCallback:
	.skip 0x4
SendMailData:
	.skip 0x4
RecvDataLeng:
	.skip 0x4
pEXIInputFlag:
	.skip 0x4
EXIInputFlag:
	.skip 0x4
