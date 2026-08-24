	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	lsls r1, r2, #0x10
	lsrs r4, r1, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _080E997C @ =0x00001B5F
	cmp r4, r0
	bhi _080E9984
	ldr r0, _080E9980 @ =0x03000FC0
	lsrs r1, r1, #0x15
	lsls r1, r1, #0x02
	adds r1, #0x20
	ldr r0, [r0, #0x00]
	adds r5, r0, r1
	b _080E99BE
	.byte 0x00, 0x00
_080E997C: .4byte 0x00001B5F
_080E9980: .4byte 0x03000FC0
_080E9984:
	ldr r0, _080E99A4 @ =0x00001B7F
	cmp r4, r0
	bls _080E99B0
	ldr r0, _080E99A8 @ =0x00001B8F
	cmp r4, r0
	bhi _080E99D6
	cmp r5, #0x00
	beq _080E99B0
	ldr r1, _080E99AC @ =0xFFFFE480
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r0, r0, #0x15
	lsls r0, r0, #0x02
	adds r5, r5, r0
	b _080E99BE
_080E99A4: .4byte 0x00001B7F
_080E99A8: .4byte 0x00001B8F
_080E99AC: .4byte 0xFFFFE480
_080E99B0:
	ldr r1, _080E99DC @ =0xFFFFE4A0
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r0, r0, #0x15
	lsls r0, r0, #0x02
	adds r5, r6, r0
_080E99BE:
	movs r2, #0x1F
	ands r2, r4
	movs r3, #0x01
	adds r0, r3, #0x0
	lsls r0, r2
	ldr r1, [r5, #0x00]
	bics r1, r0
	adds r0, r7, #0x0
	ands r0, r3
	lsls r0, r2
	orrs r1, r0
	str r1, [r5, #0x00]
_080E99D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E99DC: .4byte 0xFFFFE4A0
