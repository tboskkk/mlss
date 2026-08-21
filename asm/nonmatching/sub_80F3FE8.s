	.syntax unified
	.text

	thumb_func_start sub_80F3FE8
sub_80F3FE8:
	push {r4, r5, lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x2C]
	ldr r3, _080F4000 @ =0x0000179C
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4004
	subs r0, #0x01
	cmp r0, #0x07
	ble _080F400A
	b _080F403A
_080F4000: .4byte 0x0000179C
_080F4004:
	subs r0, #0x07
	cmp r0, #0x07
	bgt _080F403A
_080F400A:
	ldr r0, _080F4020 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r1, #0x2C]
	ldr r1, _080F4024 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4028
	subs r0, #0x01
	b _080F402A
	.byte 0x00, 0x00
_080F4020: .4byte 0x03000FD8
_080F4024: .4byte 0x0000179C
_080F4028:
	subs r0, #0x07
_080F402A:
	lsls r1, r0, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	b _080F4078
_080F403A:
	ldr r0, [r1, #0x2C]
	ldr r3, _080F4060 @ =0x0000179C
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	ldr r0, _080F4064 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r3, #0x98
	lsls r3, r3, #0x04
	adds r4, r0, r3
	cmp r1, #0x06
	bhi _080F406C
	subs r1, #0x01
	movs r0, #0xD0
	muls r0, r1
	adds r0, r4, r0
	ldr r1, _080F4068 @ =0xFFFFF980
	adds r5, r0, r1
	b _080F4078
	.byte 0x00, 0x00
_080F4060: .4byte 0x0000179C
_080F4064: .4byte 0x03000FDC
_080F4068: .4byte 0xFFFFF980
_080F406C:
	subs r1, #0x07
	movs r0, #0xD0
	muls r0, r1
	adds r0, r4, r0
	ldr r3, _080F40BC @ =0xFFFFF980
	adds r5, r0, r3
_080F4078:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x04]
	ldr r3, [r2, #0x00]
	lsls r1, r1, #0x09
	adds r1, r3, r1
	ldr r4, _080F40C0 @ =0x03001038
	ldr r0, _080F40C4 @ =0x0819832C
	ldr r2, _080F40C8 @ =0x08198220
	subs r0, r0, r2
	ldr r4, [r4, #0x00]
	adds r4, r4, r0
	negs r0, r3
	muls r0, r3
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r4
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_807FE7C
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F40BC: .4byte 0xFFFFF980
_080F40C0: .4byte 0x03001038
_080F40C4: .4byte 0x0819832C
_080F40C8: .4byte 0x08198220
