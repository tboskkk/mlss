	.syntax unified
	.text

	thumb_func_start sub_80FA7C4
sub_80FA7C4:
	push {lr}
	ldr r2, [r0, #0x24]
	ldr r3, _080FA7E0 @ =0x000009A1
	adds r2, r2, r3
	movs r3, #0x01
	strb r3, [r2, #0x00]
	adds r0, #0x1C
	bl script_cmd_return
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FA7E0: .4byte 0x000009A1
