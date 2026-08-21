	.syntax unified
	.text

	thumb_func_start sub_80C0AB4
sub_80C0AB4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C0B10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C0ADC
	cmp r1, #0x04
	bne _080C0AF8
_080C0ADC:
	ldr r2, _080C0B14 @ =0x00002062
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
_080C0AF8:
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	ldr r0, _080C0B18 @ =0x080BB585
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C0B10: .4byte 0x03000FD8
_080C0B14: .4byte 0x00002062
_080C0B18: .4byte sub_80BB584
