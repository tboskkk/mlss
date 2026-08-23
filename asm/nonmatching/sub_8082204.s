	.syntax unified
	.text

	thumb_func_start sub_8082204
sub_8082204:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x01
	ble _08082216
	subs r0, r1, #0x1
	b _08082218
_08082216:
	movs r0, #0x01
_08082218:
	strh r0, [r4, #0x10]
	bl sub_80E3D1C
	ldr r0, _08082248 @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _0808224C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _08082250 @ =0x0300034C
	ldr r0, _08082254 @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08082258 @ =0x0808227D
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082248: .4byte sub_80FC91C
_0808224C: .4byte 0x03000FD8
_08082250: .4byte 0x0300034C
_08082254: .4byte 0x00000888
_08082258: .4byte sub_808227C
