	.syntax unified
	.text

	thumb_func_start sub_80F7F54
sub_80F7F54:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	ldm r5!, {r0}
	cmp r0, #0x00
	bne _080F7F94
	ldm r5!, {r2}
	subs r2, #0x07
	lsls r2, r2, #0x01
	ldr r0, _080F7F9C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r0, #0xC6
	lsls r0, r0, #0x02
	adds r4, r3, r0
	movs r0, #0x03
	lsls r0, r2
	ldr r1, [r4, #0x00]
	bics r1, r0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	lsls r0, r2
	orrs r1, r0
	str r1, [r4, #0x00]
	ldr r1, [r5, #0x00]
	subs r1, #0x01
	ldr r0, _080F7FA0 @ =0x000002BF
	adds r3, r3, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F7F94:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F7F9C: .4byte 0x03000FD8
_080F7FA0: .4byte 0x000002BF
