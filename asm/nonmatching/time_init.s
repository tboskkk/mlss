	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _0801BD20 @ =0x08CDBDA8
	str r0, [r5, #0x18]
	ldr r4, _0801BD24 @ =0x081E23CD
	adds r0, r4, #0x0
	bl sub_80198B0
	ldr r2, _0801BD28 @ =0x081E23C8
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	str r1, [r5, #0x1C]
	ldr r0, _0801BD2C @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r2
	movs r1, #0x00
	movs r0, #0x00
	strh r0, [r5, #0x20]
	adds r0, r5, #0x0
	adds r0, #0x22
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x28
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0801BD20: .4byte 0x08CDBDA8
_0801BD24: .4byte 0x081E23CD
_0801BD28: .4byte 0x081E23C8
_0801BD2C: .4byte 0x03000C84
