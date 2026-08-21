	.syntax unified
	.text

	thumb_func_start sub_808BFF8
sub_808BFF8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0808C01C
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _0808C01C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0808C01C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _0808C044
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bne _0808C038
	adds r0, #0xB4
	strh r1, [r0, #0x00]
_0808C038:
	movs r0, #0x5E
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_0808C044:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
