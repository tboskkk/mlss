	.syntax unified
	.text

	thumb_func_start sub_8089788
sub_8089788:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r1, [r5, #0x00]
	cmp r1, r0
	blt _080897F6
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080897FC @ =0x08089801
	str r0, [r4, #0x4C]
_080897F6:
	pop {r4, r5}
	pop {r0}
	bx r0
_080897FC: .4byte sub_8089800
