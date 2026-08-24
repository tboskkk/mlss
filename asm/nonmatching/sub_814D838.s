	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r4, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0814D880
	ldr r2, _0814D87C @ =0x00000272
	adds r1, r4, r2
	movs r0, #0xC0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r2, #0x04
	adds r1, r4, r2
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	b _0814D8A0
_0814D87C: .4byte 0x00000272
_0814D880:
	cmp r0, #0x01
	bhi _0814D95C
	ldr r0, _0814D94C @ =0x00000272
	adds r1, r4, r0
	movs r0, #0xC0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	ldr r2, _0814D950 @ =0x00000276
	adds r0, r4, r2
	strh r1, [r0, #0x00]
_0814D8A0:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r1, [r3, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _0814D95C
	movs r0, #0x2A
	ldsh r2, [r1, r0]
	adds r0, r1, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bge _0814D8C6
	negs r0, r0
_0814D8C6:
	cmp r2, r0
	bgt _0814D95C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r3, #0x00
	bl sub_801E150
	ldr r2, _0814D94C @ =0x00000272
	adds r1, r4, r2
	movs r0, #0xE0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, #0x04
	adds r1, r4, r2
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_814DCC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D958
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	ldr r0, _0814D954 @ =0x0814DD15
	b _0814D95A
_0814D94C: .4byte 0x00000272
_0814D950: .4byte 0x00000276
_0814D954: .4byte sub_814DD14
_0814D958:
	ldr r0, _0814D964 @ =0x0814D35D
_0814D95A:
	str r0, [r6, #0x00]
_0814D95C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D964: .4byte sub_814D35C
