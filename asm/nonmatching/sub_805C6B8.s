	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0805C6F0 @ =0x040000BA
	movs r5, #0x00
	strh r5, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	ldr r0, _0805C6F4 @ =0x03000E0C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C6D6
	bl free_heap_8018D9C
_0805C6D6:
	ldr r0, _0805C6F8 @ =0x03000E08
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C6E2
	bl free_heap_8018D9C
_0805C6E2:
	ldr r1, _0805C6FC @ =0x00000584
	adds r0, r4, r1
	strb r5, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C6F0: .4byte 0x040000BA
_0805C6F4: .4byte 0x03000E0C
_0805C6F8: .4byte 0x03000E08
_0805C6FC: .4byte 0x00000584
