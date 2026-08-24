	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	mov r8, r2
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _08086170
	b _08086302
_08086170:
	ldr r0, _080862C8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080862CC @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r4, #0x01
	orrs r0, r4
	strb r0, [r1, #0x00]
	str r3, [r5, #0x2C]
	adds r7, r5, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
	movs r3, #0x09
	negs r3, r3
	ands r3, r0
	movs r0, #0x11
	negs r0, r0
	ands r3, r0
	strb r3, [r7, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	add r0, r8
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x0C]
	adds r6, r1, r0
	ldrb r0, [r6, #0x08]
	movs r2, #0x60
	movs r1, #0x60
	ands r1, r0
	eors r1, r2
	asrs r2, r1, #0x05
	ands r2, r4
	lsls r2, r2, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	asrs r1, r1, #0x06
	ands r1, r4
	lsls r1, r1, #0x05
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x00]
	str r6, [r5, #0x6C]
	ldr r7, [r5, #0x28]
	movs r1, #0x9C
	adds r1, r1, r5
	mov r9, r1
	movs r2, #0xA0
	adds r2, r2, r5
	mov r10, r2
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r0, [sp, #0x000]
	movs r1, #0xCC
	adds r1, r1, r5
	mov r12, r1
	cmp r7, #0x00
	beq _0808626E
	adds r0, r7, #0x0
	adds r0, #0x08
	cmp r0, r5
	beq _08086204
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808626E
_08086204:
	ldr r2, [r7, #0x38]
	ldr r4, [r7, #0x00]
	movs r0, #0x9C
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xA0
	adds r1, r1, r5
	mov r10, r1
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r0, [sp, #0x000]
	movs r1, #0xCC
	adds r1, r1, r5
	mov r12, r1
	cmp r2, #0x00
	beq _0808623C
	movs r3, #0x08
_08086226:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08086236
	str r6, [r2, #0x6C]
_08086236:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08086226
_0808623C:
	adds r0, r4, #0x0
	cmp r0, #0x00
	beq _0808626E
	cmp r0, r7
	beq _0808626E
_08086246:
	str r6, [r0, #0x74]
	ldr r2, [r0, #0x38]
	ldr r3, [r0, #0x00]
	cmp r2, #0x00
	beq _08086268
	movs r4, #0x08
_08086252:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08086262
	str r6, [r2, #0x6C]
_08086262:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08086252
_08086268:
	adds r0, r3, #0x0
	cmp r0, r7
	bne _08086246
_0808626E:
	ldr r1, [r5, #0x28]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r1, r1, r2
	movs r0, #0x1F
	mov r2, r8
	ands r2, r0
	mov r8, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _080862D0 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r1, _080862D4 @ =0x080874B5
	str r1, [r5, #0x54]
	movs r2, #0x0E
	ldsh r0, [r6, r2]
	mov r1, r9
	str r0, [r1, #0x00]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	mov r1, r10
	str r0, [r1, #0x00]
	ldrh r0, [r6, #0x12]
	lsls r0, r0, #0x11
	asrs r0, r0, #0x11
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x00]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _080862D8
	movs r0, #0x7F
	ands r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	b _080862F2
_080862C8: .4byte 0x03000FD8
_080862CC: .4byte 0x000002BF
_080862D0: .4byte sub_8087540
_080862D4: .4byte sub_80874B4
_080862D8:
	adds r0, r5, #0x0
	adds r0, #0xC8
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xCA
	strh r2, [r0, #0x00]
_080862F2:
	adds r0, r5, #0x0
	bl sub_8106994
	adds r0, r5, #0x0
	bl sub_8081DE4
	ldr r0, _08086314 @ =0x0808759D
	str r0, [r5, #0x4C]
_08086302:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08086314: .4byte sub_808759C
