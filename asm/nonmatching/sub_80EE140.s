	.syntax unified
	.text

	thumb_func_start sub_80EE140
sub_80EE140:
	push {r4, lr}
	adds r2, r1, #0x0
	ldm r3!, {r0}
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080EE156
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r2, [r0, #0x00]
_080EE156:
	ldm r3!, {r0}
	movs r4, #0xA3
	lsls r4, r4, #0x01
	adds r1, r2, r4
	strh r0, [r1, #0x00]
	ldm r3!, {r1}
	adds r4, #0x02
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	ldm r3!, {r0}
	adds r4, #0x02
	adds r1, r2, r4
	strh r0, [r1, #0x00]
	ldm r3!, {r1}
	adds r4, #0x02
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	ldm r3!, {r0}
	adds r4, #0x02
	adds r1, r2, r4
	strh r0, [r1, #0x00]
	ldm r3!, {r1}
	adds r4, #0x02
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	ldm r3!, {r0}
	adds r4, #0x02
	adds r1, r2, r4
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	movs r3, #0xAA
	lsls r3, r3, #0x01
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
