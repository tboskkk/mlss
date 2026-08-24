	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldr r3, _0810925C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08109260
	ldr r2, [r3, #0x00]
	b _0810929E
_0810925C: .4byte 0x03000FD8
_08109260:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x7C]
	adds r0, r2, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _08109282
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	bics r1, r0
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0810929A
_08109282:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081092AC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810929A:
	ldr r0, _081092B4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
_0810929E:
	ldrb r1, [r2, #0x0B]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r0, #0x00
	str r0, [r5, #0x04]
_081092AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081092B4: .4byte 0x03000FD8
