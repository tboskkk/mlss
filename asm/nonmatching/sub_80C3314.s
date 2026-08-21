	.syntax unified
	.text

	thumb_func_start sub_80C3314
sub_80C3314:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r3, _080C33A0 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x70]
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r2, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r2, #0x06]
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C334A
	cmp r1, #0x04
	bne _080C3366
_080C334A:
	ldr r2, _080C33A4 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C3366:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3378
	cmp r1, #0x04
	bne _080C3394
_080C3378:
	ldr r2, _080C33A8 @ =0x00002063
	adds r0, r5, #0x0
	movs r1, #0x0C
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
_080C3394:
	ldr r0, _080C33AC @ =0x080C8685
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C33A0: .4byte 0x03000FD8
_080C33A4: .4byte 0x00002034
_080C33A8: .4byte 0x00002063
_080C33AC: .4byte sub_80C8684
