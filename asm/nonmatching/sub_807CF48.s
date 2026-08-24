	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807CF5A
	adds r1, #0xFF
_0807CF5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807CF64
	adds r2, #0xFF
_0807CF64:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r3, _0807CFB4 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bne _0807CFAC
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807CF98
	movs r0, #0x00
	strb r0, [r1, #0x00]
_0807CF98:
	cmp r4, #0x00
	beq _0807CFAA
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807CFAA:
	str r2, [r5, #0x04]
_0807CFAC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CFB4: .4byte 0x03000FD8
