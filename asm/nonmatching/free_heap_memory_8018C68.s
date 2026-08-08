	.syntax unified
	.text

	thumb_func_start free_heap_memory_8018C68
free_heap_memory_8018C68: @ 08018C68
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _08018CE2
	adds r4, r3, #0x0
	subs r4, #0x10
	ldr r6, [r4, #0x00]
	ldr r5, [r4, #0x04]
	ldr r0, [r4, #0x08]
	movs r7, #0x01
	orrs r0, r7
	str r0, [r4, #0x08]
	subs r1, r3, #0x4
	ldr r2, _08018CE8 @ =0x081DD7C8
	ldrb r0, [r2, #0x00]
	strb r0, [r1, #0x00]
	subs r1, r3, #0x3
	ldrb r0, [r2, #0x01]
	strb r0, [r1, #0x00]
	subs r1, r3, #0x2
	ldrb r0, [r2, #0x02]
	strb r0, [r1, #0x00]
	subs r1, r3, #0x1
	ldrb r0, [r2, #0x03]
	strb r0, [r1, #0x00]
	cmp r5, #0x00
	beq _08018CBE
	ldr r1, [r5, #0x08]
	adds r0, r1, #0x0
	ands r0, r7
	cmp r0, #0x00
	beq _08018CBE
	movs r0, #0x02
	negs r0, r0
	ands r1, r0
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r0, [r5, #0x04]
	str r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08018CBE
	str r4, [r0, #0x00]
_08018CBE:
	cmp r6, #0x00
	beq _08018CE2
	ldr r2, [r6, #0x08]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _08018CE2
	ldr r0, [r4, #0x08]
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r0, r2, r0
	str r0, [r6, #0x08]
	ldr r0, [r4, #0x04]
	str r0, [r6, #0x04]
	cmp r0, #0x00
	beq _08018CE2
	str r6, [r0, #0x00]
_08018CE2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08018CE8: .4byte 0x081DD7C8
