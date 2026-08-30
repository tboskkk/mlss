	.syntax unified
	.text

	thumb_func_start sub_814DD14
sub_814DD14:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814DD28
	ldr r0, _0814DD30 @ =0x0814D35D
	str r0, [r4, #0x00]
_0814DD28:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814DD30: .4byte sub_814D35C
