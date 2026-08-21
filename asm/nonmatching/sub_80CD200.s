	.syntax unified
	.text

	thumb_func_start sub_80CD200
sub_80CD200:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CD29C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CD296
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CD23E
	cmp r1, #0x04
	bne _080CD25A
_080CD23E:
	ldr r2, _080CD2A0 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x00
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
_080CD25A:
	ldr r1, _080CD2A4 @ =0x0000208A
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r2, [r0, #0x08]
	ldr r1, [r5, #0x08]
	ldrh r1, [r1, #0x0E]
	adds r1, #0x03
	strh r1, [r2, #0x0E]
	ldr r1, [r0, #0x10]
	movs r2, #0xE0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	str r1, [r0, #0x18]
	ldr r0, _080CD2A8 @ =0x080CD2AD
	str r0, [r6, #0x4C]
_080CD296:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CD29C: .4byte 0x03000FD8
_080CD2A0: .4byte 0x00002036
_080CD2A4: .4byte 0x0000208A
_080CD2A8: .4byte sub_80CD2AC
