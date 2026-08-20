	.syntax unified
	.text

	thumb_func_start sub_814B848
sub_814B848:
	push {r4, r5, lr}
	ldr r3, _0814B864 @ =0x0000020E
	adds r5, r1, r3
	ldrb r3, [r5, #0x00]
	movs r4, #0x04
	orrs r3, r4
	strb r3, [r5, #0x00]
	ldr r3, _0814B868 @ =0x08149EF5
	str r3, [r2, #0x00]
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B864: .4byte 0x0000020E
_0814B868: .4byte sub_8149EF4
