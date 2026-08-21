	.syntax unified
	.text

	thumb_func_start sub_80E8EE0
sub_80E8EE0:
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	ldr r4, [r0, #0x00]
	adds r4, r4, r1
	ldr r0, [r4, #0x00]
	bl sprite_hide_8021F20
	movs r0, #0x00
	strb r0, [r4, #0x0F]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
