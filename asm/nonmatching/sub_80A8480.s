	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080A8528 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080A852C @ =0x03001038
	ldr r2, _080A8530 @ =0x0819832C
	ldr r3, _080A8534 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080A84CC
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080A84CE
_080A84CC:
	movs r1, #0x00
_080A84CE:
	cmp r1, #0x00
	beq _080A8522
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A84EE
	cmp r1, #0x04
	bne _080A851E
_080A84EE:
	ldr r2, _080A852C @ =0x03001038
	ldr r0, _080A8530 @ =0x0819832C
	ldr r1, _080A8534 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0C
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A851E:
	ldr r0, _080A8538 @ =0x080A853D
	str r0, [r7, #0x4C]
_080A8522:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A8528: .4byte 0x03000FD8
_080A852C: .4byte 0x03001038
_080A8530: .4byte 0x0819832C
_080A8534: .4byte 0x08198220
_080A8538: .4byte sub_80A853C
