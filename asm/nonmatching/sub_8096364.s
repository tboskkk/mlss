	.syntax unified
	.text

	thumb_func_start sub_8096364
sub_8096364:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _080963D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080963D2
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080963B0
	ldr r2, _080963DC @ =0x00002052
	cmp r4, r6
	bne _08096396
	subs r2, #0x2F
_08096396:
	adds r0, r4, #0x0
	movs r1, #0x04
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
_080963B0:
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x18
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, _080963E0 @ =0x08096E6D
	str r0, [r4, #0x4C]
_080963D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080963D8: .4byte 0x03000FD8
_080963DC: .4byte 0x00002052
_080963E0: .4byte sub_8096E6C
