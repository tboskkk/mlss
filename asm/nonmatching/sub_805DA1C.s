	.syntax unified
	.text

	thumb_func_start sub_805DA1C
sub_805DA1C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0805DA74 @ =0x08CDC2C8
	str r0, [r4, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA3C
	bl free_heap_8018D9C
_0805DA3C:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA4A
	bl free_heap_8018D9C
_0805DA4A:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA58
	bl free_heap_8018D9C
_0805DA58:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA66
	bl free_heap_8018D9C
_0805DA66:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0805DA74: .4byte 0x08CDC2C8
