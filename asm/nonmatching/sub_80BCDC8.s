	.syntax unified
	.text

	thumb_func_start sub_80BCDC8
sub_80BCDC8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080BCE24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BCE48
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2E
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCE08
	cmp r1, #0x04
	bne _080BCE44
_080BCE08:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080BCE28
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080BCE34
_080BCE24: .4byte 0x03000FD8
_080BCE28:
	ldr r2, _080BCE50 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080BCE34:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BCE44:
	ldr r0, _080BCE54 @ =0x080BCE59
	str r0, [r7, #0x4C]
_080BCE48:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BCE50: .4byte 0x0000204D
_080BCE54: .4byte sub_80BCE58
