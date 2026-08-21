	.syntax unified
	.text

	thumb_func_start sub_80FAB18
sub_80FAB18:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	ldr r0, [r5, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	subs r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F9544
	ldr r0, [r5, #0x14]
	ldr r2, [r6, #0x00]
	adds r1, r4, #0x0
	bl sub_8121910
	ldr r0, [r5, #0x14]
	ldr r2, [r6, #0x04]
	ldr r3, [r6, #0x08]
	adds r1, r4, #0x0
	bl sub_81218E4
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F95FC
	ldr r0, [r5, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	mov r8, r1
	add r0, r8
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x06
	adds r0, r4, r0
	ldr r3, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, [r5, #0x14]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
