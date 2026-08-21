	.syntax unified
	.text

	thumb_func_start sub_808A27C
sub_808A27C:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808A31A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r5, #0x07
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0808A2C4
	adds r2, #0xFF
_0808A2C4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _0808A2CE
	adds r3, #0xFF
_0808A2CE:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0808A2D8
	adds r0, #0xFF
_0808A2D8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808A324 @ =0x0000405A
	bl sub_807BF34
	str r0, [r4, #0x30]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x30]
	adds r0, #0x74
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, _0808A328 @ =0x0808C225
	str r0, [r4, #0x4C]
_0808A31A:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808A324: .4byte 0x0000405A
_0808A328: .4byte sub_808C224
