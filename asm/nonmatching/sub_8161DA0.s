	.syntax unified
	.text

	thumb_func_start sub_8161DA0
sub_8161DA0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r7, [r5, #0x64]
	cmp r7, #0x00
	beq _08161E22
	ldr r3, [r5, #0x68]
	cmp r3, #0x00
	beq _08161E22
	adds r6, r5, #0x0
	adds r6, #0x56
	adds r1, r5, #0x0
	adds r1, #0x58
	ldrh r0, [r6, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bne _08161DD2
	adds r0, r5, #0x0
	adds r0, #0x52
	adds r1, r5, #0x0
	adds r1, #0x54
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	beq _08161E22
_08161DD2:
	ldrh r2, [r6, #0x00]
	cmp r2, #0x00
	blt _08161E22
	cmp r2, #0x03
	ble _08161DE0
	cmp r2, #0x05
	bne _08161E22
_08161DE0:
	adds r0, r5, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	ldrb r3, [r0, #0x00]
	movs r1, #0x7F
	lsrs r4, r3, #0x07
	ldr r0, [r5, #0x10]
	adds r2, r7, r2
	ands r1, r3
	ldrb r2, [r2, #0x00]
	adds r1, r1, r2
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r5, #0x10]
	lsls r4, r4, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x11]
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	bne _08161E22
	ldr r0, [r5, #0x10]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
_08161E22:
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	beq _08161E2E
	adds r0, r5, #0x0
	bl sub_8161D20
_08161E2E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
