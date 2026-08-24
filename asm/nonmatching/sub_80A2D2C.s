	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080A2E1C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r6, [r5, #0x2C]
	ldr r0, [r5, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A2D66
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0xCC
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x0C
	strb r1, [r0, #0x00]
_080A2D66:
	ldr r0, [r5, #0x28]
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080A2D86
	adds r1, r5, #0x0
	adds r1, #0x7C
	ldr r0, _080A2E20 @ =0x00000199
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x19
	strb r1, [r0, #0x00]
_080A2D86:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x3F
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2DA6
	cmp r1, #0x04
	bne _080A2DEC
_080A2DA6:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080A2DAE
	adds r0, #0xFF
_080A2DAE:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x20
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080A2DC8
	adds r2, #0xFF
_080A2DC8:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r6, r8
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080A2DEC:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2DFE
	cmp r1, #0x04
	bne _080A2E64
_080A2DFE:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A2E28
	ldr r2, _080A2E24 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2E34
_080A2E1C: .4byte 0x03000FD8
_080A2E20: .4byte 0x00000199
_080A2E24: .4byte 0x00002002
_080A2E28:
	ldr r2, _080A2E74 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A2E34:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080A2E4A
	movs r2, #0x01
_080A2E4A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A2E64:
	ldr r0, _080A2E78 @ =0x080A2E7D
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A2E74: .4byte 0x0000204F
_080A2E78: .4byte sub_80A2E7C
