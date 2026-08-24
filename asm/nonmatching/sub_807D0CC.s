	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldrh r0, [r4, #0x12]
	subs r0, #0xB4
	movs r7, #0x00
	strh r0, [r4, #0x12]
	movs r0, #0x12
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r2, r0, r1
	str r2, [r4, #0x08]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807D0F6
	adds r1, #0xFF
_0807D0F6:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0807D100
	adds r0, #0xFF
_0807D100:
	asrs r2, r0, #0x08
	movs r3, #0x16
	ldsh r0, [r4, r3]
	lsls r3, r0, #0x01
	adds r3, r3, r0
	lsls r3, r3, #0x02
	str r7, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807D154
	ldr r3, _0807D150 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	bge _0807D128
	adds r1, #0xFF
_0807D128:
	asrs r1, r1, #0x08
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bgt _0807D146
	cmp r4, #0x00
	beq _0807D144
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807D144:
	str r7, [r5, #0x04]
_0807D146:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D150: .4byte 0x03000FD8
