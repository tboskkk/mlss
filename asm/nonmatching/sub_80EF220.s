	.syntax unified
	.text

	thumb_func_start sub_80EF220
sub_80EF220:
	push {lr}
	adds r3, r2, #0x0
	ldr r2, _080EF278 @ =0x03000FD0
	ldm r3!, {r1}
	movs r0, #0x2C
	muls r0, r1
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldm r3!, {r1}
	movs r0, #0x01
	ands r0, r1
	lsls r0, r0, #0x04
	adds r0, #0x0C
	adds r2, r2, r0
	movs r0, #0x02
	ands r1, r0
	cmp r1, #0x00
	beq _080EF262
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x04
	str r0, [r3, #0x00]
	ldr r0, [r3, #0x04]
	lsls r0, r0, #0x04
	str r0, [r3, #0x04]
	ldr r0, [r3, #0x08]
	lsls r0, r0, #0x04
	str r0, [r3, #0x08]
	ldr r0, [r3, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r3, #0x0C]
_080EF262:
	ldm r3!, {r0}
	strh r0, [r2, #0x00]
	ldm r3!, {r0}
	strh r0, [r2, #0x06]
	ldm r3!, {r0}
	strh r0, [r2, #0x02]
	ldr r0, [r3, #0x00]
	strh r0, [r2, #0x04]
	movs r0, #0x01
	pop {r1}
	bx r1
_080EF278: .4byte 0x03000FD0
