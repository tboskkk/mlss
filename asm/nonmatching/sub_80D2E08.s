	.syntax unified
	.text

	thumb_func_start sub_80D2E08
sub_80D2E08:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D2E70 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2E6A
	ldr r0, [r2, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2E4A
	cmp r1, #0x04
	bne _080D2E66
_080D2E4A:
	ldr r2, _080D2E74 @ =0x00002009
	adds r0, r4, #0x0
	movs r1, #0x00
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
_080D2E66:
	ldr r0, _080D2E78 @ =0x080CEDC1
	str r0, [r6, #0x4C]
_080D2E6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D2E70: .4byte 0x03000FD8
_080D2E74: .4byte 0x00002009
_080D2E78: .4byte sub_80CEDC0
