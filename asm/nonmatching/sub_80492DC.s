	.syntax unified
	.text

	thumb_func_start sub_80492DC
sub_80492DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x54
	ldrb r2, [r0, #0x00]
	cmp r2, #0x00
	bne _080492F6
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _0804933C @ =0x0000103E
	cmp r1, r0
	beq _08049308
_080492F6:
	cmp r2, #0x01
	bne _08049354
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _08049340 @ =0x00001053
	cmp r1, r0
	bne _08049354
_08049308:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0804934C
	ldr r1, _08049344 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _08049348 @ =0x00001001
	cmp r0, #0x00
	beq _0804934E
	adds r1, #0x27
	b _0804934E
	.byte 0x00, 0x00
_0804933C: .4byte 0x0000103E
_08049340: .4byte 0x00001053
_08049344: .4byte 0x0000035B
_08049348: .4byte 0x00001001
_0804934C:
	ldr r1, _08049368 @ =0x00001002
_0804934E:
	adds r0, r4, #0x0
	bl sub_8049000
_08049354:
	ldr r0, _0804936C @ =0x0000035A
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08049368: .4byte 0x00001002
_0804936C: .4byte 0x0000035A
