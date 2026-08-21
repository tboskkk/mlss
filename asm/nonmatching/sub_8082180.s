	.syntax unified
	.text

	thumb_func_start sub_8082180
sub_8082180:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80E3D1C
	ldr r0, _080821B0 @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _080821B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _080821B8 @ =0x0300034C
	ldr r0, _080821BC @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _080821C0 @ =0x0808225D
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
_080821B0: .4byte sub_80FC91C
_080821B4: .4byte 0x03000FD8
_080821B8: .4byte 0x0300034C
_080821BC: .4byte 0x00000888
_080821C0: .4byte sub_808225C
