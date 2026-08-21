	.syntax unified
	.text

	thumb_func_start sub_808C1FC
sub_808C1FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808C21E
	movs r0, #0x6C
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
	adds r0, r4, #0x0
	bl sub_8087540
_0808C21E:
	pop {r4}
	pop {r0}
	bx r0
