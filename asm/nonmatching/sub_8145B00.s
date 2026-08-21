	.syntax unified
	.text

	thumb_func_start sub_8145B00
sub_8145B00:
	push {r4, r5, lr}
	ldr r2, _08145B54 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r5, r1, r3
	ldr r3, [r5, #0x00]
	ldr r2, _08145B58 @ =0x0000020D
	adds r3, r3, r2
	ldrb r4, [r3, #0x00]
	movs r2, #0x05
	negs r2, r2
	ands r2, r4
	strb r2, [r3, #0x00]
	ldr r3, _08145B5C @ =0x000002B6
	adds r4, r1, r3
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	ldr r2, [r5, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r2, r2, r3
	movs r3, #0x00
	str r3, [r2, #0x00]
	ldr r2, _08145B60 @ =0x0000033D
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x08
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_8145AB0
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145B54: .4byte 0x0000033E
_08145B58: .4byte 0x0000020D
_08145B5C: .4byte 0x000002B6
_08145B60: .4byte 0x0000033D
