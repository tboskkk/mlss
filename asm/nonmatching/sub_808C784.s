	.syntax unified
	.text

	thumb_func_start sub_808C784
sub_808C784:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808C7AC
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x20
	bl sub_80873B8
	ldr r0, _0808C7B4 @ =0x0808C939
	str r0, [r4, #0x50]
_0808C7AC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808C7B4: .4byte sub_808C938
