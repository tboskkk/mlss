	.syntax unified
	.text

	thumb_func_start sub_804FFCC
sub_804FFCC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0805006C @ =0x0000033E
	adds r4, r5, r0
	ldrb r0, [r4, #0x00]
	movs r1, #0x04
	negs r1, r1
	ands r1, r0
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r4, #0x00]
	ldr r0, _08050070 @ =0x0000020D
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r0, r2
	lsls r0, r0, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r3, r5, r1
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r5, #0x02]
	ldr r2, _08050074 @ =0x0000033F
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	bne _08050042
	movs r0, #0x08
	orrs r2, r0
	strb r2, [r3, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x19
	movs r1, #0x71
	negs r1, r1
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
_08050042:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r3, #0x01
	negs r3, r3
	adds r0, r5, #0x0
	movs r1, #0x40
	movs r2, #0x20
	bl sub_80400B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805006C: .4byte 0x0000033E
_08050070: .4byte 0x0000020D
_08050074: .4byte 0x0000033F
