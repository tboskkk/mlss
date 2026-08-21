	.syntax unified
	.text

	thumb_func_start sub_80DE9F0
sub_80DE9F0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080DEA24 @ =0x080DEC61
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	ldr r1, _080DEA28 @ =0x00000113
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080DEA1C
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x01
	bl sub_80F7068
	ldr r0, [r4, #0x28]
	ldr r2, _080DEA28 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
_080DEA1C:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080DEA24: .4byte sub_80DEC60
_080DEA28: .4byte 0x00000113
