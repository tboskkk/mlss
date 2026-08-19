	.syntax unified
	.text

	thumb_func_start sub_80E19CC
sub_80E19CC:
	push {r4, lr}
	ldr r3, _080E19E8 @ =0x0838F8B0
	lsls r1, r1, #0x01
	adds r2, r1, r3
	movs r4, #0x00
	ldsh r2, [r2, r4]
	str r2, [r0, #0x00]
	adds r3, #0x02
	adds r1, r1, r3
	adds r0, r1, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080E19E8: .4byte 0x0838F8B0
