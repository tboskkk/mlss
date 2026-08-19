	.syntax unified
	.text

	thumb_func_start get_field_object_count
get_field_object_count: @ 080FB778
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0E
	ldr r2, _080FB78C @ =0x083D6C58
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x01]
	lsrs r0, r0, #0x03
	strb r0, [r1, #0x00]
	ldrb r0, [r1, #0x00]
	bx lr
_080FB78C: .4byte 0x083D6C58
