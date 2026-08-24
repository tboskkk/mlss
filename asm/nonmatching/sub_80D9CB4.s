	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9CFE
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x08
	cmp r1, r0
	bne _080D9CDE
	movs r2, #0x04
_080D9CDE:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D9D04 @ =0x080D95A5
	str r0, [r4, #0x4C]
_080D9CFE:
	pop {r4}
	pop {r0}
	bx r0
_080D9D04: .4byte sub_80D95A4
