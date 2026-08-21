	.syntax unified
	.text

	thumb_func_start sub_8093070
sub_8093070:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080930CA
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _080930D0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
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
	ldr r0, _080930D4 @ =0x08093141
	str r0, [r4, #0x4C]
_080930CA:
	pop {r4}
	pop {r0}
	bx r0
_080930D0: .4byte 0x0000204D
_080930D4: .4byte sub_8093140
