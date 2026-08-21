	.syntax unified
	.text

	thumb_func_start sub_80ED6A8
sub_80ED6A8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	ldr r3, [r5, #0x00]
	cmp r3, #0xFF
	beq _080ED6D4
	ldr r1, [r4, #0x14]
	adds r1, #0xFA
	movs r0, #0x1F
	ands r3, r0
	lsls r3, r3, #0x05
	ldrh r2, [r1, #0x00]
	ldr r0, _080ED6D0 @ =0xFFFFFC1F
	ands r0, r2
	orrs r0, r3
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x14]
	bl sub_8028EE8
	b _080ED708
_080ED6D0: .4byte 0xFFFFFC1F
_080ED6D4:
	ldr r2, [r4, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	adds r2, #0xFA
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrh r3, [r2, #0x00]
	ldr r0, _080ED748 @ =0xFFFFFC1F
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x14]
	ldr r1, [r5, #0x04]
	adds r2, #0xF8
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r3, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080ED708:
	ldr r2, [r4, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080ED72A
	adds r0, r2, #0x0
	adds r0, #0xFA
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1B
	adds r0, r2, #0x0
	movs r2, #0x00
	bl sub_80284B0
_080ED72A:
	ldr r0, _080ED74C @ =0x03000FD0
	ldr r1, [r0, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x03
	adds r1, r1, r0
	ldr r0, [r4, #0x14]
	adds r0, #0xFA
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1B
	str r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080ED748: .4byte 0xFFFFFC1F
_080ED74C: .4byte 0x03000FD0
