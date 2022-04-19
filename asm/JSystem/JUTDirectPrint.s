.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global start__14JUTDirectPrintFv
start__14JUTDirectPrintFv:
/* 800111F8 0000E138  7C 08 02 A6 */	mflr r0
/* 800111FC 0000E13C  90 01 00 04 */	stw r0, 4(r1)
/* 80011200 0000E140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80011204 0000E144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80011208 0000E148  80 0D 8D B0 */	lwz r0, sDirectPrint__14JUTDirectPrint@sda21(r13)
/* 8001120C 0000E14C  28 00 00 00 */	cmplwi r0, 0
/* 80011210 0000E150  40 82 00 20 */	bne lbl_80011230
/* 80011214 0000E154  38 60 00 18 */	li r3, 0x18
/* 80011218 0000E158  4B FF B6 99 */	bl __nw__FUl
/* 8001121C 0000E15C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80011220 0000E160  41 82 00 0C */	beq lbl_8001122C
/* 80011224 0000E164  7F E3 FB 78 */	mr r3, r31
/* 80011228 0000E168  48 00 00 21 */	bl __ct__14JUTDirectPrintFv
lbl_8001122C:
/* 8001122C 0000E16C  93 ED 8D B0 */	stw r31, sDirectPrint__14JUTDirectPrint@sda21(r13)
lbl_80011230:
/* 80011230 0000E170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80011234 0000E174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80011238 0000E178  38 21 00 10 */	addi r1, r1, 0x10
/* 8001123C 0000E17C  80 6D 8D B0 */	lwz r3, sDirectPrint__14JUTDirectPrint@sda21(r13)
/* 80011240 0000E180  7C 08 03 A6 */	mtlr r0
/* 80011244 0000E184  4E 80 00 20 */	blr 

.global __ct__14JUTDirectPrintFv
__ct__14JUTDirectPrintFv:
/* 80011248 0000E188  7C 08 02 A6 */	mflr r0
/* 8001124C 0000E18C  38 80 00 00 */	li r4, 0
/* 80011250 0000E190  90 01 00 04 */	stw r0, 4(r1)
/* 80011254 0000E194  38 A0 00 00 */	li r5, 0
/* 80011258 0000E198  38 C0 00 00 */	li r6, 0
/* 8001125C 0000E19C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80011260 0000E1A0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80011264 0000E1A4  3B E3 00 00 */	addi r31, r3, 0
/* 80011268 0000E1A8  48 00 03 11 */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
/* 8001126C 0000E1AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80011270 0000E1B0  7F E3 FB 78 */	mr r3, r31
/* 80011274 0000E1B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80011278 0000E1B8  38 21 00 18 */	addi r1, r1, 0x18
/* 8001127C 0000E1BC  7C 08 03 A6 */	mtlr r0
/* 80011280 0000E1C0  4E 80 00 20 */	blr 

.global erase__14JUTDirectPrintFiiii
erase__14JUTDirectPrintFiiii:
/* 80011284 0000E1C4  80 03 00 00 */	lwz r0, 0(r3)
/* 80011288 0000E1C8  28 00 00 00 */	cmplwi r0, 0
/* 8001128C 0000E1CC  4D 82 00 20 */	beqlr 
/* 80011290 0000E1D0  A0 03 00 04 */	lhz r0, 4(r3)
/* 80011294 0000E1D4  28 00 01 90 */	cmplwi r0, 0x190
/* 80011298 0000E1D8  40 81 00 0C */	ble lbl_800112A4
/* 8001129C 0000E1DC  54 84 08 3C */	slwi r4, r4, 1
/* 800112A0 0000E1E0  54 C6 08 3C */	slwi r6, r6, 1
lbl_800112A4:
/* 800112A4 0000E1E4  A0 03 00 06 */	lhz r0, 6(r3)
/* 800112A8 0000E1E8  28 00 01 2C */	cmplwi r0, 0x12c
/* 800112AC 0000E1EC  40 81 00 0C */	ble lbl_800112B8
/* 800112B0 0000E1F0  54 A5 08 3C */	slwi r5, r5, 1
/* 800112B4 0000E1F4  54 E7 08 3C */	slwi r7, r7, 1
lbl_800112B8:
/* 800112B8 0000E1F8  A1 03 00 08 */	lhz r8, 8(r3)
/* 800112BC 0000E1FC  54 80 08 3C */	slwi r0, r4, 1
/* 800112C0 0000E200  81 23 00 14 */	lwz r9, 0x14(r3)
/* 800112C4 0000E204  39 46 FF F8 */	addi r10, r6, -8
/* 800112C8 0000E208  7C 88 29 D6 */	mullw r4, r8, r5
/* 800112CC 0000E20C  54 84 08 3C */	slwi r4, r4, 1
/* 800112D0 0000E210  7C 84 02 14 */	add r4, r4, r0
/* 800112D4 0000E214  7C 89 22 14 */	add r4, r9, r4
/* 800112D8 0000E218  38 A0 00 00 */	li r5, 0
/* 800112DC 0000E21C  48 00 00 90 */	b lbl_8001136C
lbl_800112E0:
/* 800112E0 0000E220  2C 06 00 00 */	cmpwi r6, 0
/* 800112E4 0000E224  39 00 00 00 */	li r8, 0
/* 800112E8 0000E228  40 81 00 70 */	ble lbl_80011358
/* 800112EC 0000E22C  2C 06 00 08 */	cmpwi r6, 8
/* 800112F0 0000E230  40 81 00 48 */	ble lbl_80011338
/* 800112F4 0000E234  38 0A 00 07 */	addi r0, r10, 7
/* 800112F8 0000E238  54 00 E8 FE */	srwi r0, r0, 3
/* 800112FC 0000E23C  2C 0A 00 00 */	cmpwi r10, 0
/* 80011300 0000E240  7C 09 03 A6 */	mtctr r0
/* 80011304 0000E244  40 81 00 34 */	ble lbl_80011338
/* 80011308 0000E248  38 00 10 80 */	li r0, 0x1080
lbl_8001130C:
/* 8001130C 0000E24C  B0 04 00 00 */	sth r0, 0(r4)
/* 80011310 0000E250  39 08 00 08 */	addi r8, r8, 8
/* 80011314 0000E254  B0 04 00 02 */	sth r0, 2(r4)
/* 80011318 0000E258  B0 04 00 04 */	sth r0, 4(r4)
/* 8001131C 0000E25C  B0 04 00 06 */	sth r0, 6(r4)
/* 80011320 0000E260  B0 04 00 08 */	sth r0, 8(r4)
/* 80011324 0000E264  B0 04 00 0A */	sth r0, 0xa(r4)
/* 80011328 0000E268  B0 04 00 0C */	sth r0, 0xc(r4)
/* 8001132C 0000E26C  B0 04 00 0E */	sth r0, 0xe(r4)
/* 80011330 0000E270  38 84 00 10 */	addi r4, r4, 0x10
/* 80011334 0000E274  42 00 FF D8 */	bdnz lbl_8001130C
lbl_80011338:
/* 80011338 0000E278  7C 08 30 50 */	subf r0, r8, r6
/* 8001133C 0000E27C  7C 08 30 00 */	cmpw r8, r6
/* 80011340 0000E280  7C 09 03 A6 */	mtctr r0
/* 80011344 0000E284  38 00 10 80 */	li r0, 0x1080
/* 80011348 0000E288  40 80 00 10 */	bge lbl_80011358
lbl_8001134C:
/* 8001134C 0000E28C  B0 04 00 00 */	sth r0, 0(r4)
/* 80011350 0000E290  38 84 00 02 */	addi r4, r4, 2
/* 80011354 0000E294  42 00 FF F8 */	bdnz lbl_8001134C
lbl_80011358:
/* 80011358 0000E298  A0 03 00 08 */	lhz r0, 8(r3)
/* 8001135C 0000E29C  38 A5 00 01 */	addi r5, r5, 1
/* 80011360 0000E2A0  7C 06 00 50 */	subf r0, r6, r0
/* 80011364 0000E2A4  54 00 08 3C */	slwi r0, r0, 1
/* 80011368 0000E2A8  7C 84 02 14 */	add r4, r4, r0
lbl_8001136C:
/* 8001136C 0000E2AC  7C 05 38 00 */	cmpw r5, r7
/* 80011370 0000E2B0  41 80 FF 70 */	blt lbl_800112E0
/* 80011374 0000E2B4  4E 80 00 20 */	blr 

.global drawChar__14JUTDirectPrintFiii
drawChar__14JUTDirectPrintFiii:
/* 80011378 0000E2B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8001137C 0000E2BC  2C 06 00 64 */	cmpwi r6, 0x64
/* 80011380 0000E2C0  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 80011384 0000E2C4  41 80 00 0C */	blt lbl_80011390
/* 80011388 0000E2C8  39 46 FF 9C */	addi r10, r6, -100
/* 8001138C 0000E2CC  48 00 00 08 */	b lbl_80011394
lbl_80011390:
/* 80011390 0000E2D0  7C CA 33 78 */	mr r10, r6
lbl_80011394:
/* 80011394 0000E2D4  3C E0 66 66 */	lis r7, 0x66666667@ha
/* 80011398 0000E2D8  38 07 66 67 */	addi r0, r7, 0x66666667@l
/* 8001139C 0000E2DC  7D 20 50 96 */	mulhw r9, r0, r10
/* 800113A0 0000E2E0  7D 20 0E 70 */	srawi r0, r9, 1
/* 800113A4 0000E2E4  54 07 0F FE */	srwi r7, r0, 0x1f
/* 800113A8 0000E2E8  7C 00 3A 14 */	add r0, r0, r7
/* 800113AC 0000E2EC  1D 00 00 05 */	mulli r8, r0, 5
/* 800113B0 0000E2F0  7D 20 0E 70 */	srawi r0, r9, 1
/* 800113B4 0000E2F4  54 07 0F FE */	srwi r7, r0, 0x1f
/* 800113B8 0000E2F8  7D 08 50 50 */	subf r8, r8, r10
/* 800113BC 0000E2FC  7C E0 3A 14 */	add r7, r0, r7
/* 800113C0 0000E300  2C 06 00 64 */	cmpwi r6, 0x64
/* 800113C4 0000E304  1C 08 00 06 */	mulli r0, r8, 6
/* 800113C8 0000E308  1C E7 00 07 */	mulli r7, r7, 7
/* 800113CC 0000E30C  40 80 00 18 */	bge lbl_800113E4
/* 800113D0 0000E310  3C C0 80 3B */	lis r6, sFontData__14JUTDirectPrint@ha
/* 800113D4 0000E314  54 E7 10 3A */	slwi r7, r7, 2
/* 800113D8 0000E318  38 C6 89 30 */	addi r6, r6, sFontData__14JUTDirectPrint@l
/* 800113DC 0000E31C  7C C6 3A 14 */	add r6, r6, r7
/* 800113E0 0000E320  48 00 00 14 */	b lbl_800113F4
lbl_800113E4:
/* 800113E4 0000E324  3C C0 80 3B */	lis r6, sFontData2__14JUTDirectPrint@ha
/* 800113E8 0000E328  54 E7 10 3A */	slwi r7, r7, 2
/* 800113EC 0000E32C  38 C6 8A 30 */	addi r6, r6, sFontData2__14JUTDirectPrint@l
/* 800113F0 0000E330  7C C6 3A 14 */	add r6, r6, r7
lbl_800113F4:
/* 800113F4 0000E334  A0 E3 00 04 */	lhz r7, 4(r3)
/* 800113F8 0000E338  28 07 01 90 */	cmplwi r7, 0x190
/* 800113FC 0000E33C  40 80 00 0C */	bge lbl_80011408
/* 80011400 0000E340  39 20 00 01 */	li r9, 1
/* 80011404 0000E344  48 00 00 08 */	b lbl_8001140C
lbl_80011408:
/* 80011408 0000E348  39 20 00 02 */	li r9, 2
lbl_8001140C:
/* 8001140C 0000E34C  A0 E3 00 06 */	lhz r7, 6(r3)
/* 80011410 0000E350  28 07 01 2C */	cmplwi r7, 0x12c
/* 80011414 0000E354  40 80 00 0C */	bge lbl_80011420
/* 80011418 0000E358  39 40 00 01 */	li r10, 1
/* 8001141C 0000E35C  48 00 00 08 */	b lbl_80011424
lbl_80011420:
/* 80011420 0000E360  39 40 00 02 */	li r10, 2
lbl_80011424:
/* 80011424 0000E364  A0 E3 00 08 */	lhz r7, 8(r3)
/* 80011428 0000E368  7C 84 49 D6 */	mullw r4, r4, r9
/* 8001142C 0000E36C  81 03 00 14 */	lwz r8, 0x14(r3)
/* 80011430 0000E370  7C A7 29 D6 */	mullw r5, r7, r5
/* 80011434 0000E374  7C AA 29 D6 */	mullw r5, r10, r5
/* 80011438 0000E378  54 A5 08 3C */	slwi r5, r5, 1
/* 8001143C 0000E37C  54 84 08 3C */	slwi r4, r4, 1
/* 80011440 0000E380  7F C5 22 14 */	add r30, r5, r4
/* 80011444 0000E384  1F E9 00 06 */	mulli r31, r9, 6
/* 80011448 0000E388  7F C8 F2 14 */	add r30, r8, r30
/* 8001144C 0000E38C  55 2C 08 3C */	slwi r12, r9, 1
/* 80011450 0000E390  39 69 FF F8 */	addi r11, r9, -8
/* 80011454 0000E394  3B A0 00 00 */	li r29, 0
/* 80011458 0000E398  3D 00 00 01 */	lis r8, 1
lbl_8001145C:
/* 8001145C 0000E39C  80 86 00 00 */	lwz r4, 0(r6)
/* 80011460 0000E3A0  3B 60 00 00 */	li r27, 0
/* 80011464 0000E3A4  38 C6 00 04 */	addi r6, r6, 4
/* 80011468 0000E3A8  7C 9C 00 30 */	slw r28, r4, r0
lbl_8001146C:
/* 8001146C 0000E3AC  57 84 00 01 */	rlwinm. r4, r28, 0, 0, 0
/* 80011470 0000E3B0  41 82 00 0C */	beq lbl_8001147C
/* 80011474 0000E3B4  38 88 EB 80 */	addi r4, r8, -5248
/* 80011478 0000E3B8  48 00 00 08 */	b lbl_80011480
lbl_8001147C:
/* 8001147C 0000E3BC  38 80 00 80 */	li r4, 0x80
lbl_80011480:
/* 80011480 0000E3C0  54 9A 04 3E */	clrlwi r26, r4, 0x10
/* 80011484 0000E3C4  3B 20 00 00 */	li r25, 0
/* 80011488 0000E3C8  48 00 00 98 */	b lbl_80011520
lbl_8001148C:
/* 8001148C 0000E3CC  A0 83 00 08 */	lhz r4, 8(r3)
/* 80011490 0000E3D0  2C 09 00 00 */	cmpwi r9, 0
/* 80011494 0000E3D4  3A E0 00 00 */	li r23, 0
/* 80011498 0000E3D8  7F 04 C9 D6 */	mullw r24, r4, r25
/* 8001149C 0000E3DC  38 A0 00 00 */	li r5, 0
/* 800114A0 0000E3E0  40 81 00 7C */	ble lbl_8001151C
/* 800114A4 0000E3E4  2C 09 00 08 */	cmpwi r9, 8
/* 800114A8 0000E3E8  40 81 00 B8 */	ble lbl_80011560
/* 800114AC 0000E3EC  38 8B 00 07 */	addi r4, r11, 7
/* 800114B0 0000E3F0  54 84 E8 FE */	srwi r4, r4, 3
/* 800114B4 0000E3F4  57 07 08 3C */	slwi r7, r24, 1
/* 800114B8 0000E3F8  7C 89 03 A6 */	mtctr r4
/* 800114BC 0000E3FC  2C 0B 00 00 */	cmpwi r11, 0
/* 800114C0 0000E400  7C 9E 3A 14 */	add r4, r30, r7
/* 800114C4 0000E404  40 81 00 9C */	ble lbl_80011560
lbl_800114C8:
/* 800114C8 0000E408  7C E4 2A 14 */	add r7, r4, r5
/* 800114CC 0000E40C  B3 47 00 00 */	sth r26, 0(r7)
/* 800114D0 0000E410  3A F7 00 08 */	addi r23, r23, 8
/* 800114D4 0000E414  38 A5 00 10 */	addi r5, r5, 0x10
/* 800114D8 0000E418  B3 47 00 02 */	sth r26, 2(r7)
/* 800114DC 0000E41C  B3 47 00 04 */	sth r26, 4(r7)
/* 800114E0 0000E420  B3 47 00 06 */	sth r26, 6(r7)
/* 800114E4 0000E424  B3 47 00 08 */	sth r26, 8(r7)
/* 800114E8 0000E428  B3 47 00 0A */	sth r26, 0xa(r7)
/* 800114EC 0000E42C  B3 47 00 0C */	sth r26, 0xc(r7)
/* 800114F0 0000E430  B3 47 00 0E */	sth r26, 0xe(r7)
/* 800114F4 0000E434  42 00 FF D4 */	bdnz lbl_800114C8
/* 800114F8 0000E438  48 00 00 68 */	b lbl_80011560
lbl_800114FC:
/* 800114FC 0000E43C  7C 97 48 50 */	subf r4, r23, r9
/* 80011500 0000E440  7C 17 48 00 */	cmpw r23, r9
/* 80011504 0000E444  7C 89 03 A6 */	mtctr r4
/* 80011508 0000E448  56 E4 08 3C */	slwi r4, r23, 1
/* 8001150C 0000E44C  40 80 00 10 */	bge lbl_8001151C
lbl_80011510:
/* 80011510 0000E450  7F 45 23 2E */	sthx r26, r5, r4
/* 80011514 0000E454  38 84 00 02 */	addi r4, r4, 2
/* 80011518 0000E458  42 00 FF F8 */	bdnz lbl_80011510
lbl_8001151C:
/* 8001151C 0000E45C  3B 39 00 01 */	addi r25, r25, 1
lbl_80011520:
/* 80011520 0000E460  7C 19 50 00 */	cmpw r25, r10
/* 80011524 0000E464  41 80 FF 68 */	blt lbl_8001148C
/* 80011528 0000E468  3B 7B 00 01 */	addi r27, r27, 1
/* 8001152C 0000E46C  2C 1B 00 06 */	cmpwi r27, 6
/* 80011530 0000E470  57 9C 08 3C */	slwi r28, r28, 1
/* 80011534 0000E474  7F DE 62 14 */	add r30, r30, r12
/* 80011538 0000E478  41 80 FF 34 */	blt lbl_8001146C
/* 8001153C 0000E47C  A0 83 00 08 */	lhz r4, 8(r3)
/* 80011540 0000E480  3B BD 00 01 */	addi r29, r29, 1
/* 80011544 0000E484  2C 1D 00 07 */	cmpwi r29, 7
/* 80011548 0000E488  7C 84 51 D6 */	mullw r4, r4, r10
/* 8001154C 0000E48C  7C 9F 20 50 */	subf r4, r31, r4
/* 80011550 0000E490  54 84 08 3C */	slwi r4, r4, 1
/* 80011554 0000E494  7F DE 22 14 */	add r30, r30, r4
/* 80011558 0000E498  41 80 FF 04 */	blt lbl_8001145C
/* 8001155C 0000E49C  48 00 00 10 */	b lbl_8001156C
lbl_80011560:
/* 80011560 0000E4A0  57 04 08 3C */	slwi r4, r24, 1
/* 80011564 0000E4A4  7C BE 22 14 */	add r5, r30, r4
/* 80011568 0000E4A8  4B FF FF 94 */	b lbl_800114FC
lbl_8001156C:
/* 8001156C 0000E4AC  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 80011570 0000E4B0  38 21 00 50 */	addi r1, r1, 0x50
/* 80011574 0000E4B4  4E 80 00 20 */	blr 

.global changeFrameBuffer__14JUTDirectPrintFPvUsUs
changeFrameBuffer__14JUTDirectPrintFPvUsUs:
/* 80011578 0000E4B8  90 83 00 00 */	stw r4, 0(r3)
/* 8001157C 0000E4BC  38 05 00 0F */	addi r0, r5, 0xf
/* 80011580 0000E4C0  54 00 00 36 */	rlwinm r0, r0, 0, 0, 0x1b
/* 80011584 0000E4C4  90 83 00 14 */	stw r4, 0x14(r3)
/* 80011588 0000E4C8  B0 A3 00 04 */	sth r5, 4(r3)
/* 8001158C 0000E4CC  B0 C3 00 06 */	sth r6, 6(r3)
/* 80011590 0000E4D0  B0 03 00 08 */	sth r0, 8(r3)
/* 80011594 0000E4D4  A0 83 00 08 */	lhz r4, 8(r3)
/* 80011598 0000E4D8  A0 03 00 06 */	lhz r0, 6(r3)
/* 8001159C 0000E4DC  7C 04 01 D6 */	mullw r0, r4, r0
/* 800115A0 0000E4E0  54 00 08 3C */	slwi r0, r0, 1
/* 800115A4 0000E4E4  90 03 00 0C */	stw r0, 0xc(r3)
/* 800115A8 0000E4E8  4E 80 00 20 */	blr 

.global drawString__14JUTDirectPrintFUsUsPc
drawString__14JUTDirectPrintFUsUsPc:
/* 800115AC 0000E4EC  7C 08 02 A6 */	mflr r0
/* 800115B0 0000E4F0  38 E6 00 00 */	addi r7, r6, 0
/* 800115B4 0000E4F4  90 01 00 04 */	stw r0, 4(r1)
/* 800115B8 0000E4F8  4C C6 31 82 */	crclr 6
/* 800115BC 0000E4FC  38 C2 80 88 */	addi r6, r2, "@192"@sda21
/* 800115C0 0000E500  94 21 FF F8 */	stwu r1, -8(r1)
/* 800115C4 0000E504  48 00 00 15 */	bl drawString_f__14JUTDirectPrintFUsUsPCce
/* 800115C8 0000E508  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800115CC 0000E50C  38 21 00 08 */	addi r1, r1, 8
/* 800115D0 0000E510  7C 08 03 A6 */	mtlr r0
/* 800115D4 0000E514  4E 80 00 20 */	blr 

.global drawString_f__14JUTDirectPrintFUsUsPCce
drawString_f__14JUTDirectPrintFUsUsPCce:
/* 800115D8 0000E518  7C 08 02 A6 */	mflr r0
/* 800115DC 0000E51C  90 01 00 04 */	stw r0, 4(r1)
/* 800115E0 0000E520  94 21 FE 58 */	stwu r1, -0x1a8(r1)
/* 800115E4 0000E524  BE E1 01 84 */	stmw r23, 0x184(r1)
/* 800115E8 0000E528  40 86 00 24 */	bne cr1, lbl_8001160C
/* 800115EC 0000E52C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800115F0 0000E530  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800115F4 0000E534  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800115F8 0000E538  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800115FC 0000E53C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80011600 0000E540  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80011604 0000E544  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80011608 0000E548  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8001160C:
/* 8001160C 0000E54C  90 61 00 08 */	stw r3, 8(r1)
/* 80011610 0000E550  7C 78 1B 78 */	mr r24, r3
/* 80011614 0000E554  3B 24 00 00 */	addi r25, r4, 0
/* 80011618 0000E558  90 81 00 0C */	stw r4, 0xc(r1)
/* 8001161C 0000E55C  3B 45 00 00 */	addi r26, r5, 0
/* 80011620 0000E560  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80011624 0000E564  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80011628 0000E568  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8001162C 0000E56C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80011630 0000E570  91 21 00 20 */	stw r9, 0x20(r1)
/* 80011634 0000E574  91 41 00 24 */	stw r10, 0x24(r1)
/* 80011638 0000E578  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8001163C 0000E57C  28 00 00 00 */	cmplwi r0, 0
/* 80011640 0000E580  41 82 01 0C */	beq lbl_8001174C
/* 80011644 0000E584  3C 00 04 00 */	lis r0, 0x400
/* 80011648 0000E588  90 01 01 74 */	stw r0, 0x174(r1)
/* 8001164C 0000E58C  38 01 01 B0 */	addi r0, r1, 0x1b0
/* 80011650 0000E590  38 61 01 74 */	addi r3, r1, 0x174
/* 80011654 0000E594  90 01 01 78 */	stw r0, 0x178(r1)
/* 80011658 0000E598  38 01 00 08 */	addi r0, r1, 8
/* 8001165C 0000E59C  38 A6 00 00 */	addi r5, r6, 0
/* 80011660 0000E5A0  90 01 01 7C */	stw r0, 0x17c(r1)
/* 80011664 0000E5A4  38 C3 00 00 */	addi r6, r3, 0
/* 80011668 0000E5A8  38 61 00 74 */	addi r3, r1, 0x74
/* 8001166C 0000E5AC  38 80 01 00 */	li r4, 0x100
/* 80011670 0000E5B0  48 07 2B 25 */	bl vsnprintf
/* 80011674 0000E5B4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80011678 0000E5B8  3B 99 00 00 */	addi r28, r25, 0
/* 8001167C 0000E5BC  40 81 00 C4 */	ble lbl_80011740
/* 80011680 0000E5C0  3C 80 80 3B */	lis r4, sAsciiTable__14JUTDirectPrint@ha
/* 80011684 0000E5C4  3C 60 2A AB */	lis r3, 0x2AAAAAAB@ha
/* 80011688 0000E5C8  3B 61 00 74 */	addi r27, r1, 0x74
/* 8001168C 0000E5CC  57 3E 04 3E */	clrlwi r30, r25, 0x10
/* 80011690 0000E5D0  3B E4 88 B0 */	addi r31, r4, sAsciiTable__14JUTDirectPrint@l
/* 80011694 0000E5D4  3A E3 AA AB */	addi r23, r3, 0x2AAAAAAB@l
/* 80011698 0000E5D8  48 00 00 A0 */	b lbl_80011738
lbl_8001169C:
/* 8001169C 0000E5DC  88 1B 00 00 */	lbz r0, 0(r27)
/* 800116A0 0000E5E0  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 800116A4 0000E5E4  7C 7F 02 14 */	add r3, r31, r0
/* 800116A8 0000E5E8  88 03 00 00 */	lbz r0, 0(r3)
/* 800116AC 0000E5EC  2C 00 00 FE */	cmpwi r0, 0xfe
/* 800116B0 0000E5F0  7C 06 03 78 */	mr r6, r0
/* 800116B4 0000E5F4  40 82 00 10 */	bne lbl_800116C4
/* 800116B8 0000E5F8  3B 3C 00 00 */	addi r25, r28, 0
/* 800116BC 0000E5FC  3B 5A 00 07 */	addi r26, r26, 7
/* 800116C0 0000E600  48 00 00 5C */	b lbl_8001171C
lbl_800116C4:
/* 800116C4 0000E604  2C 06 00 FD */	cmpwi r6, 0xfd
/* 800116C8 0000E608  40 82 00 38 */	bne lbl_80011700
/* 800116CC 0000E60C  57 25 04 3E */	clrlwi r5, r25, 0x10
/* 800116D0 0000E610  7C 7E 28 50 */	subf r3, r30, r5
/* 800116D4 0000E614  38 83 00 2F */	addi r4, r3, 0x2f
/* 800116D8 0000E618  7C 17 20 96 */	mulhw r0, r23, r4
/* 800116DC 0000E61C  7C 00 1E 70 */	srawi r0, r0, 3
/* 800116E0 0000E620  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800116E4 0000E624  7C 00 1A 14 */	add r0, r0, r3
/* 800116E8 0000E628  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800116EC 0000E62C  7C 60 20 50 */	subf r3, r0, r4
/* 800116F0 0000E630  38 05 00 30 */	addi r0, r5, 0x30
/* 800116F4 0000E634  7C 03 00 50 */	subf r0, r3, r0
/* 800116F8 0000E638  54 19 04 3E */	clrlwi r25, r0, 0x10
/* 800116FC 0000E63C  48 00 00 20 */	b lbl_8001171C
lbl_80011700:
/* 80011700 0000E640  2C 06 00 FF */	cmpwi r6, 0xff
/* 80011704 0000E644  41 82 00 14 */	beq lbl_80011718
/* 80011708 0000E648  38 78 00 00 */	addi r3, r24, 0
/* 8001170C 0000E64C  57 24 04 3E */	clrlwi r4, r25, 0x10
/* 80011710 0000E650  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 80011714 0000E654  4B FF FC 65 */	bl drawChar__14JUTDirectPrintFiii
lbl_80011718:
/* 80011718 0000E658  3B 39 00 06 */	addi r25, r25, 6
lbl_8001171C:
/* 8001171C 0000E65C  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 80011720 0000E660  28 00 01 36 */	cmplwi r0, 0x136
/* 80011724 0000E664  40 81 00 0C */	ble lbl_80011730
/* 80011728 0000E668  3B 20 00 10 */	li r25, 0x10
/* 8001172C 0000E66C  3B 5A 00 08 */	addi r26, r26, 8
lbl_80011730:
/* 80011730 0000E670  3B BD FF FF */	addi r29, r29, -1
/* 80011734 0000E674  3B 7B 00 01 */	addi r27, r27, 1
lbl_80011738:
/* 80011738 0000E678  2C 1D 00 00 */	cmpwi r29, 0
/* 8001173C 0000E67C  41 81 FF 60 */	bgt lbl_8001169C
lbl_80011740:
/* 80011740 0000E680  80 78 00 14 */	lwz r3, 0x14(r24)
/* 80011744 0000E684  80 98 00 0C */	lwz r4, 0xc(r24)
/* 80011748 0000E688  48 07 C8 65 */	bl DCFlushRange
lbl_8001174C:
/* 8001174C 0000E68C  BA E1 01 84 */	lmw r23, 0x184(r1)
/* 80011750 0000E690  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 80011754 0000E694  38 21 01 A8 */	addi r1, r1, 0x1a8
/* 80011758 0000E698  7C 08 03 A6 */	mtlr r0
/* 8001175C 0000E69C  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
sAsciiTable__14JUTDirectPrint:
	.incbin "baserom.dol", 0x3A58B0, 0x80
sFontData__14JUTDirectPrint:
	.incbin "baserom.dol", 0x3A5930, 0x100
sFontData2__14JUTDirectPrint:
	.incbin "baserom.dol", 0x3A5A30, 0x138

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@192":
	.incbin "baserom.dol", 0x3E3D88, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global sDirectPrint__14JUTDirectPrint
sDirectPrint__14JUTDirectPrint:
	.skip 0x8
