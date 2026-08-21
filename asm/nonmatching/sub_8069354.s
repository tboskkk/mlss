	.syntax unified
	.text

	thumb_func_start sub_8069354
sub_8069354:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08069388
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _08069374
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _0806937A
_08069374:
	movs r0, #0x81
	bl stop_sfx_80195A8
_0806937A:
	adds r0, r4, #0x0
	adds r0, #0x80
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _08069390 @ =0x080690F9
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08069388:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08069390: .4byte sub_80690F8
