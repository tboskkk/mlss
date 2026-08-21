	.syntax unified
	.text

	thumb_func_start sub_8086700
sub_8086700:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x06
	beq _0808675C
	cmp r1, #0x02
	beq _0808675C
	ldr r2, [r5, #0x28]
	cmp r2, #0x00
	beq _0808675C
	ldr r0, _08086750 @ =0x00000111
	adds r4, r2, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0808675C
	ldr r0, _08086754 @ =0x08087441
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x80
	str r1, [r0, #0x00]
	ldr r0, _08086758 @ =0x0808742D
	adds r1, r2, #0x0
	bl sub_807FF48
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, [r5, #0x28]
	bl sub_807B7A8
	movs r0, #0x01
	b _0808675E
_08086750: .4byte 0x00000111
_08086754: .4byte 0x08087441
_08086758: .4byte 0x0808742D
_0808675C:
	movs r0, #0x00
_0808675E:
	pop {r4, r5}
	pop {r1}
	bx r1
