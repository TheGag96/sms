.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global partsPerform__9TNpcPartsFUlPQ26JDrama9TGraphics
partsPerform__9TNpcPartsFUlPQ26JDrama9TGraphics:
/* 80176708 00173648  7C 08 02 A6 */	mflr r0
/* 8017670C 0017364C  90 01 00 04 */	stw r0, 4(r1)
/* 80176710 00173650  94 21 FF 08 */	stwu r1, -0xf8(r1)
/* 80176714 00173654  BE A1 00 CC */	stmw r21, 0xcc(r1)
/* 80176718 00173658  3B 24 00 00 */	addi r25, r4, 0
/* 8017671C 0017365C  7C 78 1B 78 */	mr r24, r3
/* 80176720 00173660  3B 45 00 00 */	addi r26, r5, 0
/* 80176724 00173664  57 3D 07 BC */	rlwinm r29, r25, 0, 0x1e, 0x1e
/* 80176728 00173668  3B 80 00 00 */	li r28, 0
/* 8017672C 0017366C  80 C3 00 60 */	lwz r6, 0x60(r3)
/* 80176730 00173670  3C 60 80 38 */	lis r3, $$22489@ha
/* 80176734 00173674  3B E3 27 C0 */	addi r31, r3, $$22489@l
/* 80176738 00173678  80 86 00 D0 */	lwz r4, 0xd0(r6)
/* 8017673C 0017367C  80 04 00 08 */	lwz r0, 8(r4)
/* 80176740 00173680  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80176744 00173684  7F 78 02 14 */	add r27, r24, r0
lbl_80176748:
/* 80176748 00173688  80 1B 00 00 */	lwz r0, 0(r27)
/* 8017674C 0017368C  28 00 00 00 */	cmplwi r0, 0
/* 80176750 00173690  41 82 01 44 */	beq lbl_80176894
/* 80176754 00173694  80 78 00 60 */	lwz r3, 0x60(r24)
/* 80176758 00173698  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 8017675C 0017369C  3C 04 FC 00 */	addis r0, r4, 0xfc00
/* 80176760 001736A0  28 00 00 18 */	cmplwi r0, 0x18
/* 80176764 001736A4  40 82 00 80 */	bne lbl_801767E4
/* 80176768 001736A8  88 A3 01 D8 */	lbz r5, 0x1d8(r3)
/* 8017676C 001736AC  38 80 00 01 */	li r4, 1
/* 80176770 001736B0  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 80176774 001736B4  41 82 00 2C */	beq lbl_801767A0
/* 80176778 001736B8  2C 1C 00 03 */	cmpwi r28, 3
/* 8017677C 001736BC  41 82 00 60 */	beq lbl_801767DC
/* 80176780 001736C0  40 80 00 10 */	bge lbl_80176790
/* 80176784 001736C4  2C 1C 00 01 */	cmpwi r28, 1
/* 80176788 001736C8  40 80 00 10 */	bge lbl_80176798
/* 8017678C 001736CC  48 00 00 50 */	b lbl_801767DC
lbl_80176790:
/* 80176790 001736D0  2C 1C 00 05 */	cmpwi r28, 5
/* 80176794 001736D4  40 80 00 48 */	bge lbl_801767DC
lbl_80176798:
/* 80176798 001736D8  38 80 00 00 */	li r4, 0
/* 8017679C 001736DC  48 00 00 40 */	b lbl_801767DC
lbl_801767A0:
/* 801767A0 001736E0  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 801767A4 001736E4  41 82 00 20 */	beq lbl_801767C4
/* 801767A8 001736E8  2C 1C 00 03 */	cmpwi r28, 3
/* 801767AC 001736EC  40 80 00 30 */	bge lbl_801767DC
/* 801767B0 001736F0  2C 1C 00 01 */	cmpwi r28, 1
/* 801767B4 001736F4  40 80 00 08 */	bge lbl_801767BC
/* 801767B8 001736F8  48 00 00 24 */	b lbl_801767DC
lbl_801767BC:
/* 801767BC 001736FC  38 80 00 00 */	li r4, 0
/* 801767C0 00173700  48 00 00 1C */	b lbl_801767DC
lbl_801767C4:
/* 801767C4 00173704  2C 1C 00 07 */	cmpwi r28, 7
/* 801767C8 00173708  40 80 00 14 */	bge lbl_801767DC
/* 801767CC 0017370C  2C 1C 00 04 */	cmpwi r28, 4
/* 801767D0 00173710  40 80 00 08 */	bge lbl_801767D8
/* 801767D4 00173714  48 00 00 08 */	b lbl_801767DC
lbl_801767D8:
/* 801767D8 00173718  38 80 00 00 */	li r4, 0
lbl_801767DC:
/* 801767DC 0017371C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801767E0 00173720  41 82 00 B4 */	beq lbl_80176894
lbl_801767E4:
/* 801767E4 00173724  28 1D 00 00 */	cmplwi r29, 0
/* 801767E8 00173728  41 82 00 90 */	beq lbl_80176878
/* 801767EC 0017372C  4B FF 5E 85 */	bl isJellyFishMare__8TBaseNPCCFv
/* 801767F0 00173730  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801767F4 00173734  41 82 00 84 */	beq lbl_80176878
/* 801767F8 00173738  2C 1C 00 0B */	cmpwi r28, 0xb
/* 801767FC 0017373C  40 82 00 7C */	bne lbl_80176878
/* 80176800 00173740  80 9B 00 00 */	lwz r4, 0(r27)
/* 80176804 00173744  38 61 00 70 */	addi r3, r1, 0x70
/* 80176808 00173748  82 A4 00 18 */	lwz r21, 0x18(r4)
/* 8017680C 0017374C  4B F5 06 4D */	bl SMS_GetLightPerspectiveForEffectMtx__FPA4_f
/* 80176810 00173750  80 75 00 04 */	lwz r3, 4(r21)
/* 80176814 00173754  7F E4 FB 78 */	mr r4, r31
/* 80176818 00173758  83 C3 00 04 */	lwz r30, 4(r3)
/* 8017681C 0017375C  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 80176820 00173760  4B E9 C7 D1 */	bl getIndex__10JUTNameTabCFPCc
/* 80176824 00173764  A2 BE 00 24 */	lhz r21, 0x24(r30)
/* 80176828 00173768  3A E3 00 00 */	addi r23, r3, 0
/* 8017682C 0017376C  3A C0 00 00 */	li r22, 0
/* 80176830 00173770  48 00 00 3C */	b lbl_8017686C
lbl_80176834:
/* 80176834 00173774  7C 00 B8 00 */	cmpw r0, r23
/* 80176838 00173778  41 82 00 30 */	beq lbl_80176868
/* 8017683C 0017377C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80176840 00173780  56 C0 13 BA */	rlwinm r0, r22, 2, 0xe, 0x1d
/* 80176844 00173784  38 80 00 00 */	li r4, 0
/* 80176848 00173788  7C 63 00 2E */	lwzx r3, r3, r0
/* 8017684C 0017378C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80176850 00173790  81 83 00 00 */	lwz r12, 0(r3)
/* 80176854 00173794  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80176858 00173798  7D 88 03 A6 */	mtlr r12
/* 8017685C 0017379C  4E 80 00 21 */	blrl 
/* 80176860 001737A0  38 81 00 70 */	addi r4, r1, 0x70
/* 80176864 001737A4  48 00 00 55 */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
lbl_80176868:
/* 80176868 001737A8  3A D6 00 01 */	addi r22, r22, 1
lbl_8017686C:
/* 8017686C 001737AC  56 C0 04 3E */	clrlwi r0, r22, 0x10
/* 80176870 001737B0  7C 00 A8 00 */	cmpw r0, r21
/* 80176874 001737B4  41 80 FF C0 */	blt lbl_80176834
lbl_80176878:
/* 80176878 001737B8  80 7B 00 00 */	lwz r3, 0(r27)
/* 8017687C 001737BC  38 99 00 00 */	addi r4, r25, 0
/* 80176880 001737C0  38 BA 00 00 */	addi r5, r26, 0
/* 80176884 001737C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80176888 001737C8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8017688C 001737CC  7D 88 03 A6 */	mtlr r12
/* 80176890 001737D0  4E 80 00 21 */	blrl 
lbl_80176894:
/* 80176894 001737D4  3B 9C 00 01 */	addi r28, r28, 1
/* 80176898 001737D8  2C 1C 00 0C */	cmpwi r28, 0xc
/* 8017689C 001737DC  3B 7B 00 04 */	addi r27, r27, 4
/* 801768A0 001737E0  41 80 FE A8 */	blt lbl_80176748
/* 801768A4 001737E4  BA A1 00 CC */	lmw r21, 0xcc(r1)
/* 801768A8 001737E8  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 801768AC 001737EC  38 21 00 F8 */	addi r1, r1, 0xf8
/* 801768B0 001737F0  7C 08 03 A6 */	mtlr r0
/* 801768B4 001737F4  4E 80 00 20 */	blr 

.global setEffectMtx__13J3DTexMtxInfoFPA4_f
setEffectMtx__13J3DTexMtxInfoFPA4_f:
/* 801768B8 001737F8  C0 04 00 00 */	lfs f0, 0(r4)
/* 801768BC 001737FC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801768C0 00173800  C0 04 00 04 */	lfs f0, 4(r4)
/* 801768C4 00173804  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 801768C8 00173808  C0 04 00 08 */	lfs f0, 8(r4)
/* 801768CC 0017380C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801768D0 00173810  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801768D4 00173814  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 801768D8 00173818  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801768DC 0017381C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 801768E0 00173820  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801768E4 00173824  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 801768E8 00173828  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 801768EC 0017382C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 801768F0 00173830  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 801768F4 00173834  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 801768F8 00173838  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 801768FC 0017383C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80176900 00173840  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80176904 00173844  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80176908 00173848  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8017690C 0017384C  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 80176910 00173850  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80176914 00173854  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80176918 00173858  C0 02 A8 F0 */	lfs f0, $$22491@sda21(r2)
/* 8017691C 0017385C  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80176920 00173860  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80176924 00173864  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80176928 00173868  C0 02 A8 F4 */	lfs f0, $$22492@sda21(r2)
/* 8017692C 0017386C  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 80176930 00173870  4E 80 00 20 */	blr 

.global partsFrameUpdate__9TNpcPartsFv
partsFrameUpdate__9TNpcPartsFv:
/* 80176934 00173874  7C 08 02 A6 */	mflr r0
/* 80176938 00173878  90 01 00 04 */	stw r0, 4(r1)
/* 8017693C 0017387C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80176940 00173880  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80176944 00173884  3B E0 00 00 */	li r31, 0
/* 80176948 00173888  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8017694C 0017388C  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80176950 00173890  80 84 00 D0 */	lwz r4, 0xd0(r4)
/* 80176954 00173894  80 04 00 08 */	lwz r0, 8(r4)
/* 80176958 00173898  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8017695C 0017389C  7F C3 02 14 */	add r30, r3, r0
lbl_80176960:
/* 80176960 001738A0  80 7E 00 00 */	lwz r3, 0(r30)
/* 80176964 001738A4  28 03 00 00 */	cmplwi r3, 0
/* 80176968 001738A8  41 82 00 0C */	beq lbl_80176974
/* 8017696C 001738AC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80176970 001738B0  4B F5 DD B5 */	bl frameUpdate__6MActorFv
lbl_80176974:
/* 80176974 001738B4  3B FF 00 01 */	addi r31, r31, 1
/* 80176978 001738B8  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8017697C 001738BC  3B DE 00 04 */	addi r30, r30, 4
/* 80176980 001738C0  41 80 FF E0 */	blt lbl_80176960
/* 80176984 001738C4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80176988 001738C8  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8017698C 001738CC  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80176990 001738D0  7C 08 03 A6 */	mtlr r0
/* 80176994 001738D4  38 21 00 38 */	addi r1, r1, 0x38
/* 80176998 001738D8  4E 80 00 20 */	blr 

.global getPartsMActor__9TNpcPartsFii
getPartsMActor__9TNpcPartsFii:
/* 8017699C 001738DC  1C A5 00 30 */	mulli r5, r5, 0x30
/* 801769A0 001738E0  54 80 10 3A */	slwi r0, r4, 2
/* 801769A4 001738E4  7C 05 02 14 */	add r0, r5, r0
/* 801769A8 001738E8  7C 83 00 2E */	lwzx r4, r3, r0
/* 801769AC 001738EC  38 60 00 00 */	li r3, 0
/* 801769B0 001738F0  28 04 00 00 */	cmplwi r4, 0
/* 801769B4 001738F4  4D 82 00 20 */	beqlr 
/* 801769B8 001738F8  80 64 00 18 */	lwz r3, 0x18(r4)
/* 801769BC 001738FC  4E 80 00 20 */	blr 

.global setPartsAnmFrame__9TNpcPartsFf
setPartsAnmFrame__9TNpcPartsFf:
/* 801769C0 00173900  7C 08 02 A6 */	mflr r0
/* 801769C4 00173904  90 01 00 04 */	stw r0, 4(r1)
/* 801769C8 00173908  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801769CC 0017390C  DB E1 00 98 */	stfd f31, 0x98(r1)
/* 801769D0 00173910  FF E0 08 90 */	fmr f31, f1
/* 801769D4 00173914  93 E1 00 94 */	stw r31, 0x94(r1)
/* 801769D8 00173918  7C 7F 1B 78 */	mr r31, r3
/* 801769DC 0017391C  80 83 00 60 */	lwz r4, 0x60(r3)
/* 801769E0 00173920  3C 60 04 00 */	lis r3, 0x04000015@ha
/* 801769E4 00173924  38 03 00 15 */	addi r0, r3, 0x04000015@l
/* 801769E8 00173928  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 801769EC 0017392C  7C 04 00 00 */	cmpw r4, r0
/* 801769F0 00173930  41 82 00 5C */	beq lbl_80176A4C
/* 801769F4 00173934  40 80 00 14 */	bge lbl_80176A08
/* 801769F8 00173938  38 03 00 10 */	addi r0, r3, 0x10
/* 801769FC 0017393C  7C 04 00 00 */	cmpw r4, r0
/* 80176A00 00173940  41 82 00 18 */	beq lbl_80176A18
/* 80176A04 00173944  48 00 01 28 */	b lbl_80176B2C
lbl_80176A08:
/* 80176A08 00173948  38 03 00 18 */	addi r0, r3, 0x18
/* 80176A0C 0017394C  7C 04 00 00 */	cmpw r4, r0
/* 80176A10 00173950  41 82 00 8C */	beq lbl_80176A9C
/* 80176A14 00173954  48 00 01 18 */	b lbl_80176B2C
lbl_80176A18:
/* 80176A18 00173958  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80176A1C 0017395C  38 60 00 00 */	li r3, 0
/* 80176A20 00173960  28 04 00 00 */	cmplwi r4, 0
/* 80176A24 00173964  41 82 00 08 */	beq lbl_80176A2C
/* 80176A28 00173968  80 64 00 18 */	lwz r3, 0x18(r4)
lbl_80176A2C:
/* 80176A2C 0017396C  28 03 00 00 */	cmplwi r3, 0
/* 80176A30 00173970  41 82 00 FC */	beq lbl_80176B2C
/* 80176A34 00173974  38 80 00 00 */	li r4, 0
/* 80176A38 00173978  4B F5 D7 ED */	bl getFrameCtrl__6MActorFi
/* 80176A3C 0017397C  28 03 00 00 */	cmplwi r3, 0
/* 80176A40 00173980  41 82 00 EC */	beq lbl_80176B2C
/* 80176A44 00173984  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80176A48 00173988  48 00 00 E4 */	b lbl_80176B2C
lbl_80176A4C:
/* 80176A4C 0017398C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80176A50 00173990  3B E0 00 00 */	li r31, 0
/* 80176A54 00173994  28 03 00 00 */	cmplwi r3, 0
/* 80176A58 00173998  41 82 00 08 */	beq lbl_80176A60
/* 80176A5C 0017399C  83 E3 00 18 */	lwz r31, 0x18(r3)
lbl_80176A60:
/* 80176A60 001739A0  28 1F 00 00 */	cmplwi r31, 0
/* 80176A64 001739A4  41 82 00 C8 */	beq lbl_80176B2C
/* 80176A68 001739A8  38 7F 00 00 */	addi r3, r31, 0
/* 80176A6C 001739AC  38 80 00 00 */	li r4, 0
/* 80176A70 001739B0  4B F5 D7 B5 */	bl getFrameCtrl__6MActorFi
/* 80176A74 001739B4  28 03 00 00 */	cmplwi r3, 0
/* 80176A78 001739B8  41 82 00 08 */	beq lbl_80176A80
/* 80176A7C 001739BC  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_80176A80:
/* 80176A80 001739C0  38 7F 00 00 */	addi r3, r31, 0
/* 80176A84 001739C4  38 80 00 03 */	li r4, 3
/* 80176A88 001739C8  4B F5 D7 9D */	bl getFrameCtrl__6MActorFi
/* 80176A8C 001739CC  28 03 00 00 */	cmplwi r3, 0
/* 80176A90 001739D0  41 82 00 9C */	beq lbl_80176B2C
/* 80176A94 001739D4  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80176A98 001739D8  48 00 00 94 */	b lbl_80176B2C
lbl_80176A9C:
/* 80176A9C 001739DC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80176AA0 001739E0  38 60 00 00 */	li r3, 0
/* 80176AA4 001739E4  28 04 00 00 */	cmplwi r4, 0
/* 80176AA8 001739E8  41 82 00 08 */	beq lbl_80176AB0
/* 80176AAC 001739EC  80 64 00 18 */	lwz r3, 0x18(r4)
lbl_80176AB0:
/* 80176AB0 001739F0  28 03 00 00 */	cmplwi r3, 0
/* 80176AB4 001739F4  41 82 00 18 */	beq lbl_80176ACC
/* 80176AB8 001739F8  38 80 00 00 */	li r4, 0
/* 80176ABC 001739FC  4B F5 D7 69 */	bl getFrameCtrl__6MActorFi
/* 80176AC0 00173A00  28 03 00 00 */	cmplwi r3, 0
/* 80176AC4 00173A04  41 82 00 08 */	beq lbl_80176ACC
/* 80176AC8 00173A08  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_80176ACC:
/* 80176ACC 00173A0C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80176AD0 00173A10  38 60 00 00 */	li r3, 0
/* 80176AD4 00173A14  28 04 00 00 */	cmplwi r4, 0
/* 80176AD8 00173A18  41 82 00 08 */	beq lbl_80176AE0
/* 80176ADC 00173A1C  80 64 00 18 */	lwz r3, 0x18(r4)
lbl_80176AE0:
/* 80176AE0 00173A20  28 03 00 00 */	cmplwi r3, 0
/* 80176AE4 00173A24  41 82 00 18 */	beq lbl_80176AFC
/* 80176AE8 00173A28  38 80 00 00 */	li r4, 0
/* 80176AEC 00173A2C  4B F5 D7 39 */	bl getFrameCtrl__6MActorFi
/* 80176AF0 00173A30  28 03 00 00 */	cmplwi r3, 0
/* 80176AF4 00173A34  41 82 00 08 */	beq lbl_80176AFC
/* 80176AF8 00173A38  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_80176AFC:
/* 80176AFC 00173A3C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80176B00 00173A40  38 60 00 00 */	li r3, 0
/* 80176B04 00173A44  28 04 00 00 */	cmplwi r4, 0
/* 80176B08 00173A48  41 82 00 08 */	beq lbl_80176B10
/* 80176B0C 00173A4C  80 64 00 18 */	lwz r3, 0x18(r4)
lbl_80176B10:
/* 80176B10 00173A50  28 03 00 00 */	cmplwi r3, 0
/* 80176B14 00173A54  41 82 00 18 */	beq lbl_80176B2C
/* 80176B18 00173A58  38 80 00 00 */	li r4, 0
/* 80176B1C 00173A5C  4B F5 D7 09 */	bl getFrameCtrl__6MActorFi
/* 80176B20 00173A60  28 03 00 00 */	cmplwi r3, 0
/* 80176B24 00173A64  41 82 00 08 */	beq lbl_80176B2C
/* 80176B28 00173A68  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_80176B2C:
/* 80176B2C 00173A6C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80176B30 00173A70  CB E1 00 98 */	lfd f31, 0x98(r1)
/* 80176B34 00173A74  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 80176B38 00173A78  7C 08 03 A6 */	mtlr r0
/* 80176B3C 00173A7C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80176B40 00173A80  4E 80 00 20 */	blr 

.global addJellyFishParts__9TNpcPartsFf
addJellyFishParts__9TNpcPartsFf:
/* 80176B44 00173A84  7C 08 02 A6 */	mflr r0
/* 80176B48 00173A88  90 01 00 04 */	stw r0, 4(r1)
/* 80176B4C 00173A8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80176B50 00173A90  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 80176B54 00173A94  FF E0 08 90 */	fmr f31, f1
/* 80176B58 00173A98  BF 61 00 34 */	stmw r27, 0x34(r1)
/* 80176B5C 00173A9C  7C 7F 1B 78 */	mr r31, r3
/* 80176B60 00173AA0  3B BF 00 2C */	addi r29, r31, 0x2c
/* 80176B64 00173AA4  80 6D 99 48 */	lwz r3, gpMareJellyFishManager@sda21(r13)
/* 80176B68 00173AA8  4B F9 F1 85 */	bl getModelDataKeeper__11TObjManagerFv
/* 80176B6C 00173AAC  4B FA 00 29 */	bl getModelDataNum__16TModelDataKeeperCFv
/* 80176B70 00173AB0  7C 7E 1B 78 */	mr r30, r3
/* 80176B74 00173AB4  4B F0 EF 51 */	bl rand
/* 80176B78 00173AB8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80176B7C 00173ABC  C8 62 A9 00 */	lfd f3, $$22635@sda21(r2)
/* 80176B80 00173AC0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80176B84 00173AC4  3C 80 43 30 */	lis r4, 0x4330
/* 80176B88 00173AC8  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 80176B8C 00173ACC  C0 22 A8 F8 */	lfs f1, $$22632@sda21(r2)
/* 80176B90 00173AD0  90 81 00 28 */	stw r4, 0x28(r1)
/* 80176B94 00173AD4  80 6D 99 48 */	lwz r3, gpMareJellyFishManager@sda21(r13)
/* 80176B98 00173AD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80176B9C 00173ADC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80176BA0 00173AE0  90 81 00 20 */	stw r4, 0x20(r1)
/* 80176BA4 00173AE4  EC 40 18 28 */	fsubs f2, f0, f3
/* 80176BA8 00173AE8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80176BAC 00173AEC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80176BB0 00173AF0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80176BB4 00173AF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80176BB8 00173AF8  FC 00 00 1E */	fctiwz f0, f0
/* 80176BBC 00173AFC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80176BC0 00173B00  83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 80176BC4 00173B04  4B F9 F1 29 */	bl getModelDataKeeper__11TObjManagerFv
/* 80176BC8 00173B08  7F C4 F3 78 */	mr r4, r30
/* 80176BCC 00173B0C  4B FA 01 11 */	bl getNthData__16TModelDataKeeperCFi
/* 80176BD0 00173B10  3B 83 00 00 */	addi r28, r3, 0
/* 80176BD4 00173B14  38 60 00 AC */	li r3, 0xac
/* 80176BD8 00173B18  4B E9 5C D9 */	bl __nw__FUl
/* 80176BDC 00173B1C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80176BE0 00173B20  41 82 00 18 */	beq lbl_80176BF8
/* 80176BE4 00173B24  38 7B 00 00 */	addi r3, r27, 0
/* 80176BE8 00173B28  38 9C 00 00 */	addi r4, r28, 0
/* 80176BEC 00173B2C  38 A0 00 00 */	li r5, 0
/* 80176BF0 00173B30  38 C0 00 01 */	li r6, 1
/* 80176BF4 00173B34  4B F6 26 85 */	bl __ct__8SDLModelFP12SDLModelDataUlUl
lbl_80176BF8:
/* 80176BF8 00173B38  3B 9B 00 00 */	addi r28, r27, 0
/* 80176BFC 00173B3C  38 60 00 48 */	li r3, 0x48
/* 80176C00 00173B40  4B E9 5C B1 */	bl __nw__FUl
/* 80176C04 00173B44  7C 7B 1B 79 */	or. r27, r3, r3
/* 80176C08 00173B48  41 82 00 18 */	beq lbl_80176C20
/* 80176C0C 00173B4C  80 6D 99 48 */	lwz r3, gpMareJellyFishManager@sda21(r13)
/* 80176C10 00173B50  4B F9 F3 B9 */	bl getMActorAnmData__11TObjManagerFv
/* 80176C14 00173B54  38 83 00 00 */	addi r4, r3, 0
/* 80176C18 00173B58  38 7B 00 00 */	addi r3, r27, 0
/* 80176C1C 00173B5C  4B F5 EA BD */	bl __ct__6MActorFP13MActorAnmData
lbl_80176C20:
/* 80176C20 00173B60  38 7B 00 00 */	addi r3, r27, 0
/* 80176C24 00173B64  38 9C 00 00 */	addi r4, r28, 0
/* 80176C28 00173B68  38 A0 00 00 */	li r5, 0
/* 80176C2C 00173B6C  4B F5 E7 B5 */	bl setModel__6MActorFP8J3DModelUl
/* 80176C30 00173B70  38 60 00 1C */	li r3, 0x1c
/* 80176C34 00173B74  4B E9 5C 7D */	bl __nw__FUl
/* 80176C38 00173B78  7C 7C 1B 79 */	or. r28, r3, r3
/* 80176C3C 00173B7C  41 82 00 20 */	beq lbl_80176C5C
/* 80176C40 00173B80  3C 60 80 38 */	lis r3, $$22633@ha
/* 80176C44 00173B84  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80176C48 00173B88  38 E3 27 CC */	addi r7, r3, $$22633@l
/* 80176C4C 00173B8C  38 7C 00 00 */	addi r3, r28, 0
/* 80176C50 00173B90  38 DB 00 00 */	addi r6, r27, 0
/* 80176C54 00173B94  38 A0 FF FF */	li r5, -1
/* 80176C58 00173B98  4B FA 6E F9 */	bl __ct__12TSharedPartsFPC10TLiveActoriP6MActorPCc
lbl_80176C5C:
/* 80176C5C 00173B9C  93 9D 00 00 */	stw r28, 0(r29)
/* 80176C60 00173BA0  38 7B 00 00 */	addi r3, r27, 0
/* 80176C64 00173BA4  38 80 00 00 */	li r4, 0
/* 80176C68 00173BA8  4B F5 D4 B9 */	bl setBckFromIndex__6MActorFi
/* 80176C6C 00173BAC  38 7B 00 00 */	addi r3, r27, 0
/* 80176C70 00173BB0  38 9E 00 00 */	addi r4, r30, 0
/* 80176C74 00173BB4  4B F5 C7 75 */	bl setBrkFromIndex__6MActorFi
/* 80176C78 00173BB8  38 7B 00 00 */	addi r3, r27, 0
/* 80176C7C 00173BBC  38 80 00 00 */	li r4, 0
/* 80176C80 00173BC0  4B F5 D5 A5 */	bl getFrameCtrl__6MActorFi
/* 80176C84 00173BC4  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80176C88 00173BC8  38 7B 00 00 */	addi r3, r27, 0
/* 80176C8C 00173BCC  38 80 00 05 */	li r4, 5
/* 80176C90 00173BD0  4B F5 D5 95 */	bl getFrameCtrl__6MActorFi
/* 80176C94 00173BD4  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80176C98 00173BD8  38 7B 00 00 */	addi r3, r27, 0
/* 80176C9C 00173BDC  38 80 00 03 */	li r4, 3
/* 80176CA0 00173BE0  4B F5 DC 91 */	bl setLightType__6MActorFi
/* 80176CA4 00173BE4  BB 61 00 34 */	lmw r27, 0x34(r1)
/* 80176CA8 00173BE8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80176CAC 00173BEC  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 80176CB0 00173BF0  38 21 00 50 */	addi r1, r1, 0x50
/* 80176CB4 00173BF4  7C 08 03 A6 */	mtlr r0
/* 80176CB8 00173BF8  4E 80 00 20 */	blr 

.global __ct__9TNpcPartsFUlPC13J3DGXColorS10P8TBaseNPC
__ct__9TNpcPartsFUlPC13J3DGXColorS10P8TBaseNPC:
/* 80176CBC 00173BFC  7C 08 02 A6 */	mflr r0
/* 80176CC0 00173C00  90 01 00 04 */	stw r0, 4(r1)
/* 80176CC4 00173C04  94 21 FE 08 */	stwu r1, -0x1f8(r1)
/* 80176CC8 00173C08  BD C1 01 B0 */	stmw r14, 0x1b0(r1)
/* 80176CCC 00173C0C  7C 74 1B 78 */	mr r20, r3
/* 80176CD0 00173C10  90 81 01 A0 */	stw r4, 0x1a0(r1)
/* 80176CD4 00173C14  90 A1 01 A4 */	stw r5, 0x1a4(r1)
/* 80176CD8 00173C18  90 C3 00 60 */	stw r6, 0x60(r3)
/* 80176CDC 00173C1C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80176CE0 00173C20  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 80176CE4 00173C24  3C 63 FC 00 */	addis r3, r3, 0xfc00
/* 80176CE8 00173C28  38 63 FF FF */	addi r3, r3, -1
/* 80176CEC 00173C2C  4B FF E7 39 */	bl SMSGetNpcInitData__FUl
/* 80176CF0 00173C30  38 00 00 03 */	li r0, 3
/* 80176CF4 00173C34  90 61 01 A8 */	stw r3, 0x1a8(r1)
/* 80176CF8 00173C38  7C 09 03 A6 */	mtctr r0
/* 80176CFC 00173C3C  38 74 00 00 */	addi r3, r20, 0
/* 80176D00 00173C40  38 00 00 00 */	li r0, 0
lbl_80176D04:
/* 80176D04 00173C44  90 03 00 00 */	stw r0, 0(r3)
/* 80176D08 00173C48  90 03 00 04 */	stw r0, 4(r3)
/* 80176D0C 00173C4C  90 03 00 08 */	stw r0, 8(r3)
/* 80176D10 00173C50  90 03 00 0C */	stw r0, 0xc(r3)
/* 80176D14 00173C54  90 03 00 10 */	stw r0, 0x10(r3)
/* 80176D18 00173C58  90 03 00 14 */	stw r0, 0x14(r3)
/* 80176D1C 00173C5C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80176D20 00173C60  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80176D24 00173C64  38 63 00 20 */	addi r3, r3, 0x20
/* 80176D28 00173C68  42 00 FF DC */	bdnz lbl_80176D04
/* 80176D2C 00173C6C  3C 60 04 00 */	lis r3, 0x04000018@ha
/* 80176D30 00173C70  38 03 00 18 */	addi r0, r3, 0x04000018@l
/* 80176D34 00173C74  3C 80 80 38 */	lis r4, $$22633@ha
/* 80176D38 00173C78  90 01 01 AC */	stw r0, 0x1ac(r1)
/* 80176D3C 00173C7C  3A 04 27 CC */	addi r16, r4, $$22633@l
/* 80176D40 00173C80  39 E3 00 15 */	addi r15, r3, 0x15
/* 80176D44 00173C84  39 C3 00 10 */	addi r14, r3, 0x10
/* 80176D48 00173C88  3A A0 00 00 */	li r21, 0
/* 80176D4C 00173C8C  3A 40 00 00 */	li r18, 0
lbl_80176D50:
/* 80176D50 00173C90  80 01 01 A8 */	lwz r0, 0x1a8(r1)
/* 80176D54 00173C94  7F 60 92 14 */	add r27, r0, r18
/* 80176D58 00173C98  80 9B 00 04 */	lwz r4, 4(r27)
/* 80176D5C 00173C9C  28 04 00 00 */	cmplwi r4, 0
/* 80176D60 00173CA0  41 82 03 64 */	beq lbl_801770C4
/* 80176D64 00173CA4  38 00 00 01 */	li r0, 1
/* 80176D68 00173CA8  7C 03 A8 30 */	slw r3, r0, r21
/* 80176D6C 00173CAC  80 01 01 A0 */	lwz r0, 0x1a0(r1)
/* 80176D70 00173CB0  7C 00 18 39 */	and. r0, r0, r3
/* 80176D74 00173CB4  41 82 03 50 */	beq lbl_801770C4
/* 80176D78 00173CB8  A8 64 00 28 */	lha r3, 0x28(r4)
/* 80176D7C 00173CBC  3B A0 00 00 */	li r29, 0
/* 80176D80 00173CC0  88 04 00 2A */	lbz r0, 0x2a(r4)
/* 80176D84 00173CC4  54 64 08 3C */	slwi r4, r3, 1
/* 80176D88 00173CC8  80 61 01 A4 */	lwz r3, 0x1a4(r1)
/* 80176D8C 00173CCC  28 00 00 00 */	cmplwi r0, 0
/* 80176D90 00173CD0  7E E3 22 AE */	lhax r23, r3, r4
/* 80176D94 00173CD4  41 82 00 10 */	beq lbl_80176DA4
/* 80176D98 00173CD8  80 74 00 60 */	lwz r3, 0x60(r20)
/* 80176D9C 00173CDC  4B FF 3E 2D */	bl getPtrInitPollutionColor__8TBaseNPCCFv
/* 80176DA0 00173CE0  7C 7D 1B 78 */	mr r29, r3
lbl_80176DA4:
/* 80176DA4 00173CE4  7E 34 92 14 */	add r17, r20, r18
/* 80176DA8 00173CE8  3A C0 00 00 */	li r22, 0
/* 80176DAC 00173CEC  3A 60 00 00 */	li r19, 0
/* 80176DB0 00173CF0  3B 80 00 00 */	li r28, 0
lbl_80176DB4:
/* 80176DB4 00173CF4  80 74 00 60 */	lwz r3, 0x60(r20)
/* 80176DB8 00173CF8  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80176DBC 00173CFC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80176DC0 00173D00  7C 16 00 00 */	cmpw r22, r0
/* 80176DC4 00173D04  40 80 03 00 */	bge lbl_801770C4
/* 80176DC8 00173D08  80 1B 00 04 */	lwz r0, 4(r27)
/* 80176DCC 00173D0C  7C 60 E2 14 */	add r3, r0, r28
/* 80176DD0 00173D10  80 03 00 08 */	lwz r0, 8(r3)
/* 80176DD4 00173D14  28 00 00 00 */	cmplwi r0, 0
/* 80176DD8 00173D18  7C 19 03 78 */	mr r25, r0
/* 80176DDC 00173D1C  41 82 02 D4 */	beq lbl_801770B0
/* 80176DE0 00173D20  80 63 00 00 */	lwz r3, 0(r3)
/* 80176DE4 00173D24  80 8D 84 80 */	lwz r4, cNpcPartsNameRootJoint@sda21(r13)
/* 80176DE8 00173D28  4B F0 EE 75 */	bl strcmp
/* 80176DEC 00173D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80176DF0 00173D30  40 82 00 0C */	bne lbl_80176DFC
/* 80176DF4 00173D34  3B 00 FF FF */	li r24, -1
/* 80176DF8 00173D38  48 00 00 30 */	b lbl_80176E28
lbl_80176DFC:
/* 80176DFC 00173D3C  80 74 00 60 */	lwz r3, 0x60(r20)
/* 80176E00 00173D40  80 9B 00 04 */	lwz r4, 4(r27)
/* 80176E04 00173D44  80 63 00 78 */	lwz r3, 0x78(r3)
/* 80176E08 00173D48  7C 84 E0 2E */	lwzx r4, r4, r28
/* 80176E0C 00173D4C  80 63 00 08 */	lwz r3, 8(r3)
/* 80176E10 00173D50  7C 63 E0 2E */	lwzx r3, r3, r28
/* 80176E14 00173D54  80 63 00 04 */	lwz r3, 4(r3)
/* 80176E18 00173D58  80 63 00 04 */	lwz r3, 4(r3)
/* 80176E1C 00173D5C  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 80176E20 00173D60  4B E9 C1 D1 */	bl getIndex__10JUTNameTabCFPCc
/* 80176E24 00173D64  7C 78 1B 78 */	mr r24, r3
lbl_80176E28:
/* 80176E28 00173D68  80 74 00 60 */	lwz r3, 0x60(r20)
/* 80176E2C 00173D6C  7F 24 CB 78 */	mr r4, r25
/* 80176E30 00173D70  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80176E34 00173D74  4B FF 7E D5 */	bl getPartsSDLModelData__11TNPCManagerCFPCc
/* 80176E38 00173D78  3B 43 00 00 */	addi r26, r3, 0
/* 80176E3C 00173D7C  38 60 00 1C */	li r3, 0x1c
/* 80176E40 00173D80  4B E9 5A 71 */	bl __nw__FUl
/* 80176E44 00173D84  7C 79 1B 79 */	or. r25, r3, r3
/* 80176E48 00173D88  41 82 00 20 */	beq lbl_80176E68
/* 80176E4C 00173D8C  80 94 00 60 */	lwz r4, 0x60(r20)
/* 80176E50 00173D90  38 79 00 00 */	addi r3, r25, 0
/* 80176E54 00173D94  38 B8 00 00 */	addi r5, r24, 0
/* 80176E58 00173D98  38 DA 00 00 */	addi r6, r26, 0
/* 80176E5C 00173D9C  39 10 00 00 */	addi r8, r16, 0
/* 80176E60 00173DA0  38 E0 00 03 */	li r7, 3
/* 80176E64 00173DA4  4B FA 6D 85 */	bl __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
lbl_80176E68:
/* 80176E68 00173DA8  7F 11 9A 14 */	add r24, r17, r19
/* 80176E6C 00173DAC  93 38 00 00 */	stw r25, 0(r24)
/* 80176E70 00173DB0  80 7B 00 04 */	lwz r3, 4(r27)
/* 80176E74 00173DB4  88 03 00 2B */	lbz r0, 0x2b(r3)
/* 80176E78 00173DB8  28 00 00 00 */	cmplwi r0, 0
/* 80176E7C 00173DBC  41 82 00 14 */	beq lbl_80176E90
/* 80176E80 00173DC0  80 78 00 00 */	lwz r3, 0(r24)
/* 80176E84 00173DC4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80176E88 00173DC8  80 63 00 04 */	lwz r3, 4(r3)
/* 80176E8C 00173DCC  4B F4 9E 69 */	bl SMS_UnifyMaterial__FP8J3DModel
lbl_80176E90:
/* 80176E90 00173DD0  80 74 00 60 */	lwz r3, 0x60(r20)
/* 80176E94 00173DD4  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 80176E98 00173DD8  7C 04 78 00 */	cmpw r4, r15
/* 80176E9C 00173DDC  41 82 01 08 */	beq lbl_80176FA4
/* 80176EA0 00173DE0  40 80 00 10 */	bge lbl_80176EB0
/* 80176EA4 00173DE4  7C 04 70 00 */	cmpw r4, r14
/* 80176EA8 00173DE8  41 82 00 CC */	beq lbl_80176F74
/* 80176EAC 00173DEC  48 00 01 34 */	b lbl_80176FE0
lbl_80176EB0:
/* 80176EB0 00173DF0  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 80176EB4 00173DF4  7C 04 00 00 */	cmpw r4, r0
/* 80176EB8 00173DF8  41 82 00 08 */	beq lbl_80176EC0
/* 80176EBC 00173DFC  48 00 01 24 */	b lbl_80176FE0
lbl_80176EC0:
/* 80176EC0 00173E00  2C 16 00 00 */	cmpwi r22, 0
/* 80176EC4 00173E04  40 82 00 14 */	bne lbl_80176ED8
/* 80176EC8 00173E08  2C 15 00 03 */	cmpwi r21, 3
/* 80176ECC 00173E0C  41 82 00 54 */	beq lbl_80176F20
/* 80176ED0 00173E10  2C 15 00 04 */	cmpwi r21, 4
/* 80176ED4 00173E14  41 82 00 4C */	beq lbl_80176F20
lbl_80176ED8:
/* 80176ED8 00173E18  83 58 00 00 */	lwz r26, 0(r24)
/* 80176EDC 00173E1C  80 9A 00 18 */	lwz r4, 0x18(r26)
/* 80176EE0 00173E20  80 84 00 04 */	lwz r4, 4(r4)
/* 80176EE4 00173E24  83 C4 00 04 */	lwz r30, 4(r4)
/* 80176EE8 00173E28  4B F9 B3 89 */	bl getModel__10TLiveActorCFv
/* 80176EEC 00173E2C  83 23 00 04 */	lwz r25, 4(r3)
/* 80176EF0 00173E30  80 8D 84 EC */	lwz r4, cPeachHostTextureName@sda21(r13)
/* 80176EF4 00173E34  80 79 00 A8 */	lwz r3, 0xa8(r25)
/* 80176EF8 00173E38  4B E9 C0 F9 */	bl getIndex__10JUTNameTabCFPCc
/* 80176EFC 00173E3C  80 B9 00 AC */	lwz r5, 0xac(r25)
/* 80176F00 00173E40  54 66 2A F4 */	rlwinm r6, r3, 5, 0xb, 0x1a
/* 80176F04 00173E44  80 8D 84 E8 */	lwz r4, cPeachPartsTextureName@sda21(r13)
/* 80176F08 00173E48  38 7E 00 00 */	addi r3, r30, 0
/* 80176F0C 00173E4C  80 05 00 04 */	lwz r0, 4(r5)
/* 80176F10 00173E50  7C A0 32 14 */	add r5, r0, r6
/* 80176F14 00173E54  4B F5 AF 89 */	bl SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
/* 80176F18 00173E58  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 80176F1C 00173E5C  4B F5 E0 F1 */	bl initDL__6MActorFv
lbl_80176F20:
/* 80176F20 00173E60  2C 16 00 00 */	cmpwi r22, 0
/* 80176F24 00173E64  40 82 00 BC */	bne lbl_80176FE0
/* 80176F28 00173E68  2C 15 00 03 */	cmpwi r21, 3
/* 80176F2C 00173E6C  40 80 00 10 */	bge lbl_80176F3C
/* 80176F30 00173E70  2C 15 00 00 */	cmpwi r21, 0
/* 80176F34 00173E74  41 82 00 10 */	beq lbl_80176F44
/* 80176F38 00173E78  48 00 00 A8 */	b lbl_80176FE0
lbl_80176F3C:
/* 80176F3C 00173E7C  2C 15 00 05 */	cmpwi r21, 5
/* 80176F40 00173E80  40 80 00 A0 */	bge lbl_80176FE0
lbl_80176F44:
/* 80176F44 00173E84  38 80 FF FF */	li r4, -1
/* 80176F48 00173E88  2C 04 FF FF */	cmpwi r4, -1
/* 80176F4C 00173E8C  40 82 00 0C */	bne lbl_80176F58
/* 80176F50 00173E90  80 6D 99 20 */	lwz r3, mPtrSaveNormal__8TBaseNPC@sda21(r13)
/* 80176F54 00173E94  80 83 01 A8 */	lwz r4, 0x1a8(r3)
lbl_80176F58:
/* 80176F58 00173E98  80 78 00 00 */	lwz r3, 0(r24)
/* 80176F5C 00173E9C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80176F60 00173EA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80176F64 00173EA4  28 03 00 00 */	cmplwi r3, 0
/* 80176F68 00173EA8  41 82 00 78 */	beq lbl_80176FE0
/* 80176F6C 00173EAC  4B F6 01 B9 */	bl initSimpleMotionBlend__12MActorAnmBckFi
/* 80176F70 00173EB0  48 00 00 70 */	b lbl_80176FE0
lbl_80176F74:
/* 80176F74 00173EB4  2C 16 00 00 */	cmpwi r22, 0
/* 80176F78 00173EB8  40 82 00 68 */	bne lbl_80176FE0
/* 80176F7C 00173EBC  2C 15 00 09 */	cmpwi r21, 9
/* 80176F80 00173EC0  40 82 00 60 */	bne lbl_80176FE0
/* 80176F84 00173EC4  38 80 00 14 */	li r4, 0x14
/* 80176F88 00173EC8  80 78 00 00 */	lwz r3, 0(r24)
/* 80176F8C 00173ECC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80176F90 00173ED0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80176F94 00173ED4  28 03 00 00 */	cmplwi r3, 0
/* 80176F98 00173ED8  41 82 00 48 */	beq lbl_80176FE0
/* 80176F9C 00173EDC  4B F6 01 89 */	bl initSimpleMotionBlend__12MActorAnmBckFi
/* 80176FA0 00173EE0  48 00 00 40 */	b lbl_80176FE0
lbl_80176FA4:
/* 80176FA4 00173EE4  2C 16 00 00 */	cmpwi r22, 0
/* 80176FA8 00173EE8  40 82 00 38 */	bne lbl_80176FE0
/* 80176FAC 00173EEC  2C 15 00 0A */	cmpwi r21, 0xa
/* 80176FB0 00173EF0  40 82 00 30 */	bne lbl_80176FE0
/* 80176FB4 00173EF4  38 80 FF FF */	li r4, -1
/* 80176FB8 00173EF8  2C 04 FF FF */	cmpwi r4, -1
/* 80176FBC 00173EFC  40 82 00 0C */	bne lbl_80176FC8
/* 80176FC0 00173F00  80 6D 99 20 */	lwz r3, mPtrSaveNormal__8TBaseNPC@sda21(r13)
/* 80176FC4 00173F04  80 83 01 A8 */	lwz r4, 0x1a8(r3)
lbl_80176FC8:
/* 80176FC8 00173F08  80 78 00 00 */	lwz r3, 0(r24)
/* 80176FCC 00173F0C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80176FD0 00173F10  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80176FD4 00173F14  28 03 00 00 */	cmplwi r3, 0
/* 80176FD8 00173F18  41 82 00 08 */	beq lbl_80176FE0
/* 80176FDC 00173F1C  4B F6 01 49 */	bl initSimpleMotionBlend__12MActorAnmBckFi
lbl_80176FE0:
/* 80176FE0 00173F20  7F 53 92 14 */	add r26, r19, r18
/* 80176FE4 00173F24  7F 54 D2 14 */	add r26, r20, r26
/* 80176FE8 00173F28  3B E0 00 00 */	li r31, 0
/* 80176FEC 00173F2C  3B C0 00 00 */	li r30, 0
lbl_80176FF0:
/* 80176FF0 00173F30  80 1B 00 04 */	lwz r0, 4(r27)
/* 80176FF4 00173F34  7C 60 F2 14 */	add r3, r0, r30
/* 80176FF8 00173F38  38 03 00 10 */	addi r0, r3, 0x10
/* 80176FFC 00173F3C  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80177000 00173F40  28 04 00 00 */	cmplwi r4, 0
/* 80177004 00173F44  41 82 00 18 */	beq lbl_8017701C
/* 80177008 00173F48  80 7A 00 00 */	lwz r3, 0(r26)
/* 8017700C 00173F4C  7E E5 BB 78 */	mr r5, r23
/* 80177010 00173F50  7F A6 EB 78 */	mr r6, r29
/* 80177014 00173F54  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80177018 00173F58  48 00 00 D5 */	bl SMS_InitChangeNpcColor__FPC6MActorPC16TColorChangeInfosPC8_GXColor
lbl_8017701C:
/* 8017701C 00173F5C  3B FF 00 01 */	addi r31, r31, 1
/* 80177020 00173F60  2C 1F 00 03 */	cmpwi r31, 3
/* 80177024 00173F64  3B DE 00 08 */	addi r30, r30, 8
/* 80177028 00173F68  41 80 FF C8 */	blt lbl_80176FF0
/* 8017702C 00173F6C  28 1D 00 00 */	cmplwi r29, 0
/* 80177030 00173F70  41 82 00 70 */	beq lbl_801770A0
/* 80177034 00173F74  80 78 00 00 */	lwz r3, 0(r24)
/* 80177038 00173F78  3B E0 00 00 */	li r31, 0
/* 8017703C 00173F7C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80177040 00173F80  83 C3 00 04 */	lwz r30, 4(r3)
/* 80177044 00173F84  83 5E 00 04 */	lwz r26, 4(r30)
/* 80177048 00173F88  A3 3A 00 24 */	lhz r25, 0x24(r26)
/* 8017704C 00173F8C  48 00 00 48 */	b lbl_80177094
lbl_80177050:
/* 80177050 00173F90  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 80177054 00173F94  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 80177058 00173F98  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8017705C 00173F9C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80177060 00173FA0  80 63 00 04 */	lwz r3, 4(r3)
/* 80177064 00173FA4  A0 03 00 04 */	lhz r0, 4(r3)
/* 80177068 00173FA8  1C 60 00 34 */	mulli r3, r0, 0x34
/* 8017706C 00173FAC  38 03 00 0C */	addi r0, r3, 0xc
/* 80177070 00173FB0  7C 04 00 2E */	lwzx r0, r4, r0
/* 80177074 00173FB4  28 00 00 00 */	cmplwi r0, 0
/* 80177078 00173FB8  40 82 00 18 */	bne lbl_80177090
/* 8017707C 00173FBC  38 7E 00 00 */	addi r3, r30, 0
/* 80177080 00173FC0  38 9F 00 00 */	addi r4, r31, 0
/* 80177084 00173FC4  38 DD 00 00 */	addi r6, r29, 0
/* 80177088 00173FC8  38 A0 00 00 */	li r5, 0
/* 8017708C 00173FCC  4B F5 9D 95 */	bl SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
lbl_80177090:
/* 80177090 00173FD0  3B FF 00 01 */	addi r31, r31, 1
lbl_80177094:
/* 80177094 00173FD4  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80177098 00173FD8  7C 00 C8 40 */	cmplw r0, r25
/* 8017709C 00173FDC  41 80 FF B4 */	blt lbl_80177050
lbl_801770A0:
/* 801770A0 00173FE0  80 78 00 00 */	lwz r3, 0(r24)
/* 801770A4 00173FE4  38 80 00 01 */	li r4, 1
/* 801770A8 00173FE8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801770AC 00173FEC  4B F5 D8 85 */	bl setLightType__6MActorFi
lbl_801770B0:
/* 801770B0 00173FF0  3A D6 00 01 */	addi r22, r22, 1
/* 801770B4 00173FF4  2C 16 00 02 */	cmpwi r22, 2
/* 801770B8 00173FF8  3A 73 00 30 */	addi r19, r19, 0x30
/* 801770BC 00173FFC  3B 9C 00 04 */	addi r28, r28, 4
/* 801770C0 00174000  41 80 FC F4 */	blt lbl_80176DB4
lbl_801770C4:
/* 801770C4 00174004  3A B5 00 01 */	addi r21, r21, 1
/* 801770C8 00174008  2C 15 00 0C */	cmpwi r21, 0xc
/* 801770CC 0017400C  3A 52 00 04 */	addi r18, r18, 4
/* 801770D0 00174010  41 80 FC 80 */	blt lbl_80176D50
/* 801770D4 00174014  7E 83 A3 78 */	mr r3, r20
/* 801770D8 00174018  B9 C1 01 B0 */	lmw r14, 0x1b0(r1)
/* 801770DC 0017401C  80 01 01 FC */	lwz r0, 0x1fc(r1)
/* 801770E0 00174020  38 21 01 F8 */	addi r1, r1, 0x1f8
/* 801770E4 00174024  7C 08 03 A6 */	mtlr r0
/* 801770E8 00174028  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21490:
  .4byte 0
  .4byte 0
  .4byte 0
$$21526:
	.incbin "baserom.dol", 0x37F6B4, 0x14
$$22069:
	.incbin "baserom.dol", 0x37F6C8, 0x30
$$22070:
	.incbin "baserom.dol", 0x37F6F8, 0x38
$$22071:
	.incbin "baserom.dol", 0x37F730, 0x34
$$22072:
	.incbin "baserom.dol", 0x37F764, 0x24
$$22266:
	.incbin "baserom.dol", 0x37F788, 0x10
$$22275:
	.incbin "baserom.dol", 0x37F798, 0x14
$$22276:
	.incbin "baserom.dol", 0x37F7AC, 0x14
$$22489:
	.incbin "baserom.dol", 0x37F7C0, 0xC
$$22633:
	.incbin "baserom.dol", 0x37F7CC, 0x14

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
cPeachPartsTextureName:
  .4byte $$22275
cPeachHostTextureName:
  .4byte $$22276

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$22491:
  .4byte 0
$$22492:
	.incbin "baserom.dol", 0x3E65F4, 0x4
$$22632:
	.incbin "baserom.dol", 0x3E65F8, 0x8
$$22635:
	.incbin "baserom.dol", 0x3E6600, 0x8
