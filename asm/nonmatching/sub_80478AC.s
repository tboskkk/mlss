	.syntax unified
	.text

	thumb_func_start sub_80478AC
sub_80478AC:
	push {r4, r5, r6, lr}
	mov r12, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r4, r12
	adds r4, #0x24
	movs r6, #0x07
	adds r3, r1, #0x0
	ands r3, r6
	ldrb r5, [r4, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r5
	orrs r0, r3
	strb r0, [r4, #0x00]
	lsls r1, r1, #0x05
	mov r0, r12
	strb r1, [r0, #0x02]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	mov r3, r12
	adds r3, #0x4C
	ands r0, r6
	ldrb r1, [r3, #0x00]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x02]
	adds r1, #0x2A
	strb r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	add r0, r12
	ldr r2, [r1, #0x3C]
	movs r1, #0x00
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
