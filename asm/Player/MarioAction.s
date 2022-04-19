.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global actnMain__6TMarioFv
actnMain__6TMarioFv:
/* 8011E7F4 0011B734  7C 08 02 A6 */	mflr r0
/* 8011E7F8 0011B738  90 01 00 04 */	stw r0, 4(r1)
/* 8011E7FC 0011B73C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011E800 0011B740  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011E804 0011B744  7C 7F 1B 78 */	mr r31, r3
/* 8011E808 0011B748  80 A3 00 7C */	lwz r5, 0x7c(r3)
/* 8011E80C 0011B74C  38 60 00 00 */	li r3, 0
/* 8011E810 0011B750  2C 05 03 83 */	cmpwi r5, 0x383
/* 8011E814 0011B754  41 82 00 44 */	beq lbl_8011E858
/* 8011E818 0011B758  40 80 00 28 */	bge lbl_8011E840
/* 8011E81C 0011B75C  3C 80 80 00 */	lis r4, 0x80000588@ha
/* 8011E820 0011B760  38 04 05 88 */	addi r0, r4, 0x80000588@l
/* 8011E824 0011B764  7C 05 00 00 */	cmpw r5, r0
/* 8011E828 0011B768  41 82 01 D0 */	beq lbl_8011E9F8
/* 8011E82C 0011B76C  40 80 02 0C */	bge lbl_8011EA38
/* 8011E830 0011B770  38 04 03 87 */	addi r0, r4, 0x387
/* 8011E834 0011B774  7C 05 00 00 */	cmpw r5, r0
/* 8011E838 0011B778  41 82 01 3C */	beq lbl_8011E974
/* 8011E83C 0011B77C  48 00 01 FC */	b lbl_8011EA38
lbl_8011E840:
/* 8011E840 0011B780  2C 05 03 86 */	cmpwi r5, 0x386
/* 8011E844 0011B784  41 82 00 98 */	beq lbl_8011E8DC
/* 8011E848 0011B788  40 80 01 F0 */	bge lbl_8011EA38
/* 8011E84C 0011B78C  2C 05 03 85 */	cmpwi r5, 0x385
/* 8011E850 0011B790  40 80 01 E8 */	bge lbl_8011EA38
/* 8011E854 0011B794  48 00 00 10 */	b lbl_8011E864
lbl_8011E858:
/* 8011E858 0011B798  7F E3 FB 78 */	mr r3, r31
/* 8011E85C 0011B79C  48 00 01 F1 */	bl taking__6TMarioFv
/* 8011E860 0011B7A0  48 00 01 D8 */	b lbl_8011EA38
lbl_8011E864:
/* 8011E864 0011B7A4  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8011E868 0011B7A8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011E86C 0011B7AC  41 82 00 18 */	beq lbl_8011E884
/* 8011E870 0011B7B0  38 7F 00 00 */	addi r3, r31, 0
/* 8011E874 0011B7B4  38 80 08 8C */	li r4, 0x88c
/* 8011E878 0011B7B8  38 A0 00 00 */	li r5, 0
/* 8011E87C 0011B7BC  48 01 45 85 */	bl changePlayerDropping__6TMarioFUlUl
/* 8011E880 0011B7C0  48 00 01 B8 */	b lbl_8011EA38
lbl_8011E884:
/* 8011E884 0011B7C4  7F E3 FB 78 */	mr r3, r31
/* 8011E888 0011B7C8  48 00 88 89 */	bl isLast1AnimeFrame__6TMarioFv
/* 8011E88C 0011B7CC  2C 03 00 00 */	cmpwi r3, 0
/* 8011E890 0011B7D0  41 82 00 30 */	beq lbl_8011E8C0
/* 8011E894 0011B7D4  C0 22 97 88 */	lfs f1, "@2152"@sda21(r2)
/* 8011E898 0011B7D8  38 7F 00 00 */	addi r3, r31, 0
/* 8011E89C 0011B7DC  38 80 00 C3 */	li r4, 0xc3
/* 8011E8A0 0011B7E0  48 00 80 A9 */	bl setAnimation__6TMarioFif
/* 8011E8A4 0011B7E4  3C 80 0C 40 */	lis r4, 0x0C400201@ha
/* 8011E8A8 0011B7E8  38 7F 00 00 */	addi r3, r31, 0
/* 8011E8AC 0011B7EC  38 84 02 01 */	addi r4, r4, 0x0C400201@l
/* 8011E8B0 0011B7F0  38 A0 00 00 */	li r5, 0
/* 8011E8B4 0011B7F4  38 C0 00 00 */	li r6, 0
/* 8011E8B8 0011B7F8  48 01 4B 6D */	bl changePlayerStatus__6TMarioFUlUlb
/* 8011E8BC 0011B7FC  48 00 01 7C */	b lbl_8011EA38
lbl_8011E8C0:
/* 8011E8C0 0011B800  3C 80 0C 40 */	lis r4, 0x0C400201@ha
/* 8011E8C4 0011B804  38 7F 00 00 */	addi r3, r31, 0
/* 8011E8C8 0011B808  38 A4 02 01 */	addi r5, r4, 0x0C400201@l
/* 8011E8CC 0011B80C  38 80 01 10 */	li r4, 0x110
/* 8011E8D0 0011B810  48 02 6F 1D */	bl stopCommon__6TMarioFii
/* 8011E8D4 0011B814  38 60 00 00 */	li r3, 0
/* 8011E8D8 0011B818  48 00 01 60 */	b lbl_8011EA38
lbl_8011E8DC:
/* 8011E8DC 0011B81C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8011E8E0 0011B820  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8011E8E4 0011B824  41 82 00 34 */	beq lbl_8011E918
/* 8011E8E8 0011B828  7F E3 FB 78 */	mr r3, r31
/* 8011E8EC 0011B82C  48 01 63 1D */	bl considerRotateJumpStart__6TMarioFv
/* 8011E8F0 0011B830  2C 03 00 00 */	cmpwi r3, 0
/* 8011E8F4 0011B834  41 82 00 0C */	beq lbl_8011E900
/* 8011E8F8 0011B838  38 60 00 01 */	li r3, 1
/* 8011E8FC 0011B83C  48 00 01 3C */	b lbl_8011EA38
lbl_8011E900:
/* 8011E900 0011B840  3C 80 02 00 */	lis r4, 0x02000880@ha
/* 8011E904 0011B844  38 7F 00 00 */	addi r3, r31, 0
/* 8011E908 0011B848  38 84 08 80 */	addi r4, r4, 0x02000880@l
/* 8011E90C 0011B84C  38 A0 00 00 */	li r5, 0
/* 8011E910 0011B850  48 01 45 49 */	bl changePlayerJumping__6TMarioFUlUl
/* 8011E914 0011B854  48 00 01 24 */	b lbl_8011EA38
lbl_8011E918:
/* 8011E918 0011B858  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8011E91C 0011B85C  41 82 00 1C */	beq lbl_8011E938
/* 8011E920 0011B860  38 7F 00 00 */	addi r3, r31, 0
/* 8011E924 0011B864  38 80 08 8C */	li r4, 0x88c
/* 8011E928 0011B868  38 A0 00 00 */	li r5, 0
/* 8011E92C 0011B86C  38 C0 00 00 */	li r6, 0
/* 8011E930 0011B870  48 01 4A F5 */	bl changePlayerStatus__6TMarioFUlUlb
/* 8011E934 0011B874  48 00 01 04 */	b lbl_8011EA38
lbl_8011E938:
/* 8011E938 0011B878  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8011E93C 0011B87C  41 82 00 1C */	beq lbl_8011E958
/* 8011E940 0011B880  38 7F 00 00 */	addi r3, r31, 0
/* 8011E944 0011B884  38 80 00 50 */	li r4, 0x50
/* 8011E948 0011B888  38 A0 00 00 */	li r5, 0
/* 8011E94C 0011B88C  38 C0 00 00 */	li r6, 0
/* 8011E950 0011B890  48 01 4A D5 */	bl changePlayerStatus__6TMarioFUlUlb
/* 8011E954 0011B894  48 00 00 E4 */	b lbl_8011EA38
lbl_8011E958:
/* 8011E958 0011B898  3C 80 0C 40 */	lis r4, 0x0C400201@ha
/* 8011E95C 0011B89C  38 7F 00 00 */	addi r3, r31, 0
/* 8011E960 0011B8A0  38 A4 02 01 */	addi r5, r4, 0x0C400201@l
/* 8011E964 0011B8A4  38 80 00 5A */	li r4, 0x5a
/* 8011E968 0011B8A8  48 02 6E 85 */	bl stopCommon__6TMarioFii
/* 8011E96C 0011B8AC  38 60 00 00 */	li r3, 0
/* 8011E970 0011B8B0  48 00 00 C8 */	b lbl_8011EA38
lbl_8011E974:
/* 8011E974 0011B8B4  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8011E978 0011B8B8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011E97C 0011B8BC  41 82 00 18 */	beq lbl_8011E994
/* 8011E980 0011B8C0  38 7F 00 00 */	addi r3, r31, 0
/* 8011E984 0011B8C4  38 80 08 8C */	li r4, 0x88c
/* 8011E988 0011B8C8  38 A0 00 00 */	li r5, 0
/* 8011E98C 0011B8CC  48 01 44 75 */	bl changePlayerDropping__6TMarioFUlUl
/* 8011E990 0011B8D0  48 00 00 A8 */	b lbl_8011EA38
lbl_8011E994:
/* 8011E994 0011B8D4  3C 80 0C 40 */	lis r4, 0x0C400201@ha
/* 8011E998 0011B8D8  38 7F 00 00 */	addi r3, r31, 0
/* 8011E99C 0011B8DC  38 A4 02 01 */	addi r5, r4, 0x0C400201@l
/* 8011E9A0 0011B8E0  38 80 00 6E */	li r4, 0x6e
/* 8011E9A4 0011B8E4  48 02 6E 49 */	bl stopCommon__6TMarioFii
/* 8011E9A8 0011B8E8  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8011E9AC 0011B8EC  28 00 00 00 */	cmplwi r0, 0
/* 8011E9B0 0011B8F0  41 82 00 40 */	beq lbl_8011E9F0
/* 8011E9B4 0011B8F4  80 7F 03 A8 */	lwz r3, 0x3a8(r31)
/* 8011E9B8 0011B8F8  C0 22 97 8C */	lfs f1, "@2153"@sda21(r2)
/* 8011E9BC 0011B8FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8011E9C0 0011B900  4B F0 C3 05 */	bl checkPass__12J3DFrameCtrlFf
/* 8011E9C4 0011B904  2C 03 00 00 */	cmpwi r3, 0
/* 8011E9C8 0011B908  41 82 00 28 */	beq lbl_8011E9F0
/* 8011E9CC 0011B90C  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8011E9D0 0011B910  38 9F 00 00 */	addi r4, r31, 0
/* 8011E9D4 0011B914  38 A0 00 06 */	li r5, 6
/* 8011E9D8 0011B918  81 83 00 00 */	lwz r12, 0(r3)
/* 8011E9DC 0011B91C  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8011E9E0 0011B920  7D 88 03 A6 */	mtlr r12
/* 8011E9E4 0011B924  4E 80 00 21 */	blrl 
/* 8011E9E8 0011B928  38 00 00 00 */	li r0, 0
/* 8011E9EC 0011B92C  90 1F 00 6C */	stw r0, 0x6c(r31)
lbl_8011E9F0:
/* 8011E9F0 0011B930  38 60 00 00 */	li r3, 0
/* 8011E9F4 0011B934  48 00 00 44 */	b lbl_8011EA38
lbl_8011E9F8:
/* 8011E9F8 0011B938  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 8011E9FC 0011B93C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011EA00 0011B940  41 82 00 18 */	beq lbl_8011EA18
/* 8011EA04 0011B944  38 7F 00 00 */	addi r3, r31, 0
/* 8011EA08 0011B948  38 80 08 8C */	li r4, 0x88c
/* 8011EA0C 0011B94C  38 A0 00 00 */	li r5, 0
/* 8011EA10 0011B950  48 01 43 F1 */	bl changePlayerDropping__6TMarioFUlUl
/* 8011EA14 0011B954  48 00 00 24 */	b lbl_8011EA38
lbl_8011EA18:
/* 8011EA18 0011B958  3C 80 0C 40 */	lis r4, 0x0C400201@ha
/* 8011EA1C 0011B95C  38 7F 00 00 */	addi r3, r31, 0
/* 8011EA20 0011B960  38 A4 02 01 */	addi r5, r4, 0x0C400201@l
/* 8011EA24 0011B964  38 80 00 65 */	li r4, 0x65
/* 8011EA28 0011B968  48 02 6D C5 */	bl stopCommon__6TMarioFii
/* 8011EA2C 0011B96C  7F E3 FB 78 */	mr r3, r31
/* 8011EA30 0011B970  48 01 2C 41 */	bl checkThrowObject__6TMarioFv
/* 8011EA34 0011B974  38 60 00 00 */	li r3, 0
lbl_8011EA38:
/* 8011EA38 0011B978  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011EA3C 0011B97C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011EA40 0011B980  38 21 00 20 */	addi r1, r1, 0x20
/* 8011EA44 0011B984  7C 08 03 A6 */	mtlr r0
/* 8011EA48 0011B988  4E 80 00 20 */	blr 

.global taking__6TMarioFv
taking__6TMarioFv:
/* 8011EA4C 0011B98C  7C 08 02 A6 */	mflr r0
/* 8011EA50 0011B990  90 01 00 04 */	stw r0, 4(r1)
/* 8011EA54 0011B994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011EA58 0011B998  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011EA5C 0011B99C  7C 7F 1B 78 */	mr r31, r3
/* 8011EA60 0011B9A0  80 03 00 74 */	lwz r0, 0x74(r3)
/* 8011EA64 0011B9A4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011EA68 0011B9A8  41 82 00 18 */	beq lbl_8011EA80
/* 8011EA6C 0011B9AC  38 7F 00 00 */	addi r3, r31, 0
/* 8011EA70 0011B9B0  38 80 08 8C */	li r4, 0x88c
/* 8011EA74 0011B9B4  38 A0 00 00 */	li r5, 0
/* 8011EA78 0011B9B8  48 01 43 89 */	bl changePlayerDropping__6TMarioFUlUl
/* 8011EA7C 0011B9BC  48 00 00 E0 */	b lbl_8011EB5C
lbl_8011EA80:
/* 8011EA80 0011B9C0  C0 22 97 88 */	lfs f1, "@2152"@sda21(r2)
/* 8011EA84 0011B9C4  38 7F 00 00 */	addi r3, r31, 0
/* 8011EA88 0011B9C8  38 80 00 6B */	li r4, 0x6b
/* 8011EA8C 0011B9CC  48 00 7E BD */	bl setAnimation__6TMarioFif
/* 8011EA90 0011B9D0  80 1F 03 84 */	lwz r0, 0x384(r31)
/* 8011EA94 0011B9D4  28 00 00 00 */	cmplwi r0, 0
/* 8011EA98 0011B9D8  41 82 00 7C */	beq lbl_8011EB14
/* 8011EA9C 0011B9DC  80 7F 03 A8 */	lwz r3, 0x3a8(r31)
/* 8011EAA0 0011B9E0  C0 22 97 90 */	lfs f1, "@2188"@sda21(r2)
/* 8011EAA4 0011B9E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8011EAA8 0011B9E8  4B F0 C2 1D */	bl checkPass__12J3DFrameCtrlFf
/* 8011EAAC 0011B9EC  2C 03 00 00 */	cmpwi r3, 0
/* 8011EAB0 0011B9F0  41 82 00 64 */	beq lbl_8011EB14
/* 8011EAB4 0011B9F4  80 7F 03 84 */	lwz r3, 0x384(r31)
/* 8011EAB8 0011B9F8  38 9F 00 00 */	addi r4, r31, 0
/* 8011EABC 0011B9FC  38 A0 00 04 */	li r5, 4
/* 8011EAC0 0011BA00  81 83 00 00 */	lwz r12, 0(r3)
/* 8011EAC4 0011BA04  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8011EAC8 0011BA08  7D 88 03 A6 */	mtlr r12
/* 8011EACC 0011BA0C  4E 80 00 21 */	blrl 
/* 8011EAD0 0011BA10  2C 03 00 01 */	cmpwi r3, 1
/* 8011EAD4 0011BA14  40 82 00 1C */	bne lbl_8011EAF0
/* 8011EAD8 0011BA18  38 7F 00 00 */	addi r3, r31, 0
/* 8011EADC 0011BA1C  38 80 78 8F */	li r4, 0x788f
/* 8011EAE0 0011BA20  48 04 5D 2D */	bl startVoice__6TMarioFUl
/* 8011EAE4 0011BA24  80 1F 03 84 */	lwz r0, 0x384(r31)
/* 8011EAE8 0011BA28  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 8011EAEC 0011BA2C  48 00 00 20 */	b lbl_8011EB0C
lbl_8011EAF0:
/* 8011EAF0 0011BA30  3C 80 0C 40 */	lis r4, 0x0C400201@ha
/* 8011EAF4 0011BA34  38 7F 00 00 */	addi r3, r31, 0
/* 8011EAF8 0011BA38  38 84 02 01 */	addi r4, r4, 0x0C400201@l
/* 8011EAFC 0011BA3C  38 A0 00 00 */	li r5, 0
/* 8011EB00 0011BA40  38 C0 00 00 */	li r6, 0
/* 8011EB04 0011BA44  48 01 49 21 */	bl changePlayerStatus__6TMarioFUlUlb
/* 8011EB08 0011BA48  48 00 00 54 */	b lbl_8011EB5C
lbl_8011EB0C:
/* 8011EB0C 0011BA4C  38 00 00 00 */	li r0, 0
/* 8011EB10 0011BA50  90 1F 03 84 */	stw r0, 0x384(r31)
lbl_8011EB14:
/* 8011EB14 0011BA54  7F E3 FB 78 */	mr r3, r31
/* 8011EB18 0011BA58  48 00 85 F9 */	bl isLast1AnimeFrame__6TMarioFv
/* 8011EB1C 0011BA5C  2C 03 00 00 */	cmpwi r3, 0
/* 8011EB20 0011BA60  41 82 00 30 */	beq lbl_8011EB50
/* 8011EB24 0011BA64  38 00 00 02 */	li r0, 2
/* 8011EB28 0011BA68  90 1F 03 80 */	stw r0, 0x380(r31)
/* 8011EB2C 0011BA6C  38 00 00 00 */	li r0, 0
/* 8011EB30 0011BA70  3C 80 0C 40 */	lis r4, 0x0C400201@ha
/* 8011EB34 0011BA74  B0 1F 03 7E */	sth r0, 0x37e(r31)
/* 8011EB38 0011BA78  38 7F 00 00 */	addi r3, r31, 0
/* 8011EB3C 0011BA7C  38 84 02 01 */	addi r4, r4, 0x0C400201@l
/* 8011EB40 0011BA80  38 A0 00 00 */	li r5, 0
/* 8011EB44 0011BA84  38 C0 00 00 */	li r6, 0
/* 8011EB48 0011BA88  48 01 48 DD */	bl changePlayerStatus__6TMarioFUlUlb
/* 8011EB4C 0011BA8C  48 00 00 10 */	b lbl_8011EB5C
lbl_8011EB50:
/* 8011EB50 0011BA90  7F E3 FB 78 */	mr r3, r31
/* 8011EB54 0011BA94  48 01 7A 21 */	bl waitProcess__6TMarioFv
/* 8011EB58 0011BA98  38 60 00 00 */	li r3, 0
lbl_8011EB5C:
/* 8011EB5C 0011BA9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011EB60 0011BAA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011EB64 0011BAA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8011EB68 0011BAA8  7C 08 03 A6 */	mtlr r0
/* 8011EB6C 0011BAAC  4E 80 00 20 */	blr 

.global __sinit_MarioAction_cpp
__sinit_MarioAction_cpp:
/* 8011EB70 0011BAB0  7C 08 02 A6 */	mflr r0
/* 8011EB74 0011BAB4  3C 60 80 3F */	lis r3, "@2108"@ha
/* 8011EB78 0011BAB8  90 01 00 04 */	stw r0, 4(r1)
/* 8011EB7C 0011BABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011EB80 0011BAC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EB84 0011BAC4  3B E3 2E 70 */	addi r31, r3, "@2108"@l
/* 8011EB88 0011BAC8  88 0D 97 CC */	lbz r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
/* 8011EB8C 0011BACC  7C 00 07 75 */	extsb. r0, r0
/* 8011EB90 0011BAD0  40 82 00 28 */	bne lbl_8011EBB8
/* 8011EB94 0011BAD4  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 8011EB98 0011BAD8  4B EF 00 9D */	bl initiate__10JSUPtrListFv
/* 8011EB9C 0011BADC  3C 60 80 0E */	lis r3, "__dt__15JSUList<5MSBgm>Fv"@ha
/* 8011EBA0 0011BAE0  38 83 6A 44 */	addi r4, r3, "__dt__15JSUList<5MSBgm>Fv"@l
/* 8011EBA4 0011BAE4  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 8011EBA8 0011BAE8  38 BF 00 00 */	addi r5, r31, 0
/* 8011EBAC 0011BAEC  4B F6 3B 7D */	bl __register_global_object
/* 8011EBB0 0011BAF0  38 00 00 01 */	li r0, 1
/* 8011EBB4 0011BAF4  98 0D 97 CC */	stb r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
lbl_8011EBB8:
/* 8011EBB8 0011BAF8  88 0D 97 CD */	lbz r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
/* 8011EBBC 0011BAFC  7C 00 07 75 */	extsb. r0, r0
/* 8011EBC0 0011BB00  40 82 00 28 */	bne lbl_8011EBE8
/* 8011EBC4 0011BB04  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 8011EBC8 0011BB08  4B EF 00 6D */	bl initiate__10JSUPtrListFv
/* 8011EBCC 0011BB0C  3C 60 80 0E */	lis r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@ha
/* 8011EBD0 0011BB10  38 83 69 EC */	addi r4, r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@l
/* 8011EBD4 0011BB14  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 8011EBD8 0011BB18  38 BF 00 0C */	addi r5, r31, 0xc
/* 8011EBDC 0011BB1C  4B F6 3B 4D */	bl __register_global_object
/* 8011EBE0 0011BB20  38 00 00 01 */	li r0, 1
/* 8011EBE4 0011BB24  98 0D 97 CD */	stb r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
lbl_8011EBE8:
/* 8011EBE8 0011BB28  88 0D 97 CE */	lbz r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
/* 8011EBEC 0011BB2C  7C 00 07 75 */	extsb. r0, r0
/* 8011EBF0 0011BB30  40 82 00 28 */	bne lbl_8011EC18
/* 8011EBF4 0011BB34  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 8011EBF8 0011BB38  4B EF 00 3D */	bl initiate__10JSUPtrListFv
/* 8011EBFC 0011BB3C  3C 60 80 0E */	lis r3, "__dt__21JSUList<10MSSetSound>Fv"@ha
/* 8011EC00 0011BB40  38 83 69 94 */	addi r4, r3, "__dt__21JSUList<10MSSetSound>Fv"@l
/* 8011EC04 0011BB44  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 8011EC08 0011BB48  38 BF 00 18 */	addi r5, r31, 0x18
/* 8011EC0C 0011BB4C  4B F6 3B 1D */	bl __register_global_object
/* 8011EC10 0011BB50  38 00 00 01 */	li r0, 1
/* 8011EC14 0011BB54  98 0D 97 CE */	stb r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
lbl_8011EC18:
/* 8011EC18 0011BB58  88 0D 8F 8C */	lbz r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
/* 8011EC1C 0011BB5C  7C 00 07 75 */	extsb. r0, r0
/* 8011EC20 0011BB60  40 82 00 28 */	bne lbl_8011EC48
/* 8011EC24 0011BB64  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 8011EC28 0011BB68  4B EF 00 0D */	bl initiate__10JSUPtrListFv
/* 8011EC2C 0011BB6C  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@ha
/* 8011EC30 0011BB70  38 83 A8 0C */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@l
/* 8011EC34 0011BB74  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 8011EC38 0011BB78  38 BF 00 24 */	addi r5, r31, 0x24
/* 8011EC3C 0011BB7C  4B F6 3A ED */	bl __register_global_object
/* 8011EC40 0011BB80  38 00 00 01 */	li r0, 1
/* 8011EC44 0011BB84  98 0D 8F 8C */	stb r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
lbl_8011EC48:
/* 8011EC48 0011BB88  88 0D 8F 8D */	lbz r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
/* 8011EC4C 0011BB8C  7C 00 07 75 */	extsb. r0, r0
/* 8011EC50 0011BB90  40 82 00 28 */	bne lbl_8011EC78
/* 8011EC54 0011BB94  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 8011EC58 0011BB98  4B EE FF DD */	bl initiate__10JSUPtrListFv
/* 8011EC5C 0011BB9C  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@ha
/* 8011EC60 0011BBA0  38 83 A7 B4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@l
/* 8011EC64 0011BBA4  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 8011EC68 0011BBA8  38 BF 00 30 */	addi r5, r31, 0x30
/* 8011EC6C 0011BBAC  4B F6 3A BD */	bl __register_global_object
/* 8011EC70 0011BBB0  38 00 00 01 */	li r0, 1
/* 8011EC74 0011BBB4  98 0D 8F 8D */	stb r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
lbl_8011EC78:
/* 8011EC78 0011BBB8  88 0D 8F 8E */	lbz r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
/* 8011EC7C 0011BBBC  7C 00 07 75 */	extsb. r0, r0
/* 8011EC80 0011BBC0  40 82 00 28 */	bne lbl_8011ECA8
/* 8011EC84 0011BBC4  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 8011EC88 0011BBC8  4B EE FF AD */	bl initiate__10JSUPtrListFv
/* 8011EC8C 0011BBCC  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@ha
/* 8011EC90 0011BBD0  38 83 A7 5C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@l
/* 8011EC94 0011BBD4  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 8011EC98 0011BBD8  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8011EC9C 0011BBDC  4B F6 3A 8D */	bl __register_global_object
/* 8011ECA0 0011BBE0  38 00 00 01 */	li r0, 1
/* 8011ECA4 0011BBE4  98 0D 8F 8E */	stb r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
lbl_8011ECA8:
/* 8011ECA8 0011BBE8  88 0D 8F 8F */	lbz r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
/* 8011ECAC 0011BBEC  7C 00 07 75 */	extsb. r0, r0
/* 8011ECB0 0011BBF0  40 82 00 28 */	bne lbl_8011ECD8
/* 8011ECB4 0011BBF4  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 8011ECB8 0011BBF8  4B EE FF 7D */	bl initiate__10JSUPtrListFv
/* 8011ECBC 0011BBFC  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@ha
/* 8011ECC0 0011BC00  38 83 A7 04 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@l
/* 8011ECC4 0011BC04  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 8011ECC8 0011BC08  38 BF 00 48 */	addi r5, r31, 0x48
/* 8011ECCC 0011BC0C  4B F6 3A 5D */	bl __register_global_object
/* 8011ECD0 0011BC10  38 00 00 01 */	li r0, 1
/* 8011ECD4 0011BC14  98 0D 8F 8F */	stb r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
lbl_8011ECD8:
/* 8011ECD8 0011BC18  88 0D 8F 90 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
/* 8011ECDC 0011BC1C  7C 00 07 75 */	extsb. r0, r0
/* 8011ECE0 0011BC20  40 82 00 28 */	bne lbl_8011ED08
/* 8011ECE4 0011BC24  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 8011ECE8 0011BC28  4B EE FF 4D */	bl initiate__10JSUPtrListFv
/* 8011ECEC 0011BC2C  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@ha
/* 8011ECF0 0011BC30  38 83 A6 AC */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@l
/* 8011ECF4 0011BC34  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 8011ECF8 0011BC38  38 BF 00 54 */	addi r5, r31, 0x54
/* 8011ECFC 0011BC3C  4B F6 3A 2D */	bl __register_global_object
/* 8011ED00 0011BC40  38 00 00 01 */	li r0, 1
/* 8011ED04 0011BC44  98 0D 8F 90 */	stb r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
lbl_8011ED08:
/* 8011ED08 0011BC48  88 0D 8F 91 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
/* 8011ED0C 0011BC4C  7C 00 07 75 */	extsb. r0, r0
/* 8011ED10 0011BC50  40 82 00 28 */	bne lbl_8011ED38
/* 8011ED14 0011BC54  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 8011ED18 0011BC58  4B EE FF 1D */	bl initiate__10JSUPtrListFv
/* 8011ED1C 0011BC5C  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@ha
/* 8011ED20 0011BC60  38 83 A6 54 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@l
/* 8011ED24 0011BC64  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 8011ED28 0011BC68  38 BF 00 60 */	addi r5, r31, 0x60
/* 8011ED2C 0011BC6C  4B F6 39 FD */	bl __register_global_object
/* 8011ED30 0011BC70  38 00 00 01 */	li r0, 1
/* 8011ED34 0011BC74  98 0D 8F 91 */	stb r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
lbl_8011ED38:
/* 8011ED38 0011BC78  88 0D 8F 92 */	lbz r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
/* 8011ED3C 0011BC7C  7C 00 07 75 */	extsb. r0, r0
/* 8011ED40 0011BC80  40 82 00 28 */	bne lbl_8011ED68
/* 8011ED44 0011BC84  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 8011ED48 0011BC88  4B EE FE ED */	bl initiate__10JSUPtrListFv
/* 8011ED4C 0011BC8C  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@ha
/* 8011ED50 0011BC90  38 83 A5 FC */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@l
/* 8011ED54 0011BC94  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 8011ED58 0011BC98  38 BF 00 6C */	addi r5, r31, 0x6c
/* 8011ED5C 0011BC9C  4B F6 39 CD */	bl __register_global_object
/* 8011ED60 0011BCA0  38 00 00 01 */	li r0, 1
/* 8011ED64 0011BCA4  98 0D 8F 92 */	stb r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
lbl_8011ED68:
/* 8011ED68 0011BCA8  88 0D 8F 93 */	lbz r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
/* 8011ED6C 0011BCAC  7C 00 07 75 */	extsb. r0, r0
/* 8011ED70 0011BCB0  40 82 00 28 */	bne lbl_8011ED98
/* 8011ED74 0011BCB4  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 8011ED78 0011BCB8  4B EE FE BD */	bl initiate__10JSUPtrListFv
/* 8011ED7C 0011BCBC  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@ha
/* 8011ED80 0011BCC0  38 83 A5 A4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@l
/* 8011ED84 0011BCC4  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 8011ED88 0011BCC8  38 BF 00 78 */	addi r5, r31, 0x78
/* 8011ED8C 0011BCCC  4B F6 39 9D */	bl __register_global_object
/* 8011ED90 0011BCD0  38 00 00 01 */	li r0, 1
/* 8011ED94 0011BCD4  98 0D 8F 93 */	stb r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
lbl_8011ED98:
/* 8011ED98 0011BCD8  88 0D 8F 94 */	lbz r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
/* 8011ED9C 0011BCDC  7C 00 07 75 */	extsb. r0, r0
/* 8011EDA0 0011BCE0  40 82 00 28 */	bne lbl_8011EDC8
/* 8011EDA4 0011BCE4  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 8011EDA8 0011BCE8  4B EE FE 8D */	bl initiate__10JSUPtrListFv
/* 8011EDAC 0011BCEC  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@ha
/* 8011EDB0 0011BCF0  38 83 A5 4C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@l
/* 8011EDB4 0011BCF4  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 8011EDB8 0011BCF8  38 BF 00 84 */	addi r5, r31, 0x84
/* 8011EDBC 0011BCFC  4B F6 39 6D */	bl __register_global_object
/* 8011EDC0 0011BD00  38 00 00 01 */	li r0, 1
/* 8011EDC4 0011BD04  98 0D 8F 94 */	stb r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
lbl_8011EDC8:
/* 8011EDC8 0011BD08  88 0D 8F 95 */	lbz r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
/* 8011EDCC 0011BD0C  7C 00 07 75 */	extsb. r0, r0
/* 8011EDD0 0011BD10  40 82 00 28 */	bne lbl_8011EDF8
/* 8011EDD4 0011BD14  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 8011EDD8 0011BD18  4B EE FE 5D */	bl initiate__10JSUPtrListFv
/* 8011EDDC 0011BD1C  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@ha
/* 8011EDE0 0011BD20  38 83 A4 F4 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@l
/* 8011EDE4 0011BD24  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 8011EDE8 0011BD28  38 BF 00 90 */	addi r5, r31, 0x90
/* 8011EDEC 0011BD2C  4B F6 39 3D */	bl __register_global_object
/* 8011EDF0 0011BD30  38 00 00 01 */	li r0, 1
/* 8011EDF4 0011BD34  98 0D 8F 95 */	stb r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
lbl_8011EDF8:
/* 8011EDF8 0011BD38  88 0D 8F 96 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
/* 8011EDFC 0011BD3C  7C 00 07 75 */	extsb. r0, r0
/* 8011EE00 0011BD40  40 82 00 28 */	bne lbl_8011EE28
/* 8011EE04 0011BD44  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 8011EE08 0011BD48  4B EE FE 2D */	bl initiate__10JSUPtrListFv
/* 8011EE0C 0011BD4C  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@ha
/* 8011EE10 0011BD50  38 83 A4 9C */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@l
/* 8011EE14 0011BD54  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 8011EE18 0011BD58  38 BF 00 9C */	addi r5, r31, 0x9c
/* 8011EE1C 0011BD5C  4B F6 39 0D */	bl __register_global_object
/* 8011EE20 0011BD60  38 00 00 01 */	li r0, 1
/* 8011EE24 0011BD64  98 0D 8F 96 */	stb r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
lbl_8011EE28:
/* 8011EE28 0011BD68  88 0D 8F 97 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
/* 8011EE2C 0011BD6C  7C 00 07 75 */	extsb. r0, r0
/* 8011EE30 0011BD70  40 82 00 28 */	bne lbl_8011EE58
/* 8011EE34 0011BD74  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 8011EE38 0011BD78  4B EE FD FD */	bl initiate__10JSUPtrListFv
/* 8011EE3C 0011BD7C  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@ha
/* 8011EE40 0011BD80  38 83 A4 44 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@l
/* 8011EE44 0011BD84  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 8011EE48 0011BD88  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 8011EE4C 0011BD8C  4B F6 38 DD */	bl __register_global_object
/* 8011EE50 0011BD90  38 00 00 01 */	li r0, 1
/* 8011EE54 0011BD94  98 0D 8F 97 */	stb r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
lbl_8011EE58:
/* 8011EE58 0011BD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011EE5C 0011BD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011EE60 0011BDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011EE64 0011BDA4  7C 08 03 A6 */	mtlr r0
/* 8011EE68 0011BDA8  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
lbl_constructor:
  .4byte __sinit_MarioAction_cpp

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@2152":
	.incbin "baserom.dol", 0x3E5488, 0x4
"@2153":
	.incbin "baserom.dol", 0x3E548C, 0x4
"@2188":
	.incbin "baserom.dol", 0x3E5490, 0x8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
"@2108":
	.skip 0xC
"@2109":
	.skip 0xC
"@2110":
	.skip 0xC
"@2111":
	.skip 0xC
"@2112":
	.skip 0xC
"@2113":
	.skip 0xC
"@2114":
	.skip 0xC
"@2115":
	.skip 0xC
"@2116":
	.skip 0xC
"@2117":
	.skip 0xC
"@2118":
	.skip 0xC
"@2119":
	.skip 0xC
"@2120":
	.skip 0xC
"@2121":
	.skip 0xC
"@2122":
	.skip 0x10
