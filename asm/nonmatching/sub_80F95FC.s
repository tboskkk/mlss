	.syntax unified
	.text

	thumb_func_start sub_80F95FC
sub_80F95FC:
	push {r4, lr}
	lsls r1, r1, #0x18
	ldr r0, [r0, #0x14]
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r0, r2
	lsrs r1, r1, #0x12
	ldr r3, [r0, #0x00]
	adds r3, r3, r1
	ldr r4, [r3, #0x00]
	ldrh r0, [r3, #0x12]
	strh r0, [r4, #0x0E]
	ldrb r1, [r3, #0x0F]
	adds r0, r4, #0x0
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldrb r0, [r3, #0x10]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1F]
	ldrb r0, [r3, #0x10]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x02
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1F]
	ldrh r0, [r3, #0x10]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1F]
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x06
	movs r2, #0x3F
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1F]
	pop {r4}
	pop {r0}
	bx r0
