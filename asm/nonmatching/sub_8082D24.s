	.syntax unified
	.text

	thumb_func_start sub_8082D24
sub_8082D24:
	push {r4, lr}
	movs r4, #0xEF
	lsls r4, r4, #0x03
	adds r3, r0, r4
	strh r1, [r3, #0x00]
	ldr r1, _08082D3C @ =0x0000077A
	adds r0, r0, r1
	strh r2, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082D3C: .4byte 0x0000077A
