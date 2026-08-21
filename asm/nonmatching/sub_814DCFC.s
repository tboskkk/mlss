	.syntax unified
	.text

	thumb_func_start sub_814DCFC
sub_814DCFC:
	push {r4, lr}
	adds r4, r2, #0x0
	bl sub_814DB34
	ldr r0, _0814DD10 @ =0x0814D839
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814DD10: .4byte sub_814D838
