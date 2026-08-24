	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r1, #0x1D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08114624 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x60]
	adds r4, r0, #0x0
	adds r4, #0x08
	b _0811462E
	.byte 0x00, 0x00
_08114624: .4byte 0x03000FD8
_08114628:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_0811462E:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08114628
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08114650 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x64]
	adds r4, r0, #0x0
	adds r4, #0x08
	b _0811465A
_08114650: .4byte 0x03000FD8
_08114654:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_0811465A:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08114654
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0811467C @ =0x08114855
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811467C: .4byte sub_8114854
