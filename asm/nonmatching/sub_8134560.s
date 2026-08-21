	.syntax unified
	.text

	thumb_func_start sub_8134560
sub_8134560:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, [r5, #0x14]
	cmp r6, #0x00
	beq _081345E0
	ldr r3, [r5, #0x10]
	cmp r3, #0x00
	beq _081345E0
	movs r1, #0x1C
	ldsb r1, [r5, r1]
	movs r0, #0x1D
	ldsb r0, [r5, r0]
	cmp r1, r0
	bne _0813458A
	ldrh r1, [r5, #0x1E]
	ldrh r0, [r5, #0x20]
	lsrs r1, r1, #0x08
	lsrs r0, r0, #0x08
	cmp r1, r0
	beq _081345E0
_0813458A:
	movs r2, #0x1C
	ldsb r2, [r5, r2]
	cmp r2, #0x03
	bgt _081345D8
	cmp r2, #0x00
	blt _081345D8
	ldrh r0, [r5, #0x1E]
	lsrs r0, r0, #0x08
	adds r0, r3, r0
	ldrb r3, [r0, #0x00]
	movs r1, #0x7F
	lsrs r4, r3, #0x07
	ldr r0, [r5, #0x08]
	adds r2, r6, r2
	ands r1, r3
	ldrb r2, [r2, #0x00]
	adds r1, r1, r2
	ldr r3, [r5, #0x38]
	ldr r2, [r5, #0x3C]
	str r2, [sp, #0x000]
	movs r2, #0x00
	bl sub_801E150
	ldr r2, [r5, #0x08]
	lsls r4, r4, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x11]
	movs r0, #0x1C
	ldsb r0, [r5, r0]
	cmp r0, #0x00
	bne _081345D8
	adds r1, r5, #0x0
	adds r1, #0x23
	movs r0, #0x01
	strb r0, [r1, #0x00]
_081345D8:
	ldrb r0, [r5, #0x1C]
	strb r0, [r5, #0x1D]
	ldrh r0, [r5, #0x1E]
	strh r0, [r5, #0x20]
_081345E0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
