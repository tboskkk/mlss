	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	adds r4, r1, #0x0
	movs r0, #0x01
	negs r0, r0
	mov r10, r0
	ldr r1, _080E4DA0 @ =0x03000F90
	ldr r3, [r1, #0x00]
	ldrb r2, [r3, #0x01]
	ldrb r5, [r3, #0x00]
	adds r0, r2, #0x0
	subs r2, #0x01
	adds r7, r1, #0x0
	cmp r0, r5
	beq _080E4DB0
	adds r6, r3, #0x0
	adds r6, #0x50
	lsls r0, r2, #0x02
	adds r0, #0x10
	adds r1, r0, r3
_080E4D84:
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080E4DA4
	cmp r0, r9
	bne _080E4DA6
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r4
	bne _080E4DA6
	adds r0, r2, #0x0
	b _080E4EDA
	.byte 0x00, 0x00
_080E4DA0: .4byte 0x03000F90
_080E4DA4:
	mov r10, r2
_080E4DA6:
	adds r0, r2, #0x0
	subs r1, #0x04
	subs r2, #0x01
	cmp r0, r5
	bne _080E4D84
_080E4DB0:
	mov r1, r10
	cmp r1, #0x00
	bge _080E4DBC
	movs r0, #0x01
	negs r0, r0
	b _080E4EDA
_080E4DBC:
	mov r2, r10
	lsls r0, r2, #0x05
	ldr r1, _080E4E04 @ =0x02000280
	adds r5, r0, r1
	ldr r1, [r7, #0x00]
	lsls r2, r2, #0x02
	adds r0, r1, #0x0
	adds r0, #0x10
	adds r0, r0, r2
	mov r2, r9
	str r2, [r0, #0x00]
	adds r1, #0x50
	add r1, r10
	strb r4, [r1, #0x00]
	ldr r2, _080E4E08 @ =0x0300034C
	movs r0, #0x01
	mov r1, r10
	lsls r0, r1
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	cmp r4, #0x00
	bne _080E4E18
	ldr r2, _080E4E0C @ =0x03001034
	ldr r0, _080E4E10 @ =0x08198154
	ldr r1, _080E4E14 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	mov r0, r9
	adds r1, r5, #0x0
	movs r2, #0x20
	bl _call_via_r3
	b _080E4ED8
	.byte 0x00, 0x00
_080E4E04: .4byte 0x02000280
_080E4E08: .4byte 0x0300034C
_080E4E0C: .4byte 0x03001034
_080E4E10: .4byte 0x08198154
_080E4E14: .4byte 0x081980D8
_080E4E18:
	cmp r4, #0x00
	bge _080E4E28
	adds r3, r4, #0x0
	adds r3, #0x20
	movs r2, #0x00
	mov r12, r2
	mov r8, r2
	b _080E4E3C
_080E4E28:
	movs r0, #0x20
	subs r3, r0, r4
	lsls r0, r4, #0x05
	mov r12, r0
	lsls r0, r4, #0x0F
	mov r1, r12
	orrs r1, r0
	mov r12, r1
	lsls r4, r4, #0x0A
	mov r8, r4
_080E4E3C:
	ldr r7, _080E4EE8 @ =0x00007C1F
	movs r6, #0xF8
	lsls r6, r6, #0x02
	mov r4, r9
	movs r2, #0x0F
	mov r9, r2
_080E4E48:
	ldrh r2, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r7
	ands r2, r6
	adds r1, r0, #0x0
	muls r1, r3
	add r1, r12
	lsrs r1, r1, #0x05
	ands r1, r7
	adds r0, r2, #0x0
	muls r0, r3
	add r0, r8
	lsrs r0, r0, #0x05
	ands r0, r6
	orrs r1, r0
	strh r1, [r5, #0x00]
	ldrh r2, [r4, #0x02]
	adds r0, r2, #0x0
	ands r0, r7
	ands r2, r6
	adds r1, r0, #0x0
	muls r1, r3
	add r1, r12
	lsrs r1, r1, #0x05
	ands r1, r7
	adds r0, r2, #0x0
	muls r0, r3
	add r0, r8
	lsrs r0, r0, #0x05
	ands r0, r6
	orrs r1, r0
	strh r1, [r5, #0x02]
	ldrh r2, [r4, #0x04]
	adds r0, r2, #0x0
	ands r0, r7
	ands r2, r6
	adds r1, r0, #0x0
	muls r1, r3
	add r1, r12
	lsrs r1, r1, #0x05
	ands r1, r7
	adds r0, r2, #0x0
	muls r0, r3
	add r0, r8
	lsrs r0, r0, #0x05
	ands r0, r6
	orrs r1, r0
	strh r1, [r5, #0x04]
	ldrh r2, [r4, #0x06]
	adds r0, r2, #0x0
	ands r0, r7
	ands r2, r6
	adds r1, r0, #0x0
	muls r1, r3
	add r1, r12
	lsrs r1, r1, #0x05
	ands r1, r7
	adds r0, r2, #0x0
	muls r0, r3
	add r0, r8
	lsrs r0, r0, #0x05
	ands r0, r6
	orrs r1, r0
	strh r1, [r5, #0x06]
	adds r5, #0x08
	adds r4, #0x08
	movs r0, #0x04
	negs r0, r0
	add r9, r0
	mov r1, r9
	cmp r1, #0x00
	bge _080E4E48
_080E4ED8:
	mov r0, r10
_080E4EDA:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080E4EE8: .4byte 0x00007C1F
