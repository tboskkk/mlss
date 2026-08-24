	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r3, r1, #0x0
	adds r7, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08086418
	ldr r0, _080863E8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080863EC @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r5, #0x01
	orrs r0, r5
	strb r0, [r1, #0x00]
	str r3, [r6, #0x2C]
	movs r1, #0x77
	adds r1, r1, r6
	mov r12, r1
	ldrb r0, [r1, #0x00]
	movs r3, #0x09
	negs r3, r3
	ands r3, r0
	movs r0, #0x11
	negs r0, r0
	ands r3, r0
	strb r3, [r1, #0x00]
	ldr r0, [r6, #0x28]
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	lsls r0, r7, #0x02
	adds r0, r0, r7
	lsls r0, r0, #0x02
	ldr r4, [r1, #0x0C]
	adds r4, r4, r0
	ldrb r0, [r4, #0x08]
	movs r2, #0x60
	movs r1, #0x60
	ands r1, r0
	eors r1, r2
	asrs r2, r1, #0x05
	ands r2, r5
	lsls r2, r2, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	asrs r1, r1, #0x06
	ands r1, r5
	lsls r1, r1, #0x05
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	mov r2, r12
	strb r0, [r2, #0x00]
	str r4, [r6, #0x6C]
	ldr r1, [r6, #0x28]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x1F
	ands r7, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r7
	strb r0, [r1, #0x00]
	ldr r0, _080863F0 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, _080863F4 @ =0x080874B5
	str r0, [r6, #0x54]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r2, #0x0E
	ldsh r0, [r4, r2]
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r2, #0x10
	ldsh r0, [r4, r2]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x11
	asrs r0, r0, #0x11
	str r0, [r1, #0x00]
	adds r3, r6, #0x0
	adds r3, #0xCC
	ldrb r1, [r3, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _080863F8
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r3, #0x00]
	b _0808640E
	.byte 0x00, 0x00
_080863E8: .4byte 0x03000FD8
_080863EC: .4byte 0x000002BF
_080863F0: .4byte sub_8087540
_080863F4: .4byte sub_80874B4
_080863F8:
	adds r0, r6, #0x0
	adds r0, #0xC8
	strh r2, [r0, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xCA
	strh r2, [r0, #0x00]
_0808640E:
	adds r0, r6, #0x0
	bl sub_8081DE4
	ldr r0, _08086420 @ =0x0808759D
	str r0, [r6, #0x4C]
_08086418:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08086420: .4byte sub_808759C
