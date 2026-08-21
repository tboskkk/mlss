	.syntax unified
	.text

	thumb_func_start sub_8048438
sub_8048438:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080484DC @ =0x00000352
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080484F0
	ldr r6, _080484E0 @ =0x0000020F
	adds r0, r4, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080484FE
	ldr r1, _080484E4 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _080484FE
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	bge _0804847A
	adds r1, #0xFF
_0804847A:
	asrs r1, r1, #0x08
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r3, r1, r0
	strh r3, [r4, #0x06]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08048490
	adds r1, #0xFF
_08048490:
	asrs r1, r1, #0x08
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	subs r1, #0x03
	strh r1, [r4, #0x08]
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldr r1, [r2, #0x00]
	subs r5, #0x5A
	adds r0, r4, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	strh r0, [r1, #0x00]
	ldr r3, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080484BC
	adds r0, #0xFF
_080484BC:
	asrs r0, r0, #0x08
	ldrh r1, [r4, #0x08]
	subs r1, r1, r0
	ldr r5, _080484E8 @ =0x0000023B
	adds r0, r4, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	ldr r1, [r2, #0x00]
	ldr r0, _080484EC @ =0x0000FFFF
	strh r0, [r1, #0x0E]
	strh r6, [r4, #0x0A]
	b _080484FE
_080484DC: .4byte 0x00000352
_080484E0: .4byte 0x0000020F
_080484E4: .4byte 0x00000216
_080484E8: .4byte 0x0000023B
_080484EC: .4byte 0x0000FFFF
_080484F0:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0x0
	bl sub_8040CF4
_080484FE:
	movs r6, #0xDB
	lsls r6, r6, #0x02
	adds r5, r4, r6
	ldr r3, [r5, #0x00]
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08048572
	ldr r1, _08048578 @ =0x00000353
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08048572
	subs r6, #0xD8
	adds r2, r4, r6
	ldr r1, [r2, #0x00]
	adds r6, #0xDE
	adds r0, r4, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	ldr r3, [r5, #0x00]
	ldr r1, [r2, #0x00]
	adds r6, #0x01
	adds r0, r4, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0x02]
	adds r0, r0, r1
	strh r0, [r3, #0x02]
	ldr r3, [r5, #0x00]
	ldr r1, [r2, #0x00]
	adds r6, #0x01
	adds r0, r4, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0x0E]
	adds r0, r0, r1
	strh r0, [r3, #0x0E]
	ldr r3, [r5, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08048572:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08048578: .4byte 0x00000353
