	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806190E
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x00
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080618D4
	movs r0, #0x88
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _080618DC
_080618D4:
	movs r0, #0x88
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_080618DC:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _080618F0
	cmp r1, #0x01
	beq _080618F6
	b _0806190A
_080618F0:
	adds r0, r4, #0x0
	movs r1, #0x03
	b _080618FA
_080618F6:
	adds r0, r4, #0x0
	movs r1, #0x07
_080618FA:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
_0806190A:
	ldr r0, _08061914 @ =0x08061FF5
	str r0, [r4, #0x4C]
_0806190E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08061914: .4byte sub_8061FF4
