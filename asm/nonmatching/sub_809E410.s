	.syntax unified
	.text

	thumb_func_start sub_809E410
sub_809E410:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r3, [r1, #0x00]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	ble _0809E428
	subs r0, r3, #0x1
	strh r0, [r1, #0x00]
	b _0809E42C
_0809E428:
	ldr r0, _0809E434 @ =0x0809E0ED
	str r0, [r2, #0x4C]
_0809E42C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809E434: .4byte sub_809E0EC
