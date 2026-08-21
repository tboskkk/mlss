	.syntax unified
	.text

	thumb_func_start sub_80D55F8
sub_80D55F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D5704 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080D5610
	adds r1, #0xFF
_080D5610:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080D561A
	adds r2, #0xFF
_080D561A:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080D5624
	adds r3, #0xFF
_080D5624:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080D5708 @ =0x00002F7D
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5640
	cmp r1, #0x04
	bne _080D565C
_080D5640:
	ldr r2, _080D570C @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D565C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D567A
	ldr r2, _080D5710 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D567A:
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D569E
	cmp r1, #0x04
	bne _080D56EC
_080D569E:
	ldr r5, _080D5704 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xA0
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x73
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x55
	bl sub_808843C
	movs r0, #0x5C
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080D5714 @ =0x00000433
	adds r0, r6, #0x0
	bl sub_8088164
_080D56EC:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D5718 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D571C @ =0x080D5721
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D5704: .4byte 0x03000FD8
_080D5708: .4byte 0x00002F7D
_080D570C: .4byte 0x00002066
_080D5710: .4byte 0x00002095
_080D5714: .4byte 0x00000433
_080D5718: .4byte 0x00000FFF
_080D571C: .4byte sub_80D5720
