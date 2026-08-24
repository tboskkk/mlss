	.syntax unified
	.text

	thumb_func_start sub_802C4D4
sub_802C4D4:
	push {r4, r5, lr}
	mov r12, r0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r12
	ldr r2, [r0, #0x00]
	movs r3, #0x00
	cmp r1, #0x00
	beq _0802C500
	ldr r1, _0802C580 @ =0x00000242
	adds r0, r2, r1
	strh r3, [r0, #0x00]
	adds r1, #0x02
	adds r0, r2, r1
	strh r3, [r0, #0x00]
_0802C500:
	cmp r4, #0x00
	beq _0802C578
	cmp r5, #0x00
	beq _0802C578
	ldr r1, _0802C580 @ =0x00000242
	adds r0, r4, r1
	strh r3, [r0, #0x00]
	adds r1, #0x02
	adds r0, r4, r1
	strh r3, [r0, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802C578
	ldr r1, [r2, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r3, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r4, #0x10]
	subs r0, r1, r0
	cmp r3, #0x00
	bne _0802C538
	cmp r0, #0x00
	beq _0802C578
_0802C538:
	negs r0, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	ldr r1, _0802C584 @ =0x0839F620
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1C
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x07
	ands r3, r0
	lsls r0, r3, #0x05
	strb r0, [r4, #0x02]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _0802C578
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
_0802C578:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802C580: .4byte 0x00000242
_0802C584: .4byte dword_839F620 @ =0x0839F620
