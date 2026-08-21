	.syntax unified
	.text

	thumb_func_start sub_808DD2C
sub_808DD2C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0808DD90
	ldr r1, [r5, #0x28]
	cmp r1, #0x00
	beq _0808DD50
	ldr r0, _0808DD98 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0808DD50:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _0808DD5E
	bl sub_807C298
	movs r0, #0x00
	str r0, [r5, #0x30]
_0808DD5E:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r4, #0x00
	movs r1, #0x10
	strb r1, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r5, #0x4C]
_0808DD90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808DD98: .4byte 0x00000111
