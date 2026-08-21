	.syntax unified
	.text

	thumb_func_start sub_8081F84
sub_8081F84:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08081FA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl process_enable
	ldr r1, _08081FAC @ =0x080FC9A5
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_08081FA8: .4byte 0x03000FD8
_08081FAC: .4byte sub_80FC9A4
