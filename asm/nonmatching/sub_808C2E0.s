	.syntax unified
	.text

	thumb_func_start sub_808C2E0
sub_808C2E0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0808C2FC
	movs r0, #0x5E
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	strh r5, [r0, #0x00]
	ldr r0, _0808C304 @ =0x0808C601
	str r0, [r4, #0x4C]
_0808C2FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808C304: .4byte 0x0808C601
