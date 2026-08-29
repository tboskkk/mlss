	.syntax unified
	.text

	thumb_func_start sub_8165144
sub_8165144:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x50]
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x54]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	bl sub_8021308
	ldr r0, [r4, #0x04]
	bl sub_8021308
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	beq _0816516A
	bl free_heap_memory_8018C68
_0816516A:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _08165174
	bl free_heap_memory_8018C68
_08165174:
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0816517E
	bl free_heap_memory_8018C68
_0816517E:
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _08165188
	bl free_heap_memory_8018C68
_08165188:
	bl sub_80E8D74
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0816519A
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0816519A:
	pop {r4, r5}
	pop {r0}
	bx r0
