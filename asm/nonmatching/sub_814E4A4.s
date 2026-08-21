	.syntax unified
	.text

	thumb_func_start sub_814E4A4
sub_814E4A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r6, #0x04
	orrs r0, r6
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x08
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_801E68C
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r1, _0814E544 @ =0x0000027A
	adds r0, r4, r1
	movs r1, #0xC0
	lsls r1, r1, #0x03
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814E548 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	adds r1, #0x1C
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814E54C @ =0x0000020E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r1, _0814E550 @ =0x0000020F
	adds r4, r4, r1
	ldrb r0, [r4, #0x00]
	orrs r0, r6
	strb r0, [r4, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814E544: .4byte 0x0000027A
_0814E548: .4byte 0x0000020D
_0814E54C: .4byte 0x0000020E
_0814E550: .4byte 0x0000020F
