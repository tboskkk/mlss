	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start free_heap_8018D9C
free_heap_8018D9C: @ 08018D9C
	push {lr}
	bl free_heap_memory_8018C68
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start free_heap_8018DA8
free_heap_8018DA8: @ 08018DA8
	push {lr}
	bl free_heap_memory_8018C68
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start alloc_zero_8018DB4
alloc_zero_8018DB4: @ 08018DB4
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r0, r1, #0x0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r6, r0, #0x0
	cmp r4, #0x00
	beq _08018DE2
	movs r0, #0x00
	str r0, [sp, #0x000]
	lsls r2, r5, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0xA0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	adds r1, r6, #0x0
	bl CpuSet
_08018DE2:
	adds r0, r6, #0x0
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start alloc_Zero
alloc_Zero: @ 08018DEC
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r0, r1, #0x0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r6, r0, #0x0
	cmp r4, #0x00
	beq _08018E1A
	movs r0, #0x00
	str r0, [sp, #0x000]
	lsls r2, r5, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0xA0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	adds r1, r6, #0x0
	bl CpuSet
_08018E1A:
	adds r0, r6, #0x0
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
