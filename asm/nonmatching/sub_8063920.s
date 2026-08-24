	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806397E
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08063938
	adds r2, #0xFF
_08063938:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08063942
	adds r3, #0xFF
_08063942:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08063958
	movs r0, #0x13
	b _0806395A
_08063958:
	movs r0, #0x12
_0806395A:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x1E
	str r1, [r0, #0x00]
	ldr r0, _08063988 @ =0x08063A75
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806397E:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08063988: .4byte sub_8063A74
