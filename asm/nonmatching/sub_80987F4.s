	.syntax unified
	.text

	thumb_func_start sub_80987F4
sub_80987F4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08098850 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _08098816
	ldr r2, _08098854 @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08098816:
	cmp r4, r5
	bne _08098826
	ldr r2, _08098858 @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08098826:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _0809885C @ =0x08098365
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08098850: .4byte 0x03000FD8
_08098854: .4byte 0x00002027
_08098858: .4byte 0x00002056
_0809885C: .4byte sub_8098364
