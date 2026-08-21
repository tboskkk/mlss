	.syntax unified
	.text

	thumb_func_start sub_8161180
sub_8161180:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x24]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #0x10]
	adds r2, r2, r0
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x30]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r1, r0, #0x08
	ldr r0, [r4, #0x18]
	cmp r0, r1
	ble _081611AA
	str r1, [r4, #0x18]
_081611AA:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x70, 0x47, 0x00, 0x00
