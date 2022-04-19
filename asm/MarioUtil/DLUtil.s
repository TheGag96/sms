.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global reset__10TDLTexQuadFv
reset__10TDLTexQuadFv:
/* 800C020C 000BD14C  38 00 00 00 */	li r0, 0
/* 800C0210 000BD150  B0 03 00 08 */	sth r0, 8(r3)
/* 800C0214 000BD154  A0 03 00 04 */	lhz r0, 4(r3)
/* 800C0218 000BD158  20 00 00 01 */	subfic r0, r0, 1
/* 800C021C 000BD15C  B0 03 00 04 */	sth r0, 4(r3)
/* 800C0220 000BD160  4E 80 00 20 */	blr 

.global draw__15TDLColorTexQuadFv
draw__15TDLColorTexQuadFv:
/* 800C0224 000BD164  7C 08 02 A6 */	mflr r0
/* 800C0228 000BD168  90 01 00 04 */	stw r0, 4(r1)
/* 800C022C 000BD16C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C0230 000BD170  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800C0234 000BD174  7C 7F 1B 78 */	mr r31, r3
/* 800C0238 000BD178  A0 03 00 08 */	lhz r0, 8(r3)
/* 800C023C 000BD17C  28 00 00 00 */	cmplwi r0, 0
/* 800C0240 000BD180  41 82 00 70 */	beq lbl_800C02B0
/* 800C0244 000BD184  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0248 000BD188  38 60 00 09 */	li r3, 9
/* 800C024C 000BD18C  38 A0 00 0C */	li r5, 0xc
/* 800C0250 000BD190  54 00 10 3A */	slwi r0, r0, 2
/* 800C0254 000BD194  7C 9F 02 14 */	add r4, r31, r0
/* 800C0258 000BD198  80 84 00 14 */	lwz r4, 0x14(r4)
/* 800C025C 000BD19C  4B FE 7B 89 */	bl GXSetArray
/* 800C0260 000BD1A0  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0264 000BD1A4  38 60 00 0B */	li r3, 0xb
/* 800C0268 000BD1A8  38 A0 00 04 */	li r5, 4
/* 800C026C 000BD1AC  54 00 10 3A */	slwi r0, r0, 2
/* 800C0270 000BD1B0  7C 9F 02 14 */	add r4, r31, r0
/* 800C0274 000BD1B4  80 84 00 20 */	lwz r4, 0x20(r4)
/* 800C0278 000BD1B8  4B FE 7B 6D */	bl GXSetArray
/* 800C027C 000BD1BC  38 60 00 0D */	li r3, 0xd
/* 800C0280 000BD1C0  38 8D 83 00 */	addi r4, r13, uv@sda21
/* 800C0284 000BD1C4  38 A0 00 02 */	li r5, 2
/* 800C0288 000BD1C8  4B FE 7B 5D */	bl GXSetArray
/* 800C028C 000BD1CC  4B FE 7B E5 */	bl GXInvalidateVtxCache
/* 800C0290 000BD1D0  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0294 000BD1D4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800C0298 000BD1D8  54 00 10 3A */	slwi r0, r0, 2
/* 800C029C 000BD1DC  7C 9F 02 14 */	add r4, r31, r0
/* 800C02A0 000BD1E0  38 03 00 1F */	addi r0, r3, 0x1f
/* 800C02A4 000BD1E4  80 64 00 0C */	lwz r3, 0xc(r4)
/* 800C02A8 000BD1E8  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 800C02AC 000BD1EC  4B FE D0 C5 */	bl GXCallDisplayList
lbl_800C02B0:
/* 800C02B0 000BD1F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C02B4 000BD1F4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800C02B8 000BD1F8  38 21 00 18 */	addi r1, r1, 0x18
/* 800C02BC 000BD1FC  7C 08 03 A6 */	mtlr r0
/* 800C02C0 000BD200  4E 80 00 20 */	blr 

.global setEnd__15TDLColorTexQuadFv
setEnd__15TDLColorTexQuadFv:
/* 800C02C4 000BD204  7C 08 02 A6 */	mflr r0
/* 800C02C8 000BD208  90 01 00 04 */	stw r0, 4(r1)
/* 800C02CC 000BD20C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C02D0 000BD210  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800C02D4 000BD214  7C 7F 1B 78 */	mr r31, r3
/* 800C02D8 000BD218  A0 83 00 08 */	lhz r4, 8(r3)
/* 800C02DC 000BD21C  38 60 00 00 */	li r3, 0
/* 800C02E0 000BD220  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C02E4 000BD224  38 84 00 02 */	addi r4, r4, 2
/* 800C02E8 000BD228  54 00 10 3A */	slwi r0, r0, 2
/* 800C02EC 000BD22C  54 85 14 2E */	rlwinm r5, r4, 2, 0x10, 0x17
/* 800C02F0 000BD230  7C 9F 02 14 */	add r4, r31, r0
/* 800C02F4 000BD234  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800C02F8 000BD238  7C A0 46 70 */	srawi r0, r5, 8
/* 800C02FC 000BD23C  98 04 00 01 */	stb r0, 1(r4)
/* 800C0300 000BD240  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0304 000BD244  A0 9F 00 08 */	lhz r4, 8(r31)
/* 800C0308 000BD248  54 00 10 3A */	slwi r0, r0, 2
/* 800C030C 000BD24C  38 A4 00 02 */	addi r5, r4, 2
/* 800C0310 000BD250  7C 9F 02 14 */	add r4, r31, r0
/* 800C0314 000BD254  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800C0318 000BD258  54 A0 16 3A */	rlwinm r0, r5, 2, 0x18, 0x1d
/* 800C031C 000BD25C  98 04 00 02 */	stb r0, 2(r4)
/* 800C0320 000BD260  A0 BF 00 0A */	lhz r5, 0xa(r31)
/* 800C0324 000BD264  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800C0328 000BD268  54 A4 18 38 */	slwi r4, r5, 3
/* 800C032C 000BD26C  7C 05 01 D6 */	mullw r0, r5, r0
/* 800C0330 000BD270  54 00 10 3A */	slwi r0, r0, 2
/* 800C0334 000BD274  7C 84 02 14 */	add r4, r4, r0
/* 800C0338 000BD278  38 04 00 03 */	addi r0, r4, 3
/* 800C033C 000BD27C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800C0340 000BD280  80 DF 00 1C */	lwz r6, 0x1c(r31)
/* 800C0344 000BD284  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0348 000BD288  38 86 00 1F */	addi r4, r6, 0x1f
/* 800C034C 000BD28C  54 84 00 34 */	rlwinm r4, r4, 0, 0, 0x1a
/* 800C0350 000BD290  54 00 10 3A */	slwi r0, r0, 2
/* 800C0354 000BD294  7C A6 20 51 */	subf. r5, r6, r4
/* 800C0358 000BD298  7C 9F 02 14 */	add r4, r31, r0
/* 800C035C 000BD29C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800C0360 000BD2A0  7C 80 32 14 */	add r4, r0, r6
/* 800C0364 000BD2A4  40 81 00 74 */	ble lbl_800C03D8
/* 800C0368 000BD2A8  2C 05 00 08 */	cmpwi r5, 8
/* 800C036C 000BD2AC  38 C5 FF F8 */	addi r6, r5, -8
/* 800C0370 000BD2B0  40 81 00 48 */	ble lbl_800C03B8
/* 800C0374 000BD2B4  38 06 00 07 */	addi r0, r6, 7
/* 800C0378 000BD2B8  54 00 E8 FE */	srwi r0, r0, 3
/* 800C037C 000BD2BC  2C 06 00 00 */	cmpwi r6, 0
/* 800C0380 000BD2C0  7C 09 03 A6 */	mtctr r0
/* 800C0384 000BD2C4  40 81 00 34 */	ble lbl_800C03B8
/* 800C0388 000BD2C8  7C 60 1B 78 */	mr r0, r3
lbl_800C038C:
/* 800C038C 000BD2CC  98 04 00 00 */	stb r0, 0(r4)
/* 800C0390 000BD2D0  38 63 00 08 */	addi r3, r3, 8
/* 800C0394 000BD2D4  98 04 00 01 */	stb r0, 1(r4)
/* 800C0398 000BD2D8  98 04 00 02 */	stb r0, 2(r4)
/* 800C039C 000BD2DC  98 04 00 03 */	stb r0, 3(r4)
/* 800C03A0 000BD2E0  98 04 00 04 */	stb r0, 4(r4)
/* 800C03A4 000BD2E4  98 04 00 05 */	stb r0, 5(r4)
/* 800C03A8 000BD2E8  98 04 00 06 */	stb r0, 6(r4)
/* 800C03AC 000BD2EC  98 04 00 07 */	stb r0, 7(r4)
/* 800C03B0 000BD2F0  38 84 00 08 */	addi r4, r4, 8
/* 800C03B4 000BD2F4  42 00 FF D8 */	bdnz lbl_800C038C
lbl_800C03B8:
/* 800C03B8 000BD2F8  7C 03 28 50 */	subf r0, r3, r5
/* 800C03BC 000BD2FC  7C 03 28 00 */	cmpw r3, r5
/* 800C03C0 000BD300  7C 09 03 A6 */	mtctr r0
/* 800C03C4 000BD304  38 00 00 00 */	li r0, 0
/* 800C03C8 000BD308  40 80 00 10 */	bge lbl_800C03D8
lbl_800C03CC:
/* 800C03CC 000BD30C  98 04 00 00 */	stb r0, 0(r4)
/* 800C03D0 000BD310  38 84 00 01 */	addi r4, r4, 1
/* 800C03D4 000BD314  42 00 FF F8 */	bdnz lbl_800C03CC
lbl_800C03D8:
/* 800C03D8 000BD318  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C03DC 000BD31C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800C03E0 000BD320  54 00 10 3A */	slwi r0, r0, 2
/* 800C03E4 000BD324  7C 9F 02 14 */	add r4, r31, r0
/* 800C03E8 000BD328  38 03 00 1F */	addi r0, r3, 0x1f
/* 800C03EC 000BD32C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 800C03F0 000BD330  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 800C03F4 000BD334  4B FC DB ED */	bl DCStoreRange
/* 800C03F8 000BD338  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800C03FC 000BD33C  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800C0400 000BD340  54 63 10 3A */	slwi r3, r3, 2
/* 800C0404 000BD344  7C 7F 1A 14 */	add r3, r31, r3
/* 800C0408 000BD348  1C 80 00 30 */	mulli r4, r0, 0x30
/* 800C040C 000BD34C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800C0410 000BD350  4B FC DB D1 */	bl DCStoreRange
/* 800C0414 000BD354  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0418 000BD358  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 800C041C 000BD35C  54 00 10 3A */	slwi r0, r0, 2
/* 800C0420 000BD360  7C 7F 02 14 */	add r3, r31, r0
/* 800C0424 000BD364  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800C0428 000BD368  4B FC DB B9 */	bl DCStoreRange
/* 800C042C 000BD36C  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800C0430 000BD370  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800C0434 000BD374  54 63 10 3A */	slwi r3, r3, 2
/* 800C0438 000BD378  7C 7F 1A 14 */	add r3, r31, r3
/* 800C043C 000BD37C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 800C0440 000BD380  54 04 10 3A */	slwi r4, r0, 2
/* 800C0444 000BD384  4B FC DB 9D */	bl DCStoreRange
/* 800C0448 000BD388  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C044C 000BD38C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800C0450 000BD390  38 21 00 18 */	addi r1, r1, 0x18
/* 800C0454 000BD394  7C 08 03 A6 */	mtlr r0
/* 800C0458 000BD398  4E 80 00 20 */	blr 

.global "requestCol__15TDLColorTexQuadFPCQ29JGeometry8TVec3<f>8_GXColori"
"requestCol__15TDLColorTexQuadFPCQ29JGeometry8TVec3<f>8_GXColori":
/* 800C045C 000BD39C  A1 03 00 08 */	lhz r8, 8(r3)
/* 800C0460 000BD3A0  A0 03 00 06 */	lhz r0, 6(r3)
/* 800C0464 000BD3A4  7C 08 00 40 */	cmplw r8, r0
/* 800C0468 000BD3A8  40 80 01 D0 */	bge lbl_800C0638
/* 800C046C 000BD3AC  A0 E3 00 04 */	lhz r7, 4(r3)
/* 800C0470 000BD3B0  1D 28 00 30 */	mulli r9, r8, 0x30
/* 800C0474 000BD3B4  81 04 00 00 */	lwz r8, 0(r4)
/* 800C0478 000BD3B8  80 04 00 04 */	lwz r0, 4(r4)
/* 800C047C 000BD3BC  54 E7 10 3A */	slwi r7, r7, 2
/* 800C0480 000BD3C0  7C E3 3A 14 */	add r7, r3, r7
/* 800C0484 000BD3C4  81 47 00 14 */	lwz r10, 0x14(r7)
/* 800C0488 000BD3C8  54 C7 07 BE */	clrlwi r7, r6, 0x1e
/* 800C048C 000BD3CC  7D 2A 4A 14 */	add r9, r10, r9
/* 800C0490 000BD3D0  91 09 00 00 */	stw r8, 0(r9)
/* 800C0494 000BD3D4  90 09 00 04 */	stw r0, 4(r9)
/* 800C0498 000BD3D8  80 04 00 08 */	lwz r0, 8(r4)
/* 800C049C 000BD3DC  90 09 00 08 */	stw r0, 8(r9)
/* 800C04A0 000BD3E0  A0 03 00 08 */	lhz r0, 8(r3)
/* 800C04A4 000BD3E4  A1 43 00 04 */	lhz r10, 4(r3)
/* 800C04A8 000BD3E8  54 09 10 3A */	slwi r9, r0, 2
/* 800C04AC 000BD3EC  81 04 00 0C */	lwz r8, 0xc(r4)
/* 800C04B0 000BD3F0  55 4A 10 3A */	slwi r10, r10, 2
/* 800C04B4 000BD3F4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800C04B8 000BD3F8  39 29 00 01 */	addi r9, r9, 1
/* 800C04BC 000BD3FC  7D 43 52 14 */	add r10, r3, r10
/* 800C04C0 000BD400  1D 29 00 0C */	mulli r9, r9, 0xc
/* 800C04C4 000BD404  81 4A 00 14 */	lwz r10, 0x14(r10)
/* 800C04C8 000BD408  7D 2A 4A 14 */	add r9, r10, r9
/* 800C04CC 000BD40C  91 09 00 00 */	stw r8, 0(r9)
/* 800C04D0 000BD410  90 09 00 04 */	stw r0, 4(r9)
/* 800C04D4 000BD414  80 04 00 14 */	lwz r0, 0x14(r4)
/* 800C04D8 000BD418  90 09 00 08 */	stw r0, 8(r9)
/* 800C04DC 000BD41C  A0 03 00 08 */	lhz r0, 8(r3)
/* 800C04E0 000BD420  A1 43 00 04 */	lhz r10, 4(r3)
/* 800C04E4 000BD424  54 09 10 3A */	slwi r9, r0, 2
/* 800C04E8 000BD428  81 04 00 18 */	lwz r8, 0x18(r4)
/* 800C04EC 000BD42C  55 4A 10 3A */	slwi r10, r10, 2
/* 800C04F0 000BD430  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 800C04F4 000BD434  39 29 00 02 */	addi r9, r9, 2
/* 800C04F8 000BD438  7D 43 52 14 */	add r10, r3, r10
/* 800C04FC 000BD43C  1D 29 00 0C */	mulli r9, r9, 0xc
/* 800C0500 000BD440  81 4A 00 14 */	lwz r10, 0x14(r10)
/* 800C0504 000BD444  7D 2A 4A 14 */	add r9, r10, r9
/* 800C0508 000BD448  91 09 00 00 */	stw r8, 0(r9)
/* 800C050C 000BD44C  90 09 00 04 */	stw r0, 4(r9)
/* 800C0510 000BD450  80 04 00 20 */	lwz r0, 0x20(r4)
/* 800C0514 000BD454  90 09 00 08 */	stw r0, 8(r9)
/* 800C0518 000BD458  A0 03 00 08 */	lhz r0, 8(r3)
/* 800C051C 000BD45C  A1 43 00 04 */	lhz r10, 4(r3)
/* 800C0520 000BD460  54 09 10 3A */	slwi r9, r0, 2
/* 800C0524 000BD464  81 04 00 24 */	lwz r8, 0x24(r4)
/* 800C0528 000BD468  55 4A 10 3A */	slwi r10, r10, 2
/* 800C052C 000BD46C  80 04 00 28 */	lwz r0, 0x28(r4)
/* 800C0530 000BD470  39 29 00 03 */	addi r9, r9, 3
/* 800C0534 000BD474  7D 43 52 14 */	add r10, r3, r10
/* 800C0538 000BD478  1D 29 00 0C */	mulli r9, r9, 0xc
/* 800C053C 000BD47C  81 4A 00 14 */	lwz r10, 0x14(r10)
/* 800C0540 000BD480  7D 2A 4A 14 */	add r9, r10, r9
/* 800C0544 000BD484  91 09 00 00 */	stw r8, 0(r9)
/* 800C0548 000BD488  90 09 00 04 */	stw r0, 4(r9)
/* 800C054C 000BD48C  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 800C0550 000BD490  90 09 00 08 */	stw r0, 8(r9)
/* 800C0554 000BD494  A0 03 00 04 */	lhz r0, 4(r3)
/* 800C0558 000BD498  A0 83 00 08 */	lhz r4, 8(r3)
/* 800C055C 000BD49C  54 08 10 3A */	slwi r8, r0, 2
/* 800C0560 000BD4A0  80 05 00 00 */	lwz r0, 0(r5)
/* 800C0564 000BD4A4  7C A3 42 14 */	add r5, r3, r8
/* 800C0568 000BD4A8  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 800C056C 000BD4AC  54 84 10 3A */	slwi r4, r4, 2
/* 800C0570 000BD4B0  7C 05 21 2E */	stwx r0, r5, r4
/* 800C0574 000BD4B4  A0 03 00 04 */	lhz r0, 4(r3)
/* 800C0578 000BD4B8  A1 43 00 08 */	lhz r10, 8(r3)
/* 800C057C 000BD4BC  54 00 10 3A */	slwi r0, r0, 2
/* 800C0580 000BD4C0  A1 03 00 0A */	lhz r8, 0xa(r3)
/* 800C0584 000BD4C4  7C 83 02 14 */	add r4, r3, r0
/* 800C0588 000BD4C8  55 40 14 2E */	rlwinm r0, r10, 2, 0x10, 0x17
/* 800C058C 000BD4CC  81 24 00 0C */	lwz r9, 0xc(r4)
/* 800C0590 000BD4D0  7C 05 46 70 */	srawi r5, r0, 8
/* 800C0594 000BD4D4  55 40 16 3A */	rlwinm r0, r10, 2, 0x18, 0x1d
/* 800C0598 000BD4D8  7C 04 16 70 */	srawi r4, r0, 2
/* 800C059C 000BD4DC  55 08 18 38 */	slwi r8, r8, 3
/* 800C05A0 000BD4E0  55 40 20 36 */	slwi r0, r10, 4
/* 800C05A4 000BD4E4  7D 08 02 14 */	add r8, r8, r0
/* 800C05A8 000BD4E8  55 4B 16 3A */	rlwinm r11, r10, 2, 0x18, 0x1d
/* 800C05AC 000BD4EC  39 08 00 03 */	addi r8, r8, 3
/* 800C05B0 000BD4F0  7D 09 42 14 */	add r8, r9, r8
/* 800C05B4 000BD4F4  98 A8 00 00 */	stb r5, 0(r8)
/* 800C05B8 000BD4F8  38 0B 00 01 */	addi r0, r11, 1
/* 800C05BC 000BD4FC  54 A9 06 3E */	clrlwi r9, r5, 0x18
/* 800C05C0 000BD500  99 68 00 01 */	stb r11, 1(r8)
/* 800C05C4 000BD504  54 8A 06 3E */	clrlwi r10, r4, 0x18
/* 800C05C8 000BD508  98 88 00 02 */	stb r4, 2(r8)
/* 800C05CC 000BD50C  98 E8 00 03 */	stb r7, 3(r8)
/* 800C05D0 000BD510  98 A8 00 04 */	stb r5, 4(r8)
/* 800C05D4 000BD514  98 08 00 05 */	stb r0, 5(r8)
/* 800C05D8 000BD518  39 08 00 06 */	addi r8, r8, 6
/* 800C05DC 000BD51C  38 06 00 01 */	addi r0, r6, 1
/* 800C05E0 000BD520  99 48 00 00 */	stb r10, 0(r8)
/* 800C05E4 000BD524  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 800C05E8 000BD528  98 08 00 01 */	stb r0, 1(r8)
/* 800C05EC 000BD52C  38 86 00 02 */	addi r4, r6, 2
/* 800C05F0 000BD530  38 0B 00 02 */	addi r0, r11, 2
/* 800C05F4 000BD534  99 28 00 02 */	stb r9, 2(r8)
/* 800C05F8 000BD538  54 84 07 BE */	clrlwi r4, r4, 0x1e
/* 800C05FC 000BD53C  98 08 00 03 */	stb r0, 3(r8)
/* 800C0600 000BD540  38 06 00 03 */	addi r0, r6, 3
/* 800C0604 000BD544  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 800C0608 000BD548  99 48 00 04 */	stb r10, 4(r8)
/* 800C060C 000BD54C  98 88 00 05 */	stb r4, 5(r8)
/* 800C0610 000BD550  38 8B 00 03 */	addi r4, r11, 3
/* 800C0614 000BD554  99 28 00 06 */	stb r9, 6(r8)
/* 800C0618 000BD558  98 88 00 07 */	stb r4, 7(r8)
/* 800C061C 000BD55C  99 48 00 08 */	stb r10, 8(r8)
/* 800C0620 000BD560  98 08 00 09 */	stb r0, 9(r8)
/* 800C0624 000BD564  A0 83 00 08 */	lhz r4, 8(r3)
/* 800C0628 000BD568  38 04 00 01 */	addi r0, r4, 1
/* 800C062C 000BD56C  B0 03 00 08 */	sth r0, 8(r3)
/* 800C0630 000BD570  38 60 00 01 */	li r3, 1
/* 800C0634 000BD574  4E 80 00 20 */	blr 
lbl_800C0638:
/* 800C0638 000BD578  38 60 00 00 */	li r3, 0
/* 800C063C 000BD57C  4E 80 00 20 */	blr 

.global createBuffer__15TDLColorTexQuadFUs
createBuffer__15TDLColorTexQuadFUs:
/* 800C0640 000BD580  7C 08 02 A6 */	mflr r0
/* 800C0644 000BD584  90 01 00 04 */	stw r0, 4(r1)
/* 800C0648 000BD588  38 00 00 00 */	li r0, 0
/* 800C064C 000BD58C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C0650 000BD590  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C0654 000BD594  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C0658 000BD598  3B C4 00 00 */	addi r30, r4, 0
/* 800C065C 000BD59C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C0660 000BD5A0  3B A3 00 00 */	addi r29, r3, 0
/* 800C0664 000BD5A4  B3 C3 00 06 */	sth r30, 6(r3)
/* 800C0668 000BD5A8  B0 1D 00 04 */	sth r0, 4(r29)
/* 800C066C 000BD5AC  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 800C0670 000BD5B0  81 9D 00 00 */	lwz r12, 0(r29)
/* 800C0674 000BD5B4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800C0678 000BD5B8  7D 88 03 A6 */	mtlr r12
/* 800C067C 000BD5BC  4E 80 00 21 */	blrl 
/* 800C0680 000BD5C0  38 00 00 04 */	li r0, 4
/* 800C0684 000BD5C4  B0 1D 00 0A */	sth r0, 0xa(r29)
/* 800C0688 000BD5C8  38 7D 00 00 */	addi r3, r29, 0
/* 800C068C 000BD5CC  38 9E 00 00 */	addi r4, r30, 0
/* 800C0690 000BD5D0  81 9D 00 00 */	lwz r12, 0(r29)
/* 800C0694 000BD5D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 800C0698 000BD5D8  7D 88 03 A6 */	mtlr r12
/* 800C069C 000BD5DC  4E 80 00 21 */	blrl 
/* 800C06A0 000BD5E0  57 DF 04 3E */	clrlwi r31, r30, 0x10
/* 800C06A4 000BD5E4  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 800C06A8 000BD5E8  54 1E 10 3A */	slwi r30, r0, 2
/* 800C06AC 000BD5EC  38 7E 00 00 */	addi r3, r30, 0
/* 800C06B0 000BD5F0  38 80 00 20 */	li r4, 0x20
/* 800C06B4 000BD5F4  4B F4 C3 45 */	bl __nwa__FUli
/* 800C06B8 000BD5F8  90 7D 00 14 */	stw r3, 0x14(r29)
/* 800C06BC 000BD5FC  38 7E 00 00 */	addi r3, r30, 0
/* 800C06C0 000BD600  38 80 00 20 */	li r4, 0x20
/* 800C06C4 000BD604  4B F4 C3 35 */	bl __nwa__FUli
/* 800C06C8 000BD608  90 7D 00 18 */	stw r3, 0x18(r29)
/* 800C06CC 000BD60C  57 FE 10 3A */	slwi r30, r31, 2
/* 800C06D0 000BD610  38 7E 00 00 */	addi r3, r30, 0
/* 800C06D4 000BD614  38 80 00 20 */	li r4, 0x20
/* 800C06D8 000BD618  4B F4 C3 21 */	bl __nwa__FUli
/* 800C06DC 000BD61C  90 7D 00 20 */	stw r3, 0x20(r29)
/* 800C06E0 000BD620  38 7E 00 00 */	addi r3, r30, 0
/* 800C06E4 000BD624  38 80 00 20 */	li r4, 0x20
/* 800C06E8 000BD628  4B F4 C3 11 */	bl __nwa__FUli
/* 800C06EC 000BD62C  90 7D 00 24 */	stw r3, 0x24(r29)
/* 800C06F0 000BD630  38 00 00 80 */	li r0, 0x80
/* 800C06F4 000BD634  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 800C06F8 000BD638  98 03 00 00 */	stb r0, 0(r3)
/* 800C06FC 000BD63C  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800C0700 000BD640  98 03 00 00 */	stb r0, 0(r3)
/* 800C0704 000BD644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0708 000BD648  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C070C 000BD64C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C0710 000BD650  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C0714 000BD654  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0718 000BD658  7C 08 03 A6 */	mtlr r0
/* 800C071C 000BD65C  4E 80 00 20 */	blr 

.global draw__10TDLTexQuadFv
draw__10TDLTexQuadFv:
/* 800C0720 000BD660  7C 08 02 A6 */	mflr r0
/* 800C0724 000BD664  90 01 00 04 */	stw r0, 4(r1)
/* 800C0728 000BD668  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C072C 000BD66C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800C0730 000BD670  7C 7F 1B 78 */	mr r31, r3
/* 800C0734 000BD674  A0 03 00 08 */	lhz r0, 8(r3)
/* 800C0738 000BD678  28 00 00 00 */	cmplwi r0, 0
/* 800C073C 000BD67C  41 82 00 D8 */	beq lbl_800C0814
/* 800C0740 000BD680  4B FE 6C 29 */	bl GXClearVtxDesc
/* 800C0744 000BD684  38 60 00 09 */	li r3, 9
/* 800C0748 000BD688  38 80 00 03 */	li r4, 3
/* 800C074C 000BD68C  4B FE 61 9D */	bl GXSetVtxDesc
/* 800C0750 000BD690  38 60 00 0D */	li r3, 0xd
/* 800C0754 000BD694  38 80 00 02 */	li r4, 2
/* 800C0758 000BD698  4B FE 61 91 */	bl GXSetVtxDesc
/* 800C075C 000BD69C  38 60 00 00 */	li r3, 0
/* 800C0760 000BD6A0  38 80 00 09 */	li r4, 9
/* 800C0764 000BD6A4  38 A0 00 01 */	li r5, 1
/* 800C0768 000BD6A8  38 C0 00 04 */	li r6, 4
/* 800C076C 000BD6AC  38 E0 00 00 */	li r7, 0
/* 800C0770 000BD6B0  4B FE 6C 45 */	bl GXSetVtxAttrFmt
/* 800C0774 000BD6B4  38 60 00 00 */	li r3, 0
/* 800C0778 000BD6B8  38 80 00 0D */	li r4, 0xd
/* 800C077C 000BD6BC  38 A0 00 01 */	li r5, 1
/* 800C0780 000BD6C0  38 C0 00 00 */	li r6, 0
/* 800C0784 000BD6C4  38 E0 00 07 */	li r7, 7
/* 800C0788 000BD6C8  4B FE 6C 2D */	bl GXSetVtxAttrFmt
/* 800C078C 000BD6CC  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0790 000BD6D0  38 60 00 09 */	li r3, 9
/* 800C0794 000BD6D4  38 A0 00 0C */	li r5, 0xc
/* 800C0798 000BD6D8  54 00 10 3A */	slwi r0, r0, 2
/* 800C079C 000BD6DC  7C 9F 02 14 */	add r4, r31, r0
/* 800C07A0 000BD6E0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 800C07A4 000BD6E4  4B FE 76 41 */	bl GXSetArray
/* 800C07A8 000BD6E8  38 60 00 0D */	li r3, 0xd
/* 800C07AC 000BD6EC  38 8D 83 00 */	addi r4, r13, uv@sda21
/* 800C07B0 000BD6F0  38 A0 00 02 */	li r5, 2
/* 800C07B4 000BD6F4  4B FE 76 31 */	bl GXSetArray
/* 800C07B8 000BD6F8  4B FE 76 B9 */	bl GXInvalidateVtxCache
/* 800C07BC 000BD6FC  38 A0 00 00 */	li r5, 0
/* 800C07C0 000BD700  38 80 00 00 */	li r4, 0
/* 800C07C4 000BD704  48 00 00 20 */	b lbl_800C07E4
lbl_800C07C8:
/* 800C07C8 000BD708  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C07CC 000BD70C  54 03 10 3A */	slwi r3, r0, 2
/* 800C07D0 000BD710  38 03 00 0C */	addi r0, r3, 0xc
/* 800C07D4 000BD714  7C 7F 00 2E */	lwzx r3, r31, r0
/* 800C07D8 000BD718  38 03 00 03 */	addi r0, r3, 3
/* 800C07DC 000BD71C  7C 85 01 AE */	stbx r4, r5, r0
/* 800C07E0 000BD720  38 A5 00 01 */	addi r5, r5, 1
lbl_800C07E4:
/* 800C07E4 000BD724  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 800C07E8 000BD728  54 00 18 38 */	slwi r0, r0, 3
/* 800C07EC 000BD72C  7C 05 00 00 */	cmpw r5, r0
/* 800C07F0 000BD730  41 80 FF D8 */	blt lbl_800C07C8
/* 800C07F4 000BD734  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C07F8 000BD738  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800C07FC 000BD73C  54 00 10 3A */	slwi r0, r0, 2
/* 800C0800 000BD740  7C 9F 02 14 */	add r4, r31, r0
/* 800C0804 000BD744  38 03 00 1F */	addi r0, r3, 0x1f
/* 800C0808 000BD748  80 64 00 0C */	lwz r3, 0xc(r4)
/* 800C080C 000BD74C  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 800C0810 000BD750  4B FE CB 61 */	bl GXCallDisplayList
lbl_800C0814:
/* 800C0814 000BD754  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C0818 000BD758  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800C081C 000BD75C  38 21 00 18 */	addi r1, r1, 0x18
/* 800C0820 000BD760  7C 08 03 A6 */	mtlr r0
/* 800C0824 000BD764  4E 80 00 20 */	blr 

.global setEnd__10TDLTexQuadFv
setEnd__10TDLTexQuadFv:
/* 800C0828 000BD768  7C 08 02 A6 */	mflr r0
/* 800C082C 000BD76C  90 01 00 04 */	stw r0, 4(r1)
/* 800C0830 000BD770  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C0834 000BD774  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800C0838 000BD778  7C 7F 1B 78 */	mr r31, r3
/* 800C083C 000BD77C  A0 83 00 08 */	lhz r4, 8(r3)
/* 800C0840 000BD780  38 60 00 00 */	li r3, 0
/* 800C0844 000BD784  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0848 000BD788  38 84 00 02 */	addi r4, r4, 2
/* 800C084C 000BD78C  54 00 10 3A */	slwi r0, r0, 2
/* 800C0850 000BD790  54 85 14 2E */	rlwinm r5, r4, 2, 0x10, 0x17
/* 800C0854 000BD794  7C 9F 02 14 */	add r4, r31, r0
/* 800C0858 000BD798  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800C085C 000BD79C  7C A0 46 70 */	srawi r0, r5, 8
/* 800C0860 000BD7A0  98 04 00 01 */	stb r0, 1(r4)
/* 800C0864 000BD7A4  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0868 000BD7A8  A0 9F 00 08 */	lhz r4, 8(r31)
/* 800C086C 000BD7AC  54 00 10 3A */	slwi r0, r0, 2
/* 800C0870 000BD7B0  38 A4 00 02 */	addi r5, r4, 2
/* 800C0874 000BD7B4  7C 9F 02 14 */	add r4, r31, r0
/* 800C0878 000BD7B8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800C087C 000BD7BC  54 A0 16 3A */	rlwinm r0, r5, 2, 0x18, 0x1d
/* 800C0880 000BD7C0  98 04 00 02 */	stb r0, 2(r4)
/* 800C0884 000BD7C4  A0 BF 00 0A */	lhz r5, 0xa(r31)
/* 800C0888 000BD7C8  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800C088C 000BD7CC  54 A4 18 38 */	slwi r4, r5, 3
/* 800C0890 000BD7D0  7C 05 01 D6 */	mullw r0, r5, r0
/* 800C0894 000BD7D4  54 00 10 3A */	slwi r0, r0, 2
/* 800C0898 000BD7D8  7C 84 02 14 */	add r4, r4, r0
/* 800C089C 000BD7DC  38 04 00 03 */	addi r0, r4, 3
/* 800C08A0 000BD7E0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800C08A4 000BD7E4  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 800C08A8 000BD7E8  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C08AC 000BD7EC  38 85 00 1F */	addi r4, r5, 0x1f
/* 800C08B0 000BD7F0  54 84 00 34 */	rlwinm r4, r4, 0, 0, 0x1a
/* 800C08B4 000BD7F4  54 00 10 3A */	slwi r0, r0, 2
/* 800C08B8 000BD7F8  7C C5 20 51 */	subf. r6, r5, r4
/* 800C08BC 000BD7FC  7C 9F 02 14 */	add r4, r31, r0
/* 800C08C0 000BD800  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800C08C4 000BD804  7C A0 2A 14 */	add r5, r0, r5
/* 800C08C8 000BD808  40 81 00 74 */	ble lbl_800C093C
/* 800C08CC 000BD80C  2C 06 00 08 */	cmpwi r6, 8
/* 800C08D0 000BD810  38 86 FF F8 */	addi r4, r6, -8
/* 800C08D4 000BD814  40 81 00 48 */	ble lbl_800C091C
/* 800C08D8 000BD818  38 04 00 07 */	addi r0, r4, 7
/* 800C08DC 000BD81C  54 00 E8 FE */	srwi r0, r0, 3
/* 800C08E0 000BD820  2C 04 00 00 */	cmpwi r4, 0
/* 800C08E4 000BD824  7C 09 03 A6 */	mtctr r0
/* 800C08E8 000BD828  40 81 00 34 */	ble lbl_800C091C
/* 800C08EC 000BD82C  38 00 00 00 */	li r0, 0
lbl_800C08F0:
/* 800C08F0 000BD830  98 05 00 00 */	stb r0, 0(r5)
/* 800C08F4 000BD834  38 63 00 08 */	addi r3, r3, 8
/* 800C08F8 000BD838  98 05 00 01 */	stb r0, 1(r5)
/* 800C08FC 000BD83C  98 05 00 02 */	stb r0, 2(r5)
/* 800C0900 000BD840  98 05 00 03 */	stb r0, 3(r5)
/* 800C0904 000BD844  98 05 00 04 */	stb r0, 4(r5)
/* 800C0908 000BD848  98 05 00 05 */	stb r0, 5(r5)
/* 800C090C 000BD84C  98 05 00 06 */	stb r0, 6(r5)
/* 800C0910 000BD850  98 05 00 07 */	stb r0, 7(r5)
/* 800C0914 000BD854  38 A5 00 08 */	addi r5, r5, 8
/* 800C0918 000BD858  42 00 FF D8 */	bdnz lbl_800C08F0
lbl_800C091C:
/* 800C091C 000BD85C  7C 03 30 50 */	subf r0, r3, r6
/* 800C0920 000BD860  7C 03 30 00 */	cmpw r3, r6
/* 800C0924 000BD864  7C 09 03 A6 */	mtctr r0
/* 800C0928 000BD868  38 00 00 00 */	li r0, 0
/* 800C092C 000BD86C  40 80 00 10 */	bge lbl_800C093C
lbl_800C0930:
/* 800C0930 000BD870  98 05 00 00 */	stb r0, 0(r5)
/* 800C0934 000BD874  38 A5 00 01 */	addi r5, r5, 1
/* 800C0938 000BD878  42 00 FF F8 */	bdnz lbl_800C0930
lbl_800C093C:
/* 800C093C 000BD87C  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800C0940 000BD880  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800C0944 000BD884  54 00 10 3A */	slwi r0, r0, 2
/* 800C0948 000BD888  7C 9F 02 14 */	add r4, r31, r0
/* 800C094C 000BD88C  38 03 00 1F */	addi r0, r3, 0x1f
/* 800C0950 000BD890  80 64 00 0C */	lwz r3, 0xc(r4)
/* 800C0954 000BD894  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 800C0958 000BD898  4B FC D6 89 */	bl DCStoreRange
/* 800C095C 000BD89C  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800C0960 000BD8A0  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800C0964 000BD8A4  54 63 10 3A */	slwi r3, r3, 2
/* 800C0968 000BD8A8  7C 7F 1A 14 */	add r3, r31, r3
/* 800C096C 000BD8AC  1C 80 00 30 */	mulli r4, r0, 0x30
/* 800C0970 000BD8B0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800C0974 000BD8B4  4B FC D6 6D */	bl DCStoreRange
/* 800C0978 000BD8B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C097C 000BD8BC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800C0980 000BD8C0  38 21 00 18 */	addi r1, r1, 0x18
/* 800C0984 000BD8C4  7C 08 03 A6 */	mtlr r0
/* 800C0988 000BD8C8  4E 80 00 20 */	blr 

.global "request__10TDLTexQuadFPCQ29JGeometry8TVec3<f>"
"request__10TDLTexQuadFPCQ29JGeometry8TVec3<f>":
/* 800C098C 000BD8CC  A0 C3 00 08 */	lhz r6, 8(r3)
/* 800C0990 000BD8D0  A0 03 00 06 */	lhz r0, 6(r3)
/* 800C0994 000BD8D4  7C 06 00 40 */	cmplw r6, r0
/* 800C0998 000BD8D8  40 80 01 88 */	bge lbl_800C0B20
/* 800C099C 000BD8DC  A0 A3 00 04 */	lhz r5, 4(r3)
/* 800C09A0 000BD8E0  1D 06 00 30 */	mulli r8, r6, 0x30
/* 800C09A4 000BD8E4  80 04 00 00 */	lwz r0, 0(r4)
/* 800C09A8 000BD8E8  80 C4 00 04 */	lwz r6, 4(r4)
/* 800C09AC 000BD8EC  54 A5 10 3A */	slwi r5, r5, 2
/* 800C09B0 000BD8F0  7C A3 2A 14 */	add r5, r3, r5
/* 800C09B4 000BD8F4  81 25 00 14 */	lwz r9, 0x14(r5)
/* 800C09B8 000BD8F8  38 E0 00 00 */	li r7, 0
/* 800C09BC 000BD8FC  38 A0 00 01 */	li r5, 1
/* 800C09C0 000BD900  7D 09 42 14 */	add r8, r9, r8
/* 800C09C4 000BD904  90 08 00 00 */	stw r0, 0(r8)
/* 800C09C8 000BD908  38 00 00 02 */	li r0, 2
/* 800C09CC 000BD90C  90 C8 00 04 */	stw r6, 4(r8)
/* 800C09D0 000BD910  80 C4 00 08 */	lwz r6, 8(r4)
/* 800C09D4 000BD914  90 C8 00 08 */	stw r6, 8(r8)
/* 800C09D8 000BD918  A0 C3 00 08 */	lhz r6, 8(r3)
/* 800C09DC 000BD91C  A1 43 00 04 */	lhz r10, 4(r3)
/* 800C09E0 000BD920  54 C9 10 3A */	slwi r9, r6, 2
/* 800C09E4 000BD924  81 04 00 0C */	lwz r8, 0xc(r4)
/* 800C09E8 000BD928  55 4A 10 3A */	slwi r10, r10, 2
/* 800C09EC 000BD92C  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 800C09F0 000BD930  39 29 00 01 */	addi r9, r9, 1
/* 800C09F4 000BD934  7D 43 52 14 */	add r10, r3, r10
/* 800C09F8 000BD938  1D 29 00 0C */	mulli r9, r9, 0xc
/* 800C09FC 000BD93C  81 4A 00 14 */	lwz r10, 0x14(r10)
/* 800C0A00 000BD940  7D 2A 4A 14 */	add r9, r10, r9
/* 800C0A04 000BD944  91 09 00 00 */	stw r8, 0(r9)
/* 800C0A08 000BD948  90 C9 00 04 */	stw r6, 4(r9)
/* 800C0A0C 000BD94C  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 800C0A10 000BD950  90 C9 00 08 */	stw r6, 8(r9)
/* 800C0A14 000BD954  A0 C3 00 08 */	lhz r6, 8(r3)
/* 800C0A18 000BD958  A1 43 00 04 */	lhz r10, 4(r3)
/* 800C0A1C 000BD95C  54 C9 10 3A */	slwi r9, r6, 2
/* 800C0A20 000BD960  81 04 00 18 */	lwz r8, 0x18(r4)
/* 800C0A24 000BD964  55 4A 10 3A */	slwi r10, r10, 2
/* 800C0A28 000BD968  80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 800C0A2C 000BD96C  39 29 00 02 */	addi r9, r9, 2
/* 800C0A30 000BD970  7D 43 52 14 */	add r10, r3, r10
/* 800C0A34 000BD974  1D 29 00 0C */	mulli r9, r9, 0xc
/* 800C0A38 000BD978  81 4A 00 14 */	lwz r10, 0x14(r10)
/* 800C0A3C 000BD97C  7D 2A 4A 14 */	add r9, r10, r9
/* 800C0A40 000BD980  91 09 00 00 */	stw r8, 0(r9)
/* 800C0A44 000BD984  90 C9 00 04 */	stw r6, 4(r9)
/* 800C0A48 000BD988  80 C4 00 20 */	lwz r6, 0x20(r4)
/* 800C0A4C 000BD98C  90 C9 00 08 */	stw r6, 8(r9)
/* 800C0A50 000BD990  A0 C3 00 08 */	lhz r6, 8(r3)
/* 800C0A54 000BD994  A1 43 00 04 */	lhz r10, 4(r3)
/* 800C0A58 000BD998  54 C9 10 3A */	slwi r9, r6, 2
/* 800C0A5C 000BD99C  81 04 00 24 */	lwz r8, 0x24(r4)
/* 800C0A60 000BD9A0  55 4A 10 3A */	slwi r10, r10, 2
/* 800C0A64 000BD9A4  80 C4 00 28 */	lwz r6, 0x28(r4)
/* 800C0A68 000BD9A8  39 29 00 03 */	addi r9, r9, 3
/* 800C0A6C 000BD9AC  7D 43 52 14 */	add r10, r3, r10
/* 800C0A70 000BD9B0  1D 29 00 0C */	mulli r9, r9, 0xc
/* 800C0A74 000BD9B4  81 4A 00 14 */	lwz r10, 0x14(r10)
/* 800C0A78 000BD9B8  7D 2A 4A 14 */	add r9, r10, r9
/* 800C0A7C 000BD9BC  91 09 00 00 */	stw r8, 0(r9)
/* 800C0A80 000BD9C0  90 C9 00 04 */	stw r6, 4(r9)
/* 800C0A84 000BD9C4  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 800C0A88 000BD9C8  90 89 00 08 */	stw r4, 8(r9)
/* 800C0A8C 000BD9CC  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 800C0A90 000BD9D0  A1 63 00 08 */	lhz r11, 8(r3)
/* 800C0A94 000BD9D4  54 86 18 38 */	slwi r6, r4, 3
/* 800C0A98 000BD9D8  A1 23 00 04 */	lhz r9, 4(r3)
/* 800C0A9C 000BD9DC  7C 8B 21 D6 */	mullw r4, r11, r4
/* 800C0AA0 000BD9E0  55 29 10 3A */	slwi r9, r9, 2
/* 800C0AA4 000BD9E4  7D 23 4A 14 */	add r9, r3, r9
/* 800C0AA8 000BD9E8  54 84 10 3A */	slwi r4, r4, 2
/* 800C0AAC 000BD9EC  81 49 00 0C */	lwz r10, 0xc(r9)
/* 800C0AB0 000BD9F0  7C C6 22 14 */	add r6, r6, r4
/* 800C0AB4 000BD9F4  55 64 14 2E */	rlwinm r4, r11, 2, 0x10, 0x17
/* 800C0AB8 000BD9F8  39 86 00 03 */	addi r12, r6, 3
/* 800C0ABC 000BD9FC  7C 89 46 70 */	srawi r9, r4, 8
/* 800C0AC0 000BDA00  7D 8A 62 14 */	add r12, r10, r12
/* 800C0AC4 000BDA04  55 68 16 3A */	rlwinm r8, r11, 2, 0x18, 0x1d
/* 800C0AC8 000BDA08  99 2C 00 00 */	stb r9, 0(r12)
/* 800C0ACC 000BDA0C  55 64 16 3A */	rlwinm r4, r11, 2, 0x18, 0x1d
/* 800C0AD0 000BDA10  98 8C 00 01 */	stb r4, 1(r12)
/* 800C0AD4 000BDA14  38 C8 00 01 */	addi r6, r8, 1
/* 800C0AD8 000BDA18  38 88 00 02 */	addi r4, r8, 2
/* 800C0ADC 000BDA1C  98 EC 00 02 */	stb r7, 2(r12)
/* 800C0AE0 000BDA20  99 2C 00 03 */	stb r9, 3(r12)
/* 800C0AE4 000BDA24  98 CC 00 04 */	stb r6, 4(r12)
/* 800C0AE8 000BDA28  98 AC 00 05 */	stb r5, 5(r12)
/* 800C0AEC 000BDA2C  99 2C 00 06 */	stb r9, 6(r12)
/* 800C0AF0 000BDA30  98 8C 00 07 */	stb r4, 7(r12)
/* 800C0AF4 000BDA34  98 0C 00 08 */	stb r0, 8(r12)
/* 800C0AF8 000BDA38  38 08 00 03 */	addi r0, r8, 3
/* 800C0AFC 000BDA3C  99 2C 00 09 */	stb r9, 9(r12)
/* 800C0B00 000BDA40  9C 0C 00 0A */	stbu r0, 0xa(r12)
/* 800C0B04 000BDA44  38 00 00 03 */	li r0, 3
/* 800C0B08 000BDA48  98 0C 00 01 */	stb r0, 1(r12)
/* 800C0B0C 000BDA4C  A0 83 00 08 */	lhz r4, 8(r3)
/* 800C0B10 000BDA50  38 04 00 01 */	addi r0, r4, 1
/* 800C0B14 000BDA54  B0 03 00 08 */	sth r0, 8(r3)
/* 800C0B18 000BDA58  38 60 00 01 */	li r3, 1
/* 800C0B1C 000BDA5C  4E 80 00 20 */	blr 
lbl_800C0B20:
/* 800C0B20 000BDA60  38 60 00 00 */	li r3, 0
/* 800C0B24 000BDA64  4E 80 00 20 */	blr 

.global createBuffer__10TDLTexQuadFUs
createBuffer__10TDLTexQuadFUs:
/* 800C0B28 000BDA68  7C 08 02 A6 */	mflr r0
/* 800C0B2C 000BDA6C  90 01 00 04 */	stw r0, 4(r1)
/* 800C0B30 000BDA70  38 00 00 00 */	li r0, 0
/* 800C0B34 000BDA74  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C0B38 000BDA78  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800C0B3C 000BDA7C  3B E4 00 00 */	addi r31, r4, 0
/* 800C0B40 000BDA80  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800C0B44 000BDA84  3B C3 00 00 */	addi r30, r3, 0
/* 800C0B48 000BDA88  B3 E3 00 06 */	sth r31, 6(r3)
/* 800C0B4C 000BDA8C  B0 1E 00 04 */	sth r0, 4(r30)
/* 800C0B50 000BDA90  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 800C0B54 000BDA94  81 9E 00 00 */	lwz r12, 0(r30)
/* 800C0B58 000BDA98  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800C0B5C 000BDA9C  7D 88 03 A6 */	mtlr r12
/* 800C0B60 000BDAA0  4E 80 00 21 */	blrl 
/* 800C0B64 000BDAA4  38 00 00 03 */	li r0, 3
/* 800C0B68 000BDAA8  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 800C0B6C 000BDAAC  38 7E 00 00 */	addi r3, r30, 0
/* 800C0B70 000BDAB0  38 9F 00 00 */	addi r4, r31, 0
/* 800C0B74 000BDAB4  81 9E 00 00 */	lwz r12, 0(r30)
/* 800C0B78 000BDAB8  81 8C 00 08 */	lwz r12, 8(r12)
/* 800C0B7C 000BDABC  7D 88 03 A6 */	mtlr r12
/* 800C0B80 000BDAC0  4E 80 00 21 */	blrl 
/* 800C0B84 000BDAC4  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 800C0B88 000BDAC8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800C0B8C 000BDACC  54 1F 10 3A */	slwi r31, r0, 2
/* 800C0B90 000BDAD0  38 7F 00 00 */	addi r3, r31, 0
/* 800C0B94 000BDAD4  38 80 00 20 */	li r4, 0x20
/* 800C0B98 000BDAD8  4B F4 BE 61 */	bl __nwa__FUli
/* 800C0B9C 000BDADC  90 7E 00 14 */	stw r3, 0x14(r30)
/* 800C0BA0 000BDAE0  38 7F 00 00 */	addi r3, r31, 0
/* 800C0BA4 000BDAE4  38 80 00 20 */	li r4, 0x20
/* 800C0BA8 000BDAE8  4B F4 BE 51 */	bl __nwa__FUli
/* 800C0BAC 000BDAEC  90 7E 00 18 */	stw r3, 0x18(r30)
/* 800C0BB0 000BDAF0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C0BB4 000BDAF4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800C0BB8 000BDAF8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800C0BBC 000BDAFC  7C 08 03 A6 */	mtlr r0
/* 800C0BC0 000BDB00  38 21 00 18 */	addi r1, r1, 0x18
/* 800C0BC4 000BDB04  4E 80 00 20 */	blr 

.global createDLBuffer__10TDLTexQuadFUs
createDLBuffer__10TDLTexQuadFUs:
/* 800C0BC8 000BDB08  7C 08 02 A6 */	mflr r0
/* 800C0BCC 000BDB0C  90 01 00 04 */	stw r0, 4(r1)
/* 800C0BD0 000BDB10  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800C0BD4 000BDB14  38 80 00 20 */	li r4, 0x20
/* 800C0BD8 000BDB18  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C0BDC 000BDB1C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800C0BE0 000BDB20  7C 7F 1B 78 */	mr r31, r3
/* 800C0BE4 000BDB24  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800C0BE8 000BDB28  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 800C0BEC 000BDB2C  7C 03 01 D6 */	mullw r0, r3, r0
/* 800C0BF0 000BDB30  54 63 18 38 */	slwi r3, r3, 3
/* 800C0BF4 000BDB34  54 00 10 3A */	slwi r0, r0, 2
/* 800C0BF8 000BDB38  7C 63 02 14 */	add r3, r3, r0
/* 800C0BFC 000BDB3C  38 03 00 22 */	addi r0, r3, 0x22
/* 800C0C00 000BDB40  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 800C0C04 000BDB44  38 7E 00 00 */	addi r3, r30, 0
/* 800C0C08 000BDB48  4B F4 BD F1 */	bl __nwa__FUli
/* 800C0C0C 000BDB4C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 800C0C10 000BDB50  38 7E 00 00 */	addi r3, r30, 0
/* 800C0C14 000BDB54  38 80 00 20 */	li r4, 0x20
/* 800C0C18 000BDB58  4B F4 BD E1 */	bl __nwa__FUli
/* 800C0C1C 000BDB5C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800C0C20 000BDB60  38 00 00 80 */	li r0, 0x80
/* 800C0C24 000BDB64  38 A0 00 00 */	li r5, 0
/* 800C0C28 000BDB68  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 800C0C2C 000BDB6C  38 80 00 00 */	li r4, 0
/* 800C0C30 000BDB70  98 03 00 00 */	stb r0, 0(r3)
/* 800C0C34 000BDB74  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800C0C38 000BDB78  98 03 00 00 */	stb r0, 0(r3)
/* 800C0C3C 000BDB7C  48 00 00 1C */	b lbl_800C0C58
lbl_800C0C40:
/* 800C0C40 000BDB80  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 800C0C44 000BDB84  38 05 00 03 */	addi r0, r5, 3
/* 800C0C48 000BDB88  38 A5 00 01 */	addi r5, r5, 1
/* 800C0C4C 000BDB8C  7C 83 01 AE */	stbx r4, r3, r0
/* 800C0C50 000BDB90  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800C0C54 000BDB94  7C 83 01 AE */	stbx r4, r3, r0
lbl_800C0C58:
/* 800C0C58 000BDB98  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 800C0C5C 000BDB9C  54 00 18 38 */	slwi r0, r0, 3
/* 800C0C60 000BDBA0  7C 05 00 00 */	cmpw r5, r0
/* 800C0C64 000BDBA4  41 80 FF DC */	blt lbl_800C0C40
/* 800C0C68 000BDBA8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C0C6C 000BDBAC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800C0C70 000BDBB0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800C0C74 000BDBB4  7C 08 03 A6 */	mtlr r0
/* 800C0C78 000BDBB8  38 21 00 18 */	addi r1, r1, 0x18
/* 800C0C7C 000BDBBC  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__15TDLColorTexQuad
__vt__15TDLColorTexQuad:
  .4byte 0
  .4byte 0
  .4byte createDLBuffer__10TDLTexQuadFUs
  .4byte createBuffer__15TDLColorTexQuadFUs
  .4byte reset__10TDLTexQuadFv
  .4byte "request__10TDLTexQuadFPCQ29JGeometry8TVec3<f>"
  .4byte setEnd__15TDLColorTexQuadFv
  .4byte draw__15TDLColorTexQuadFv
.global __vt__10TDLTexQuad
__vt__10TDLTexQuad:
  .4byte 0
  .4byte 0
  .4byte createDLBuffer__10TDLTexQuadFUs
  .4byte createBuffer__10TDLTexQuadFUs
  .4byte reset__10TDLTexQuadFv
  .4byte "request__10TDLTexQuadFPCQ29JGeometry8TVec3<f>"
  .4byte setEnd__10TDLTexQuadFv
  .4byte 0

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
uv:
	.incbin "baserom.dol", 0x3E3300, 0x8
