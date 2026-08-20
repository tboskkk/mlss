	.syntax unified
	.text

	thumb_func_start sprite_heap_free
sprite_heap_free:
	push {r4, lr}
	cmp r0, #0x00
	beq _08021D92
	subs r0, #0x10
	ldr r2, [r0, #0x00]
	ldr r4, [r2, #0x00]
	ldr r3, [r2, #0x04]
	movs r0, #0x00
	strb r0, [r2, #0x0C]
	cmp r3, #0x00
	beq _08021D76
	ldrb r0, [r3, #0x0C]
	cmp r0, #0x00
	bne _08021D76
	ldr r0, [r2, #0x08]
	ldr r1, [r3, #0x08]
	adds r0, r0, r1
	str r0, [r2, #0x08]
	ldr r0, [r3, #0x04]
	str r0, [r2, #0x04]
	cmp r0, #0x00
	beq _08021D76
	str r2, [r0, #0x00]
_08021D76:
	cmp r4, #0x00
	beq _08021D92
	ldrb r0, [r4, #0x0C]
	cmp r0, #0x00
	bne _08021D92
	ldr r0, [r4, #0x08]
	ldr r1, [r2, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08021D92
	str r4, [r0, #0x00]
_08021D92:
	pop {r4}
	pop {r0}
	bx r0
