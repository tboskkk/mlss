	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r2, [r5, #0x28]
	adds r4, r2, #0x0
	adds r4, #0xEC
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080867A0
	ldr r0, _08086798 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808679C
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	b _080867CA
	.byte 0x00, 0x00
_08086798: .4byte 0x03000FD8
_0808679C:
	movs r3, #0x00
	b _080867CA
_080867A0:
	adds r3, r2, #0x0
	ldr r0, _080867C4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080867C8
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080867CA
	.byte 0x00, 0x00
_080867C4: .4byte 0x03000FD8
_080867C8:
	movs r2, #0x00
_080867CA:
	ldr r0, [r5, #0x28]
	cmp r0, r2
	bne _08086804
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086834
	ldr r0, [r3, #0x48]
	cmp r0, #0x00
	bgt _080867E8
	adds r0, r3, #0x0
	b _0808681A
_080867E8:
	ldr r0, _080867FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086834
	ldr r0, _08086800 @ =0x0808722D
	str r0, [r3, #0x54]
	b _08086834
_080867FC: .4byte 0x03000FD8
_08086800: .4byte sub_808722C
_08086804:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086834
	ldr r0, [r2, #0x48]
	cmp r0, #0x00
	bgt _08086822
	adds r0, r2, #0x0
_0808681A:
	adds r0, #0x08
	bl sub_8086424
	b _08086834
_08086822:
	ldr r0, _0808684C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086834
	ldr r0, _08086850 @ =0x0808722D
	str r0, [r2, #0x54]
_08086834:
	ldr r0, _0808684C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r0, _08086854 @ =0x08086A19
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0808684C: .4byte 0x03000FD8
_08086850: .4byte sub_808722C
_08086854: .4byte sub_8086A18
