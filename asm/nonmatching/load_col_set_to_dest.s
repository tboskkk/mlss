	.syntax unified
	.text

	thumb_func_start load_col_set_to_dest
load_col_set_to_dest: @ 0805A064
	push {r4, lr}
	ldr r1, _0805A0E4 @ =0x03000DD0
	ldrb r1, [r1, #0x06]
	ldr r2, _0805A0E8 @ =col_set_ptr_table
	lsls r1, r1, #0x02
	adds r1, r1, r2
	movs r4, #0x00
	adds r3, r0, #0x0
	adds r3, #0xA0
	ldr r2, [r1, #0x00]
_0805A078:
	ldr r1, [r3, #0x00]
	lsls r0, r4, #0x02
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x00]
	adds r1, r4, #0x1
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x00]
	adds r1, r4, #0x2
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x08]
	str r0, [r1, #0x00]
	adds r1, r4, #0x3
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x0C]
	str r0, [r1, #0x00]
	adds r1, r4, #0x4
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x00]
	adds r1, r4, #0x5
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x00]
	adds r1, r4, #0x6
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x00]
	adds r1, r4, #0x7
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x1C]
	str r0, [r1, #0x00]
	adds r2, #0x20
	adds r4, #0x08
	cmp r4, #0xFF
	ble _0805A078
	pop {r4}
	pop {r0}
	bx r0
_0805A0E4: .4byte 0x03000DD0
_0805A0E8: .4byte col_set_ptr_table
