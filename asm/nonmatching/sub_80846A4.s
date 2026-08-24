	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r1, r9
	adds r6, r1, r0
	ldrb r1, [r6, #0x05]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0808479C
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6, #0x05]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1F
	ldrh r0, [r6, #0x04]
	lsls r0, r0, #0x12
	lsrs r5, r0, #0x12
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bne _080846E4
	ldr r0, [r6, #0x0C]
	str r0, [r6, #0x10]
_080846E4:
	lsls r1, r1, #0x02
	movs r0, #0xA0
	lsls r0, r0, #0x02
	add r0, r9
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	bl sub_80E9414
	adds r1, r0, #0x0
	str r1, [r6, #0x0C]
	ldr r0, _080847A8 @ =0xF9FFC000
	adds r4, r1, r0
	lsls r4, r4, #0x0B
	lsrs r4, r4, #0x10
	ldr r0, _080847AC @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldrb r1, [r6, #0x02]
	mov r8, r1
	ldrb r3, [r6, #0x03]
	movs r1, #0xA2
	lsls r1, r1, #0x02
	add r1, r9
	ldrh r0, [r6, #0x08]
	lsls r0, r0, #0x01
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	movs r0, #0x0F
	ands r7, r0
	lsls r2, r7, #0x0C
	orrs r2, r4
	subs r3, #0x01
	cmp r3, #0x00
	blt _08084792
_08084732:
	subs r3, #0x01
	mov r12, r3
	adds r7, r1, #0x0
	adds r7, #0x40
	mov r0, r8
	cmp r0, #0x00
	beq _0808478A
	adds r4, r1, #0x0
	mov r5, r8
	negs r3, r5
	movs r0, #0x03
	ands r3, r0
	cmp r3, #0x00
	beq _08084772
	cmp r3, #0x03
	bge _08084766
	cmp r3, #0x02
	bge _0808475E
	strh r2, [r1, #0x00]
	adds r2, #0x01
	adds r4, r1, #0x2
	subs r5, #0x01
_0808475E:
	strh r2, [r4, #0x00]
	adds r2, #0x01
	adds r4, #0x02
	subs r5, #0x01
_08084766:
	strh r2, [r4, #0x00]
	adds r2, #0x01
	adds r4, #0x02
	subs r5, #0x01
	cmp r5, #0x00
	beq _0808478A
_08084772:
	strh r2, [r4, #0x00]
	adds r0, r2, #0x1
	strh r0, [r4, #0x02]
	adds r0, r2, #0x2
	strh r0, [r4, #0x04]
	adds r0, r2, #0x3
	strh r0, [r4, #0x06]
	adds r2, #0x04
	adds r4, #0x08
	subs r5, #0x04
	cmp r5, #0x00
	bne _08084772
_0808478A:
	adds r1, r7, #0x0
	mov r3, r12
	cmp r3, #0x00
	bge _08084732
_08084792:
	ldrh r1, [r6, #0x08]
	ldrh r2, [r6, #0x06]
	mov r0, r9
	bl sub_8084614
_0808479C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080847A8: .4byte 0xF9FFC000
_080847AC: .4byte 0x03001034
