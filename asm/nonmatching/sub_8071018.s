	.syntax unified
	.text

	thumb_func_start sub_8071018
sub_8071018:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0xA7
	bl stop_sfx_80195A8
	ldr r2, _0807104C @ =0x000040E7
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x80
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08071050 @ =0x080711A5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0807104C: .4byte 0x000040E7
_08071050: .4byte sub_80711A4
