.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__Q26JDrama11TDrawBufObjFv
__ct__Q26JDrama11TDrawBufObjFv:
/* 80042054 0003EF94  7C 08 02 A6 */	mflr r0
/* 80042058 0003EF98  3C 80 80 3B */	lis r4, __vt__Q26JDrama8TNameRef@ha
/* 8004205C 0003EF9C  90 01 00 04 */	stw r0, 4(r1)
/* 80042060 0003EFA0  38 04 A8 60 */	addi r0, r4, __vt__Q26JDrama8TNameRef@l
/* 80042064 0003EFA4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80042068 0003EFA8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8004206C 0003EFAC  3B E3 00 00 */	addi r31, r3, 0
/* 80042070 0003EFB0  3C 60 80 37 */	lis r3, "@903"@ha
/* 80042074 0003EFB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80042078 0003EFB8  38 63 0F 00 */	addi r3, r3, "@903"@l
/* 8004207C 0003EFBC  90 7F 00 04 */	stw r3, 4(r31)
/* 80042080 0003EFC0  48 00 26 0D */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80042084 0003EFC4  B0 7F 00 08 */	sth r3, 8(r31)
/* 80042088 0003EFC8  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 8004208C 0003EFCC  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 80042090 0003EFD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80042094 0003EFD4  38 80 00 00 */	li r4, 0
/* 80042098 0003EFD8  3C 60 80 3B */	lis r3, __vt__Q26JDrama11TDrawBufObj@ha
/* 8004209C 0003EFDC  B0 9F 00 0C */	sth r4, 0xc(r31)
/* 800420A0 0003EFE0  38 63 A5 18 */	addi r3, r3, __vt__Q26JDrama11TDrawBufObj@l
/* 800420A4 0003EFE4  38 00 00 07 */	li r0, 7
/* 800420A8 0003EFE8  90 7F 00 00 */	stw r3, 0(r31)
/* 800420AC 0003EFEC  7F E3 FB 78 */	mr r3, r31
/* 800420B0 0003EFF0  90 9F 00 10 */	stw r4, 0x10(r31)
/* 800420B4 0003EFF4  90 9F 00 14 */	stw r4, 0x14(r31)
/* 800420B8 0003EFF8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 800420BC 0003EFFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800420C0 0003F000  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800420C4 0003F004  38 21 00 18 */	addi r1, r1, 0x18
/* 800420C8 0003F008  7C 08 03 A6 */	mtlr r0
/* 800420CC 0003F00C  4E 80 00 20 */	blr 

.global __ct__Q26JDrama11TDrawBufObjFUlUlPCc
__ct__Q26JDrama11TDrawBufObjFUlUlPCc:
/* 800420D0 0003F010  7C 08 02 A6 */	mflr r0
/* 800420D4 0003F014  90 01 00 04 */	stw r0, 4(r1)
/* 800420D8 0003F018  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800420DC 0003F01C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800420E0 0003F020  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800420E4 0003F024  7C BE 2B 78 */	mr r30, r5
/* 800420E8 0003F028  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800420EC 0003F02C  3B A4 00 00 */	addi r29, r4, 0
/* 800420F0 0003F030  90 61 00 08 */	stw r3, 8(r1)
/* 800420F4 0003F034  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TNameRef@ha
/* 800420F8 0003F038  38 03 A8 60 */	addi r0, r3, __vt__Q26JDrama8TNameRef@l
/* 800420FC 0003F03C  83 E1 00 08 */	lwz r31, 8(r1)
/* 80042100 0003F040  7C C3 33 78 */	mr r3, r6
/* 80042104 0003F044  90 1F 00 00 */	stw r0, 0(r31)
/* 80042108 0003F048  90 DF 00 04 */	stw r6, 4(r31)
/* 8004210C 0003F04C  48 00 25 81 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80042110 0003F050  B0 7F 00 08 */	sth r3, 8(r31)
/* 80042114 0003F054  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 80042118 0003F058  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 8004211C 0003F05C  90 1F 00 00 */	stw r0, 0(r31)
/* 80042120 0003F060  38 00 00 00 */	li r0, 0
/* 80042124 0003F064  3C 60 80 3B */	lis r3, __vt__Q26JDrama11TDrawBufObj@ha
/* 80042128 0003F068  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8004212C 0003F06C  38 03 A5 18 */	addi r0, r3, __vt__Q26JDrama11TDrawBufObj@l
/* 80042130 0003F070  38 60 00 24 */	li r3, 0x24
/* 80042134 0003F074  90 1F 00 00 */	stw r0, 0(r31)
/* 80042138 0003F078  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8004213C 0003F07C  93 BF 00 18 */	stw r29, 0x18(r31)
/* 80042140 0003F080  4B FC A7 71 */	bl __nw__FUl
/* 80042144 0003F084  7C 7D 1B 79 */	or. r29, r3, r3
/* 80042148 0003F088  41 82 00 10 */	beq lbl_80042158
/* 8004214C 0003F08C  7F A3 EB 78 */	mr r3, r29
/* 80042150 0003F090  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80042154 0003F094  4B FF 6F DD */	bl __ct__13J3DDrawBufferFUl
lbl_80042158:
/* 80042158 0003F098  80 61 00 08 */	lwz r3, 8(r1)
/* 8004215C 0003F09C  93 A3 00 10 */	stw r29, 0x10(r3)
/* 80042160 0003F0A0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80042164 0003F0A4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80042168 0003F0A8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8004216C 0003F0AC  7C 08 03 A6 */	mtlr r0
/* 80042170 0003F0B0  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80042174 0003F0B4  38 21 00 28 */	addi r1, r1, 0x28
/* 80042178 0003F0B8  4E 80 00 20 */	blr 

.global load__Q26JDrama11TDrawBufObjFR20JSUMemoryInputStream
load__Q26JDrama11TDrawBufObjFR20JSUMemoryInputStream:
/* 8004217C 0003F0BC  7C 08 02 A6 */	mflr r0
/* 80042180 0003F0C0  90 01 00 04 */	stw r0, 4(r1)
/* 80042184 0003F0C4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80042188 0003F0C8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8004218C 0003F0CC  3B E4 00 00 */	addi r31, r4, 0
/* 80042190 0003F0D0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80042194 0003F0D4  3B C3 00 00 */	addi r30, r3, 0
/* 80042198 0003F0D8  48 00 26 B9 */	bl load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
/* 8004219C 0003F0DC  38 7F 00 00 */	addi r3, r31, 0
/* 800421A0 0003F0E0  38 9E 00 18 */	addi r4, r30, 0x18
/* 800421A4 0003F0E4  38 A0 00 04 */	li r5, 4
/* 800421A8 0003F0E8  4B FC C3 E9 */	bl read__14JSUInputStreamFPvl
/* 800421AC 0003F0EC  38 7F 00 00 */	addi r3, r31, 0
/* 800421B0 0003F0F0  38 9E 00 14 */	addi r4, r30, 0x14
/* 800421B4 0003F0F4  38 A0 00 04 */	li r5, 4
/* 800421B8 0003F0F8  4B FC C3 D9 */	bl read__14JSUInputStreamFPvl
/* 800421BC 0003F0FC  38 60 00 24 */	li r3, 0x24
/* 800421C0 0003F100  4B FC A6 F1 */	bl __nw__FUl
/* 800421C4 0003F104  7C 7F 1B 79 */	or. r31, r3, r3
/* 800421C8 0003F108  41 82 00 10 */	beq lbl_800421D8
/* 800421CC 0003F10C  7F E3 FB 78 */	mr r3, r31
/* 800421D0 0003F110  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 800421D4 0003F114  4B FF 6F 5D */	bl __ct__13J3DDrawBufferFUl
lbl_800421D8:
/* 800421D8 0003F118  93 FE 00 10 */	stw r31, 0x10(r30)
/* 800421DC 0003F11C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800421E0 0003F120  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800421E4 0003F124  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800421E8 0003F128  7C 08 03 A6 */	mtlr r0
/* 800421EC 0003F12C  38 21 00 18 */	addi r1, r1, 0x18
/* 800421F0 0003F130  4E 80 00 20 */	blr 

.global perform__Q26JDrama11TDrawBufObjFUlPQ26JDrama9TGraphics
perform__Q26JDrama11TDrawBufObjFUlPQ26JDrama9TGraphics:
/* 800421F4 0003F134  7C 08 02 A6 */	mflr r0
/* 800421F8 0003F138  90 01 00 04 */	stw r0, 4(r1)
/* 800421FC 0003F13C  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 80042200 0003F140  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80042204 0003F144  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80042208 0003F148  3B E4 00 00 */	addi r31, r4, 0
/* 8004220C 0003F14C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80042210 0003F150  3B C3 00 00 */	addi r30, r3, 0
/* 80042214 0003F154  41 82 00 0C */	beq lbl_80042220
/* 80042218 0003F158  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8004221C 0003F15C  4B FF 6F BD */	bl frameInit__13J3DDrawBufferFv
lbl_80042220:
/* 80042220 0003F160  57 E0 05 6B */	rlwinm. r0, r31, 0, 0x15, 0x15
/* 80042224 0003F164  41 82 00 3C */	beq lbl_80042260
/* 80042228 0003F168  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8004222C 0003F16C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80042230 0003F170  41 82 00 14 */	beq lbl_80042244
/* 80042234 0003F174  3C 60 80 40 */	lis r3, j3dSys@ha
/* 80042238 0003F178  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8004223C 0003F17C  38 63 0E D8 */	addi r3, r3, j3dSys@l
/* 80042240 0003F180  90 03 00 44 */	stw r0, 0x44(r3)
lbl_80042244:
/* 80042244 0003F184  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80042248 0003F188  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8004224C 0003F18C  41 82 00 14 */	beq lbl_80042260
/* 80042250 0003F190  3C 60 80 40 */	lis r3, j3dSys@ha
/* 80042254 0003F194  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80042258 0003F198  38 63 0E D8 */	addi r3, r3, j3dSys@l
/* 8004225C 0003F19C  90 03 00 48 */	stw r0, 0x48(r3)
lbl_80042260:
/* 80042260 0003F1A0  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 80042264 0003F1A4  41 82 00 1C */	beq lbl_80042280
/* 80042268 0003F1A8  3C 60 80 40 */	lis r3, j3dSys@ha
/* 8004226C 0003F1AC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80042270 0003F1B0  38 63 0E D8 */	addi r3, r3, j3dSys@l
/* 80042274 0003F1B4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80042278 0003F1B8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8004227C 0003F1BC  4B FF 73 A5 */	bl draw__13J3DDrawBufferCFv
lbl_80042280:
/* 80042280 0003F1C0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80042284 0003F1C4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80042288 0003F1C8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8004228C 0003F1CC  7C 08 03 A6 */	mtlr r0
/* 80042290 0003F1D0  38 21 00 28 */	addi r1, r1, 0x28
/* 80042294 0003F1D4  4E 80 00 20 */	blr 

.global __dt__Q26JDrama11TDrawBufObjFv
__dt__Q26JDrama11TDrawBufObjFv:
/* 80042298 0003F1D8  7C 08 02 A6 */	mflr r0
/* 8004229C 0003F1DC  90 01 00 04 */	stw r0, 4(r1)
/* 800422A0 0003F1E0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800422A4 0003F1E4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800422A8 0003F1E8  3B E4 00 00 */	addi r31, r4, 0
/* 800422AC 0003F1EC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800422B0 0003F1F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800422B4 0003F1F4  41 82 00 3C */	beq lbl_800422F0
/* 800422B8 0003F1F8  3C 60 80 3B */	lis r3, __vt__Q26JDrama11TDrawBufObj@ha
/* 800422BC 0003F1FC  38 03 A5 18 */	addi r0, r3, __vt__Q26JDrama11TDrawBufObj@l
/* 800422C0 0003F200  90 1E 00 00 */	stw r0, 0(r30)
/* 800422C4 0003F204  41 82 00 1C */	beq lbl_800422E0
/* 800422C8 0003F208  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 800422CC 0003F20C  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 800422D0 0003F210  90 1E 00 00 */	stw r0, 0(r30)
/* 800422D4 0003F214  38 7E 00 00 */	addi r3, r30, 0
/* 800422D8 0003F218  38 80 00 00 */	li r4, 0
/* 800422DC 0003F21C  48 00 25 21 */	bl __dt__Q26JDrama8TNameRefFv
lbl_800422E0:
/* 800422E0 0003F220  7F E0 07 35 */	extsh. r0, r31
/* 800422E4 0003F224  40 81 00 0C */	ble lbl_800422F0
/* 800422E8 0003F228  7F C3 F3 78 */	mr r3, r30
/* 800422EC 0003F22C  4B FC A7 C5 */	bl __dl__FPv
lbl_800422F0:
/* 800422F0 0003F230  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800422F4 0003F234  7F C3 F3 78 */	mr r3, r30
/* 800422F8 0003F238  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800422FC 0003F23C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80042300 0003F240  7C 08 03 A6 */	mtlr r0
/* 80042304 0003F244  38 21 00 18 */	addi r1, r1, 0x18
/* 80042308 0003F248  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x8036FFA0 - 0x803A8380
.balign 8
"@903":
	.incbin "baserom.dol", 0x36DF00, 0x10

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__Q26JDrama11TDrawBufObj
__vt__Q26JDrama11TDrawBufObj:
  .4byte 0
  .4byte 0
  .4byte __dt__Q26JDrama11TDrawBufObjFv
  .4byte getType__Q26JDrama8TNameRefCFv
  .4byte load__Q26JDrama11TDrawBufObjFR20JSUMemoryInputStream
  .4byte save__Q26JDrama8TNameRefFR21JSUMemoryOutputStream
  .4byte loadAfter__Q26JDrama8TNameRefFv
  .4byte searchF__Q26JDrama8TNameRefFUsPCc
  .4byte perform__Q26JDrama11TDrawBufObjFUlPQ26JDrama9TGraphics
  .4byte 0
