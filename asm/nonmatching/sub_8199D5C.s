	.syntax unified
	.text

	thumb_func_start sub_8199D5C
sub_8199D5C:
	push {r4, lr}
	ldr r4, [r0, #0x08]
	strb r1, [r0, #0x0C]
	strb r2, [r0, #0x0D]
	str r3, [r0, #0x08]
	ldrb r2, [r0, #0x12]
	movs r1, #0x21
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x12]
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
