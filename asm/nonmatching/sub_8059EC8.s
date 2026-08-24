	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #0x01
	adds r2, r2, r1
	lsls r2, r2, #0x03
	ldr r1, _08059EE8 @ =room_props_table
	ldr r0, _08059EEC @ =0x03000DD0
	adds r2, r2, r1
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	pop {r4}
	pop {r0}
	bx r0
_08059EE8: .4byte room_props_table
_08059EEC: .4byte 0x03000DD0
