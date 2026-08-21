	.syntax unified
	.text

	thumb_func_start sub_808A3C4
sub_808A3C4:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808A4BC
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r0, _0808A4C4 @ =0x0808C19D
	str r0, [r5, #0x4C]
	ldr r6, [r5, #0x2C]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0808A3FC
	adds r0, #0xFF
_0808A3FC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0C
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _0808A40A
	adds r3, #0xFF
_0808A40A:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _0808A414
	adds r0, #0xFF
_0808A414:
	asrs r0, r0, #0x08
	adds r0, #0x32
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808A4C8 @ =0x00004059
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x24
	ldr r2, [r6, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	ldr r0, _0808A4CC @ =0x0808C1C5
	str r0, [r4, #0x4C]
_0808A4BC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808A4C4: .4byte sub_808C19C
_0808A4C8: .4byte 0x00004059
_0808A4CC: .4byte sub_808C1C4
