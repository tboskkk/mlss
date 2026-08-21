	.syntax unified
	.text

	thumb_func_start sub_80EE440
sub_80EE440:
	push {lr}
	movs r0, #0x58
	adds r0, r0, r1
	mov r12, r0
	ldr r0, _080EE460 @ =0x000002B6
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x00]
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _080EE464
	cmp r0, #0x01
	beq _080EE46A
	b _080EE472
_080EE460: .4byte 0x000002B6
_080EE464:
	movs r0, #0x40
	orrs r1, r0
	b _080EE470
_080EE46A:
	movs r0, #0x41
	negs r0, r0
	ands r1, r0
_080EE470:
	strb r1, [r2, #0x00]
_080EE472:
	ldr r0, [r3, #0x00]
	cmp r0, #0x33
	bgt _080EE4B4
	movs r2, #0xA0
	lsls r2, r2, #0x01
	add r2, r12
	ldr r1, _080EE4B0 @ =0x083C9FC0
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
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
	b _080EE4C0
_080EE4B0: .4byte 0x083C9FC0
_080EE4B4:
	mov r2, r12
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080EE4C8 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080EE4C0:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EE4C8: .4byte 0x0000FBFF
