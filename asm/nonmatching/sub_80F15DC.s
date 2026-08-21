	.syntax unified
	.text

	thumb_func_start sub_80F15DC
sub_80F15DC:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	ldr r1, [r5, #0x00]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	ldr r1, [r5, #0x04]
	ldr r2, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r0, [r5, #0x0C]
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
	pop {r4, r5}
	pop {r1}
	bx r1
