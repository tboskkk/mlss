	.syntax unified
	.text

	thumb_func_start sub_80CBDD8
sub_80CBDD8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r3, _080CBE60 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x08
	adds r1, r2, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBE14
	cmp r1, #0x04
	bne _080CBE2C
_080CBE14:
	ldr r2, _080CBE64 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBE2C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBE3E
	cmp r1, #0x04
	bne _080CBE56
_080CBE3E:
	ldr r2, _080CBE68 @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBE56:
	ldr r0, _080CBE6C @ =0x080CBE71
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CBE60: .4byte 0x03000FD8
_080CBE64: .4byte 0x00002035
_080CBE68: .4byte 0x00002064
_080CBE6C: .4byte sub_80CBE70
