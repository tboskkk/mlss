	.syntax unified
	.text

	thumb_func_start sub_80E195C
sub_80E195C:
	push {r4, r5, r6, lr}
	mov r12, r1
	mov r2, r12
	adds r2, #0x78
	ldrh r5, [r2, #0x00]
	mov r3, r12
	adds r3, #0x7A
	ldrh r6, [r3, #0x00]
	movs r1, #0x00
	strh r1, [r2, #0x00]
	strh r1, [r3, #0x00]
	str r1, [r0, #0x5C]
	str r1, [r0, #0x60]
	cmp r5, #0x00
	beq _080E19A0
	mov r4, r12
	adds r4, #0x7E
	ldrb r1, [r4, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080E19A0
	mov r0, r12
	adds r0, #0x08
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldrb r1, [r4, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080E19A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
