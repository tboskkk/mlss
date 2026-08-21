	.syntax unified
	.text

	thumb_func_start sub_80F6250
sub_80F6250:
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	ldr r4, _080F62A4 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	ldr r1, [r4, #0x00]
	movs r3, #0xD5
	lsls r3, r3, #0x02
	adds r2, r1, r3
	strh r0, [r2, #0x00]
	adds r1, r1, r5
	ldr r0, [r1, #0x00]
	bl sub_8082D40
	ldr r2, [r4, #0x00]
	ldr r3, _080F62A8 @ =0x00000356
	adds r1, r2, r3
	strh r0, [r1, #0x00]
	ldm r6!, {r1}
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldm r6!, {r1}
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F62AC
	movs r0, #0x0F
	adds r3, r1, #0x0
	ands r3, r0
	b _080F62AE
	.byte 0x00, 0x00
_080F62A4: .4byte 0x03000FD8
_080F62A8: .4byte 0x00000356
_080F62AC:
	lsls r3, r1, #0x04
_080F62AE:
	movs r1, #0xD7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r1, #0x00
	strh r3, [r0, #0x00]
	ldr r0, _080F62D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080F62D8 @ =0x0000035E
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldrh r2, [r0, #0x00]
	ldr r1, [r6, #0x04]
	cmp r1, #0x00
	beq _080F62DC
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _080F62E0
_080F62D4: .4byte 0x03000FD8
_080F62D8: .4byte 0x0000035E
_080F62DC:
	movs r1, #0x80
	lsls r1, r1, #0x01
_080F62E0:
	orrs r1, r2
	strh r1, [r0, #0x00]
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
