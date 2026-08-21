	.syntax unified
	.text

	thumb_func_start sub_8086E8C
sub_8086E8C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x08]
	ldr r2, [r4, #0x30]
	cmp r2, #0x00
	beq _08086EBA
	movs r5, #0x08
_08086E9A:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08086EB4
	ldr r1, [r2, #0x08]
	ldrh r0, [r1, #0x0E]
	ldrh r6, [r3, #0x0E]
	cmp r0, r6
	bcs _08086EB4
	adds r3, r1, #0x0
_08086EB4:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08086E9A
_08086EBA:
	ldr r5, [r4, #0x28]
	ldr r1, [r5, #0x00]
	cmp r1, #0x00
	beq _08086F02
	cmp r1, r5
	beq _08086F02
_08086EC6:
	ldr r2, [r1, #0x10]
	ldrh r0, [r2, #0x0E]
	ldrh r7, [r3, #0x0E]
	cmp r0, r7
	bcs _08086ED2
	adds r3, r2, #0x0
_08086ED2:
	ldr r2, [r1, #0x38]
	ldr r4, [r1, #0x00]
	cmp r2, #0x00
	beq _08086EFC
	movs r6, #0x08
_08086EDC:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08086EF6
	ldr r1, [r2, #0x08]
	ldrh r0, [r1, #0x0E]
	ldrh r7, [r3, #0x0E]
	cmp r0, r7
	bcs _08086EF6
	adds r3, r1, #0x0
_08086EF6:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08086EDC
_08086EFC:
	adds r1, r4, #0x0
	cmp r1, r5
	bne _08086EC6
_08086F02:
	adds r0, r3, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
