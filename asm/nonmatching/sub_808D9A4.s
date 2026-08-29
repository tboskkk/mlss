	.syntax unified
	.text

	thumb_func_start sub_808D9A4
sub_808D9A4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x28]
	cmp r1, #0x00
	beq _0808D9BC
	ldr r0, _0808DA3C @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0808D9BC:
	adds r0, r4, #0x0
	bl sub_808CCD4
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0808DA36
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x1B
	ble _0808DA36
	subs r0, #0x36
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0808DA36
	ldr r1, [r4, #0x28]
	cmp r1, #0x00
	beq _0808D9FA
	ldr r0, _0808DA3C @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0808D9FA:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _0808DA06
	bl sub_807C298
	str r5, [r4, #0x30]
_0808DA06:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0808DA36:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808DA3C: .4byte 0x00000111
