	.syntax unified
	.text

	thumb_func_start sub_80402C4
sub_80402C4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	blt _08040346
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, _08040314 @ =0x0000020D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08040318
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08040340
	adds r0, r4, #0x0
	bl sub_8047EB8
	str r5, [r4, #0x18]
	b _08040346
	.byte 0x00, 0x00
_08040314: .4byte 0x0000020D
_08040318:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08040340
	adds r0, r4, #0x0
	bl sub_8047EB8
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08040346
	negs r0, r1
	str r0, [r4, #0x18]
	b _08040346
_08040340:
	ldr r0, [r3, #0x00]
	adds r0, #0x01
	str r0, [r3, #0x00]
_08040346:
	pop {r4, r5}
	pop {r0}
	bx r0
