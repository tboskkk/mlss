	.syntax unified
	.text

	thumb_func_start sub_80875B8
sub_80875B8:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r3, [r1, #0x00]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	ble _080875D0
	subs r0, r3, #0x1
	strh r0, [r1, #0x00]
	b _080875D4
_080875D0:
	ldr r0, _080875DC @ =0x08086091
	str r0, [r2, #0x4C]
_080875D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080875DC: .4byte sub_8086090
