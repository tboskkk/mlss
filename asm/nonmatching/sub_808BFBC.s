	.syntax unified
	.text

	thumb_func_start sub_808BFBC
sub_808BFBC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0808BFE2
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _0808BFE8 @ =0x0808C309
	str r0, [r4, #0x4C]
_0808BFE2:
	pop {r4}
	pop {r0}
	bx r0
_0808BFE8: .4byte sub_808C308
