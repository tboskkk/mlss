	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r5, _081090A4 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _081090A8
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r0, #0x00
	b _0810911A
_081090A4: .4byte 0x03000FD8
_081090A8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _081090F4 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _081090F8 @ =0x00B37D29
	bl _call_via_r1
	subs r0, #0xB3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r2, [r0, #0x7C]
	adds r0, r2, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _081090FC
	adds r0, #0x77
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	movs r1, #0x0A
	cmp r0, #0x00
	beq _081090E6
	movs r1, #0x05
_081090E6:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08109108
	.byte 0x00, 0x00
_081090F4: .4byte 0x03001038
_081090F8: .4byte 0x00B37D29
_081090FC:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08109108:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08109124 @ =0x08109129
_0810911A:
	str r0, [r6, #0x04]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08109124: .4byte sub_8109128
