	.syntax unified
	.text

	thumb_func_start sub_8139200
sub_8139200:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r4, r3, r0
	ldr r0, [r4, #0x00]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	beq _08139250
	movs r0, #0x96
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r3, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r3, r0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08139250
	movs r0, #0x00
	str r0, [r3, #0x18]
	str r5, [r4, #0x00]
	ldr r0, _08139258 @ =0x000002B5
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08139250:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139258: .4byte 0x000002B5
	.byte 0x70, 0x47, 0x00, 0x00
