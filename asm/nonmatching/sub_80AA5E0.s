	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA6C0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_8087CE4
	adds r5, r4, #0x0
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA6B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AA616
	adds r1, #0xFF
_080AA616:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AA620
	adds r2, #0xFF
_080AA620:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AA62A
	adds r3, #0xFF
_080AA62A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AA6C4 @ =0x00002F7D
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA650
	cmp r1, #0x04
	bne _080AA67E
_080AA650:
	ldr r2, _080AA6C8 @ =0x03001038
	ldr r0, _080AA6CC @ =0x0819832C
	ldr r1, _080AA6D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080AA67E:
	ldr r4, [r6, #0x08]
	ldr r2, _080AA6D4 @ =0x0000205F
	adds r5, r4, #0x0
	adds r5, #0x23
	ldrb r3, [r5, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	ldrh r2, [r4, #0x16]
	ldrb r0, [r4, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	orrs r2, r0
	ldrb r3, [r5, #0x00]
	adds r0, r6, #0x0
	bl sub_8082E1C
	ldr r0, _080AA6D8 @ =0x080AC4AD
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA6B4:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AA6C0: .4byte 0x03000FD8
_080AA6C4: .4byte 0x00002F7D
_080AA6C8: .4byte 0x03001038
_080AA6CC: .4byte 0x0819832C
_080AA6D0: .4byte 0x08198220
_080AA6D4: .4byte 0x0000205F
_080AA6D8: .4byte sub_80AC4AC
