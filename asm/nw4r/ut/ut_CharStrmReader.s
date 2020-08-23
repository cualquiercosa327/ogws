.include "macros.inc"

.section .text, "ax"  # 0x800076E0 - 0x80355080

.global ReadNextCharUTF8__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharUTF8__Q34nw4r2ut14CharStrmReaderFv:
/* 80007B5C 00002A5C  80 E3 00 00 */	lwz r7, 0(r3)
/* 80007B60 00002A60  88 C7 00 00 */	lbz r6, 0(r7)
/* 80007B64 00002A64  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 80007B68 00002A68  40 82 00 14 */	bne lbl_80007B7C
/* 80007B6C 00002A6C  80 83 00 00 */	lwz r4, 0(r3)
/* 80007B70 00002A70  38 04 00 01 */	addi r0, r4, 1
/* 80007B74 00002A74  90 03 00 00 */	stw r0, 0(r3)
/* 80007B78 00002A78  48 00 00 54 */	b lbl_80007BCC
lbl_80007B7C:
/* 80007B7C 00002A7C  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 80007B80 00002A80  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 80007B84 00002A84  40 82 00 24 */	bne lbl_80007BA8
/* 80007B88 00002A88  80 83 00 00 */	lwz r4, 0(r3)
/* 80007B8C 00002A8C  88 A7 00 01 */	lbz r5, 1(r7)
/* 80007B90 00002A90  38 04 00 02 */	addi r0, r4, 2
/* 80007B94 00002A94  54 A4 06 BE */	clrlwi r4, r5, 0x1a
/* 80007B98 00002A98  90 03 00 00 */	stw r0, 0(r3)
/* 80007B9C 00002A9C  50 C4 35 72 */	rlwimi r4, r6, 6, 0x15, 0x19
/* 80007BA0 00002AA0  7C 86 23 78 */	mr r6, r4
/* 80007BA4 00002AA4  48 00 00 28 */	b lbl_80007BCC
lbl_80007BA8:
/* 80007BA8 00002AA8  80 83 00 00 */	lwz r4, 0(r3)
/* 80007BAC 00002AAC  54 C5 63 E6 */	rlwinm r5, r6, 0xc, 0xf, 0x13
/* 80007BB0 00002AB0  88 C7 00 01 */	lbz r6, 1(r7)
/* 80007BB4 00002AB4  88 E7 00 02 */	lbz r7, 2(r7)
/* 80007BB8 00002AB8  38 04 00 03 */	addi r0, r4, 3
/* 80007BBC 00002ABC  50 C5 35 32 */	rlwimi r5, r6, 6, 0x14, 0x19
/* 80007BC0 00002AC0  50 E5 06 BE */	rlwimi r5, r7, 0, 0x1a, 0x1f
/* 80007BC4 00002AC4  90 03 00 00 */	stw r0, 0(r3)
/* 80007BC8 00002AC8  54 A6 04 3E */	clrlwi r6, r5, 0x10
lbl_80007BCC:
/* 80007BCC 00002ACC  7C C3 33 78 */	mr r3, r6
/* 80007BD0 00002AD0  4E 80 00 20 */	blr 

.global ReadNextCharUTF16__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharUTF16__Q34nw4r2ut14CharStrmReaderFv:
/* 80007BD4 00002AD4  7C 65 1B 78 */	mr r5, r3
/* 80007BD8 00002AD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80007BDC 00002ADC  80 85 00 00 */	lwz r4, 0(r5)
/* 80007BE0 00002AE0  A0 63 00 00 */	lhz r3, 0(r3)
/* 80007BE4 00002AE4  38 04 00 02 */	addi r0, r4, 2
/* 80007BE8 00002AE8  90 05 00 00 */	stw r0, 0(r5)
/* 80007BEC 00002AEC  4E 80 00 20 */	blr 

.global ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv:
/* 80007BF0 00002AF0  7C 65 1B 78 */	mr r5, r3
/* 80007BF4 00002AF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80007BF8 00002AF8  80 85 00 00 */	lwz r4, 0(r5)
/* 80007BFC 00002AFC  88 63 00 00 */	lbz r3, 0(r3)
/* 80007C00 00002B00  38 04 00 01 */	addi r0, r4, 1
/* 80007C04 00002B04  90 05 00 00 */	stw r0, 0(r5)
/* 80007C08 00002B08  4E 80 00 20 */	blr 

.global ReadNextCharSJIS__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharSJIS__Q34nw4r2ut14CharStrmReaderFv:
/* 80007C0C 00002B0C  80 C3 00 00 */	lwz r6, 0(r3)
/* 80007C10 00002B10  38 00 00 00 */	li r0, 0
/* 80007C14 00002B14  88 A6 00 00 */	lbz r5, 0(r6)
/* 80007C18 00002B18  28 05 00 81 */	cmplwi r5, 0x81
/* 80007C1C 00002B1C  41 80 00 0C */	blt lbl_80007C28
/* 80007C20 00002B20  28 05 00 A0 */	cmplwi r5, 0xa0
/* 80007C24 00002B24  41 80 00 0C */	blt lbl_80007C30
lbl_80007C28:
/* 80007C28 00002B28  28 05 00 E0 */	cmplwi r5, 0xe0
/* 80007C2C 00002B2C  41 80 00 08 */	blt lbl_80007C34
lbl_80007C30:
/* 80007C30 00002B30  38 00 00 01 */	li r0, 1
lbl_80007C34:
/* 80007C34 00002B34  2C 00 00 00 */	cmpwi r0, 0
/* 80007C38 00002B38  41 82 00 1C */	beq lbl_80007C54
/* 80007C3C 00002B3C  80 83 00 00 */	lwz r4, 0(r3)
/* 80007C40 00002B40  88 C6 00 01 */	lbz r6, 1(r6)
/* 80007C44 00002B44  50 A6 44 2E */	rlwimi r6, r5, 8, 0x10, 0x17
/* 80007C48 00002B48  38 04 00 02 */	addi r0, r4, 2
/* 80007C4C 00002B4C  90 03 00 00 */	stw r0, 0(r3)
/* 80007C50 00002B50  48 00 00 14 */	b lbl_80007C64
lbl_80007C54:
/* 80007C54 00002B54  80 83 00 00 */	lwz r4, 0(r3)
/* 80007C58 00002B58  7C A6 2B 78 */	mr r6, r5
/* 80007C5C 00002B5C  38 04 00 01 */	addi r0, r4, 1
/* 80007C60 00002B60  90 03 00 00 */	stw r0, 0(r3)
lbl_80007C64:
/* 80007C64 00002B64  7C C3 33 78 */	mr r3, r6
/* 80007C68 00002B68  4E 80 00 20 */	blr 