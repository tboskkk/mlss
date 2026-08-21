	.syntax unified
	.text

	thumb_func_start sub_8099FFC
sub_8099FFC:
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
	ldr r0, _0809A028 @ =0x080997E5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809A028: .4byte sub_80997E4
