	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D7474 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D746C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7438
	cmp r1, #0x04
	bne _080D7468
_080D7438:
	ldr r2, _080D7478 @ =0x03001038
	ldr r0, _080D747C @ =0x0819832C
	ldr r1, _080D7480 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D7468:
	ldr r0, _080D7484 @ =0x080D7489
	str r0, [r5, #0x4C]
_080D746C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D7474: .4byte 0x03000FD8
_080D7478: .4byte 0x03001038
_080D747C: .4byte 0x0819832C
_080D7480: .4byte 0x08198220
_080D7484: .4byte sub_80D7488
