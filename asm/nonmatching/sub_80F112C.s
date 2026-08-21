	.syntax unified
	.text

	thumb_func_start sub_80F112C
sub_80F112C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldm r3!, {r1}
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080F1152
	ldr r2, [r3, #0x00]
	adds r0, r4, #0x0
	bl sub_8047B08
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x42
	orrs r0, r1
	strh r0, [r2, #0x00]
	b _080F1168
_080F1152:
	cmp r1, #0x02
	bne _080F1162
	movs r0, #0x00
	ldsh r1, [r3, r0]
	adds r0, r4, #0x0
	bl sub_8047B5C
	b _080F1168
_080F1162:
	adds r0, r4, #0x0
	bl sub_8046A10
_080F1168:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
