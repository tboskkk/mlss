	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CDBB0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x30]
	bl sub_8087CE4
	ldr r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDBA2
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x9C
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	ldr r3, [r4, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDB52
	cmp r1, #0x04
	bne _080CDB9C
_080CDB52:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080CDB5A
	adds r0, #0xFF
_080CDB5A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080CDB72
	adds r2, #0xFF
_080CDB72:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0C
	bl sub_808843C
	ldr r0, [r4, #0x30]
	movs r1, #0x28
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x30]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	bl sub_8088164
_080CDB9C:
	ldr r0, _080CDBB4 @ =0x080CDBB9
	mov r1, r8
	str r0, [r1, #0x4C]
_080CDBA2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CDBB0: .4byte 0x03000FD8
_080CDBB4: .4byte sub_80CDBB8
