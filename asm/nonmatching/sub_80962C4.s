	.syntax unified
	.text

	thumb_func_start sub_80962C4
sub_80962C4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _08096358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096306
	ldr r2, _0809635C @ =0x00002068
	cmp r4, r5
	bne _080962EC
	subs r2, #0x2F
_080962EC:
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08096306:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x28
	cmp r6, r5
	bne _0809631E
	movs r1, #0x36
_0809631E:
	movs r2, #0x7C
	cmp r6, r5
	bne _08096326
	movs r2, #0x5C
_08096326:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x28
	bl sub_808842C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08096360 @ =0x08096365
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096358: .4byte 0x03000FD8
_0809635C: .4byte 0x00002068
_08096360: .4byte sub_8096364
