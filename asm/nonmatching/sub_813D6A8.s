	.syntax unified
	.text

	thumb_func_start sub_813D6A8
sub_813D6A8:
	push {r4, r5, r6, lr}
	ldr r2, _0813D6F0 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r6, r1, r2
	ldr r3, [r6, #0x00]
	ldr r5, _0813D6F4 @ =0x0000020D
	adds r3, r3, r5
	ldrb r4, [r3, #0x00]
	movs r2, #0x05
	negs r2, r2
	ands r2, r4
	strb r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	adds r3, r3, r5
	ldrb r2, [r3, #0x00]
	movs r4, #0x08
	orrs r2, r4
	strb r2, [r3, #0x00]
	ldr r2, _0813D6F8 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813D64C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D6F0: .4byte 0x0000033E
_0813D6F4: .4byte 0x0000020D
_0813D6F8: .4byte 0x000002B6
