.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global THPGXYuv2RgbDraw
THPGXYuv2RgbDraw:
/* 800BDD4C 000BAC8C  7C 08 02 A6 */	mflr r0
/* 800BDD50 000BAC90  90 01 00 04 */	stw r0, 4(r1)
/* 800BDD54 000BAC94  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800BDD58 000BAC98  BF 01 00 80 */	stmw r24, 0x80(r1)
/* 800BDD5C 000BAC9C  3B 88 00 00 */	addi r28, r8, 0
/* 800BDD60 000BACA0  3B A9 00 00 */	addi r29, r9, 0
/* 800BDD64 000BACA4  AB 61 00 AA */	lha r27, 0xaa(r1)
/* 800BDD68 000BACA8  3B 04 00 00 */	addi r24, r4, 0
/* 800BDD6C 000BACAC  3B 25 00 00 */	addi r25, r5, 0
/* 800BDD70 000BACB0  3B C6 00 00 */	addi r30, r6, 0
/* 800BDD74 000BACB4  3B E7 00 00 */	addi r31, r7, 0
/* 800BDD78 000BACB8  3B 4A 00 00 */	addi r26, r10, 0
/* 800BDD7C 000BACBC  38 83 00 00 */	addi r4, r3, 0
/* 800BDD80 000BACC0  38 BC 00 00 */	addi r5, r28, 0
/* 800BDD84 000BACC4  38 DD 00 00 */	addi r6, r29, 0
/* 800BDD88 000BACC8  38 61 00 60 */	addi r3, r1, 0x60
/* 800BDD8C 000BACCC  38 E0 00 01 */	li r7, 1
/* 800BDD90 000BACD0  39 00 00 00 */	li r8, 0
/* 800BDD94 000BACD4  39 20 00 00 */	li r9, 0
/* 800BDD98 000BACD8  39 40 00 00 */	li r10, 0
/* 800BDD9C 000BACDC  4B FE C6 5D */	bl GXInitTexObj
/* 800BDDA0 000BACE0  C0 22 8C 04 */	lfs f1, $$255@sda21(r2)
/* 800BDDA4 000BACE4  38 61 00 60 */	addi r3, r1, 0x60
/* 800BDDA8 000BACE8  38 80 00 00 */	li r4, 0
/* 800BDDAC 000BACEC  FC 40 08 90 */	fmr f2, f1
/* 800BDDB0 000BACF0  38 A0 00 00 */	li r5, 0
/* 800BDDB4 000BACF4  FC 60 08 90 */	fmr f3, f1
/* 800BDDB8 000BACF8  38 C0 00 00 */	li r6, 0
/* 800BDDBC 000BACFC  38 E0 00 00 */	li r7, 0
/* 800BDDC0 000BAD00  39 00 00 00 */	li r8, 0
/* 800BDDC4 000BAD04  4B FE C8 F1 */	bl GXInitTexObjLOD
/* 800BDDC8 000BAD08  38 61 00 60 */	addi r3, r1, 0x60
/* 800BDDCC 000BAD0C  38 80 00 00 */	li r4, 0
/* 800BDDD0 000BAD10  4B FE CC B1 */	bl GXLoadTexObj
/* 800BDDD4 000BAD14  7F 80 07 34 */	extsh r0, r28
/* 800BDDD8 000BAD18  7C 1C 0E 70 */	srawi r28, r0, 1
/* 800BDDDC 000BAD1C  7F A0 07 34 */	extsh r0, r29
/* 800BDDE0 000BAD20  7C 1D 0E 70 */	srawi r29, r0, 1
/* 800BDDE4 000BAD24  38 98 00 00 */	addi r4, r24, 0
/* 800BDDE8 000BAD28  38 61 00 40 */	addi r3, r1, 0x40
/* 800BDDEC 000BAD2C  57 85 04 3E */	clrlwi r5, r28, 0x10
/* 800BDDF0 000BAD30  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 800BDDF4 000BAD34  38 E0 00 01 */	li r7, 1
/* 800BDDF8 000BAD38  39 00 00 00 */	li r8, 0
/* 800BDDFC 000BAD3C  39 20 00 00 */	li r9, 0
/* 800BDE00 000BAD40  39 40 00 00 */	li r10, 0
/* 800BDE04 000BAD44  4B FE C5 F5 */	bl GXInitTexObj
/* 800BDE08 000BAD48  C0 22 8C 04 */	lfs f1, $$255@sda21(r2)
/* 800BDE0C 000BAD4C  38 61 00 40 */	addi r3, r1, 0x40
/* 800BDE10 000BAD50  38 80 00 00 */	li r4, 0
/* 800BDE14 000BAD54  FC 40 08 90 */	fmr f2, f1
/* 800BDE18 000BAD58  38 A0 00 00 */	li r5, 0
/* 800BDE1C 000BAD5C  FC 60 08 90 */	fmr f3, f1
/* 800BDE20 000BAD60  38 C0 00 00 */	li r6, 0
/* 800BDE24 000BAD64  38 E0 00 00 */	li r7, 0
/* 800BDE28 000BAD68  39 00 00 00 */	li r8, 0
/* 800BDE2C 000BAD6C  4B FE C8 89 */	bl GXInitTexObjLOD
/* 800BDE30 000BAD70  38 61 00 40 */	addi r3, r1, 0x40
/* 800BDE34 000BAD74  38 80 00 01 */	li r4, 1
/* 800BDE38 000BAD78  4B FE CC 49 */	bl GXLoadTexObj
/* 800BDE3C 000BAD7C  38 99 00 00 */	addi r4, r25, 0
/* 800BDE40 000BAD80  38 61 00 20 */	addi r3, r1, 0x20
/* 800BDE44 000BAD84  57 85 04 3E */	clrlwi r5, r28, 0x10
/* 800BDE48 000BAD88  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 800BDE4C 000BAD8C  38 E0 00 01 */	li r7, 1
/* 800BDE50 000BAD90  39 00 00 00 */	li r8, 0
/* 800BDE54 000BAD94  39 20 00 00 */	li r9, 0
/* 800BDE58 000BAD98  39 40 00 00 */	li r10, 0
/* 800BDE5C 000BAD9C  4B FE C5 9D */	bl GXInitTexObj
/* 800BDE60 000BADA0  C0 22 8C 04 */	lfs f1, $$255@sda21(r2)
/* 800BDE64 000BADA4  38 61 00 20 */	addi r3, r1, 0x20
/* 800BDE68 000BADA8  38 80 00 00 */	li r4, 0
/* 800BDE6C 000BADAC  FC 40 08 90 */	fmr f2, f1
/* 800BDE70 000BADB0  38 A0 00 00 */	li r5, 0
/* 800BDE74 000BADB4  FC 60 08 90 */	fmr f3, f1
/* 800BDE78 000BADB8  38 C0 00 00 */	li r6, 0
/* 800BDE7C 000BADBC  38 E0 00 00 */	li r7, 0
/* 800BDE80 000BADC0  39 00 00 00 */	li r8, 0
/* 800BDE84 000BADC4  4B FE C8 31 */	bl GXInitTexObjLOD
/* 800BDE88 000BADC8  38 61 00 20 */	addi r3, r1, 0x20
/* 800BDE8C 000BADCC  38 80 00 02 */	li r4, 2
/* 800BDE90 000BADD0  4B FE CB F1 */	bl GXLoadTexObj
/* 800BDE94 000BADD4  38 60 00 80 */	li r3, 0x80
/* 800BDE98 000BADD8  38 80 00 00 */	li r4, 0
/* 800BDE9C 000BADDC  38 A0 00 04 */	li r5, 4
/* 800BDEA0 000BADE0  4B FE AA 09 */	bl GXBegin
/* 800BDEA4 000BADE4  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 800BDEA8 000BADE8  B3 C6 80 00 */	sth r30, 0xCC008000@l(r6)
/* 800BDEAC 000BADEC  7F E0 07 34 */	extsh r0, r31
/* 800BDEB0 000BADF0  7C E0 DA 14 */	add r7, r0, r27
/* 800BDEB4 000BADF4  B3 E6 80 00 */	sth r31, -0x8000(r6)
/* 800BDEB8 000BADF8  38 A0 00 00 */	li r5, 0
/* 800BDEBC 000BADFC  7F C3 07 34 */	extsh r3, r30
/* 800BDEC0 000BAE00  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 800BDEC4 000BAE04  7F 40 07 34 */	extsh r0, r26
/* 800BDEC8 000BAE08  7C 03 02 14 */	add r0, r3, r0
/* 800BDECC 000BAE0C  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 800BDED0 000BAE10  7C 04 07 34 */	extsh r4, r0
/* 800BDED4 000BAE14  38 60 00 01 */	li r3, 1
/* 800BDED8 000BAE18  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 800BDEDC 000BAE1C  7C E0 07 34 */	extsh r0, r7
/* 800BDEE0 000BAE20  B0 86 80 00 */	sth r4, -0x8000(r6)
/* 800BDEE4 000BAE24  B3 E6 80 00 */	sth r31, -0x8000(r6)
/* 800BDEE8 000BAE28  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 800BDEEC 000BAE2C  B0 66 80 00 */	sth r3, -0x8000(r6)
/* 800BDEF0 000BAE30  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 800BDEF4 000BAE34  B0 86 80 00 */	sth r4, -0x8000(r6)
/* 800BDEF8 000BAE38  B0 06 80 00 */	sth r0, -0x8000(r6)
/* 800BDEFC 000BAE3C  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 800BDF00 000BAE40  B0 66 80 00 */	sth r3, -0x8000(r6)
/* 800BDF04 000BAE44  B0 66 80 00 */	sth r3, -0x8000(r6)
/* 800BDF08 000BAE48  B3 C6 80 00 */	sth r30, -0x8000(r6)
/* 800BDF0C 000BAE4C  B0 06 80 00 */	sth r0, -0x8000(r6)
/* 800BDF10 000BAE50  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 800BDF14 000BAE54  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 800BDF18 000BAE58  B0 66 80 00 */	sth r3, -0x8000(r6)
/* 800BDF1C 000BAE5C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800BDF20 000BAE60  BB 01 00 80 */	lmw r24, 0x80(r1)
/* 800BDF24 000BAE64  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800BDF28 000BAE68  7C 08 03 A6 */	mtlr r0
/* 800BDF2C 000BAE6C  4E 80 00 20 */	blr 

.global THPGXYuv2RgbSetup
THPGXYuv2RgbSetup:
/* 800BDF30 000BAE70  7C 08 02 A6 */	mflr r0
/* 800BDF34 000BAE74  90 01 00 04 */	stw r0, 4(r1)
/* 800BDF38 000BAE78  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 800BDF3C 000BAE7C  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 800BDF40 000BAE80  7C 7A 1B 79 */	or. r26, r3, r3
/* 800BDF44 000BAE84  41 82 00 D4 */	beq lbl_800BE018
/* 800BDF48 000BAE88  A3 9A 00 04 */	lhz r28, 4(r26)
/* 800BDF4C 000BAE8C  38 60 00 00 */	li r3, 0
/* 800BDF50 000BAE90  A3 7A 00 06 */	lhz r27, 6(r26)
/* 800BDF54 000BAE94  38 80 00 00 */	li r4, 0
/* 800BDF58 000BAE98  4B FE E9 D5 */	bl GXSetPixelFmt
/* 800BDF5C 000BAE9C  6F 7D 80 00 */	xoris r29, r27, 0x8000
/* 800BDF60 000BAEA0  C0 22 8C 04 */	lfs f1, $$255@sda21(r2)
/* 800BDF64 000BAEA4  6F 9F 80 00 */	xoris r31, r28, 0x8000
/* 800BDF68 000BAEA8  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 800BDF6C 000BAEAC  3F C0 43 30 */	lis r30, 0x4330
/* 800BDF70 000BAEB0  C8 82 8C 10 */	lfd f4, $$274@sda21(r2)
/* 800BDF74 000BAEB4  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 800BDF78 000BAEB8  FC 60 08 90 */	fmr f3, f1
/* 800BDF7C 000BAEBC  FC A0 08 90 */	fmr f5, f1
/* 800BDF80 000BAEC0  C0 C2 8C 08 */	lfs f6, $$271@sda21(r2)
/* 800BDF84 000BAEC4  93 C1 00 D0 */	stw r30, 0xd0(r1)
/* 800BDF88 000BAEC8  38 61 00 74 */	addi r3, r1, 0x74
/* 800BDF8C 000BAECC  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 800BDF90 000BAED0  C8 41 00 D0 */	lfd f2, 0xd0(r1)
/* 800BDF94 000BAED4  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 800BDF98 000BAED8  EC 42 20 28 */	fsubs f2, f2, f4
/* 800BDF9C 000BAEDC  EC 80 20 28 */	fsubs f4, f0, f4
/* 800BDFA0 000BAEE0  4B FD 6E 55 */	bl C_MTXOrtho
/* 800BDFA4 000BAEE4  38 61 00 74 */	addi r3, r1, 0x74
/* 800BDFA8 000BAEE8  38 80 00 01 */	li r4, 1
/* 800BDFAC 000BAEEC  4B FE F5 A9 */	bl GXSetProjection
/* 800BDFB0 000BAEF0  93 E1 00 C4 */	stw r31, 0xc4(r1)
/* 800BDFB4 000BAEF4  C0 22 8C 04 */	lfs f1, $$255@sda21(r2)
/* 800BDFB8 000BAEF8  93 A1 00 BC */	stw r29, 0xbc(r1)
/* 800BDFBC 000BAEFC  C8 82 8C 10 */	lfd f4, $$274@sda21(r2)
/* 800BDFC0 000BAF00  FC 40 08 90 */	fmr f2, f1
/* 800BDFC4 000BAF04  93 C1 00 C0 */	stw r30, 0xc0(r1)
/* 800BDFC8 000BAF08  FC A0 08 90 */	fmr f5, f1
/* 800BDFCC 000BAF0C  C0 C2 8C 0C */	lfs f6, $$272@sda21(r2)
/* 800BDFD0 000BAF10  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 800BDFD4 000BAF14  C8 61 00 C0 */	lfd f3, 0xc0(r1)
/* 800BDFD8 000BAF18  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 800BDFDC 000BAF1C  EC 63 20 28 */	fsubs f3, f3, f4
/* 800BDFE0 000BAF20  EC 80 20 28 */	fsubs f4, f0, f4
/* 800BDFE4 000BAF24  4B FE FA 05 */	bl GXSetViewport
/* 800BDFE8 000BAF28  38 BC 00 00 */	addi r5, r28, 0
/* 800BDFEC 000BAF2C  38 DB 00 00 */	addi r6, r27, 0
/* 800BDFF0 000BAF30  38 60 00 00 */	li r3, 0
/* 800BDFF4 000BAF34  38 80 00 00 */	li r4, 0
/* 800BDFF8 000BAF38  4B FE FA 61 */	bl GXSetScissor
/* 800BDFFC 000BAF3C  38 61 00 44 */	addi r3, r1, 0x44
/* 800BE000 000BAF40  4B FD 62 B1 */	bl PSMTXIdentity
/* 800BE004 000BAF44  38 61 00 44 */	addi r3, r1, 0x44
/* 800BE008 000BAF48  38 80 00 00 */	li r4, 0
/* 800BE00C 000BAF4C  4B FE F7 21 */	bl GXLoadPosMtxImm
/* 800BE010 000BAF50  38 60 00 00 */	li r3, 0
/* 800BE014 000BAF54  4B FE F7 F9 */	bl GXSetCurrentMtx
lbl_800BE018:
/* 800BE018 000BAF58  38 60 00 01 */	li r3, 1
/* 800BE01C 000BAF5C  38 80 00 07 */	li r4, 7
/* 800BE020 000BAF60  38 A0 00 00 */	li r5, 0
/* 800BE024 000BAF64  4B FE E8 51 */	bl GXSetZMode
/* 800BE028 000BAF68  38 60 00 00 */	li r3, 0
/* 800BE02C 000BAF6C  38 80 00 01 */	li r4, 1
/* 800BE030 000BAF70  38 A0 00 00 */	li r5, 0
/* 800BE034 000BAF74  38 C0 00 00 */	li r6, 0
/* 800BE038 000BAF78  4B FE E6 B9 */	bl GXSetBlendMode
/* 800BE03C 000BAF7C  38 60 00 01 */	li r3, 1
/* 800BE040 000BAF80  4B FE E7 B5 */	bl GXSetColorUpdate
/* 800BE044 000BAF84  38 60 00 00 */	li r3, 0
/* 800BE048 000BAF88  4B FE E7 ED */	bl GXSetAlphaUpdate
/* 800BE04C 000BAF8C  28 1A 00 00 */	cmplwi r26, 0
/* 800BE050 000BAF90  41 82 00 0C */	beq lbl_800BE05C
/* 800BE054 000BAF94  38 60 00 00 */	li r3, 0
/* 800BE058 000BAF98  4B FE B5 99 */	bl GXSetDispCopyGamma
lbl_800BE05C:
/* 800BE05C 000BAF9C  38 60 00 00 */	li r3, 0
/* 800BE060 000BAFA0  4B FE BF 45 */	bl GXSetNumChans
/* 800BE064 000BAFA4  38 60 00 02 */	li r3, 2
/* 800BE068 000BAFA8  4B FE A0 E9 */	bl GXSetNumTexGens
/* 800BE06C 000BAFAC  38 60 00 00 */	li r3, 0
/* 800BE070 000BAFB0  38 80 00 01 */	li r4, 1
/* 800BE074 000BAFB4  38 A0 00 04 */	li r5, 4
/* 800BE078 000BAFB8  38 C0 00 3C */	li r6, 0x3c
/* 800BE07C 000BAFBC  38 E0 00 00 */	li r7, 0
/* 800BE080 000BAFC0  39 00 00 7D */	li r8, 0x7d
/* 800BE084 000BAFC4  4B FE 9D FD */	bl GXSetTexCoordGen2
/* 800BE088 000BAFC8  38 60 00 01 */	li r3, 1
/* 800BE08C 000BAFCC  38 80 00 01 */	li r4, 1
/* 800BE090 000BAFD0  38 A0 00 04 */	li r5, 4
/* 800BE094 000BAFD4  38 C0 00 3C */	li r6, 0x3c
/* 800BE098 000BAFD8  38 E0 00 00 */	li r7, 0
/* 800BE09C 000BAFDC  39 00 00 7D */	li r8, 0x7d
/* 800BE0A0 000BAFE0  4B FE 9D E1 */	bl GXSetTexCoordGen2
/* 800BE0A4 000BAFE4  4B FE CC 7D */	bl GXInvalidateTexAll
/* 800BE0A8 000BAFE8  4B FE 92 C1 */	bl GXClearVtxDesc
/* 800BE0AC 000BAFEC  38 60 00 09 */	li r3, 9
/* 800BE0B0 000BAFF0  38 80 00 01 */	li r4, 1
/* 800BE0B4 000BAFF4  4B FE 88 35 */	bl GXSetVtxDesc
/* 800BE0B8 000BAFF8  38 60 00 0D */	li r3, 0xd
/* 800BE0BC 000BAFFC  38 80 00 01 */	li r4, 1
/* 800BE0C0 000BB000  4B FE 88 29 */	bl GXSetVtxDesc
/* 800BE0C4 000BB004  38 60 00 00 */	li r3, 0
/* 800BE0C8 000BB008  38 80 00 09 */	li r4, 9
/* 800BE0CC 000BB00C  38 A0 00 01 */	li r5, 1
/* 800BE0D0 000BB010  38 C0 00 03 */	li r6, 3
/* 800BE0D4 000BB014  38 E0 00 00 */	li r7, 0
/* 800BE0D8 000BB018  4B FE 92 DD */	bl GXSetVtxAttrFmt
/* 800BE0DC 000BB01C  38 60 00 00 */	li r3, 0
/* 800BE0E0 000BB020  38 80 00 0D */	li r4, 0xd
/* 800BE0E4 000BB024  38 A0 00 01 */	li r5, 1
/* 800BE0E8 000BB028  38 C0 00 02 */	li r6, 2
/* 800BE0EC 000BB02C  38 E0 00 00 */	li r7, 0
/* 800BE0F0 000BB030  4B FE 92 C5 */	bl GXSetVtxAttrFmt
/* 800BE0F4 000BB034  38 60 00 04 */	li r3, 4
/* 800BE0F8 000BB038  4B FE E3 15 */	bl GXSetNumTevStages
/* 800BE0FC 000BB03C  38 60 00 00 */	li r3, 0
/* 800BE100 000BB040  38 80 00 01 */	li r4, 1
/* 800BE104 000BB044  38 A0 00 01 */	li r5, 1
/* 800BE108 000BB048  38 C0 00 FF */	li r6, 0xff
/* 800BE10C 000BB04C  4B FE E1 25 */	bl GXSetTevOrder
/* 800BE110 000BB050  38 60 00 00 */	li r3, 0
/* 800BE114 000BB054  38 80 00 0F */	li r4, 0xf
/* 800BE118 000BB058  38 A0 00 08 */	li r5, 8
/* 800BE11C 000BB05C  38 C0 00 0E */	li r6, 0xe
/* 800BE120 000BB060  38 E0 00 02 */	li r7, 2
/* 800BE124 000BB064  4B FE DA 89 */	bl GXSetTevColorIn
/* 800BE128 000BB068  38 60 00 00 */	li r3, 0
/* 800BE12C 000BB06C  38 80 00 00 */	li r4, 0
/* 800BE130 000BB070  38 A0 00 00 */	li r5, 0
/* 800BE134 000BB074  38 C0 00 00 */	li r6, 0
/* 800BE138 000BB078  38 E0 00 00 */	li r7, 0
/* 800BE13C 000BB07C  39 00 00 00 */	li r8, 0
/* 800BE140 000BB080  4B FE DB 71 */	bl GXSetTevColorOp
/* 800BE144 000BB084  38 60 00 00 */	li r3, 0
/* 800BE148 000BB088  38 80 00 07 */	li r4, 7
/* 800BE14C 000BB08C  38 A0 00 04 */	li r5, 4
/* 800BE150 000BB090  38 C0 00 06 */	li r6, 6
/* 800BE154 000BB094  38 E0 00 01 */	li r7, 1
/* 800BE158 000BB098  4B FE DA D5 */	bl GXSetTevAlphaIn
/* 800BE15C 000BB09C  38 60 00 00 */	li r3, 0
/* 800BE160 000BB0A0  38 80 00 01 */	li r4, 1
/* 800BE164 000BB0A4  38 A0 00 00 */	li r5, 0
/* 800BE168 000BB0A8  38 C0 00 00 */	li r6, 0
/* 800BE16C 000BB0AC  38 E0 00 00 */	li r7, 0
/* 800BE170 000BB0B0  39 00 00 00 */	li r8, 0
/* 800BE174 000BB0B4  4B FE DB FD */	bl GXSetTevAlphaOp
/* 800BE178 000BB0B8  38 60 00 00 */	li r3, 0
/* 800BE17C 000BB0BC  38 80 00 0C */	li r4, 0xc
/* 800BE180 000BB0C0  4B FE DE 0D */	bl GXSetTevKColorSel
/* 800BE184 000BB0C4  38 60 00 00 */	li r3, 0
/* 800BE188 000BB0C8  38 80 00 1C */	li r4, 0x1c
/* 800BE18C 000BB0CC  4B FE DE 6D */	bl GXSetTevKAlphaSel
/* 800BE190 000BB0D0  38 60 00 00 */	li r3, 0
/* 800BE194 000BB0D4  38 80 00 00 */	li r4, 0
/* 800BE198 000BB0D8  38 A0 00 00 */	li r5, 0
/* 800BE19C 000BB0DC  4B FE DE C9 */	bl GXSetTevSwapMode
/* 800BE1A0 000BB0E0  38 60 00 01 */	li r3, 1
/* 800BE1A4 000BB0E4  38 80 00 01 */	li r4, 1
/* 800BE1A8 000BB0E8  38 A0 00 02 */	li r5, 2
/* 800BE1AC 000BB0EC  38 C0 00 FF */	li r6, 0xff
/* 800BE1B0 000BB0F0  4B FE E0 81 */	bl GXSetTevOrder
/* 800BE1B4 000BB0F4  38 60 00 01 */	li r3, 1
/* 800BE1B8 000BB0F8  38 80 00 0F */	li r4, 0xf
/* 800BE1BC 000BB0FC  38 A0 00 08 */	li r5, 8
/* 800BE1C0 000BB100  38 C0 00 0E */	li r6, 0xe
/* 800BE1C4 000BB104  38 E0 00 00 */	li r7, 0
/* 800BE1C8 000BB108  4B FE D9 E5 */	bl GXSetTevColorIn
/* 800BE1CC 000BB10C  38 60 00 01 */	li r3, 1
/* 800BE1D0 000BB110  38 80 00 00 */	li r4, 0
/* 800BE1D4 000BB114  38 A0 00 00 */	li r5, 0
/* 800BE1D8 000BB118  38 C0 00 01 */	li r6, 1
/* 800BE1DC 000BB11C  38 E0 00 00 */	li r7, 0
/* 800BE1E0 000BB120  39 00 00 00 */	li r8, 0
/* 800BE1E4 000BB124  4B FE DA CD */	bl GXSetTevColorOp
/* 800BE1E8 000BB128  38 60 00 01 */	li r3, 1
/* 800BE1EC 000BB12C  38 80 00 07 */	li r4, 7
/* 800BE1F0 000BB130  38 A0 00 04 */	li r5, 4
/* 800BE1F4 000BB134  38 C0 00 06 */	li r6, 6
/* 800BE1F8 000BB138  38 E0 00 00 */	li r7, 0
/* 800BE1FC 000BB13C  4B FE DA 31 */	bl GXSetTevAlphaIn
/* 800BE200 000BB140  38 60 00 01 */	li r3, 1
/* 800BE204 000BB144  38 80 00 01 */	li r4, 1
/* 800BE208 000BB148  38 A0 00 00 */	li r5, 0
/* 800BE20C 000BB14C  38 C0 00 00 */	li r6, 0
/* 800BE210 000BB150  38 E0 00 00 */	li r7, 0
/* 800BE214 000BB154  39 00 00 00 */	li r8, 0
/* 800BE218 000BB158  4B FE DB 59 */	bl GXSetTevAlphaOp
/* 800BE21C 000BB15C  38 60 00 01 */	li r3, 1
/* 800BE220 000BB160  38 80 00 0D */	li r4, 0xd
/* 800BE224 000BB164  4B FE DD 69 */	bl GXSetTevKColorSel
/* 800BE228 000BB168  38 60 00 01 */	li r3, 1
/* 800BE22C 000BB16C  38 80 00 1D */	li r4, 0x1d
/* 800BE230 000BB170  4B FE DD C9 */	bl GXSetTevKAlphaSel
/* 800BE234 000BB174  38 60 00 01 */	li r3, 1
/* 800BE238 000BB178  38 80 00 00 */	li r4, 0
/* 800BE23C 000BB17C  38 A0 00 00 */	li r5, 0
/* 800BE240 000BB180  4B FE DE 25 */	bl GXSetTevSwapMode
/* 800BE244 000BB184  38 60 00 02 */	li r3, 2
/* 800BE248 000BB188  38 80 00 00 */	li r4, 0
/* 800BE24C 000BB18C  38 A0 00 00 */	li r5, 0
/* 800BE250 000BB190  38 C0 00 FF */	li r6, 0xff
/* 800BE254 000BB194  4B FE DF DD */	bl GXSetTevOrder
/* 800BE258 000BB198  38 60 00 02 */	li r3, 2
/* 800BE25C 000BB19C  38 80 00 0F */	li r4, 0xf
/* 800BE260 000BB1A0  38 A0 00 08 */	li r5, 8
/* 800BE264 000BB1A4  38 C0 00 0C */	li r6, 0xc
/* 800BE268 000BB1A8  38 E0 00 00 */	li r7, 0
/* 800BE26C 000BB1AC  4B FE D9 41 */	bl GXSetTevColorIn
/* 800BE270 000BB1B0  38 60 00 02 */	li r3, 2
/* 800BE274 000BB1B4  38 80 00 00 */	li r4, 0
/* 800BE278 000BB1B8  38 A0 00 00 */	li r5, 0
/* 800BE27C 000BB1BC  38 C0 00 00 */	li r6, 0
/* 800BE280 000BB1C0  38 E0 00 01 */	li r7, 1
/* 800BE284 000BB1C4  39 00 00 00 */	li r8, 0
/* 800BE288 000BB1C8  4B FE DA 29 */	bl GXSetTevColorOp
/* 800BE28C 000BB1CC  38 60 00 02 */	li r3, 2
/* 800BE290 000BB1D0  38 80 00 04 */	li r4, 4
/* 800BE294 000BB1D4  38 A0 00 07 */	li r5, 7
/* 800BE298 000BB1D8  38 C0 00 07 */	li r6, 7
/* 800BE29C 000BB1DC  38 E0 00 00 */	li r7, 0
/* 800BE2A0 000BB1E0  4B FE D9 8D */	bl GXSetTevAlphaIn
/* 800BE2A4 000BB1E4  38 60 00 02 */	li r3, 2
/* 800BE2A8 000BB1E8  38 80 00 00 */	li r4, 0
/* 800BE2AC 000BB1EC  38 A0 00 00 */	li r5, 0
/* 800BE2B0 000BB1F0  38 C0 00 00 */	li r6, 0
/* 800BE2B4 000BB1F4  38 E0 00 01 */	li r7, 1
/* 800BE2B8 000BB1F8  39 00 00 00 */	li r8, 0
/* 800BE2BC 000BB1FC  4B FE DA B5 */	bl GXSetTevAlphaOp
/* 800BE2C0 000BB200  38 60 00 02 */	li r3, 2
/* 800BE2C4 000BB204  38 80 00 00 */	li r4, 0
/* 800BE2C8 000BB208  38 A0 00 00 */	li r5, 0
/* 800BE2CC 000BB20C  4B FE DD 99 */	bl GXSetTevSwapMode
/* 800BE2D0 000BB210  38 60 00 03 */	li r3, 3
/* 800BE2D4 000BB214  38 80 00 FF */	li r4, 0xff
/* 800BE2D8 000BB218  38 A0 00 FF */	li r5, 0xff
/* 800BE2DC 000BB21C  38 C0 00 FF */	li r6, 0xff
/* 800BE2E0 000BB220  4B FE DF 51 */	bl GXSetTevOrder
/* 800BE2E4 000BB224  38 60 00 03 */	li r3, 3
/* 800BE2E8 000BB228  38 80 00 01 */	li r4, 1
/* 800BE2EC 000BB22C  38 A0 00 00 */	li r5, 0
/* 800BE2F0 000BB230  38 C0 00 0E */	li r6, 0xe
/* 800BE2F4 000BB234  38 E0 00 0F */	li r7, 0xf
/* 800BE2F8 000BB238  4B FE D8 B5 */	bl GXSetTevColorIn
/* 800BE2FC 000BB23C  38 60 00 03 */	li r3, 3
/* 800BE300 000BB240  38 80 00 00 */	li r4, 0
/* 800BE304 000BB244  38 A0 00 00 */	li r5, 0
/* 800BE308 000BB248  38 C0 00 00 */	li r6, 0
/* 800BE30C 000BB24C  38 E0 00 01 */	li r7, 1
/* 800BE310 000BB250  39 00 00 00 */	li r8, 0
/* 800BE314 000BB254  4B FE D9 9D */	bl GXSetTevColorOp
/* 800BE318 000BB258  38 60 00 03 */	li r3, 3
/* 800BE31C 000BB25C  38 80 00 07 */	li r4, 7
/* 800BE320 000BB260  38 A0 00 07 */	li r5, 7
/* 800BE324 000BB264  38 C0 00 07 */	li r6, 7
/* 800BE328 000BB268  38 E0 00 07 */	li r7, 7
/* 800BE32C 000BB26C  4B FE D9 01 */	bl GXSetTevAlphaIn
/* 800BE330 000BB270  38 60 00 03 */	li r3, 3
/* 800BE334 000BB274  38 80 00 00 */	li r4, 0
/* 800BE338 000BB278  38 A0 00 00 */	li r5, 0
/* 800BE33C 000BB27C  38 C0 00 00 */	li r6, 0
/* 800BE340 000BB280  38 E0 00 01 */	li r7, 1
/* 800BE344 000BB284  39 00 00 00 */	li r8, 0
/* 800BE348 000BB288  4B FE DA 29 */	bl GXSetTevAlphaOp
/* 800BE34C 000BB28C  38 60 00 03 */	li r3, 3
/* 800BE350 000BB290  38 80 00 00 */	li r4, 0
/* 800BE354 000BB294  38 A0 00 00 */	li r5, 0
/* 800BE358 000BB298  4B FE DD 0D */	bl GXSetTevSwapMode
/* 800BE35C 000BB29C  38 60 00 03 */	li r3, 3
/* 800BE360 000BB2A0  38 80 00 0E */	li r4, 0xe
/* 800BE364 000BB2A4  4B FE DC 29 */	bl GXSetTevKColorSel
/* 800BE368 000BB2A8  80 62 8B F0 */	lwz r3, $$222@sda21(r2)
/* 800BE36C 000BB2AC  38 81 00 3C */	addi r4, r1, 0x3c
/* 800BE370 000BB2B0  80 02 8B F4 */	lwz r0, lbl_8040C054@sda21(r2)
/* 800BE374 000BB2B4  90 61 00 34 */	stw r3, 0x34(r1)
/* 800BE378 000BB2B8  38 60 00 01 */	li r3, 1
/* 800BE37C 000BB2BC  90 01 00 38 */	stw r0, 0x38(r1)
/* 800BE380 000BB2C0  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 800BE384 000BB2C4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 800BE388 000BB2C8  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 800BE38C 000BB2CC  90 01 00 40 */	stw r0, 0x40(r1)
/* 800BE390 000BB2D0  4B FE DB 15 */	bl GXSetTevColorS10
/* 800BE394 000BB2D4  80 02 8B F8 */	lwz r0, $$225@sda21(r2)
/* 800BE398 000BB2D8  38 81 00 30 */	addi r4, r1, 0x30
/* 800BE39C 000BB2DC  38 60 00 00 */	li r3, 0
/* 800BE3A0 000BB2E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800BE3A4 000BB2E4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800BE3A8 000BB2E8  90 01 00 30 */	stw r0, 0x30(r1)
/* 800BE3AC 000BB2EC  4B FE DB 6D */	bl GXSetTevKColor
/* 800BE3B0 000BB2F0  80 02 8B FC */	lwz r0, $$228@sda21(r2)
/* 800BE3B4 000BB2F4  38 81 00 28 */	addi r4, r1, 0x28
/* 800BE3B8 000BB2F8  38 60 00 01 */	li r3, 1
/* 800BE3BC 000BB2FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BE3C0 000BB300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BE3C4 000BB304  90 01 00 28 */	stw r0, 0x28(r1)
/* 800BE3C8 000BB308  4B FE DB 51 */	bl GXSetTevKColor
/* 800BE3CC 000BB30C  80 02 8C 00 */	lwz r0, $$231@sda21(r2)
/* 800BE3D0 000BB310  38 81 00 20 */	addi r4, r1, 0x20
/* 800BE3D4 000BB314  38 60 00 02 */	li r3, 2
/* 800BE3D8 000BB318  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800BE3DC 000BB31C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800BE3E0 000BB320  90 01 00 20 */	stw r0, 0x20(r1)
/* 800BE3E4 000BB324  4B FE DB 35 */	bl GXSetTevKColor
/* 800BE3E8 000BB328  38 60 00 00 */	li r3, 0
/* 800BE3EC 000BB32C  38 80 00 00 */	li r4, 0
/* 800BE3F0 000BB330  38 A0 00 01 */	li r5, 1
/* 800BE3F4 000BB334  38 C0 00 02 */	li r6, 2
/* 800BE3F8 000BB338  38 E0 00 03 */	li r7, 3
/* 800BE3FC 000BB33C  4B FE DC C1 */	bl GXSetTevSwapModeTable
/* 800BE400 000BB340  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 800BE404 000BB344  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 800BE408 000BB348  38 21 00 F0 */	addi r1, r1, 0xf0
/* 800BE40C 000BB34C  7C 08 03 A6 */	mtlr r0
/* 800BE410 000BB350  4E 80 00 20 */	blr 

.global THPGXRestore
THPGXRestore:
/* 800BE414 000BB354  7C 08 02 A6 */	mflr r0
/* 800BE418 000BB358  38 60 00 01 */	li r3, 1
/* 800BE41C 000BB35C  90 01 00 04 */	stw r0, 4(r1)
/* 800BE420 000BB360  38 80 00 07 */	li r4, 7
/* 800BE424 000BB364  38 A0 00 00 */	li r5, 0
/* 800BE428 000BB368  94 21 FF F8 */	stwu r1, -8(r1)
/* 800BE42C 000BB36C  4B FE E4 49 */	bl GXSetZMode
/* 800BE430 000BB370  38 60 00 00 */	li r3, 0
/* 800BE434 000BB374  38 80 00 01 */	li r4, 1
/* 800BE438 000BB378  38 A0 00 00 */	li r5, 0
/* 800BE43C 000BB37C  38 C0 00 0F */	li r6, 0xf
/* 800BE440 000BB380  4B FE E2 B1 */	bl GXSetBlendMode
/* 800BE444 000BB384  38 60 00 01 */	li r3, 1
/* 800BE448 000BB388  4B FE 9D 09 */	bl GXSetNumTexGens
/* 800BE44C 000BB38C  38 60 00 00 */	li r3, 0
/* 800BE450 000BB390  4B FE BB 55 */	bl GXSetNumChans
/* 800BE454 000BB394  38 60 00 01 */	li r3, 1
/* 800BE458 000BB398  4B FE DF B5 */	bl GXSetNumTevStages
/* 800BE45C 000BB39C  38 60 00 00 */	li r3, 0
/* 800BE460 000BB3A0  38 80 00 00 */	li r4, 0
/* 800BE464 000BB3A4  38 A0 00 00 */	li r5, 0
/* 800BE468 000BB3A8  38 C0 00 FF */	li r6, 0xff
/* 800BE46C 000BB3AC  4B FE DD C5 */	bl GXSetTevOrder
/* 800BE470 000BB3B0  38 60 00 00 */	li r3, 0
/* 800BE474 000BB3B4  38 80 00 03 */	li r4, 3
/* 800BE478 000BB3B8  4B FE D5 91 */	bl GXSetTevOp
/* 800BE47C 000BB3BC  38 60 00 00 */	li r3, 0
/* 800BE480 000BB3C0  38 80 00 00 */	li r4, 0
/* 800BE484 000BB3C4  38 A0 00 00 */	li r5, 0
/* 800BE488 000BB3C8  4B FE DB DD */	bl GXSetTevSwapMode
/* 800BE48C 000BB3CC  38 60 00 01 */	li r3, 1
/* 800BE490 000BB3D0  38 80 00 00 */	li r4, 0
/* 800BE494 000BB3D4  38 A0 00 00 */	li r5, 0
/* 800BE498 000BB3D8  4B FE DB CD */	bl GXSetTevSwapMode
/* 800BE49C 000BB3DC  38 60 00 02 */	li r3, 2
/* 800BE4A0 000BB3E0  38 80 00 00 */	li r4, 0
/* 800BE4A4 000BB3E4  38 A0 00 00 */	li r5, 0
/* 800BE4A8 000BB3E8  4B FE DB BD */	bl GXSetTevSwapMode
/* 800BE4AC 000BB3EC  38 60 00 03 */	li r3, 3
/* 800BE4B0 000BB3F0  38 80 00 00 */	li r4, 0
/* 800BE4B4 000BB3F4  38 A0 00 00 */	li r5, 0
/* 800BE4B8 000BB3F8  4B FE DB AD */	bl GXSetTevSwapMode
/* 800BE4BC 000BB3FC  38 60 00 00 */	li r3, 0
/* 800BE4C0 000BB400  38 80 00 00 */	li r4, 0
/* 800BE4C4 000BB404  38 A0 00 01 */	li r5, 1
/* 800BE4C8 000BB408  38 C0 00 02 */	li r6, 2
/* 800BE4CC 000BB40C  38 E0 00 03 */	li r7, 3
/* 800BE4D0 000BB410  4B FE DB ED */	bl GXSetTevSwapModeTable
/* 800BE4D4 000BB414  38 60 00 01 */	li r3, 1
/* 800BE4D8 000BB418  38 80 00 00 */	li r4, 0
/* 800BE4DC 000BB41C  38 A0 00 00 */	li r5, 0
/* 800BE4E0 000BB420  38 C0 00 00 */	li r6, 0
/* 800BE4E4 000BB424  38 E0 00 03 */	li r7, 3
/* 800BE4E8 000BB428  4B FE DB D5 */	bl GXSetTevSwapModeTable
/* 800BE4EC 000BB42C  38 60 00 02 */	li r3, 2
/* 800BE4F0 000BB430  38 80 00 01 */	li r4, 1
/* 800BE4F4 000BB434  38 A0 00 01 */	li r5, 1
/* 800BE4F8 000BB438  38 C0 00 01 */	li r6, 1
/* 800BE4FC 000BB43C  38 E0 00 03 */	li r7, 3
/* 800BE500 000BB440  4B FE DB BD */	bl GXSetTevSwapModeTable
/* 800BE504 000BB444  38 60 00 03 */	li r3, 3
/* 800BE508 000BB448  38 80 00 02 */	li r4, 2
/* 800BE50C 000BB44C  38 A0 00 02 */	li r5, 2
/* 800BE510 000BB450  38 C0 00 02 */	li r6, 2
/* 800BE514 000BB454  38 E0 00 03 */	li r7, 3
/* 800BE518 000BB458  4B FE DB A5 */	bl GXSetTevSwapModeTable
/* 800BE51C 000BB45C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800BE520 000BB460  38 21 00 08 */	addi r1, r1, 8
/* 800BE524 000BB464  7C 08 03 A6 */	mtlr r0
/* 800BE528 000BB468  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$222:
	.incbin "baserom.dol", 0x3E48F0, 0x4
lbl_8040C054:
	.incbin "baserom.dol", 0x3E48F4, 0x4
$$225:
	.incbin "baserom.dol", 0x3E48F8, 0x4
$$228:
	.incbin "baserom.dol", 0x3E48FC, 0x4
$$231:
	.incbin "baserom.dol", 0x3E4900, 0x4
$$255:
  .4byte 0
$$271:
	.incbin "baserom.dol", 0x3E4908, 0x4
$$272:
	.incbin "baserom.dol", 0x3E490C, 0x4
$$274:
	.incbin "baserom.dol", 0x3E4910, 0x8
