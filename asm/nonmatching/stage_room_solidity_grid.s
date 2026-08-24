	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	ldr r2, _0805A028 @ =solidity_grid_offset_table
	ldr r1, _0805A02C @ =room_solidity_index_table
	ldrh r0, [r3, #0x1E]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r0, [r0, #0x06]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r7, r0, r2
	movs r5, #0x00
	b _0805A056
_0805A028: .4byte solidity_grid_offset_table
_0805A02C: .4byte room_solidity_index_table
_0805A030:
	movs r2, #0x00
	ldrh r0, [r3, #0x26]
	adds r6, r5, #0x1
	cmp r2, r0
	bge _0805A054
	adds r4, r3, #0x0
	adds r4, #0x9C
_0805A03E:
	muls r0, r5
	ldr r1, [r4, #0x00]
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	adds r2, #0x01
	ldrh r0, [r3, #0x26]
	cmp r2, r0
	blt _0805A03E
_0805A054:
	adds r5, r6, #0x0
_0805A056:
	ldrh r0, [r3, #0x28]
	cmp r5, r0
	blt _0805A030
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
