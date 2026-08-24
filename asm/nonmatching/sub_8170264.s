	.syntax unified
	.text

	thumb_func_start sub_8170264
sub_8170264:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _0817045C @ =0x08CDD278
	str r0, [r7, #0x18]
	adds r4, r7, #0x0
	adds r4, #0x40
	adds r0, r4, #0x0
	bl sub_8163320
	bl sub_8163BB8
	adds r0, r4, #0x0
	movs r1, #0x20
	bl sub_81632EC
	ldr r4, _08170460 @ =0x08218EE8
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x20
	str r1, [sp, #0x000]
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801B870
	adds r4, r7, #0x0
	adds r4, #0x50
	movs r6, #0x00
	strh r6, [r4, #0x00]
	movs r5, #0xF9
	lsls r5, r5, #0x01
	adds r0, r5, #0x0
	bl sub_8163110
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081702D8
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_8163134
	ldrh r0, [r4, #0x00]
	movs r1, #0x11
	orrs r0, r1
	strh r0, [r4, #0x00]
_081702D8:
	ldr r0, _08170464 @ =0x000001F3
	bl sub_8163110
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081702EC
	ldrh r0, [r4, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strh r0, [r4, #0x00]
_081702EC:
	ldr r5, _08170468 @ =0x00001001
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	str r6, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	adds r5, #0x01
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	str r6, [sp, #0x000]
	add r1, sp, #0x00C
	str r1, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	adds r5, #0x5D
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	adds r5, #0x1E
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	subs r5, #0x20
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	adds r5, #0x1E
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	ldr r5, _0817046C @ =0x00005009
	movs r0, #0x04
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	str r6, [sp, #0x000]
	add r2, sp, #0x00C
	str r2, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r2, _08170470 @ =0x08218EF0
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_81638B0
	str r0, [r7, #0x1C]
	ldr r2, _08170474 @ =0x08218EF8
	movs r0, #0xA4
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r2, #0x02
	movs r3, #0x17
	bl sub_8164294
	str r0, [r7, #0x20]
	movs r1, #0x93
	adds r0, #0xA2
	strh r1, [r0, #0x00]
	ldr r0, _08170478 @ =0x082192F8
	movs r1, #0xC0
	lsls r1, r1, #0x13
	bl sub_8163DB8
	ldr r0, _0817047C @ =0x0821908C
	ldr r1, _08170480 @ =0x06007000
	bl sub_8163DB8
	ldr r0, _08170484 @ =0x08218F2D
	ldr r1, _08170488 @ =0x06006800
	bl sub_8163DB8
	ldr r0, _0817048C @ =0x0821A896
	ldr r1, _08170490 @ =0x06004000
	bl sub_8163DB8
	ldr r0, _08170494 @ =0x0300034C
	ldr r1, _08170498 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081704AC
	ldr r0, _0817049C @ =0x0821A779
	ldr r1, _081704A0 @ =0x02000080
	bl sub_8163DB8
	ldr r0, _081704A4 @ =0x0821A96D
	ldr r1, _081704A8 @ =0x02000260
	bl sub_8163DB8
	b _081704BC
	.byte 0x00, 0x00
_0817045C: .4byte dword_8CDD278 @ =0x08CDD278
_08170460: .4byte dword_8218EE8 @ =0x08218EE8
_08170464: .4byte 0x000001F3
_08170468: .4byte 0x00001001
_0817046C: .4byte 0x00005009
_08170470: .4byte dword_8218EF0 @ =0x08218EF0
_08170474: .4byte dword_8218EF8 @ =0x08218EF8
_08170478: .4byte dword_82192F8 @ =0x082192F8
_0817047C: .4byte dword_821908C @ =0x0821908C
_08170480: .4byte 0x06007000
_08170484: .4byte dword_8218F2D @ =0x08218F2D
_08170488: .4byte 0x06006800
_0817048C: .4byte dword_821A896 @ =0x0821A896
_08170490: .4byte 0x06004000
_08170494: .4byte 0x0300034C
_08170498: .4byte 0x00000888
_0817049C: .4byte dword_821A779 @ =0x0821A779
_081704A0: .4byte 0x02000080
_081704A4: .4byte dword_821A96D @ =0x0821A96D
_081704A8: .4byte 0x02000260
_081704AC:
	ldr r0, _081706AC @ =0x0821A65D
	ldr r1, _081706B0 @ =0x02000080
	bl sub_8163DB8
	ldr r0, _081706B4 @ =0x0821A948
	ldr r1, _081706B8 @ =0x02000260
	bl sub_8163DB8
_081704BC:
	movs r6, #0x00
	str r6, [sp, #0x010]
	add r0, sp, #0x010
	ldr r1, _081706BC @ =0x06007800
	ldr r2, _081706C0 @ =0x05000200
	bl CpuSet
	ldr r1, _081706C4 @ =0x02000008
	ldr r2, _081706C8 @ =0x00000F04
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r2, _081706CC @ =0x00000E02
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	subs r2, #0xFF
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	subs r1, #0x0E
	movs r2, #0xFA
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r5, _081706D0 @ =0x08218F00
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _081706D4 @ =0x08CDD290
	str r0, [r4, #0x18]
	str r6, [r4, #0x20]
	str r6, [r4, #0x1C]
	str r4, [r7, #0x24]
	str r7, [r4, #0x14]
	str r6, [r7, #0x44]
	str r6, [r7, #0x48]
	ldr r0, [r7, #0x1C]
	mov r9, r0
	ldr r2, _081706D8 @ =0x08218F08
	movs r0, #0x78
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x00
	bl sub_8161C28
	ldr r0, _081706DC @ =0x08CDD2C8
	str r0, [r4, #0x0C]
	str r6, [sp, #0x000]
	movs r1, #0x03
	mov r10, r1
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	ldr r2, _081706E0 @ =0x00001001
	movs r3, #0x01
	bl sub_8163ADC
	ldr r2, _081706E4 @ =0x0821A992
	mov r8, r2
	adds r0, r4, #0x0
	mov r1, r8
	bl sub_8163B5C
	adds r0, r4, #0x0
	adds r0, #0x52
	movs r5, #0x02
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8161DA0
	movs r0, #0x90
	lsls r0, r0, #0x07
	str r0, [r4, #0x18]
	movs r0, #0x90
	lsls r0, r0, #0x06
	str r0, [r4, #0x20]
	str r6, [r4, #0x6C]
	str r6, [r4, #0x70]
	adds r0, r4, #0x0
	adds r0, #0x74
	strh r6, [r0, #0x00]
	str r4, [r7, #0x28]
	mov r0, r9
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r0, [r7, #0x1C]
	mov r9, r0
	ldr r2, _081706E8 @ =0x08218F10
	movs r0, #0x78
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x01
	bl sub_8161C28
	ldr r0, _081706EC @ =0x08CDD2B8
	str r0, [r4, #0x0C]
	str r6, [sp, #0x000]
	mov r1, r10
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x00
	ldr r2, _081706F0 @ =0x00001002
	movs r3, #0x01
	bl sub_8163ADC
	adds r0, r4, #0x0
	mov r1, r8
	bl sub_8163B5C
	adds r0, r4, #0x0
	adds r0, #0x52
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8161DA0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	str r0, [r4, #0x18]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [r4, #0x20]
	str r6, [r4, #0x6C]
	str r6, [r4, #0x70]
	adds r0, r4, #0x0
	adds r0, #0x74
	strh r6, [r0, #0x00]
	str r4, [r7, #0x2C]
	mov r0, r9
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r4, [r7, #0x1C]
	ldr r2, _081706F4 @ =0x08218F18
	movs r0, #0x74
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r7, #0x1C]
	bl sub_81700E4
	adds r1, r0, #0x0
	str r1, [r7, #0x34]
	adds r0, r4, #0x0
	bl sub_8163CD4
	ldr r5, [r7, #0x1C]
	ldr r2, _081706F8 @ =0x08218F20
	movs r0, #0x78
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x0D
	bl sub_8161C28
	ldr r0, _081706FC @ =0x08CDD2D8
	str r0, [r4, #0x0C]
	adds r0, r4, #0x0
	bl sub_8171F44
	adds r0, r4, #0x0
	bl sub_816DA90
	str r4, [r7, #0x3C]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r2, _08170700 @ =0x08218EC8
	movs r0, #0x30
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0D
	bl sub_8163298
	str r0, [r7, #0x38]
	movs r0, #0x88
	lsls r0, r0, #0x01
	ldr r2, _08170704 @ =0x08218F28
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r7, #0x1C]
	bl sub_816DB10
	str r0, [r7, #0x30]
	movs r4, #0x09
	str r4, [r7, #0x4C]
	movs r0, #0xF6
	lsls r0, r0, #0x01
	movs r1, #0x00
	bl sub_8163134
	ldr r0, _08170708 @ =0x00001CDC
	movs r1, #0x00
	bl sub_80E9A6C
	ldr r0, _0817070C @ =0x00001CE2
	bl sub_80E99E0
	ldr r1, [r7, #0x30]
	adds r1, #0xDC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0x00]
	cmp r0, #0x08
	bgt _08170684
	str r4, [r1, #0x00]
_08170684:
	ldr r0, [r7, #0x1C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8163864
	ldr r0, _081706B0 @ =0x02000080
	strh r6, [r0, #0x00]
	ldr r1, _08170710 @ =0x0300034C
	ldr r0, _08170714 @ =0x0000FFFF
	strh r0, [r1, #0x02]
	adds r0, r7, #0x0
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081706AC: .4byte dword_821A65D @ =0x0821A65D
_081706B0: .4byte 0x02000080
_081706B4: .4byte dword_821A948 @ =0x0821A948
_081706B8: .4byte 0x02000260
_081706BC: .4byte 0x06007800
_081706C0: .4byte 0x05000200
_081706C4: .4byte 0x02000008
_081706C8: .4byte 0x00000F04
_081706CC: .4byte 0x00000E02
_081706D0: .4byte dword_8218F00 @ =0x08218F00
_081706D4: .4byte dword_8CDD290 @ =0x08CDD290
_081706D8: .4byte dword_8218F08 @ =0x08218F08
_081706DC: .4byte dword_8CDD2C8 @ =0x08CDD2C8
_081706E0: .4byte 0x00001001
_081706E4: .4byte dword_821A992 @ =0x0821A992
_081706E8: .4byte dword_8218F10 @ =0x08218F10
_081706EC: .4byte dword_8CDD2B8 @ =0x08CDD2B8
_081706F0: .4byte 0x00001002
_081706F4: .4byte dword_8218F18 @ =0x08218F18
_081706F8: .4byte dword_8218F20 @ =0x08218F20
_081706FC: .4byte dword_8CDD2D8 @ =0x08CDD2D8
_08170700: .4byte dword_8218EC8 @ =0x08218EC8
_08170704: .4byte dword_8218F28 @ =0x08218F28
_08170708: .4byte 0x00001CDC
_0817070C: .4byte 0x00001CE2
_08170710: .4byte 0x0300034C
_08170714: .4byte 0x0000FFFF
