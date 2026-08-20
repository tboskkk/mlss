	.syntax unified
	.text

	thumb_func_start sub_80877C0
sub_80877C0:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x92
	adds r4, r3, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	adds r1, r3, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r1, r0
	blt _080877F2
	str r1, [r3, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x00]
	movs r0, #0x01
	b _080877F4
_080877F2:
	movs r0, #0x00
_080877F4:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
