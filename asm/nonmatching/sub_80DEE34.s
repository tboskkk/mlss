	.syntax unified
	.text

	thumb_func_start sub_80DEE34
sub_80DEE34:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DEE76
	bl sub_8082B00
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _080DEE76
	adds r0, r5, #0x0
	bl sub_80DE020
	str r4, [r5, #0x6C]
	adds r0, r5, #0x0
	movs r1, #0x0C
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
	ldr r0, _080DEE7C @ =0x080DEE81
	str r0, [r5, #0x4C]
_080DEE76:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DEE7C: .4byte sub_80DEE80
