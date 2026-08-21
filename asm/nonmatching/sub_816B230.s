	.syntax unified
	.text

	thumb_func_start sub_816B230
sub_816B230:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	movs r6, #0x01
	adds r4, r1, #0x0
	adds r4, #0x6C
	ldrh r0, [r4, #0x00]
	ands r0, r6
	cmp r0, #0x00
	bne _0816B280
	ldr r2, [r5, #0x18]
	ldr r0, [r1, #0x18]
	subs r2, r2, r0
	ldr r0, [r5, #0x20]
	ldr r1, [r1, #0x20]
	subs r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r2, r0, #0x0
	muls r2, r0
	adds r0, r2, #0x0
	adds r1, r1, r0
	asrs r1, r1, #0x08
	ldr r0, _0816B27C @ =0x00008FFF
	cmp r1, r0
	bgt _0816B280
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x37
	bl play_sfx_80195B4
	ldrh r1, [r4, #0x00]
	adds r0, r6, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	movs r0, #0x06
	str r0, [r5, #0x6C]
	movs r0, #0x01
	b _0816B282
_0816B27C: .4byte 0x00008FFF
_0816B280:
	movs r0, #0x00
_0816B282:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
