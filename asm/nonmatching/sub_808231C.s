	.syntax unified
	.text

	thumb_func_start sub_808231C
sub_808231C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	ble _0808233C
	subs r0, r1, #0x1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0808233C
	adds r0, r4, #0x0
	bl sub_8081568
_0808233C:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08082364
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808236C @ =0x08082371
	str r0, [r5, #0x04]
_08082364:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808236C: .4byte sub_8082370
