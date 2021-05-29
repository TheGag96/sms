.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
set$$0f$$1__Q29JGeometry8TVec3$$0f$$1Ffff:
/* 8034B36C 003482AC  D0 23 00 00 */	stfs f1, 0(r3)
/* 8034B370 003482B0  D0 43 00 04 */	stfs f2, 4(r3)
/* 8034B374 003482B4  D0 63 00 08 */	stfs f3, 8(r3)
/* 8034B378 003482B8  4E 80 00 20 */	blr 

.global float___14TBathtubBinderFP10TLiveActor
float___14TBathtubBinderFP10TLiveActor:
/* 8034B37C 003482BC  7C 08 02 A6 */	mflr r0
/* 8034B380 003482C0  90 01 00 04 */	stw r0, 4(r1)
/* 8034B384 003482C4  94 21 FE 88 */	stwu r1, -0x178(r1)
/* 8034B388 003482C8  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 8034B38C 003482CC  DB C1 01 68 */	stfd f30, 0x168(r1)
/* 8034B390 003482D0  DB A1 01 60 */	stfd f29, 0x160(r1)
/* 8034B394 003482D4  DB 81 01 58 */	stfd f28, 0x158(r1)
/* 8034B398 003482D8  DB 61 01 50 */	stfd f27, 0x150(r1)
/* 8034B39C 003482DC  DB 41 01 48 */	stfd f26, 0x148(r1)
/* 8034B3A0 003482E0  93 E1 01 44 */	stw r31, 0x144(r1)
/* 8034B3A4 003482E4  3B E4 00 00 */	addi r31, r4, 0
/* 8034B3A8 003482E8  93 C1 01 40 */	stw r30, 0x140(r1)
/* 8034B3AC 003482EC  93 A1 01 3C */	stw r29, 0x13c(r1)
/* 8034B3B0 003482F0  7C 7D 1B 78 */	mr r29, r3
/* 8034B3B4 003482F4  80 03 00 08 */	lwz r0, 8(r3)
/* 8034B3B8 003482F8  28 00 00 00 */	cmplwi r0, 0
/* 8034B3BC 003482FC  41 82 04 08 */	beq lbl_8034B7C4
/* 8034B3C0 00348300  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8034B3C4 00348304  38 61 00 DC */	addi r3, r1, 0xdc
/* 8034B3C8 00348308  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 8034B3CC 0034830C  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8034B3D0 00348310  4B D7 AA C9 */	bl MsMtxSetRotRPH__FPA4_ffff
/* 8034B3D4 00348314  80 7D 00 04 */	lwz r3, 4(r29)
/* 8034B3D8 00348318  C3 E1 01 04 */	lfs f31, 0x104(r1)
/* 8034B3DC 0034831C  C3 C1 00 E4 */	lfs f30, 0xe4(r1)
/* 8034B3E0 00348320  28 03 00 00 */	cmplwi r3, 0
/* 8034B3E4 00348324  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8034B3E8 00348328  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8034B3EC 0034832C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8034B3F0 00348330  EF BE 08 BA */	fmadds f29, f30, f2, f1
/* 8034B3F4 00348334  C3 9D 00 10 */	lfs f28, 0x10(r29)
/* 8034B3F8 00348338  EF 7F 00 BA */	fmadds f27, f31, f2, f0
/* 8034B3FC 0034833C  41 82 00 C0 */	beq lbl_8034B4BC
/* 8034B400 00348340  3B C3 01 70 */	addi r30, r3, 0x170
/* 8034B404 00348344  C0 23 01 74 */	lfs f1, 0x174(r3)
/* 8034B408 00348348  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8034B40C 0034834C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8034B410 00348350  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8034B414 00348354  EC 41 00 28 */	fsubs f2, f1, f0
/* 8034B418 00348358  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8034B41C 0034835C  4B FF FF 51 */	bl set$$0f$$1__Q29JGeometry8TVec3$$0f$$1Ffff
/* 8034B420 00348360  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8034B424 00348364  80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 8034B428 00348368  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8034B42C 0034836C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8034B430 00348370  90 61 00 BC */	stw r3, 0xbc(r1)
/* 8034B434 00348374  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8034B438 00348378  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 8034B43C 0034837C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8034B440 00348380  EC 21 00 72 */	fmuls f1, f1, f1
/* 8034B444 00348384  EC 00 00 32 */	fmuls f0, f0, f0
/* 8034B448 00348388  EC 21 00 28 */	fsubs f1, f1, f0
/* 8034B44C 0034838C  4B D8 54 65 */	bl sqrt__Q29JGeometry8TUtil$$0f$$1Ff
/* 8034B450 00348390  C0 E1 00 C0 */	lfs f7, 0xc0(r1)
/* 8034B454 00348394  EC A1 E0 28 */	fsubs f5, f1, f28
/* 8034B458 00348398  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8034B45C 0034839C  EC 7B 38 28 */	fsubs f3, f27, f7
/* 8034B460 003483A0  EC 9D 00 28 */	fsubs f4, f29, f0
/* 8034B464 003483A4  EC 05 01 72 */	fmuls f0, f5, f5
/* 8034B468 003483A8  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8034B46C 003483AC  ED 04 09 3A */	fmadds f8, f4, f4, f1
/* 8034B470 003483B0  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 8034B474 003483B4  40 81 00 48 */	ble lbl_8034B4BC
/* 8034B478 003483B8  C0 02 03 58 */	lfs f0, $$21944@sda21(r2)
/* 8034B47C 003483BC  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 8034B480 003483C0  4C 40 13 82 */	cror 2, 0, 2
/* 8034B484 003483C4  40 82 00 08 */	bne lbl_8034B48C
/* 8034B488 003483C8  48 00 00 24 */	b lbl_8034B4AC
lbl_8034B48C:
/* 8034B48C 003483CC  FC C0 40 34 */	frsqrte f6, f8
/* 8034B490 003483D0  C0 42 03 5C */	lfs f2, $$21945@sda21(r2)
/* 8034B494 003483D4  C0 02 03 60 */	lfs f0, $$21946@sda21(r2)
/* 8034B498 003483D8  FC C0 30 18 */	frsp f6, f6
/* 8034B49C 003483DC  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8034B4A0 003483E0  EC 42 01 B2 */	fmuls f2, f2, f6
/* 8034B4A4 003483E4  EC 08 00 7C */	fnmsubs f0, f8, f1, f0
/* 8034B4A8 003483E8  ED 02 00 32 */	fmuls f8, f2, f0
lbl_8034B4AC:
/* 8034B4AC 003483EC  EC 25 02 32 */	fmuls f1, f5, f8
/* 8034B4B0 003483F0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8034B4B4 003483F4  EF A1 01 3A */	fmadds f29, f1, f4, f0
/* 8034B4B8 003483F8  EF 61 38 FA */	fmadds f27, f1, f3, f7
lbl_8034B4BC:
/* 8034B4BC 003483FC  FC 20 E8 90 */	fmr f1, f29
/* 8034B4C0 00348400  80 7D 00 08 */	lwz r3, 8(r29)
/* 8034B4C4 00348404  FC 40 D8 90 */	fmr f2, f27
/* 8034B4C8 00348408  4B EA F6 ED */	bl getWaterHeight__17TBathWaterManagerCFff
/* 8034B4CC 0034840C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8034B4D0 00348410  C0 7D 00 20 */	lfs f3, 0x20(r29)
/* 8034B4D4 00348414  FC 80 00 50 */	fneg f4, f0
/* 8034B4D8 00348418  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8034B4DC 0034841C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8034B4E0 00348420  EF 83 08 2A */	fadds f28, f3, f1
/* 8034B4E4 00348424  80 7D 00 04 */	lwz r3, 4(r29)
/* 8034B4E8 00348428  28 03 00 00 */	cmplwi r3, 0
/* 8034B4EC 0034842C  EF DE 11 3A */	fmadds f30, f30, f4, f2
/* 8034B4F0 00348430  EF FF 01 3A */	fmadds f31, f31, f4, f0
/* 8034B4F4 00348434  C3 5D 00 18 */	lfs f26, 0x18(r29)
/* 8034B4F8 00348438  41 82 00 C0 */	beq lbl_8034B5B8
/* 8034B4FC 0034843C  3B C3 01 70 */	addi r30, r3, 0x170
/* 8034B500 00348440  C0 23 01 74 */	lfs f1, 0x174(r3)
/* 8034B504 00348444  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8034B508 00348448  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8034B50C 0034844C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8034B510 00348450  EC 41 00 28 */	fsubs f2, f1, f0
/* 8034B514 00348454  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8034B518 00348458  4B FF FE 55 */	bl set$$0f$$1__Q29JGeometry8TVec3$$0f$$1Ffff
/* 8034B51C 0034845C  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 8034B520 00348460  80 61 00 AC */	lwz r3, 0xac(r1)
/* 8034B524 00348464  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8034B528 00348468  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 8034B52C 0034846C  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 8034B530 00348470  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8034B534 00348474  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 8034B538 00348478  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8034B53C 0034847C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8034B540 00348480  EC 00 00 32 */	fmuls f0, f0, f0
/* 8034B544 00348484  EC 21 00 28 */	fsubs f1, f1, f0
/* 8034B548 00348488  4B D8 53 69 */	bl sqrt__Q29JGeometry8TUtil$$0f$$1Ff
/* 8034B54C 0034848C  C0 E1 00 A4 */	lfs f7, 0xa4(r1)
/* 8034B550 00348490  EC A1 D0 28 */	fsubs f5, f1, f26
/* 8034B554 00348494  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8034B558 00348498  EC 7F 38 28 */	fsubs f3, f31, f7
/* 8034B55C 0034849C  EC 9E 00 28 */	fsubs f4, f30, f0
/* 8034B560 003484A0  EC 05 01 72 */	fmuls f0, f5, f5
/* 8034B564 003484A4  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8034B568 003484A8  ED 04 09 3A */	fmadds f8, f4, f4, f1
/* 8034B56C 003484AC  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 8034B570 003484B0  40 81 00 48 */	ble lbl_8034B5B8
/* 8034B574 003484B4  C0 02 03 58 */	lfs f0, $$21944@sda21(r2)
/* 8034B578 003484B8  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 8034B57C 003484BC  4C 40 13 82 */	cror 2, 0, 2
/* 8034B580 003484C0  40 82 00 08 */	bne lbl_8034B588
/* 8034B584 003484C4  48 00 00 24 */	b lbl_8034B5A8
lbl_8034B588:
/* 8034B588 003484C8  FC C0 40 34 */	frsqrte f6, f8
/* 8034B58C 003484CC  C0 42 03 5C */	lfs f2, $$21945@sda21(r2)
/* 8034B590 003484D0  C0 02 03 60 */	lfs f0, $$21946@sda21(r2)
/* 8034B594 003484D4  FC C0 30 18 */	frsp f6, f6
/* 8034B598 003484D8  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8034B59C 003484DC  EC 42 01 B2 */	fmuls f2, f2, f6
/* 8034B5A0 003484E0  EC 08 00 7C */	fnmsubs f0, f8, f1, f0
/* 8034B5A4 003484E4  ED 02 00 32 */	fmuls f8, f2, f0
lbl_8034B5A8:
/* 8034B5A8 003484E8  EC 25 02 32 */	fmuls f1, f5, f8
/* 8034B5AC 003484EC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8034B5B0 003484F0  EF C1 01 3A */	fmadds f30, f1, f4, f0
/* 8034B5B4 003484F4  EF E1 38 FA */	fmadds f31, f1, f3, f7
lbl_8034B5B8:
/* 8034B5B8 003484F8  FC 20 F0 90 */	fmr f1, f30
/* 8034B5BC 003484FC  80 7D 00 08 */	lwz r3, 8(r29)
/* 8034B5C0 00348500  FC 40 F8 90 */	fmr f2, f31
/* 8034B5C4 00348504  4B EA F5 F1 */	bl getWaterHeight__17TBathWaterManagerCFff
/* 8034B5C8 00348508  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 8034B5CC 0034850C  EC 9D F0 28 */	fsubs f4, f29, f30
/* 8034B5D0 00348510  EC BB F8 28 */	fsubs f5, f27, f31
/* 8034B5D4 00348514  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8034B5D8 00348518  EC 22 08 2A */	fadds f1, f2, f1
/* 8034B5DC 0034851C  EC C4 01 32 */	fmuls f6, f4, f4
/* 8034B5E0 00348520  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8034B5E4 00348524  EC 5C 08 28 */	fsubs f2, f28, f1
/* 8034B5E8 00348528  C0 82 03 64 */	lfs f4, $$22126@sda21(r2)
/* 8034B5EC 0034852C  EC A5 01 72 */	fmuls f5, f5, f5
/* 8034B5F0 00348530  EC 00 08 BA */	fmadds f0, f0, f2, f1
/* 8034B5F4 00348534  EC 20 18 28 */	fsubs f1, f0, f3
/* 8034B5F8 00348538  EC 02 30 BA */	fmadds f0, f2, f2, f6
/* 8034B5FC 0034853C  EC 64 18 7A */	fmadds f3, f4, f1, f3
/* 8034B600 00348540  EC 25 00 2A */	fadds f1, f5, f0
/* 8034B604 00348544  D0 7F 00 14 */	stfs f3, 0x14(r31)
/* 8034B608 00348548  C0 02 03 68 */	lfs f0, $$22127@sda21(r2)
/* 8034B60C 0034854C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8034B610 00348550  4C 40 13 82 */	cror 2, 0, 2
/* 8034B614 00348554  41 82 01 B0 */	beq lbl_8034B7C4
/* 8034B618 00348558  EC A6 28 2A */	fadds f5, f6, f5
/* 8034B61C 0034855C  C0 02 03 58 */	lfs f0, $$21944@sda21(r2)
/* 8034B620 00348560  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8034B624 00348564  4C 40 13 82 */	cror 2, 0, 2
/* 8034B628 00348568  40 82 00 08 */	bne lbl_8034B630
/* 8034B62C 0034856C  48 00 00 28 */	b lbl_8034B654
lbl_8034B630:
/* 8034B630 00348570  FC 80 28 34 */	frsqrte f4, f5
/* 8034B634 00348574  C0 62 03 5C */	lfs f3, $$21945@sda21(r2)
/* 8034B638 00348578  C0 02 03 60 */	lfs f0, $$21946@sda21(r2)
/* 8034B63C 0034857C  FC 80 20 18 */	frsp f4, f4
/* 8034B640 00348580  EC 24 01 32 */	fmuls f1, f4, f4
/* 8034B644 00348584  EC 63 01 32 */	fmuls f3, f3, f4
/* 8034B648 00348588  EC 05 00 7C */	fnmsubs f0, f5, f1, f0
/* 8034B64C 0034858C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8034B650 00348590  EC A5 00 32 */	fmuls f5, f5, f0
lbl_8034B654:
/* 8034B654 00348594  FC 20 28 90 */	fmr f1, f5
/* 8034B658 00348598  4B D7 AB 6D */	bl matan__Fff
/* 8034B65C 0034859C  7C 60 07 34 */	extsh r0, r3
/* 8034B660 003485A0  C8 42 03 80 */	lfd f2, $$22133@sda21(r2)
/* 8034B664 003485A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8034B668 003485A8  C0 02 03 6C */	lfs f0, $$22128@sda21(r2)
/* 8034B66C 003485AC  90 01 01 34 */	stw r0, 0x134(r1)
/* 8034B670 003485B0  3C 00 43 30 */	lis r0, 0x4330
/* 8034B674 003485B4  C0 62 03 70 */	lfs f3, $$22129@sda21(r2)
/* 8034B678 003485B8  90 01 01 30 */	stw r0, 0x130(r1)
/* 8034B67C 003485BC  C8 21 01 30 */	lfd f1, 0x130(r1)
/* 8034B680 003485C0  EC 21 10 28 */	fsubs f1, f1, f2
/* 8034B684 003485C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8034B688 003485C8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8034B68C 003485CC  40 80 00 08 */	bge lbl_8034B694
/* 8034B690 003485D0  48 00 00 18 */	b lbl_8034B6A8
lbl_8034B694:
/* 8034B694 003485D4  C0 62 03 74 */	lfs f3, $$22130@sda21(r2)
/* 8034B698 003485D8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8034B69C 003485DC  40 81 00 08 */	ble lbl_8034B6A4
/* 8034B6A0 003485E0  48 00 00 08 */	b lbl_8034B6A8
lbl_8034B6A4:
/* 8034B6A4 003485E4  FC 60 00 90 */	fmr f3, f0
lbl_8034B6A8:
/* 8034B6A8 003485E8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8034B6AC 003485EC  C0 42 03 78 */	lfs f2, $$22131@sda21(r2)
/* 8034B6B0 003485F0  EC 03 08 28 */	fsubs f0, f3, f1
/* 8034B6B4 003485F4  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 8034B6B8 003485F8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8034B6BC 003485FC  C0 02 03 58 */	lfs f0, $$21944@sda21(r2)
/* 8034B6C0 00348600  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8034B6C4 00348604  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8034B6C8 00348608  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8034B6CC 0034860C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8034B6D0 00348610  EC 01 00 2A */	fadds f0, f1, f0
/* 8034B6D4 00348614  C0 22 03 5C */	lfs f1, $$21945@sda21(r2)
/* 8034B6D8 00348618  28 03 00 00 */	cmplwi r3, 0
/* 8034B6DC 0034861C  EF 41 00 32 */	fmuls f26, f1, f0
/* 8034B6E0 00348620  41 82 00 E4 */	beq lbl_8034B7C4
/* 8034B6E4 00348624  3B C3 01 70 */	addi r30, r3, 0x170
/* 8034B6E8 00348628  C0 23 01 74 */	lfs f1, 0x174(r3)
/* 8034B6EC 0034862C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8034B6F0 00348630  38 61 00 84 */	addi r3, r1, 0x84
/* 8034B6F4 00348634  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8034B6F8 00348638  EC 41 00 28 */	fsubs f2, f1, f0
/* 8034B6FC 0034863C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8034B700 00348640  4B FF FC 6D */	bl set$$0f$$1__Q29JGeometry8TVec3$$0f$$1Ffff
/* 8034B704 00348644  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8034B708 00348648  80 61 00 88 */	lwz r3, 0x88(r1)
/* 8034B70C 0034864C  90 01 00 78 */	stw r0, 0x78(r1)
/* 8034B710 00348650  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8034B714 00348654  90 61 00 7C */	stw r3, 0x7c(r1)
/* 8034B718 00348658  90 01 00 80 */	stw r0, 0x80(r1)
/* 8034B71C 0034865C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 8034B720 00348660  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8034B724 00348664  EC 21 00 72 */	fmuls f1, f1, f1
/* 8034B728 00348668  EC 00 00 32 */	fmuls f0, f0, f0
/* 8034B72C 0034866C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8034B730 00348670  4B D8 51 81 */	bl sqrt__Q29JGeometry8TUtil$$0f$$1Ff
/* 8034B734 00348674  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8034B738 00348678  EC A1 D0 28 */	fsubs f5, f1, f26
/* 8034B73C 0034867C  C0 E1 00 80 */	lfs f7, 0x80(r1)
/* 8034B740 00348680  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8034B744 00348684  EC 60 38 28 */	fsubs f3, f0, f7
/* 8034B748 00348688  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8034B74C 0034868C  EC 05 01 72 */	fmuls f0, f5, f5
/* 8034B750 00348690  EC 82 08 28 */	fsubs f4, f2, f1
/* 8034B754 00348694  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8034B758 00348698  ED 04 09 3A */	fmadds f8, f4, f4, f1
/* 8034B75C 0034869C  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 8034B760 003486A0  40 81 00 50 */	ble lbl_8034B7B0
/* 8034B764 003486A4  C0 02 03 58 */	lfs f0, $$21944@sda21(r2)
/* 8034B768 003486A8  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 8034B76C 003486AC  4C 40 13 82 */	cror 2, 0, 2
/* 8034B770 003486B0  40 82 00 08 */	bne lbl_8034B778
/* 8034B774 003486B4  48 00 00 24 */	b lbl_8034B798
lbl_8034B778:
/* 8034B778 003486B8  FC C0 40 34 */	frsqrte f6, f8
/* 8034B77C 003486BC  C0 42 03 5C */	lfs f2, $$21945@sda21(r2)
/* 8034B780 003486C0  C0 02 03 60 */	lfs f0, $$21946@sda21(r2)
/* 8034B784 003486C4  FC C0 30 18 */	frsp f6, f6
/* 8034B788 003486C8  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8034B78C 003486CC  EC 42 01 B2 */	fmuls f2, f2, f6
/* 8034B790 003486D0  EC 08 00 7C */	fnmsubs f0, f8, f1, f0
/* 8034B794 003486D4  ED 02 00 32 */	fmuls f8, f2, f0
lbl_8034B798:
/* 8034B798 003486D8  EC 45 02 32 */	fmuls f2, f5, f8
/* 8034B79C 003486DC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8034B7A0 003486E0  EC 22 01 3A */	fmadds f1, f2, f4, f0
/* 8034B7A4 003486E4  EC 02 38 FA */	fmadds f0, f2, f3, f7
/* 8034B7A8 003486E8  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8034B7AC 003486EC  D0 1F 00 18 */	stfs f0, 0x18(r31)
lbl_8034B7B0:
/* 8034B7B0 003486F0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8034B7B4 003486F4  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8034B7B8 003486F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8034B7BC 003486FC  40 80 00 08 */	bge lbl_8034B7C4
/* 8034B7C0 00348700  D0 3F 00 14 */	stfs f1, 0x14(r31)
lbl_8034B7C4:
/* 8034B7C4 00348704  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 8034B7C8 00348708  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 8034B7CC 0034870C  CB C1 01 68 */	lfd f30, 0x168(r1)
/* 8034B7D0 00348710  7C 08 03 A6 */	mtlr r0
/* 8034B7D4 00348714  CB A1 01 60 */	lfd f29, 0x160(r1)
/* 8034B7D8 00348718  CB 81 01 58 */	lfd f28, 0x158(r1)
/* 8034B7DC 0034871C  CB 61 01 50 */	lfd f27, 0x150(r1)
/* 8034B7E0 00348720  CB 41 01 48 */	lfd f26, 0x148(r1)
/* 8034B7E4 00348724  83 E1 01 44 */	lwz r31, 0x144(r1)
/* 8034B7E8 00348728  83 C1 01 40 */	lwz r30, 0x140(r1)
/* 8034B7EC 0034872C  83 A1 01 3C */	lwz r29, 0x13c(r1)
/* 8034B7F0 00348730  38 21 01 78 */	addi r1, r1, 0x178
/* 8034B7F4 00348734  4E 80 00 20 */	blr 

.global bind__14TBathtubBinderFP10TLiveActor
bind__14TBathtubBinderFP10TLiveActor:
/* 8034B7F8 00348738  7C 08 02 A6 */	mflr r0
/* 8034B7FC 0034873C  90 01 00 04 */	stw r0, 4(r1)
/* 8034B800 00348740  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034B804 00348744  80 A3 00 04 */	lwz r5, 4(r3)
/* 8034B808 00348748  28 05 00 00 */	cmplwi r5, 0
/* 8034B80C 0034874C  41 82 00 10 */	beq lbl_8034B81C
/* 8034B810 00348750  88 05 02 9A */	lbz r0, 0x29a(r5)
/* 8034B814 00348754  28 00 00 00 */	cmplwi r0, 0
/* 8034B818 00348758  40 82 00 08 */	bne lbl_8034B820
lbl_8034B81C:
/* 8034B81C 0034875C  4B FF FB 61 */	bl float___14TBathtubBinderFP10TLiveActor
lbl_8034B820:
/* 8034B820 00348760  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034B824 00348764  38 21 00 08 */	addi r1, r1, 8
/* 8034B828 00348768  7C 08 03 A6 */	mtlr r0
/* 8034B82C 0034876C  4E 80 00 20 */	blr 

.global init__14TBathtubBinderFfffff
init__14TBathtubBinderFfffff:
/* 8034B830 00348770  7C 08 02 A6 */	mflr r0
/* 8034B834 00348774  3C A0 80 3A */	lis r5, $$21490@ha
/* 8034B838 00348778  90 01 00 04 */	stw r0, 4(r1)
/* 8034B83C 0034877C  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 8034B840 00348780  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8034B844 00348784  FF E0 28 90 */	fmr f31, f5
/* 8034B848 00348788  DB C1 00 78 */	stfd f30, 0x78(r1)
/* 8034B84C 0034878C  FF C0 20 90 */	fmr f30, f4
/* 8034B850 00348790  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8034B854 00348794  FF A0 18 90 */	fmr f29, f3
/* 8034B858 00348798  DB 81 00 68 */	stfd f28, 0x68(r1)
/* 8034B85C 0034879C  FF 80 10 90 */	fmr f28, f2
/* 8034B860 003487A0  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 8034B864 003487A4  FF 60 08 90 */	fmr f27, f1
/* 8034B868 003487A8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8034B86C 003487AC  3B E5 50 C8 */	addi r31, r5, $$21490@l
/* 8034B870 003487B0  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8034B874 003487B4  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8034B878 003487B8  7C 7D 1B 78 */	mr r29, r3
/* 8034B87C 003487BC  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8034B880 003487C0  80 8D 8E E0 */	lwz r4, instance__Q26JDrama11TNameRefGen@sda21(r13)
/* 8034B884 003487C4  83 C4 00 04 */	lwz r30, 4(r4)
/* 8034B888 003487C8  4B CF 8E 05 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8034B88C 003487CC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8034B890 003487D0  38 83 00 00 */	addi r4, r3, 0
/* 8034B894 003487D4  38 7E 00 00 */	addi r3, r30, 0
/* 8034B898 003487D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8034B89C 003487DC  38 BF 00 E0 */	addi r5, r31, 0xe0
/* 8034B8A0 003487E0  7D 88 03 A6 */	mtlr r12
/* 8034B8A4 003487E4  4E 80 00 21 */	blrl 
/* 8034B8A8 003487E8  90 7D 00 04 */	stw r3, 4(r29)
/* 8034B8AC 003487EC  38 7F 00 EC */	addi r3, r31, 0xec
/* 8034B8B0 003487F0  80 8D 8E E0 */	lwz r4, instance__Q26JDrama11TNameRefGen@sda21(r13)
/* 8034B8B4 003487F4  83 C4 00 04 */	lwz r30, 4(r4)
/* 8034B8B8 003487F8  4B CF 8D D5 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8034B8BC 003487FC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8034B8C0 00348800  38 83 00 00 */	addi r4, r3, 0
/* 8034B8C4 00348804  38 7E 00 00 */	addi r3, r30, 0
/* 8034B8C8 00348808  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8034B8CC 0034880C  38 BF 00 EC */	addi r5, r31, 0xec
/* 8034B8D0 00348810  7D 88 03 A6 */	mtlr r12
/* 8034B8D4 00348814  4E 80 00 21 */	blrl 
/* 8034B8D8 00348818  90 7D 00 08 */	stw r3, 8(r29)
/* 8034B8DC 0034881C  D3 FD 00 20 */	stfs f31, 0x20(r29)
/* 8034B8E0 00348820  D3 7D 00 0C */	stfs f27, 0xc(r29)
/* 8034B8E4 00348824  D3 9D 00 10 */	stfs f28, 0x10(r29)
/* 8034B8E8 00348828  D3 BD 00 14 */	stfs f29, 0x14(r29)
/* 8034B8EC 0034882C  D3 DD 00 18 */	stfs f30, 0x18(r29)
/* 8034B8F0 00348830  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 8034B8F4 00348834  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8034B8F8 00348838  EC 00 08 2A */	fadds f0, f0, f1
/* 8034B8FC 0034883C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8034B900 00348840  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8034B904 00348844  80 1D 00 04 */	lwz r0, 4(r29)
/* 8034B908 00348848  28 00 00 00 */	cmplwi r0, 0
/* 8034B90C 0034884C  40 82 00 0C */	bne lbl_8034B918
/* 8034B910 00348850  38 00 00 00 */	li r0, 0
/* 8034B914 00348854  90 1D 00 08 */	stw r0, 8(r29)
lbl_8034B918:
/* 8034B918 00348858  80 1D 00 04 */	lwz r0, 4(r29)
/* 8034B91C 0034885C  7C 60 00 D0 */	neg r3, r0
/* 8034B920 00348860  30 03 FF FF */	addic r0, r3, -1
/* 8034B924 00348864  7C 60 19 10 */	subfe r3, r0, r3
/* 8034B928 00348868  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8034B92C 0034886C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8034B930 00348870  CB C1 00 78 */	lfd f30, 0x78(r1)
/* 8034B934 00348874  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8034B938 00348878  CB 81 00 68 */	lfd f28, 0x68(r1)
/* 8034B93C 0034887C  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 8034B940 00348880  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8034B944 00348884  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8034B948 00348888  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8034B94C 0034888C  38 21 00 88 */	addi r1, r1, 0x88
/* 8034B950 00348890  7C 08 03 A6 */	mtlr r0
/* 8034B954 00348894  4E 80 00 20 */	blr 

.global __dt__14TBathtubBinderFv
__dt__14TBathtubBinderFv:
/* 8034B958 00348898  7C 08 02 A6 */	mflr r0
/* 8034B95C 0034889C  90 01 00 04 */	stw r0, 4(r1)
/* 8034B960 003488A0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034B964 003488A4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034B968 003488A8  3B E4 00 00 */	addi r31, r4, 0
/* 8034B96C 003488AC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034B970 003488B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8034B974 003488B4  41 82 00 2C */	beq lbl_8034B9A0
/* 8034B978 003488B8  3C 60 80 3E */	lis r3, __vt__14TBathtubBinder@ha
/* 8034B97C 003488BC  38 03 3D 80 */	addi r0, r3, __vt__14TBathtubBinder@l
/* 8034B980 003488C0  90 1E 00 00 */	stw r0, 0(r30)
/* 8034B984 003488C4  38 7E 00 00 */	addi r3, r30, 0
/* 8034B988 003488C8  38 80 00 00 */	li r4, 0
/* 8034B98C 003488CC  4B DD 1F DD */	bl __dt__7TBinderFv
/* 8034B990 003488D0  7F E0 07 35 */	extsh. r0, r31
/* 8034B994 003488D4  40 81 00 0C */	ble lbl_8034B9A0
/* 8034B998 003488D8  7F C3 F3 78 */	mr r3, r30
/* 8034B99C 003488DC  4B CC 11 15 */	bl __dl__FPv
lbl_8034B9A0:
/* 8034B9A0 003488E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034B9A4 003488E4  7F C3 F3 78 */	mr r3, r30
/* 8034B9A8 003488E8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034B9AC 003488EC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034B9B0 003488F0  7C 08 03 A6 */	mtlr r0
/* 8034B9B4 003488F4  38 21 00 18 */	addi r1, r1, 0x18
/* 8034B9B8 003488F8  4E 80 00 20 */	blr 

.global __ct__14TBathtubBinderFv
__ct__14TBathtubBinderFv:
/* 8034B9BC 003488FC  7C 08 02 A6 */	mflr r0
/* 8034B9C0 00348900  90 01 00 04 */	stw r0, 4(r1)
/* 8034B9C4 00348904  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034B9C8 00348908  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034B9CC 0034890C  7C 7F 1B 78 */	mr r31, r3
/* 8034B9D0 00348910  4B DD 1F E5 */	bl __ct__7TBinderFv
/* 8034B9D4 00348914  3C 60 80 3E */	lis r3, __vt__14TBathtubBinder@ha
/* 8034B9D8 00348918  38 03 3D 80 */	addi r0, r3, __vt__14TBathtubBinder@l
/* 8034B9DC 0034891C  90 1F 00 00 */	stw r0, 0(r31)
/* 8034B9E0 00348920  38 00 00 00 */	li r0, 0
/* 8034B9E4 00348924  38 7F 00 00 */	addi r3, r31, 0
/* 8034B9E8 00348928  90 1F 00 04 */	stw r0, 4(r31)
/* 8034B9EC 0034892C  90 1F 00 08 */	stw r0, 8(r31)
/* 8034B9F0 00348930  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034B9F4 00348934  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034B9F8 00348938  38 21 00 18 */	addi r1, r1, 0x18
/* 8034B9FC 0034893C  7C 08 03 A6 */	mtlr r0
/* 8034BA00 00348940  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21490:
  .4byte 0
  .4byte 0
  .4byte 0
$$21525:
	.incbin "baserom.dol", 0x3A20D4, 0x14
$$21582:
	.incbin "baserom.dol", 0x3A20E8, 0x30
$$21583:
	.incbin "baserom.dol", 0x3A2118, 0x38
$$21584:
	.incbin "baserom.dol", 0x3A2150, 0x34
$$21585:
	.incbin "baserom.dol", 0x3A2184, 0x24
$$22160:
	.incbin "baserom.dol", 0x3A21A8, 0xC
$$22161:
	.incbin "baserom.dol", 0x3A21B4, 0x14

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__14TBathtubBinder
__vt__14TBathtubBinder:
  .4byte 0
  .4byte 0
  .4byte __dt__14TBathtubBinderFv
  .4byte bind__14TBathtubBinderFP10TLiveActor

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21944:
  .4byte 0
$$21945:
	.incbin "baserom.dol", 0x3EC05C, 0x4
$$21946:
	.incbin "baserom.dol", 0x3EC060, 0x4
$$22126:
	.incbin "baserom.dol", 0x3EC064, 0x4
$$22127:
	.incbin "baserom.dol", 0x3EC068, 0x4
$$22128:
	.incbin "baserom.dol", 0x3EC06C, 0x4
$$22129:
	.incbin "baserom.dol", 0x3EC070, 0x4
$$22130:
	.incbin "baserom.dol", 0x3EC074, 0x4
$$22131:
	.incbin "baserom.dol", 0x3EC078, 0x8
$$22133:
	.incbin "baserom.dol", 0x3EC080, 0x8
