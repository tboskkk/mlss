	.syntax unified
	.text

	thumb_func_start sub_80ED750
sub_80ED750:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r2, #0x0
	ldr r1, [r6, #0x00]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047364
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	ldr r2, [r6, #0x04]
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080ED7D0 @ =0x00000215
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r3, [r5, #0x00]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r0, [r6, #0x08]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080ED7D0: .4byte 0x00000215
