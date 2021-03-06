.include "macros.inc"

.section .text, "ax"  # 0x800076E0 - 0x80355080 

.global __ct__Q34nw4r3snd12SoundArchiveFv
__ct__Q34nw4r3snd12SoundArchiveFv:
/* 80041D10 0003CC10  3C A0 80 39 */	lis r5, lbl_80396270@ha
/* 80041D14 0003CC14  38 80 00 00 */	li r4, 0
/* 80041D18 0003CC18  38 A5 62 70 */	addi r5, r5, lbl_80396270@l
/* 80041D1C 0003CC1C  38 00 00 2F */	li r0, 0x2f
/* 80041D20 0003CC20  90 A3 00 00 */	stw r5, 0(r3)
/* 80041D24 0003CC24  90 83 00 04 */	stw r4, 4(r3)
/* 80041D28 0003CC28  98 03 00 08 */	stb r0, 8(r3)
/* 80041D2C 0003CC2C  98 83 00 09 */	stb r4, 9(r3)
/* 80041D30 0003CC30  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3snd12SoundArchiveFv
__dt__Q34nw4r3snd12SoundArchiveFv:
/* 80041D34 0003CC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80041D38 0003CC38  7C 08 02 A6 */	mflr r0
/* 80041D3C 0003CC3C  2C 03 00 00 */	cmpwi r3, 0
/* 80041D40 0003CC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80041D44 0003CC44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80041D48 0003CC48  7C 7F 1B 78 */	mr r31, r3
/* 80041D4C 0003CC4C  41 82 00 10 */	beq lbl_80041D5C
/* 80041D50 0003CC50  2C 04 00 00 */	cmpwi r4, 0
/* 80041D54 0003CC54  40 81 00 08 */	ble lbl_80041D5C
/* 80041D58 0003CC58  48 06 15 2D */	bl __dl__FPv
lbl_80041D5C:
/* 80041D5C 0003CC5C  7F E3 FB 78 */	mr r3, r31
/* 80041D60 0003CC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80041D64 0003CC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80041D68 0003CC68  7C 08 03 A6 */	mtlr r0
/* 80041D6C 0003CC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80041D70 0003CC70  4E 80 00 20 */	blr 

.global IsAvailable__Q34nw4r3snd12SoundArchiveCFv
IsAvailable__Q34nw4r3snd12SoundArchiveCFv:
/* 80041D74 0003CC74  80 63 00 04 */	lwz r3, 4(r3)
/* 80041D78 0003CC78  7C 03 00 D0 */	neg r0, r3
/* 80041D7C 0003CC7C  7C 00 1B 78 */	or r0, r0, r3
/* 80041D80 0003CC80  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80041D84 0003CC84  4E 80 00 20 */	blr 

.global Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader
Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader:
/* 80041D88 0003CC88  90 83 00 04 */	stw r4, 4(r3)
/* 80041D8C 0003CC8C  4E 80 00 20 */	blr 

.global Shutdown__Q34nw4r3snd12SoundArchiveFv
Shutdown__Q34nw4r3snd12SoundArchiveFv:
/* 80041D90 0003CC90  38 80 00 00 */	li r4, 0
/* 80041D94 0003CC94  38 00 00 2F */	li r0, 0x2f
/* 80041D98 0003CC98  90 83 00 04 */	stw r4, 4(r3)
/* 80041D9C 0003CC9C  98 03 00 08 */	stb r0, 8(r3)
/* 80041DA0 0003CCA0  98 83 00 09 */	stb r4, 9(r3)
/* 80041DA4 0003CCA4  4E 80 00 20 */	blr 

.global GetPlayerCount__Q34nw4r3snd12SoundArchiveCFv
GetPlayerCount__Q34nw4r3snd12SoundArchiveCFv:
/* 80041DA8 0003CCA8  80 63 00 04 */	lwz r3, 4(r3)
/* 80041DAC 0003CCAC  48 00 0F E4 */	b GetPlayerCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv

.global GetGroupCount__Q34nw4r3snd12SoundArchiveCFv
GetGroupCount__Q34nw4r3snd12SoundArchiveCFv:
/* 80041DB0 0003CCB0  80 63 00 04 */	lwz r3, 4(r3)
/* 80041DB4 0003CCB4  48 00 10 1C */	b GetGroupCount__Q44nw4r3snd6detail22SoundArchiveFileReaderCFv

.global GetSoundLabelString__Q34nw4r3snd12SoundArchiveCFUl
GetSoundLabelString__Q34nw4r3snd12SoundArchiveCFUl:
/* 80041DB8 0003CCB8  80 63 00 04 */	lwz r3, 4(r3)
/* 80041DBC 0003CCBC  48 00 10 58 */	b GetSoundLabelString__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl

.global ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc
ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc:
/* 80041DC0 0003CCC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80041DC4 0003CCC4  7C 85 23 78 */	mr r5, r4
/* 80041DC8 0003CCC8  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80041DCC 0003CCCC  48 00 14 24 */	b ConvertLabelStringToId__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPCQ54nw4r3snd6detail16SoundArchiveFile10StringTreePCc

.global ConvertLabelStringToPlayerId__Q34nw4r3snd12SoundArchiveCFPCc
ConvertLabelStringToPlayerId__Q34nw4r3snd12SoundArchiveCFPCc:
/* 80041DD0 0003CCD0  80 63 00 04 */	lwz r3, 4(r3)
/* 80041DD4 0003CCD4  7C 85 23 78 */	mr r5, r4
/* 80041DD8 0003CCD8  80 83 00 38 */	lwz r4, 0x38(r3)
/* 80041DDC 0003CCDC  48 00 14 14 */	b ConvertLabelStringToId__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPCQ54nw4r3snd6detail16SoundArchiveFile10StringTreePCc

.global ConvertLabelStringToGroupId__Q34nw4r3snd12SoundArchiveCFPCc
ConvertLabelStringToGroupId__Q34nw4r3snd12SoundArchiveCFPCc:
/* 80041DE0 0003CCE0  80 63 00 04 */	lwz r3, 4(r3)
/* 80041DE4 0003CCE4  7C 85 23 78 */	mr r5, r4
/* 80041DE8 0003CCE8  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 80041DEC 0003CCEC  48 00 14 04 */	b ConvertLabelStringToId__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPCQ54nw4r3snd6detail16SoundArchiveFile10StringTreePCc

.global GetSoundUserParam__Q34nw4r3snd12SoundArchiveCFUl
GetSoundUserParam__Q34nw4r3snd12SoundArchiveCFUl:
/* 80041DF0 0003CCF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80041DF4 0003CCF4  48 00 11 24 */	b GetSoundUserParam__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl

.global GetSoundType__Q34nw4r3snd12SoundArchiveCFUl
GetSoundType__Q34nw4r3snd12SoundArchiveCFUl:
/* 80041DF8 0003CCF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80041DFC 0003CCFC  48 00 06 BC */	b GetSoundType__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUl

.global ReadSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9SoundInfo
ReadSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9SoundInfo:
/* 80041E00 0003CD00  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E04 0003CD04  48 00 07 A4 */	b ReadSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9SoundInfo

.global detail_ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo
detail_ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo:
/* 80041E08 0003CD08  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E0C 0003CD0C  48 00 09 C0 */	b ReadSeqSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo

.global detail_ReadStrmSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo
detail_ReadStrmSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo:
/* 80041E10 0003CD10  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E14 0003CD14  48 00 0A 64 */	b ReadStrmSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo

.global detail_ReadWaveSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo
detail_ReadWaveSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo:
/* 80041E18 0003CD18  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E1C 0003CD1C  48 00 0A A8 */	b ReadWaveSoundInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo

.global ReadPlayerInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo
ReadPlayerInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo:
/* 80041E20 0003CD20  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E24 0003CD24  48 00 0B E8 */	b ReadPlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo

.global ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo
ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo:
/* 80041E28 0003CD28  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E2C 0003CD2C  48 00 0E E0 */	b ReadSoundArchivePlayerInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo

.global detail_ReadSound3DParam__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12Sound3DParam
detail_ReadSound3DParam__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12Sound3DParam:
/* 80041E30 0003CD30  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E34 0003CD34  48 00 08 94 */	b ReadSound3DParam__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive12Sound3DParam

.global detail_ReadBankInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8BankInfo
detail_ReadBankInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8BankInfo:
/* 80041E38 0003CD38  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E3C 0003CD3C  48 00 0B 24 */	b ReadBankInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8BankInfo

.global detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo:
/* 80041E40 0003CD40  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E44 0003CD44  48 00 0C 80 */	b ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo

.global detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo:
/* 80041E48 0003CD48  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E4C 0003CD4C  48 00 0D 88 */	b ReadGroupItemInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo

.global detail_ReadFileInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8FileInfo
detail_ReadFileInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8FileInfo:
/* 80041E50 0003CD50  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E54 0003CD54  48 00 11 7C */	b ReadFileInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8FileInfo

.global detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos:
/* 80041E58 0003CD58  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E5C 0003CD5C  48 00 12 74 */	b ReadFilePos__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive7FilePos

.global detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi
detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi:
/* 80041E60 0003CD60  94 21 FD 90 */	stwu r1, -0x270(r1)
/* 80041E64 0003CD64  7C 08 02 A6 */	mflr r0
/* 80041E68 0003CD68  90 01 02 74 */	stw r0, 0x274(r1)
/* 80041E6C 0003CD6C  39 61 02 70 */	addi r11, r1, 0x270
/* 80041E70 0003CD70  48 06 FE CD */	bl _savegpr_25
/* 80041E74 0003CD74  7C 7D 1B 78 */	mr r29, r3
/* 80041E78 0003CD78  80 63 00 04 */	lwz r3, 4(r3)
/* 80041E7C 0003CD7C  7C BE 2B 78 */	mr r30, r5
/* 80041E80 0003CD80  7C 99 23 78 */	mr r25, r4
/* 80041E84 0003CD84  7C DF 33 78 */	mr r31, r6
/* 80041E88 0003CD88  38 A1 00 10 */	addi r5, r1, 0x10
/* 80041E8C 0003CD8C  48 00 11 45 */	bl ReadFileInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive8FileInfo
/* 80041E90 0003CD90  2C 03 00 00 */	cmpwi r3, 0
/* 80041E94 0003CD94  40 82 00 0C */	bne lbl_80041EA0
/* 80041E98 0003CD98  38 60 00 00 */	li r3, 0
/* 80041E9C 0003CD9C  48 00 01 D0 */	b lbl_8004206C
lbl_80041EA0:
/* 80041EA0 0003CDA0  83 61 00 18 */	lwz r27, 0x18(r1)
/* 80041EA4 0003CDA4  2C 1B 00 00 */	cmpwi r27, 0
/* 80041EA8 0003CDA8  41 82 00 90 */	beq lbl_80041F38
/* 80041EAC 0003CDAC  88 1B 00 00 */	lbz r0, 0(r27)
/* 80041EB0 0003CDB0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80041EB4 0003CDB4  40 82 00 08 */	bne lbl_80041EBC
/* 80041EB8 0003CDB8  48 00 00 54 */	b lbl_80041F0C
lbl_80041EBC:
/* 80041EBC 0003CDBC  7F 63 DB 78 */	mr r3, r27
/* 80041EC0 0003CDC0  48 06 F8 91 */	bl strlen
/* 80041EC4 0003CDC4  7C 7C 1B 78 */	mr r28, r3
/* 80041EC8 0003CDC8  38 7D 00 08 */	addi r3, r29, 8
/* 80041ECC 0003CDCC  48 06 F8 85 */	bl strlen
/* 80041ED0 0003CDD0  7C 1C 1A 14 */	add r0, r28, r3
/* 80041ED4 0003CDD4  7C 65 1B 78 */	mr r5, r3
/* 80041ED8 0003CDD8  28 00 01 00 */	cmplwi r0, 0x100
/* 80041EDC 0003CDDC  41 80 00 0C */	blt lbl_80041EE8
/* 80041EE0 0003CDE0  38 60 00 00 */	li r3, 0
/* 80041EE4 0003CDE4  48 00 01 88 */	b lbl_8004206C
lbl_80041EE8:
/* 80041EE8 0003CDE8  38 61 01 50 */	addi r3, r1, 0x150
/* 80041EEC 0003CDEC  38 9D 00 08 */	addi r4, r29, 8
/* 80041EF0 0003CDF0  38 A5 00 01 */	addi r5, r5, 1
/* 80041EF4 0003CDF4  48 07 6E 01 */	bl strncpy
/* 80041EF8 0003CDF8  7F 64 DB 78 */	mr r4, r27
/* 80041EFC 0003CDFC  38 61 01 50 */	addi r3, r1, 0x150
/* 80041F00 0003CE00  38 BC 00 01 */	addi r5, r28, 1
/* 80041F04 0003CE04  48 07 6E 61 */	bl strncat
/* 80041F08 0003CE08  3B 61 01 50 */	addi r27, r1, 0x150
lbl_80041F0C:
/* 80041F0C 0003CE0C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80041F10 0003CE10  7F A3 EB 78 */	mr r3, r29
/* 80041F14 0003CE14  7F C4 F3 78 */	mr r4, r30
/* 80041F18 0003CE18  7F E5 FB 78 */	mr r5, r31
/* 80041F1C 0003CE1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80041F20 0003CE20  7F 66 DB 78 */	mr r6, r27
/* 80041F24 0003CE24  38 E0 00 00 */	li r7, 0
/* 80041F28 0003CE28  39 00 00 00 */	li r8, 0
/* 80041F2C 0003CE2C  7D 89 03 A6 */	mtctr r12
/* 80041F30 0003CE30  4E 80 04 21 */	bctrl 
/* 80041F34 0003CE34  48 00 01 38 */	b lbl_8004206C
lbl_80041F38:
/* 80041F38 0003CE38  80 7D 00 04 */	lwz r3, 4(r29)
/* 80041F3C 0003CE3C  7F 24 CB 78 */	mr r4, r25
/* 80041F40 0003CE40  38 C1 00 08 */	addi r6, r1, 8
/* 80041F44 0003CE44  38 A0 00 00 */	li r5, 0
/* 80041F48 0003CE48  48 00 11 89 */	bl ReadFilePos__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 80041F4C 0003CE4C  2C 03 00 00 */	cmpwi r3, 0
/* 80041F50 0003CE50  40 82 00 0C */	bne lbl_80041F5C
/* 80041F54 0003CE54  38 60 00 00 */	li r3, 0
/* 80041F58 0003CE58  48 00 01 14 */	b lbl_8004206C
lbl_80041F5C:
/* 80041F5C 0003CE5C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80041F60 0003CE60  38 A1 00 38 */	addi r5, r1, 0x38
/* 80041F64 0003CE64  80 81 00 08 */	lwz r4, 8(r1)
/* 80041F68 0003CE68  48 00 0B 5D */	bl ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 80041F6C 0003CE6C  2C 03 00 00 */	cmpwi r3, 0
/* 80041F70 0003CE70  40 82 00 0C */	bne lbl_80041F7C
/* 80041F74 0003CE74  38 60 00 00 */	li r3, 0
/* 80041F78 0003CE78  48 00 00 F4 */	b lbl_8004206C
lbl_80041F7C:
/* 80041F7C 0003CE7C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80041F80 0003CE80  38 C1 00 20 */	addi r6, r1, 0x20
/* 80041F84 0003CE84  80 81 00 08 */	lwz r4, 8(r1)
/* 80041F88 0003CE88  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80041F8C 0003CE8C  48 00 0C 49 */	bl ReadGroupItemInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 80041F90 0003CE90  2C 03 00 00 */	cmpwi r3, 0
/* 80041F94 0003CE94  40 82 00 0C */	bne lbl_80041FA0
/* 80041F98 0003CE98  38 60 00 00 */	li r3, 0
/* 80041F9C 0003CE9C  48 00 00 D0 */	b lbl_8004206C
lbl_80041FA0:
/* 80041FA0 0003CEA0  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 80041FA4 0003CEA4  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80041FA8 0003CEA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80041FAC 0003CEAC  2C 1B 00 00 */	cmpwi r27, 0
/* 80041FB0 0003CEB0  83 21 00 28 */	lwz r25, 0x28(r1)
/* 80041FB4 0003CEB4  7F 43 02 14 */	add r26, r3, r0
/* 80041FB8 0003CEB8  41 82 00 90 */	beq lbl_80042048
/* 80041FBC 0003CEBC  88 1B 00 00 */	lbz r0, 0(r27)
/* 80041FC0 0003CEC0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80041FC4 0003CEC4  40 82 00 08 */	bne lbl_80041FCC
/* 80041FC8 0003CEC8  48 00 00 54 */	b lbl_8004201C
lbl_80041FCC:
/* 80041FCC 0003CECC  7F 63 DB 78 */	mr r3, r27
/* 80041FD0 0003CED0  48 06 F7 81 */	bl strlen
/* 80041FD4 0003CED4  7C 7C 1B 78 */	mr r28, r3
/* 80041FD8 0003CED8  38 7D 00 08 */	addi r3, r29, 8
/* 80041FDC 0003CEDC  48 06 F7 75 */	bl strlen
/* 80041FE0 0003CEE0  7C 1C 1A 14 */	add r0, r28, r3
/* 80041FE4 0003CEE4  7C 65 1B 78 */	mr r5, r3
/* 80041FE8 0003CEE8  28 00 01 00 */	cmplwi r0, 0x100
/* 80041FEC 0003CEEC  41 80 00 0C */	blt lbl_80041FF8
/* 80041FF0 0003CEF0  38 60 00 00 */	li r3, 0
/* 80041FF4 0003CEF4  48 00 00 78 */	b lbl_8004206C
lbl_80041FF8:
/* 80041FF8 0003CEF8  38 61 00 50 */	addi r3, r1, 0x50
/* 80041FFC 0003CEFC  38 9D 00 08 */	addi r4, r29, 8
/* 80042000 0003CF00  38 A5 00 01 */	addi r5, r5, 1
/* 80042004 0003CF04  48 07 6C F1 */	bl strncpy
/* 80042008 0003CF08  7F 64 DB 78 */	mr r4, r27
/* 8004200C 0003CF0C  38 61 00 50 */	addi r3, r1, 0x50
/* 80042010 0003CF10  38 BC 00 01 */	addi r5, r28, 1
/* 80042014 0003CF14  48 07 6D 51 */	bl strncat
/* 80042018 0003CF18  3B 61 00 50 */	addi r27, r1, 0x50
lbl_8004201C:
/* 8004201C 0003CF1C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80042020 0003CF20  7F A3 EB 78 */	mr r3, r29
/* 80042024 0003CF24  7F C4 F3 78 */	mr r4, r30
/* 80042028 0003CF28  7F E5 FB 78 */	mr r5, r31
/* 8004202C 0003CF2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80042030 0003CF30  7F 66 DB 78 */	mr r6, r27
/* 80042034 0003CF34  7F 47 D3 78 */	mr r7, r26
/* 80042038 0003CF38  7F 28 CB 78 */	mr r8, r25
/* 8004203C 0003CF3C  7D 89 03 A6 */	mtctr r12
/* 80042040 0003CF40  4E 80 04 21 */	bctrl 
/* 80042044 0003CF44  48 00 00 28 */	b lbl_8004206C
lbl_80042048:
/* 80042048 0003CF48  81 9D 00 00 */	lwz r12, 0(r29)
/* 8004204C 0003CF4C  7F A3 EB 78 */	mr r3, r29
/* 80042050 0003CF50  7F C4 F3 78 */	mr r4, r30
/* 80042054 0003CF54  7F E5 FB 78 */	mr r5, r31
/* 80042058 0003CF58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8004205C 0003CF5C  7F 46 D3 78 */	mr r6, r26
/* 80042060 0003CF60  7F 27 CB 78 */	mr r7, r25
/* 80042064 0003CF64  7D 89 03 A6 */	mtctr r12
/* 80042068 0003CF68  4E 80 04 21 */	bctrl 
lbl_8004206C:
/* 8004206C 0003CF6C  39 61 02 70 */	addi r11, r1, 0x270
/* 80042070 0003CF70  48 06 FD 19 */	bl _restgpr_25
/* 80042074 0003CF74  80 01 02 74 */	lwz r0, 0x274(r1)
/* 80042078 0003CF78  7C 08 03 A6 */	mtlr r0
/* 8004207C 0003CF7C  38 21 02 70 */	addi r1, r1, 0x270
/* 80042080 0003CF80  4E 80 00 20 */	blr 

.global detail_OpenGroupStream__Q34nw4r3snd12SoundArchiveCFUlPvi
detail_OpenGroupStream__Q34nw4r3snd12SoundArchiveCFUlPvi:
/* 80042084 0003CF84  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80042088 0003CF88  7C 08 02 A6 */	mflr r0
/* 8004208C 0003CF8C  90 01 01 44 */	stw r0, 0x144(r1)
/* 80042090 0003CF90  39 61 01 40 */	addi r11, r1, 0x140
/* 80042094 0003CF94  48 06 FC A9 */	bl _savegpr_25
/* 80042098 0003CF98  7C 79 1B 78 */	mr r25, r3
/* 8004209C 0003CF9C  80 63 00 04 */	lwz r3, 4(r3)
/* 800420A0 0003CFA0  7C BA 2B 78 */	mr r26, r5
/* 800420A4 0003CFA4  7C DB 33 78 */	mr r27, r6
/* 800420A8 0003CFA8  38 A1 00 08 */	addi r5, r1, 8
/* 800420AC 0003CFAC  48 00 0A 19 */	bl ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 800420B0 0003CFB0  2C 03 00 00 */	cmpwi r3, 0
/* 800420B4 0003CFB4  40 82 00 0C */	bne lbl_800420C0
/* 800420B8 0003CFB8  38 60 00 00 */	li r3, 0
/* 800420BC 0003CFBC  48 00 00 C8 */	b lbl_80042184
lbl_800420C0:
/* 800420C0 0003CFC0  83 81 00 0C */	lwz r28, 0xc(r1)
/* 800420C4 0003CFC4  2C 1C 00 00 */	cmpwi r28, 0
/* 800420C8 0003CFC8  41 82 00 98 */	beq lbl_80042160
/* 800420CC 0003CFCC  88 1C 00 00 */	lbz r0, 0(r28)
/* 800420D0 0003CFD0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800420D4 0003CFD4  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800420D8 0003CFD8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800420DC 0003CFDC  40 82 00 08 */	bne lbl_800420E4
/* 800420E0 0003CFE0  48 00 00 54 */	b lbl_80042134
lbl_800420E4:
/* 800420E4 0003CFE4  7F 83 E3 78 */	mr r3, r28
/* 800420E8 0003CFE8  48 06 F6 69 */	bl strlen
/* 800420EC 0003CFEC  7C 7F 1B 78 */	mr r31, r3
/* 800420F0 0003CFF0  38 79 00 08 */	addi r3, r25, 8
/* 800420F4 0003CFF4  48 06 F6 5D */	bl strlen
/* 800420F8 0003CFF8  7C 1F 1A 14 */	add r0, r31, r3
/* 800420FC 0003CFFC  7C 65 1B 78 */	mr r5, r3
/* 80042100 0003D000  28 00 01 00 */	cmplwi r0, 0x100
/* 80042104 0003D004  41 80 00 0C */	blt lbl_80042110
/* 80042108 0003D008  38 60 00 00 */	li r3, 0
/* 8004210C 0003D00C  48 00 00 78 */	b lbl_80042184
lbl_80042110:
/* 80042110 0003D010  38 61 00 20 */	addi r3, r1, 0x20
/* 80042114 0003D014  38 99 00 08 */	addi r4, r25, 8
/* 80042118 0003D018  38 A5 00 01 */	addi r5, r5, 1
/* 8004211C 0003D01C  48 07 6B D9 */	bl strncpy
/* 80042120 0003D020  7F 84 E3 78 */	mr r4, r28
/* 80042124 0003D024  38 61 00 20 */	addi r3, r1, 0x20
/* 80042128 0003D028  38 BF 00 01 */	addi r5, r31, 1
/* 8004212C 0003D02C  48 07 6C 39 */	bl strncat
/* 80042130 0003D030  3B 81 00 20 */	addi r28, r1, 0x20
lbl_80042134:
/* 80042134 0003D034  81 99 00 00 */	lwz r12, 0(r25)
/* 80042138 0003D038  7F 23 CB 78 */	mr r3, r25
/* 8004213C 0003D03C  7F 44 D3 78 */	mr r4, r26
/* 80042140 0003D040  7F 65 DB 78 */	mr r5, r27
/* 80042144 0003D044  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80042148 0003D048  7F 86 E3 78 */	mr r6, r28
/* 8004214C 0003D04C  7F C7 F3 78 */	mr r7, r30
/* 80042150 0003D050  7F A8 EB 78 */	mr r8, r29
/* 80042154 0003D054  7D 89 03 A6 */	mtctr r12
/* 80042158 0003D058  4E 80 04 21 */	bctrl 
/* 8004215C 0003D05C  48 00 00 28 */	b lbl_80042184
lbl_80042160:
/* 80042160 0003D060  81 99 00 00 */	lwz r12, 0(r25)
/* 80042164 0003D064  7F 23 CB 78 */	mr r3, r25
/* 80042168 0003D068  7F 44 D3 78 */	mr r4, r26
/* 8004216C 0003D06C  7F 65 DB 78 */	mr r5, r27
/* 80042170 0003D070  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80042174 0003D074  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 80042178 0003D078  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 8004217C 0003D07C  7D 89 03 A6 */	mtctr r12
/* 80042180 0003D080  4E 80 04 21 */	bctrl 
lbl_80042184:
/* 80042184 0003D084  39 61 01 40 */	addi r11, r1, 0x140
/* 80042188 0003D088  48 06 FC 01 */	bl _restgpr_25
/* 8004218C 0003D08C  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80042190 0003D090  7C 08 03 A6 */	mtlr r0
/* 80042194 0003D094  38 21 01 40 */	addi r1, r1, 0x140
/* 80042198 0003D098  4E 80 00 20 */	blr 

.global detail_OpenGroupWaveDataStream__Q34nw4r3snd12SoundArchiveCFUlPvi
detail_OpenGroupWaveDataStream__Q34nw4r3snd12SoundArchiveCFUlPvi:
/* 8004219C 0003D09C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 800421A0 0003D0A0  7C 08 02 A6 */	mflr r0
/* 800421A4 0003D0A4  90 01 01 44 */	stw r0, 0x144(r1)
/* 800421A8 0003D0A8  39 61 01 40 */	addi r11, r1, 0x140
/* 800421AC 0003D0AC  48 06 FB 91 */	bl _savegpr_25
/* 800421B0 0003D0B0  7C 79 1B 78 */	mr r25, r3
/* 800421B4 0003D0B4  80 63 00 04 */	lwz r3, 4(r3)
/* 800421B8 0003D0B8  7C BA 2B 78 */	mr r26, r5
/* 800421BC 0003D0BC  7C DB 33 78 */	mr r27, r6
/* 800421C0 0003D0C0  38 A1 00 08 */	addi r5, r1, 8
/* 800421C4 0003D0C4  48 00 09 01 */	bl ReadGroupInfo__Q44nw4r3snd6detail22SoundArchiveFileReaderCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 800421C8 0003D0C8  2C 03 00 00 */	cmpwi r3, 0
/* 800421CC 0003D0CC  40 82 00 0C */	bne lbl_800421D8
/* 800421D0 0003D0D0  38 60 00 00 */	li r3, 0
/* 800421D4 0003D0D4  48 00 00 C8 */	b lbl_8004229C
lbl_800421D8:
/* 800421D8 0003D0D8  83 81 00 0C */	lwz r28, 0xc(r1)
/* 800421DC 0003D0DC  2C 1C 00 00 */	cmpwi r28, 0
/* 800421E0 0003D0E0  41 82 00 98 */	beq lbl_80042278
/* 800421E4 0003D0E4  88 1C 00 00 */	lbz r0, 0(r28)
/* 800421E8 0003D0E8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800421EC 0003D0EC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800421F0 0003D0F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800421F4 0003D0F4  40 82 00 08 */	bne lbl_800421FC
/* 800421F8 0003D0F8  48 00 00 54 */	b lbl_8004224C
lbl_800421FC:
/* 800421FC 0003D0FC  7F 83 E3 78 */	mr r3, r28
/* 80042200 0003D100  48 06 F5 51 */	bl strlen
/* 80042204 0003D104  7C 7F 1B 78 */	mr r31, r3
/* 80042208 0003D108  38 79 00 08 */	addi r3, r25, 8
/* 8004220C 0003D10C  48 06 F5 45 */	bl strlen
/* 80042210 0003D110  7C 1F 1A 14 */	add r0, r31, r3
/* 80042214 0003D114  7C 65 1B 78 */	mr r5, r3
/* 80042218 0003D118  28 00 01 00 */	cmplwi r0, 0x100
/* 8004221C 0003D11C  41 80 00 0C */	blt lbl_80042228
/* 80042220 0003D120  38 60 00 00 */	li r3, 0
/* 80042224 0003D124  48 00 00 78 */	b lbl_8004229C
lbl_80042228:
/* 80042228 0003D128  38 61 00 20 */	addi r3, r1, 0x20
/* 8004222C 0003D12C  38 99 00 08 */	addi r4, r25, 8
/* 80042230 0003D130  38 A5 00 01 */	addi r5, r5, 1
/* 80042234 0003D134  48 07 6A C1 */	bl strncpy
/* 80042238 0003D138  7F 84 E3 78 */	mr r4, r28
/* 8004223C 0003D13C  38 61 00 20 */	addi r3, r1, 0x20
/* 80042240 0003D140  38 BF 00 01 */	addi r5, r31, 1
/* 80042244 0003D144  48 07 6B 21 */	bl strncat
/* 80042248 0003D148  3B 81 00 20 */	addi r28, r1, 0x20
lbl_8004224C:
/* 8004224C 0003D14C  81 99 00 00 */	lwz r12, 0(r25)
/* 80042250 0003D150  7F 23 CB 78 */	mr r3, r25
/* 80042254 0003D154  7F 44 D3 78 */	mr r4, r26
/* 80042258 0003D158  7F 65 DB 78 */	mr r5, r27
/* 8004225C 0003D15C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80042260 0003D160  7F 86 E3 78 */	mr r6, r28
/* 80042264 0003D164  7F C7 F3 78 */	mr r7, r30
/* 80042268 0003D168  7F A8 EB 78 */	mr r8, r29
/* 8004226C 0003D16C  7D 89 03 A6 */	mtctr r12
/* 80042270 0003D170  4E 80 04 21 */	bctrl 
/* 80042274 0003D174  48 00 00 28 */	b lbl_8004229C
lbl_80042278:
/* 80042278 0003D178  81 99 00 00 */	lwz r12, 0(r25)
/* 8004227C 0003D17C  7F 23 CB 78 */	mr r3, r25
/* 80042280 0003D180  7F 44 D3 78 */	mr r4, r26
/* 80042284 0003D184  7F 65 DB 78 */	mr r5, r27
/* 80042288 0003D188  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8004228C 0003D18C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80042290 0003D190  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 80042294 0003D194  7D 89 03 A6 */	mtctr r12
/* 80042298 0003D198  4E 80 04 21 */	bctrl 
lbl_8004229C:
/* 8004229C 0003D19C  39 61 01 40 */	addi r11, r1, 0x140
/* 800422A0 0003D1A0  48 06 FA E9 */	bl _restgpr_25
/* 800422A4 0003D1A4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 800422A8 0003D1A8  7C 08 03 A6 */	mtlr r0
/* 800422AC 0003D1AC  38 21 01 40 */	addi r1, r1, 0x140
/* 800422B0 0003D1B0  4E 80 00 20 */	blr 

.global SetExternalFileRoot__Q34nw4r3snd12SoundArchiveFPCc
SetExternalFileRoot__Q34nw4r3snd12SoundArchiveFPCc:
/* 800422B4 0003D1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800422B8 0003D1B8  7C 08 02 A6 */	mflr r0
/* 800422BC 0003D1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800422C0 0003D1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800422C4 0003D1C4  7C 9F 23 78 */	mr r31, r4
/* 800422C8 0003D1C8  93 C1 00 08 */	stw r30, 8(r1)
/* 800422CC 0003D1CC  7C 7E 1B 78 */	mr r30, r3
/* 800422D0 0003D1D0  7F E3 FB 78 */	mr r3, r31
/* 800422D4 0003D1D4  48 06 F4 7D */	bl strlen
/* 800422D8 0003D1D8  7C 9F 1A 14 */	add r4, r31, r3
/* 800422DC 0003D1DC  88 04 FF FF */	lbz r0, -1(r4)
/* 800422E0 0003D1E0  7C 64 1B 78 */	mr r4, r3
/* 800422E4 0003D1E4  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800422E8 0003D1E8  41 82 00 14 */	beq lbl_800422FC
/* 800422EC 0003D1EC  7C 9E 1A 14 */	add r4, r30, r3
/* 800422F0 0003D1F0  38 00 00 2F */	li r0, 0x2f
/* 800422F4 0003D1F4  98 04 00 08 */	stb r0, 8(r4)
/* 800422F8 0003D1F8  38 83 00 01 */	addi r4, r3, 1
lbl_800422FC:
/* 800422FC 0003D1FC  7C 9E 22 14 */	add r4, r30, r4
/* 80042300 0003D200  38 00 00 00 */	li r0, 0
/* 80042304 0003D204  98 04 00 08 */	stb r0, 8(r4)
/* 80042308 0003D208  7C 65 1B 78 */	mr r5, r3
/* 8004230C 0003D20C  7F E4 FB 78 */	mr r4, r31
/* 80042310 0003D210  38 7E 00 08 */	addi r3, r30, 8
/* 80042314 0003D214  48 07 69 E1 */	bl strncpy
/* 80042318 0003D218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004231C 0003D21C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80042320 0003D220  83 C1 00 08 */	lwz r30, 8(r1)
/* 80042324 0003D224  7C 08 03 A6 */	mtlr r0
/* 80042328 0003D228  38 21 00 10 */	addi r1, r1, 0x10
/* 8004232C 0003D22C  4E 80 00 20 */	blr 
