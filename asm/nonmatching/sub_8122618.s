	.syntax unified
	.text

	thumb_func_start sub_8122618
sub_8122618:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	ldr r0, [sp, #0x048]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x01C]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x020]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _08122698 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xBA
	ldr r1, [sp, #0x020]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0812266E
	movs r0, #0x01
	mov r1, r8
	eors r1, r0
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	ldr r2, [sp, #0x020]
	cmp r0, r2
	bne _0812266E
	cmp r3, #0x00
	bne _0812266E
	b _081228F6
_0812266E:
	ldr r2, _0812269C @ =0x083BD844
	ldr r3, [sp, #0x020]
	lsls r1, r3, #0x02
	adds r0, r1, r3
	lsls r0, r0, #0x02
	adds r3, r0, r2
	ldrb r0, [r3, #0x06]
	str r1, [sp, #0x024]
	cmp r0, #0x65
	bne _081226A0
	ldr r0, _08122698 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r4, r8
	lsls r2, r4, #0x04
	subs r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x16]
	ldrh r0, [r3, #0x08]
	adds r4, r1, r0
	b _081226D0
_08122698: .4byte 0x03000FF4
_0812269C: .4byte 0x083BD844
_081226A0:
	ldrb r0, [r3, #0x0A]
	cmp r0, #0x65
	bne _081226C0
	ldr r0, _081226BC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r0, r8
	lsls r2, r0, #0x04
	subs r0, r2, r0
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x16]
	ldrh r0, [r3, #0x0C]
	adds r4, r1, r0
	b _081226D0
_081226BC: .4byte 0x03000FF4
_081226C0:
	ldr r0, _08122738 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r8
	lsls r2, r3, #0x04
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r4, [r1, #0x16]
_081226D0:
	mov r9, r2
	ldr r0, _0812273C @ =0x000003E7
	cmp r4, r0
	ble _081226DA
	adds r4, r0, #0x0
_081226DA:
	cmp r4, #0x00
	beq _0812278C
	movs r0, #0x64
	mov r10, r0
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	movs r3, #0x48
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _08122738 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	cmp r0, r4
	bge _08122744
	movs r6, #0x40
	movs r4, #0x02
	movs r5, #0x6C
	ldr r1, _08122740 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r1, r10
	orrs r0, r1
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _0812278A
	.byte 0x00, 0x00
_08122738: .4byte 0x03000FF4
_0812273C: .4byte 0x000003E7
_08122740: .4byte 0x08202F58
_08122744:
	cmp r0, r4
	ble _08122774
	movs r6, #0x40
	movs r4, #0x02
	movs r5, #0x6E
	ldr r1, _08122770 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r2, r10
	orrs r0, r2
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _0812278A
	.byte 0x00, 0x00
_08122770: .4byte 0x08202F58
_08122774:
	movs r5, #0x40
	movs r4, #0x6C
	ldr r1, _081227B4 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	strh r5, [r7, #0x02]
	ldr r0, _081227B8 @ =0x0000084D
	strh r0, [r7, #0x04]
_0812278A:
	adds r7, #0x08
_0812278C:
	ldr r0, _081227BC @ =0x083BD844
	ldr r3, [sp, #0x024]
	ldr r4, [sp, #0x020]
	adds r1, r3, r4
	lsls r1, r1, #0x02
	adds r2, r1, r0
	ldrb r0, [r2, #0x06]
	cmp r0, #0x66
	bne _081227C4
	ldr r0, _081227C0 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r9
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x1A]
	ldrh r0, [r2, #0x08]
	adds r4, r1, r0
	b _081227F4
_081227B4: .4byte 0x08202F58
_081227B8: .4byte 0x0000084D
_081227BC: .4byte 0x083BD844
_081227C0: .4byte 0x03000FF4
_081227C4:
	ldrb r0, [r2, #0x0A]
	cmp r0, #0x66
	bne _081227E4
	ldr r0, _081227E0 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r9
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x1A]
	ldrh r0, [r2, #0x0C]
	adds r4, r1, r0
	b _081227F4
_081227E0: .4byte 0x03000FF4
_081227E4:
	ldr r0, _08122858 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r4, [r1, #0x1A]
_081227F4:
	ldr r0, _0812285C @ =0x000003E7
	cmp r4, r0
	ble _081227FC
	adds r4, r0, #0x0
_081227FC:
	cmp r4, #0x00
	beq _081228AC
	movs r0, #0x64
	mov r10, r0
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	movs r3, #0xB0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _08122858 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x1C]
	cmp r0, r4
	bge _08122864
	movs r6, #0xA8
	movs r4, #0x02
	movs r5, #0x6C
	ldr r1, _08122860 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r1, r10
	orrs r0, r1
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081228AA
_08122858: .4byte 0x03000FF4
_0812285C: .4byte 0x000003E7
_08122860: .4byte 0x08202F58
_08122864:
	cmp r0, r4
	ble _08122894
	movs r6, #0xA8
	movs r4, #0x02
	movs r5, #0x6E
	ldr r1, _08122890 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r2, r10
	orrs r0, r2
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081228AA
	.byte 0x00, 0x00
_08122890: .4byte 0x08202F58
_08122894:
	movs r5, #0xA8
	movs r4, #0x6C
	ldr r1, _081228C8 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	strh r5, [r7, #0x02]
	ldr r0, _081228CC @ =0x0000084D
	strh r0, [r7, #0x04]
_081228AA:
	adds r7, #0x08
_081228AC:
	ldr r3, [sp, #0x01C]
	cmp r3, #0xFF
	bne _081228D4
	ldr r0, _081228D0 @ =0x083BD844
	ldr r4, [sp, #0x024]
	ldr r2, [sp, #0x020]
	adds r1, r4, r2
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldrb r2, [r1, #0x0A]
	adds r0, r7, #0x0
	movs r1, #0xFF
	b _081228F0
	.byte 0x00, 0x00
_081228C8: .4byte 0x08202F58
_081228CC: .4byte 0x0000084D
_081228D0: .4byte 0x083BD844
_081228D4:
	ldr r2, _08122908 @ =0x083BD844
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x02
	adds r0, r0, r3
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x0A]
	ldr r4, [sp, #0x024]
	ldr r3, [sp, #0x020]
	adds r0, r4, r3
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r2, [r0, #0x0A]
	adds r0, r7, #0x0
_081228F0:
	bl sub_812290C
	adds r7, r0, #0x0
_081228F6:
	adds r0, r7, #0x0
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08122908: .4byte 0x083BD844
