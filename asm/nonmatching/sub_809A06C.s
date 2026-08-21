	.syntax unified
	.text

	thumb_func_start sub_809A06C
sub_809A06C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x28
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	ldr r0, _0809A098 @ =0x08099449
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809A098: .4byte sub_8099448
