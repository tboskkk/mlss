	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0805A9E4 @ =0x08CDC2A8
	str r0, [r4, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	beq _0805A9B8
	bl free_heap_8018D9C
_0805A9B8:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _0805A9C2
	bl free_heap_8018D9C
_0805A9C2:
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	beq _0805A9CC
	bl free_heap_8018D9C
_0805A9CC:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	beq _0805A9D6
	bl free_heap_8018D9C
_0805A9D6:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0805A9E4: .4byte 0x08CDC2A8
