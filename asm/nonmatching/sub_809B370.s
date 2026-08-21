	.syntax unified
	.text

	thumb_func_start sub_809B370
sub_809B370:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x98
	lsls r0, r0, #0x06
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B3C0
	ldr r2, _0809B3CC @ =0x03001038
	ldr r0, _0809B3D0 @ =0x0819832C
	ldr r1, _0809B3D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
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
_0809B3C0:
	ldr r0, _0809B3D8 @ =0x0809B505
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B3CC: .4byte 0x03001038
_0809B3D0: .4byte 0x0819832C
_0809B3D4: .4byte 0x08198220
_0809B3D8: .4byte sub_809B504
