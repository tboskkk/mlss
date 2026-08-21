	.syntax unified
	.text

	thumb_func_start sub_808C6EC
sub_808C6EC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808C71A
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _0808C720 @ =0x0808C869
	str r0, [r4, #0x50]
_0808C71A:
	pop {r4}
	pop {r0}
	bx r0
_0808C720: .4byte sub_808C868
