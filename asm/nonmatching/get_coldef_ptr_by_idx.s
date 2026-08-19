	.syntax unified
	.text

	thumb_func_start get_coldef_ptr_by_idx
get_coldef_ptr_by_idx: @ 0805A10C
	lsls r1, r1, #0x18
	adds r0, #0xA0
	lsrs r1, r1, #0x16
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	bx lr
