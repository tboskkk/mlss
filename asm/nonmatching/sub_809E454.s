	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	ldr r1, _0809E488 @ =0x00000113
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0809E480
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809E48C @ =0x0809E49D
	str r0, [r4, #0x4C]
_0809E480:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809E488: .4byte 0x00000113
_0809E48C: .4byte sub_809E49C
