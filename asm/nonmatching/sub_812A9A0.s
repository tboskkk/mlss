	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r3, #0x0
	ldr r6, [sp, #0x010]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _0812AA5C @ =0x08CDC3F8
	str r0, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x50
	strh r1, [r0, #0x00]
	ldr r2, _0812AA60 @ =0x03000388
	str r2, [r5, #0x3C]
	ldrh r1, [r2, #0x3C]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	adds r3, r5, #0x0
	adds r3, #0x8E
	strh r0, [r3, #0x00]
	ldr r3, _0812AA64 @ =0x000003FF
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x3C]
	ldr r0, [r5, #0x3C]
	ldrb r1, [r0, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x90
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x3C]
	ldrb r0, [r0, #0x09]
	adds r1, r5, #0x0
	adds r1, #0x91
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x3C]
	movs r0, #0x0A
	strb r0, [r1, #0x08]
	ldr r1, [r5, #0x3C]
	movs r0, #0x08
	strb r0, [r1, #0x09]
	adds r0, r5, #0x0
	adds r0, #0xBD
	strb r4, [r0, #0x00]
	adds r0, #0x01
	strb r6, [r0, #0x00]
	ldr r6, _0812AA68 @ =0x08211A90
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x01
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r6, #0x0
	bl process_add
	ldr r0, _0812AA6C @ =0x08CDC408
	str r0, [r4, #0x18]
	str r4, [r5, #0x1C]
	ldr r4, _0812AA70 @ =0x08211A98
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x01
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r5, #0x20]
	ldr r2, _0812AA74 @ =0x08211AA0
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	bl sub_801B75C
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x1C]
	str r5, [r0, #0x14]
	ldr r0, [r5, #0x20]
	str r5, [r0, #0x14]
	adds r0, r5, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0812AA5C: .4byte 0x08CDC3F8
_0812AA60: .4byte 0x03000388
_0812AA64: .4byte 0x000003FF
_0812AA68: .4byte 0x08211A90
_0812AA6C: .4byte 0x08CDC408
_0812AA70: .4byte 0x08211A98
_0812AA74: .4byte 0x08211AA0
