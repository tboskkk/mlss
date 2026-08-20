	.syntax unified
	.text

	thumb_func_start sub_80F1AA4
sub_80F1AA4:
	push {lr}
	adds r2, r1, #0x0
	ldm r3!, {r0}
	cmp r0, #0x00
	beq _080F1AC0
	ldr r1, [r3, #0x00]
	ldr r0, _080F1ABC @ =0x000002B6
	adds r3, r2, r0
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r0, #0x7F
	b _080F1AD2
_080F1ABC: .4byte 0x000002B6
_080F1AC0:
	ldr r1, [r3, #0x00]
	ldr r0, _080F1AE0 @ =0x000002B6
	adds r3, r2, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
_080F1AD2:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1AE0: .4byte 0x000002B6
