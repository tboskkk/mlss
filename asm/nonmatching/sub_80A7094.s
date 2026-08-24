	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080A7194 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A7186
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A70DC
	cmp r1, #0x04
	bne _080A713E
_080A70DC:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080A70E4
	adds r1, #0xFF
_080A70E4:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r12, r1
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080A70FC
	adds r0, #0xFF
_080A70FC:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080A7112
	adds r3, #0xFF
_080A7112:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x0C
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r12
	bl sub_808843C
	movs r1, #0x2F
	adds r0, r7, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	ldr r1, _080A7198 @ =0x00000466
	adds r0, r4, #0x0
	bl sub_8088164
_080A713E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A7150
	cmp r1, #0x04
	bne _080A716C
_080A7150:
	ldr r2, _080A719C @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A716C:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A71A0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A71A4 @ =0x080A71A9
	mov r1, r9
	str r0, [r1, #0x4C]
_080A7186:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A7194: .4byte 0x03000FD8
_080A7198: .4byte 0x00000466
_080A719C: .4byte 0x00002030
_080A71A0: .4byte 0x00000FFF
_080A71A4: .4byte sub_80A71A8
