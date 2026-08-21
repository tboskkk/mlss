	.syntax unified
	.text

	thumb_func_start sub_80F7EF8
sub_80F7EF8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldm r2!, {r0}
	cmp r0, #0x00
	beq _080F7F08
	cmp r0, #0x01
	beq _080F7F20
	b _080F7F4A
_080F7F08:
	ldr r0, [r2, #0x00]
	ldr r1, _080F7F1C @ =0x03000FD8
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x58]
	bl sub_80F746C
	b _080F7F4A
	.byte 0x00, 0x00
_080F7F1C: .4byte 0x03000FD8
_080F7F20:
	adds r3, r4, #0x0
	adds r3, #0xFE
	movs r0, #0x07
	ldrb r1, [r2, #0x00]
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	b _080F7F4C
_080F7F4A:
	movs r0, #0x01
_080F7F4C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
