	.syntax unified
	.text

	thumb_func_start sub_81506B4
sub_81506B4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815041C
	ldr r3, _081506D8 @ =0x0814E8B1
	str r3, [r5, #0x0C]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081506D8: .4byte sub_814E8B0
