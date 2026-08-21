	.syntax unified
	.text

	thumb_func_start sub_808965C
sub_808965C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08089678
	b _08089776
_08089678:
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080896D8
	adds r1, r7, #0x0
	adds r1, #0xB2
	movs r0, #0x80
	strh r0, [r1, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x04
	ldr r3, _080896C4 @ =0x03001038
	ldr r0, _080896C8 @ =0x0819832C
	ldr r2, _080896CC @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	ldr r0, _080896D0 @ =0xFFFFC440
	bl _call_via_r2
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _080896D4 @ =0x08089965
	str r0, [r7, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	b _08089776
	.byte 0x00, 0x00
_080896C4: .4byte 0x03001038
_080896C8: .4byte 0x0819832C
_080896CC: .4byte 0x08198220
_080896D0: .4byte 0xFFFFC440
_080896D4: .4byte sub_8089964
_080896D8:
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, [r7, #0x2C]
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r8, r1
	add r0, r8
	str r0, [r3, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r5, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r6, [r0, #0x00]
	ldr r0, [r7, #0x40]
	adds r6, r6, r0
	lsrs r0, r6, #0x1F
	adds r6, r6, r0
	asrs r6, r6, #0x01
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, #0x24
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x40]
	subs r6, r6, r4
	str r6, [sp, #0x004]
	movs r4, #0x80
	lsls r4, r4, #0x03
	str r4, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x02
	str r4, [sp, #0x00C]
	mov r4, r8
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	ldr r0, _08089784 @ =0x08089789
	str r0, [r7, #0x4C]
_08089776:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08089784: .4byte sub_8089788
