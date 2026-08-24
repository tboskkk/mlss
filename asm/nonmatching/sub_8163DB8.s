	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r8, r1
	bl sub_80198B0
	adds r6, r0, #0x0
	ldr r2, _08163E04 @ =0x0821280C
	movs r0, #0x01
	adds r1, r6, #0x0
	bl alloc_heap_8018CEC
	adds r4, r0, #0x0
	ldr r0, _08163E08 @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r8
	adds r2, r6, #0x0
	movs r3, #0x10
	bl sub_8018218
	adds r0, r4, #0x0
	bl free_heap_memory_8018C68
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08163E04: .4byte 0x0821280C
_08163E08: .4byte 0x03000C84
