	.syntax unified
	.text

	thumb_func_start sub_814D7A8
sub_814D7A8:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0814D7E4
	ldr r2, _0814D7DC @ =0x00000272
	adds r0, r3, r2
	movs r1, #0xC0
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814D7E0 @ =0x00000276
	adds r1, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	b _0814D804
	.byte 0x00, 0x00
_0814D7DC: .4byte 0x00000272
_0814D7E0: .4byte 0x00000276
_0814D7E4:
	cmp r0, #0x00
	beq _0814D804
	ldr r2, _0814D830 @ =0x00000272
	adds r1, r3, r2
	movs r0, #0xC0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r3, r2
	strh r1, [r0, #0x00]
_0814D804:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814D82A
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814D834 @ =0x0814DCFD
	str r0, [r4, #0x00]
_0814D82A:
	pop {r4}
	pop {r0}
	bx r0
_0814D830: .4byte 0x00000272
_0814D834: .4byte sub_814DCFC
