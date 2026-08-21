	.syntax unified
	.text

	thumb_func_start sub_813D570
sub_813D570:
	push {r4, lr}
	ldr r2, _0813D5AC @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r2, r1, r3
	ldr r3, [r2, #0x00]
	ldr r2, _0813D5B0 @ =0x0000020D
	adds r3, r3, r2
	ldrb r4, [r3, #0x00]
	movs r2, #0x05
	negs r2, r2
	ands r2, r4
	strb r2, [r3, #0x00]
	ldr r3, _0813D5B4 @ =0x000002B6
	adds r4, r1, r3
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813D514
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D5AC: .4byte 0x0000033E
_0813D5B0: .4byte 0x0000020D
_0813D5B4: .4byte 0x000002B6
