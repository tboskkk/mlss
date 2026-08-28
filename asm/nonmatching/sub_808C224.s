	.syntax unified
	.text

	thumb_func_start sub_808C224
sub_808C224:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0808C25C
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _0808C264 @ =0x0808C52D
	str r0, [r4, #0x4C]
_0808C25C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808C264: .4byte sub_808C52C
