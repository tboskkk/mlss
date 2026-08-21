	.syntax unified
	.text

	thumb_func_start sub_80A2374
sub_80A2374:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A241C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A2414
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A23AA
	cmp r1, #0x04
	bne _080A2404
_080A23AA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080A23B2
	adds r0, #0xFF
_080A23B2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x38
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080A23CC
	adds r2, #0xFF
_080A23CC:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080A23F0
	adds r0, #0xFF
_080A23F0:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080A2404:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A2420 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A2424 @ =0x080A2429
	str r0, [r6, #0x4C]
_080A2414:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A241C: .4byte 0x03000FD8
_080A2420: .4byte 0x00000FFF
_080A2424: .4byte sub_80A2428
