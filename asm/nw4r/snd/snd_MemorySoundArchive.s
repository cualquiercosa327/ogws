.include "macros.inc"

.section .data, "wa"  # 0x80393A80 - 0x803CAF00

.balign 0x8

.global __vt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStream
__vt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStream:
	.long 0
	.long 0
	.long GetRuntimeTypeInfo__Q34nw4r2ut10FileStreamCFv
	.long __dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
	.long Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
	.long Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl
	.long ReadAsync__Q34nw4r2ut8IOStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv
	.long Write__Q34nw4r2ut8IOStreamFPCvUl
	.long WriteAsync__Q34nw4r2ut8IOStreamFPCvUlPFlPQ34nw4r2ut8IOStreamPv_vPv
	.long IsBusy__Q34nw4r2ut8IOStreamCFv
	.long CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.long CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.long CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.long GetOffsetAlign__Q34nw4r2ut8IOStreamCFv
	.long GetSizeAlign__Q34nw4r2ut8IOStreamCFv
	.long GetBufferAlign__Q34nw4r2ut8IOStreamCFv
	.long GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.long Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl
	.long Cancel__Q34nw4r2ut10FileStreamFv
	.long CancelAsync__Q34nw4r2ut10FileStreamFPFlPQ34nw4r2ut8IOStreamPv_vPv
	.long CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.long CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.long Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv

.balign 0x8

.global __vt__Q34nw4r3snd18MemorySoundArchive
__vt__Q34nw4r3snd18MemorySoundArchive:
	.long 0
	.long 0
	.long __dt__Q34nw4r3snd18MemorySoundArchiveFv
	.long detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
	.long detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
	.long detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv
	.long OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl
	.long OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl

.section .text, "ax"  # 0x800076E0 - 0x80355080 

.global __ct__Q34nw4r3snd18MemorySoundArchiveFv
__ct__Q34nw4r3snd18MemorySoundArchiveFv:
/* 8003B438 00036338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B43C 0003633C  7C 08 02 A6 */	mflr r0
/* 8003B440 00036340  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B444 00036344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B448 00036348  7C 7F 1B 78 */	mr r31, r3
/* 8003B44C 0003634C  48 00 68 C5 */	bl __ct__Q34nw4r3snd12SoundArchiveFv
/* 8003B450 00036350  3C 80 80 39 */	lis r4, __vt__Q34nw4r3snd18MemorySoundArchive@ha
/* 8003B454 00036354  38 00 00 00 */	li r0, 0
/* 8003B458 00036358  38 84 5D F8 */	addi r4, r4, __vt__Q34nw4r3snd18MemorySoundArchive@l
/* 8003B45C 0003635C  90 1F 01 08 */	stw r0, 0x108(r31)
/* 8003B460 00036360  38 7F 01 0C */	addi r3, r31, 0x10c
/* 8003B464 00036364  90 9F 00 00 */	stw r4, 0(r31)
/* 8003B468 00036368  48 00 6E C9 */	bl __ct__Q44nw4r3snd6detail22SoundArchiveFileReaderFv
/* 8003B46C 0003636C  7F E3 FB 78 */	mr r3, r31
/* 8003B470 00036370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B474 00036374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B478 00036378  7C 08 03 A6 */	mtlr r0
/* 8003B47C 0003637C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B480 00036380  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3snd18MemorySoundArchiveFv
__dt__Q34nw4r3snd18MemorySoundArchiveFv:
/* 8003B484 00036384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B488 00036388  7C 08 02 A6 */	mflr r0
/* 8003B48C 0003638C  2C 03 00 00 */	cmpwi r3, 0
/* 8003B490 00036390  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B494 00036394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B498 00036398  7C 9F 23 78 */	mr r31, r4
/* 8003B49C 0003639C  93 C1 00 08 */	stw r30, 8(r1)
/* 8003B4A0 000363A0  7C 7E 1B 78 */	mr r30, r3
/* 8003B4A4 000363A4  41 82 00 1C */	beq lbl_8003B4C0
/* 8003B4A8 000363A8  38 80 00 00 */	li r4, 0
/* 8003B4AC 000363AC  48 00 68 89 */	bl __dt__Q34nw4r3snd12SoundArchiveFv
/* 8003B4B0 000363B0  2C 1F 00 00 */	cmpwi r31, 0
/* 8003B4B4 000363B4  40 81 00 0C */	ble lbl_8003B4C0
/* 8003B4B8 000363B8  7F C3 F3 78 */	mr r3, r30
/* 8003B4BC 000363BC  48 06 7D C9 */	bl __dl__FPv
lbl_8003B4C0:
/* 8003B4C0 000363C0  7F C3 F3 78 */	mr r3, r30
/* 8003B4C4 000363C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B4C8 000363C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003B4CC 000363CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B4D0 000363D0  7C 08 03 A6 */	mtlr r0
/* 8003B4D4 000363D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B4D8 000363D8  4E 80 00 20 */	blr 

.global Setup__Q34nw4r3snd18MemorySoundArchiveFPCv
Setup__Q34nw4r3snd18MemorySoundArchiveFPCv:
/* 8003B4DC 000363DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B4E0 000363E0  7C 08 02 A6 */	mflr r0
/* 8003B4E4 000363E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B4E8 000363E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B4EC 000363EC  7C 9F 23 78 */	mr r31, r4
/* 8003B4F0 000363F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8003B4F4 000363F4  7C 7E 1B 78 */	mr r30, r3
/* 8003B4F8 000363F8  38 63 01 0C */	addi r3, r3, 0x10c
/* 8003B4FC 000363FC  48 00 6E 59 */	bl Init__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCv
/* 8003B500 00036400  7F C3 F3 78 */	mr r3, r30
/* 8003B504 00036404  38 9E 01 0C */	addi r4, r30, 0x10c
/* 8003B508 00036408  48 00 68 81 */	bl Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader
/* 8003B50C 0003640C  80 1E 01 24 */	lwz r0, 0x124(r30)
/* 8003B510 00036410  38 7E 01 0C */	addi r3, r30, 0x10c
/* 8003B514 00036414  80 BE 01 28 */	lwz r5, 0x128(r30)
/* 8003B518 00036418  7C 80 FA 14 */	add r4, r0, r31
/* 8003B51C 0003641C  48 00 6F 91 */	bl SetInfoChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 8003B520 00036420  80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 8003B524 00036424  38 7E 01 0C */	addi r3, r30, 0x10c
/* 8003B528 00036428  80 BE 01 20 */	lwz r5, 0x120(r30)
/* 8003B52C 0003642C  7C 80 FA 14 */	add r4, r0, r31
/* 8003B530 00036430  48 00 6E D5 */	bl SetStringChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 8003B534 00036434  93 FE 01 08 */	stw r31, 0x108(r30)
/* 8003B538 00036438  38 60 00 01 */	li r3, 1
/* 8003B53C 0003643C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B540 00036440  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003B544 00036444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B548 00036448  7C 08 03 A6 */	mtlr r0
/* 8003B54C 0003644C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B550 00036450  4E 80 00 20 */	blr 

.global Shutdown__Q34nw4r3snd18MemorySoundArchiveFv
Shutdown__Q34nw4r3snd18MemorySoundArchiveFv:
/* 8003B554 00036454  38 00 00 00 */	li r0, 0
/* 8003B558 00036458  90 03 01 08 */	stw r0, 0x108(r3)
/* 8003B55C 0003645C  48 00 68 34 */	b Shutdown__Q34nw4r3snd12SoundArchiveFv

.global detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl:
/* 8003B560 00036460  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8003B564 00036464  7C 08 02 A6 */	mflr r0
/* 8003B568 00036468  38 A0 00 00 */	li r5, 0
/* 8003B56C 0003646C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003B570 00036470  38 C1 00 08 */	addi r6, r1, 8
/* 8003B574 00036474  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8003B578 00036478  7C 7F 1B 78 */	mr r31, r3
/* 8003B57C 0003647C  48 00 68 DD */	bl detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 8003B580 00036480  2C 03 00 00 */	cmpwi r3, 0
/* 8003B584 00036484  40 82 00 0C */	bne lbl_8003B590
/* 8003B588 00036488  38 60 00 00 */	li r3, 0
/* 8003B58C 0003648C  48 00 00 70 */	b lbl_8003B5FC
lbl_8003B590:
/* 8003B590 00036490  80 81 00 08 */	lwz r4, 8(r1)
/* 8003B594 00036494  7F E3 FB 78 */	mr r3, r31
/* 8003B598 00036498  38 A1 00 28 */	addi r5, r1, 0x28
/* 8003B59C 0003649C  48 00 68 A5 */	bl detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 8003B5A0 000364A0  2C 03 00 00 */	cmpwi r3, 0
/* 8003B5A4 000364A4  40 82 00 0C */	bne lbl_8003B5B0
/* 8003B5A8 000364A8  38 60 00 00 */	li r3, 0
/* 8003B5AC 000364AC  48 00 00 50 */	b lbl_8003B5FC
lbl_8003B5B0:
/* 8003B5B0 000364B0  80 81 00 08 */	lwz r4, 8(r1)
/* 8003B5B4 000364B4  7F E3 FB 78 */	mr r3, r31
/* 8003B5B8 000364B8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8003B5BC 000364BC  38 C1 00 10 */	addi r6, r1, 0x10
/* 8003B5C0 000364C0  48 00 68 89 */	bl detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 8003B5C4 000364C4  2C 03 00 00 */	cmpwi r3, 0
/* 8003B5C8 000364C8  40 82 00 0C */	bne lbl_8003B5D4
/* 8003B5CC 000364CC  38 60 00 00 */	li r3, 0
/* 8003B5D0 000364D0  48 00 00 2C */	b lbl_8003B5FC
lbl_8003B5D4:
/* 8003B5D4 000364D4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8003B5D8 000364D8  2C 00 00 00 */	cmpwi r0, 0
/* 8003B5DC 000364DC  41 82 00 0C */	beq lbl_8003B5E8
/* 8003B5E0 000364E0  38 60 00 00 */	li r3, 0
/* 8003B5E4 000364E4  48 00 00 18 */	b lbl_8003B5FC
lbl_8003B5E8:
/* 8003B5E8 000364E8  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8003B5EC 000364EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B5F0 000364F0  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 8003B5F4 000364F4  7C 04 02 14 */	add r0, r4, r0
/* 8003B5F8 000364F8  7C 63 02 14 */	add r3, r3, r0
lbl_8003B5FC:
/* 8003B5FC 000364FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8003B600 00036500  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8003B604 00036504  7C 08 03 A6 */	mtlr r0
/* 8003B608 00036508  38 21 00 50 */	addi r1, r1, 0x50
/* 8003B60C 0003650C  4E 80 00 20 */	blr 

.global detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl:
/* 8003B610 00036510  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8003B614 00036514  7C 08 02 A6 */	mflr r0
/* 8003B618 00036518  38 A0 00 00 */	li r5, 0
/* 8003B61C 0003651C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003B620 00036520  38 C1 00 08 */	addi r6, r1, 8
/* 8003B624 00036524  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8003B628 00036528  7C 7F 1B 78 */	mr r31, r3
/* 8003B62C 0003652C  48 00 68 2D */	bl detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 8003B630 00036530  2C 03 00 00 */	cmpwi r3, 0
/* 8003B634 00036534  40 82 00 0C */	bne lbl_8003B640
/* 8003B638 00036538  38 60 00 00 */	li r3, 0
/* 8003B63C 0003653C  48 00 00 70 */	b lbl_8003B6AC
lbl_8003B640:
/* 8003B640 00036540  80 81 00 08 */	lwz r4, 8(r1)
/* 8003B644 00036544  7F E3 FB 78 */	mr r3, r31
/* 8003B648 00036548  38 A1 00 28 */	addi r5, r1, 0x28
/* 8003B64C 0003654C  48 00 67 F5 */	bl detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 8003B650 00036550  2C 03 00 00 */	cmpwi r3, 0
/* 8003B654 00036554  40 82 00 0C */	bne lbl_8003B660
/* 8003B658 00036558  38 60 00 00 */	li r3, 0
/* 8003B65C 0003655C  48 00 00 50 */	b lbl_8003B6AC
lbl_8003B660:
/* 8003B660 00036560  80 81 00 08 */	lwz r4, 8(r1)
/* 8003B664 00036564  7F E3 FB 78 */	mr r3, r31
/* 8003B668 00036568  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8003B66C 0003656C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8003B670 00036570  48 00 67 D9 */	bl detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 8003B674 00036574  2C 03 00 00 */	cmpwi r3, 0
/* 8003B678 00036578  40 82 00 0C */	bne lbl_8003B684
/* 8003B67C 0003657C  38 60 00 00 */	li r3, 0
/* 8003B680 00036580  48 00 00 2C */	b lbl_8003B6AC
lbl_8003B684:
/* 8003B684 00036584  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8003B688 00036588  2C 00 00 00 */	cmpwi r0, 0
/* 8003B68C 0003658C  41 82 00 0C */	beq lbl_8003B698
/* 8003B690 00036590  38 60 00 00 */	li r3, 0
/* 8003B694 00036594  48 00 00 18 */	b lbl_8003B6AC
lbl_8003B698:
/* 8003B698 00036598  80 81 00 38 */	lwz r4, 0x38(r1)
/* 8003B69C 0003659C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003B6A0 000365A0  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 8003B6A4 000365A4  7C 04 02 14 */	add r0, r4, r0
/* 8003B6A8 000365A8  7C 63 02 14 */	add r3, r3, r0
lbl_8003B6AC:
/* 8003B6AC 000365AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8003B6B0 000365B0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8003B6B4 000365B4  7C 08 03 A6 */	mtlr r0
/* 8003B6B8 000365B8  38 21 00 50 */	addi r1, r1, 0x50
/* 8003B6BC 000365BC  4E 80 00 20 */	blr 

.global OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl
OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl:
/* 8003B6C0 000365C0  80 03 01 08 */	lwz r0, 0x108(r3)
/* 8003B6C4 000365C4  2C 00 00 00 */	cmpwi r0, 0
/* 8003B6C8 000365C8  40 82 00 0C */	bne lbl_8003B6D4
/* 8003B6CC 000365CC  38 60 00 00 */	li r3, 0
/* 8003B6D0 000365D0  4E 80 00 20 */	blr 
lbl_8003B6D4:
/* 8003B6D4 000365D4  28 05 00 20 */	cmplwi r5, 0x20
/* 8003B6D8 000365D8  40 80 00 0C */	bge lbl_8003B6E4
/* 8003B6DC 000365DC  38 60 00 00 */	li r3, 0
/* 8003B6E0 000365E0  4E 80 00 20 */	blr 
lbl_8003B6E4:
/* 8003B6E4 000365E4  2C 04 00 00 */	cmpwi r4, 0
/* 8003B6E8 000365E8  7C 83 23 78 */	mr r3, r4
/* 8003B6EC 000365EC  4D 82 00 20 */	beqlr 
/* 8003B6F0 000365F0  3C A0 80 39 */	lis r5, __vt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStream@ha
/* 8003B6F4 000365F4  39 00 00 00 */	li r8, 0
/* 8003B6F8 000365F8  38 A5 5D 98 */	addi r5, r5, __vt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStream@l
/* 8003B6FC 000365FC  7C 06 02 14 */	add r0, r6, r0
/* 8003B700 00036600  99 04 00 04 */	stb r8, 4(r4)
/* 8003B704 00036604  91 04 00 0C */	stw r8, 0xc(r4)
/* 8003B708 00036608  91 04 00 10 */	stw r8, 0x10(r4)
/* 8003B70C 0003660C  90 A4 00 00 */	stw r5, 0(r4)
/* 8003B710 00036610  90 04 00 14 */	stw r0, 0x14(r4)
/* 8003B714 00036614  90 E4 00 18 */	stw r7, 0x18(r4)
/* 8003B718 00036618  91 04 00 1C */	stw r8, 0x1c(r4)
/* 8003B71C 0003661C  4E 80 00 20 */	blr 

.global OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl
OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl:
/* 8003B720 00036620  38 60 00 00 */	li r3, 0
/* 8003B724 00036624  4E 80 00 20 */	blr 

.global detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv
detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv:
/* 8003B728 00036628  38 60 00 20 */	li r3, 0x20
/* 8003B72C 0003662C  4E 80 00 20 */	blr 

.global Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv:
/* 8003B730 00036630  38 00 00 00 */	li r0, 0
/* 8003B734 00036634  90 03 00 14 */	stw r0, 0x14(r3)
/* 8003B738 00036638  90 03 00 18 */	stw r0, 0x18(r3)
/* 8003B73C 0003663C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8003B740 00036640  4E 80 00 20 */	blr 

.global Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl
Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl:
/* 8003B744 00036644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B748 00036648  7C 08 02 A6 */	mflr r0
/* 8003B74C 0003664C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B750 00036650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B754 00036654  7C BF 2B 78 */	mr r31, r5
/* 8003B758 00036658  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 8003B75C 0003665C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8003B760 00036660  7C 06 00 50 */	subf r0, r6, r0
/* 8003B764 00036664  7C 05 00 40 */	cmplw r5, r0
/* 8003B768 00036668  40 81 00 08 */	ble lbl_8003B770
/* 8003B76C 0003666C  7C 1F 03 78 */	mr r31, r0
lbl_8003B770:
/* 8003B770 00036670  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8003B774 00036674  7C 83 23 78 */	mr r3, r4
/* 8003B778 00036678  7F E5 FB 78 */	mr r5, r31
/* 8003B77C 0003667C  7C 86 02 14 */	add r4, r6, r0
/* 8003B780 00036680  4B FC 88 81 */	bl memcpy
/* 8003B784 00036684  7F E3 FB 78 */	mr r3, r31
/* 8003B788 00036688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B78C 0003668C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B790 00036690  7C 08 03 A6 */	mtlr r0
/* 8003B794 00036694  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B798 00036698  4E 80 00 20 */	blr 

.global Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl
Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl:
/* 8003B79C 0003669C  2C 05 00 01 */	cmpwi r5, 1
/* 8003B7A0 000366A0  41 82 00 28 */	beq lbl_8003B7C8
/* 8003B7A4 000366A4  40 80 00 10 */	bge lbl_8003B7B4
/* 8003B7A8 000366A8  2C 05 00 00 */	cmpwi r5, 0
/* 8003B7AC 000366AC  40 80 00 14 */	bge lbl_8003B7C0
/* 8003B7B0 000366B0  4E 80 00 20 */	blr 
lbl_8003B7B4:
/* 8003B7B4 000366B4  2C 05 00 03 */	cmpwi r5, 3
/* 8003B7B8 000366B8  4C 80 00 20 */	bgelr 
/* 8003B7BC 000366BC  48 00 00 1C */	b lbl_8003B7D8
lbl_8003B7C0:
/* 8003B7C0 000366C0  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8003B7C4 000366C4  4E 80 00 20 */	blr 
lbl_8003B7C8:
/* 8003B7C8 000366C8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8003B7CC 000366CC  7C 00 22 14 */	add r0, r0, r4
/* 8003B7D0 000366D0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8003B7D4 000366D4  4E 80 00 20 */	blr 
lbl_8003B7D8:
/* 8003B7D8 000366D8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8003B7DC 000366DC  7C 04 00 50 */	subf r0, r4, r0
/* 8003B7E0 000366E0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8003B7E4 000366E4  4E 80 00 20 */	blr 
/* 8003B7E8 000366E8  4E 80 00 20 */	blr 

.global GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8003B7EC 000366EC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8003B7F0 000366F0  4E 80 00 20 */	blr 

.global Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8003B7F4 000366F4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8003B7F8 000366F8  4E 80 00 20 */	blr 

.global CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8003B7FC 000366FC  38 60 00 00 */	li r3, 0
/* 8003B800 00036700  4E 80 00 20 */	blr 

.global CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8003B804 00036704  38 60 00 01 */	li r3, 1
/* 8003B808 00036708  4E 80 00 20 */	blr 

.global CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8003B80C 0003670C  38 60 00 00 */	li r3, 0
/* 8003B810 00036710  4E 80 00 20 */	blr 

.global CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8003B814 00036714  38 60 00 01 */	li r3, 1
/* 8003B818 00036718  4E 80 00 20 */	blr 

.global CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8003B81C 0003671C  38 60 00 01 */	li r3, 1
/* 8003B820 00036720  4E 80 00 20 */	blr 

.global __dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
__dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv:
/* 8003B824 00036724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B828 00036728  7C 08 02 A6 */	mflr r0
/* 8003B82C 0003672C  2C 03 00 00 */	cmpwi r3, 0
/* 8003B830 00036730  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B834 00036734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B838 00036738  7C 7F 1B 78 */	mr r31, r3
/* 8003B83C 0003673C  41 82 00 10 */	beq lbl_8003B84C
/* 8003B840 00036740  2C 04 00 00 */	cmpwi r4, 0
/* 8003B844 00036744  40 81 00 08 */	ble lbl_8003B84C
/* 8003B848 00036748  48 06 7A 3D */	bl __dl__FPv
lbl_8003B84C:
/* 8003B84C 0003674C  7F E3 FB 78 */	mr r3, r31
/* 8003B850 00036750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B854 00036754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B858 00036758  7C 08 03 A6 */	mtlr r0
/* 8003B85C 0003675C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B860 00036760  4E 80 00 20 */	blr 
