	push {r4, r5, lr}
	adds r5, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r12, r0
	ldr r1, _080EE4F0 @ =0x000002B6
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x00]
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _080EE4F4
	cmp r0, #0x01
	beq _080EE4FA
	b _080EE502
	.byte 0x00, 0x00
_080EE4F0: .4byte 0x000002B6
_080EE4F4:
	movs r0, #0x40
	orrs r1, r0
	b _080EE500
_080EE4FA:
	movs r0, #0x41
	negs r0, r0
	ands r1, r0
_080EE500:
	strb r1, [r2, #0x00]
_080EE502:
	ldr r0, [r3, #0x00]
	cmp r0, #0x33
	bgt _080EE544
	movs r2, #0xA0
	lsls r2, r2, #0x01
	add r2, r12
	ldr r1, _080EE540 @ =0x083C9FC0
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r4, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	b _080EE550
_080EE540: .4byte dword_83C9FC0 @ =0x083C9FC0
_080EE544:
	mov r2, r12
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080EE590 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080EE550:
	adds r3, #0x04
	movs r4, #0xAC
	lsls r4, r4, #0x01
	add r4, r12
	ldm r3!, {r0}
	str r0, [r4, #0x00]
	movs r2, #0xAE
	lsls r2, r2, #0x01
	add r2, r12
	ldr r0, [r3, #0x00]
	str r0, [r2, #0x00]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _080EE586
	movs r0, #0xD8
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	movs r4, #0xDA
	lsls r4, r4, #0x01
	adds r1, r3, r4
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
_080EE586:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EE590: .4byte 0x0000FBFF
