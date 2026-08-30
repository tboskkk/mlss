	.syntax unified
	.text

	thumb_func_start sub_814B5D0
sub_814B5D0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B5EC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
_0814B5EC:
	pop {r4, r5}
	pop {r0}
	bx r0
