	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x0C]
	movs r0, #0x10
	ldsh r1, [r4, r0]
	movs r0, #0xFA
	muls r0, r1
	cmp r0, #0x00
	bge _0807CEDA
	adds r0, #0xFF
_0807CEDA:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #0x3D
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x12
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	ldr r5, [r6, #0x08]
	cmp r1, #0x00
	bge _0807CF00
	adds r1, #0xFF
_0807CF00:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _0807CF08
	adds r0, #0xFF
_0807CF08:
	asrs r2, r0, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807F7BC
	ldr r0, _0807CF40 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807CF38
	movs r0, #0x18
	strh r0, [r4, #0x16]
	ldr r0, _0807CF44 @ =0x0807CF49
	str r0, [r6, #0x04]
_0807CF38:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CF40: .4byte 0x03000FD8
_0807CF44: .4byte sub_807CF48
