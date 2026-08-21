	.syntax unified
	.text

	thumb_func_start sub_81701A8
sub_81701A8:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r3, #0x0
	bl sub_8163A6C
	ldr r0, _081701D8 @ =0x0300034C
	ldrh r1, [r0, #0x28]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081701DC
	adds r0, r4, #0x0
	adds r0, #0xE8
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _081701DC
	adds r1, r5, #0x0
	adds r1, #0x56
	movs r0, #0x05
	b _081701E2
_081701D8: .4byte 0x0300034C
_081701DC:
	adds r1, r5, #0x0
	adds r1, #0x56
	movs r0, #0x00
_081701E2:
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	ldrh r2, [r1, #0x00]
	cmp r0, r2
	beq _0817024E
	ldrh r1, [r1, #0x00]
	cmp r1, #0x00
	beq _0817022E
	cmp r1, #0x05
	bne _0817024E
	ldr r0, [r5, #0x6C]
	ldr r3, [r0, #0x10]
	ldrb r2, [r3, #0x12]
	movs r1, #0x11
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x12]
	ldr r0, [r5, #0x70]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x12]
	ands r1, r0
	strb r1, [r2, #0x12]
	ldr r0, [r5, #0x6C]
	ldr r3, [r0, #0x10]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x12]
	ldr r0, [r5, #0x70]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x12]
	ands r1, r0
	b _0817024C
_0817022E:
	ldr r0, [r5, #0x6C]
	ldr r3, [r0, #0x10]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r3, #0x12]
	ldr r0, [r5, #0x70]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x12]
	ands r1, r0
	orrs r1, r4
_0817024C:
	strb r1, [r2, #0x12]
_0817024E:
	ldr r0, [r5, #0x70]
	str r6, [r0, #0x18]
	ldr r1, [r5, #0x6C]
	ldr r2, _08170260 @ =0xFFFFFB00
	adds r0, r7, r2
	str r0, [r1, #0x20]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08170260: .4byte 0xFFFFFB00
