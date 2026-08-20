	.syntax unified
	.text

	thumb_func_start sub_80F8824
sub_80F8824:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	ldm r2!, {r0}
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080F884C
	ldr r0, [r3, #0x2C]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	adds r0, #0xA0
	ldrh r0, [r0, #0x00]
	ldr r1, _080F8860 @ =0x00000FF7
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r4, r0, #0x1F
_080F884C:
	ldr r0, [r2, #0x00]
	cmp r4, r0
	bne _080F8856
	ldr r0, [r2, #0x04]
	str r0, [r5, #0x00]
_080F8856:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8860: .4byte 0x00000FF7
