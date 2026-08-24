	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x6E
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0x00
	ldsh r7, [r0, r1]
	cmp r7, #0x00
	bne _08168D64
	ldr r2, [r5, #0x18]
	ldr r0, [r4, #0x18]
	subs r2, r2, r0
	ldr r0, [r5, #0x20]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r2, r0, #0x0
	muls r2, r0
	adds r0, r2, #0x0
	adds r1, r1, r0
	asrs r1, r1, #0x08
	ldr r0, _08168D1C @ =0x000030FF
	cmp r1, r0
	bgt _08168D64
	movs r0, #0x01
	adds r6, r4, #0x0
	adds r6, #0x6C
	ldrh r2, [r6, #0x00]
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08168D20
	movs r0, #0x02
	ands r1, r0
	cmp r1, #0x00
	bne _08168D60
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	movs r0, #0x3C
	mov r1, r8
	strh r0, [r1, #0x00]
	movs r0, #0x08
	ldrh r1, [r6, #0x00]
	orrs r0, r1
	strh r0, [r6, #0x00]
	movs r0, #0x06
	b _08168D5E
	.byte 0x00, 0x00
_08168D1C: .4byte 0x000030FF
_08168D20:
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strh r0, [r6, #0x00]
	movs r0, #0x4C
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x80
	movs r0, #0x78
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x10]
	str r7, [sp, #0x000]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x7C]
	negs r1, r2
	ldr r0, [r4, #0x78]
	asrs r0, r0, #0x03
	muls r0, r1
	str r0, [r5, #0x70]
	ldr r0, [r4, #0x74]
	asrs r0, r0, #0x03
	muls r0, r2
	str r0, [r5, #0x78]
	movs r0, #0x03
_08168D5E:
	str r0, [r5, #0x6C]
_08168D60:
	movs r0, #0x01
	b _08168D66
_08168D64:
	movs r0, #0x00
_08168D66:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
