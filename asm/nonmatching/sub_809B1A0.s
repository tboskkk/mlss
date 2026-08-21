	.syntax unified
	.text

	thumb_func_start sub_809B1A0
sub_809B1A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0809B1C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r2, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B21A
	cmp r2, r3
	bne _0809B1D0
	ldr r2, _0809B1CC @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x04
	b _0809B1D6
_0809B1C8: .4byte 0x03000FD8
_0809B1CC: .4byte 0x000040BF
_0809B1D0:
	ldr r2, _0809B220 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x07
_0809B1D6:
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
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B216
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809B216:
	ldr r0, _0809B224 @ =0x0809B229
	str r0, [r4, #0x4C]
_0809B21A:
	pop {r4}
	pop {r0}
	bx r0
_0809B220: .4byte 0x000040BF
_0809B224: .4byte sub_809B228
