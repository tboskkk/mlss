	.syntax unified
	.text

	thumb_func_start sub_813DFF8
sub_813DFF8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FA4
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r3, _0813E054 @ =0x081398C5
	str r3, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r1, _0813E058 @ =0x08139421
	str r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r4, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813E054: .4byte sub_81398C4
_0813E058: .4byte sub_8139420
