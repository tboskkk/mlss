	.syntax unified
	.text

	thumb_func_start sub_8072370
sub_8072370:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08072388
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _0807238C @ =0x08071B15
	str r0, [r2, #0x4C]
_08072388:
	pop {r0}
	bx r0
_0807238C: .4byte sub_8071B14
