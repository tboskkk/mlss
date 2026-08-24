	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809BC10
	adds r0, r2, #0x0
	bl sub_807FB64
	ldr r0, [r6, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809BBA2
	ldr r2, _0809BC18 @ =0x03001038
	ldr r0, _0809BC1C @ =0x0819832C
	ldr r1, _0809BC20 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809BBA2:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x14
	bl sub_81DD77C
	adds r5, r0, #0x0
	adds r5, #0x46
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x01
	bl sub_81DD77C
	adds r0, #0x03
	lsls r0, r0, #0x08
	subs r1, r5, r4
	orrs r0, r1
	strh r0, [r6, #0x1C]
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r1, r4, r0
	cmp r4, r0
	bge _0809BBE4
	adds r1, r4, r0
_0809BBE4:
	adds r4, r1, #0x0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x01
	bl sub_81DD77C
	adds r0, #0x03
	lsls r0, r0, #0x08
	subs r1, r5, r4
	orrs r0, r1
	strh r0, [r6, #0x1E]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0F
	bl sub_81DD77C
	adds r0, #0x23
	strh r0, [r6, #0x20]
	ldr r0, _0809BC24 @ =0x0809BC29
	str r0, [r6, #0x4C]
_0809BC10:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809BC18: .4byte 0x03001038
_0809BC1C: .4byte 0x0819832C
_0809BC20: .4byte 0x08198220
_0809BC24: .4byte sub_809BC28
