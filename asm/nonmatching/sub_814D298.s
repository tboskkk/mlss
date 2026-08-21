	.syntax unified
	.text

	thumb_func_start sub_814D298
sub_814D298:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D2BE
	adds r0, r4, #0x0
	bl sub_80479A8
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814D2BE:
	adds r0, r4, #0x0
	bl sub_8047A1C
	lsls r0, r0, #0x18
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r5, r4, r1
	cmp r0, #0x00
	bne _0814D2DE
	adds r0, r4, #0x0
	bl sub_8047994
	ldrb r0, [r5, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r5, #0x00]
_0814D2DE:
	ldrb r0, [r5, #0x00]
	lsls r1, r0, #0x1D
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r0, r1
	cmp r0, #0x00
	beq _0814D344
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0814D34C @ =0x0000020D
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x00]
	ldr r0, _0814D350 @ =0x00000272
	adds r1, r4, r0
	movs r0, #0xE0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0814D354 @ =0x00000276
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _0814D358 @ =0x0814D35D
	str r0, [r6, #0x00]
_0814D344:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814D34C: .4byte 0x0000020D
_0814D350: .4byte 0x00000272
_0814D354: .4byte 0x00000276
_0814D358: .4byte sub_814D35C
