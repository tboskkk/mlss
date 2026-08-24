	.syntax unified
	.text

	thumb_func_start sub_80DEC6C
sub_80DEC6C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	ldr r1, _080DEC8C @ =0x00000113
	adds r1, r1, r0
	mov r12, r1
	ldrb r1, [r1, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080DEC86
	cmp r1, #0xFF
	bne _080DEC90
_080DEC86:
	movs r0, #0x00
	b _080DECB4
	.byte 0x00, 0x00
_080DEC8C: .4byte 0x00000113
_080DEC90:
	movs r0, #0x7F
	adds r3, r4, #0x0
	adds r3, #0xA8
	ldr r2, _080DECBC @ =0x083BBDD0
	mov r5, r12
	ldrb r1, [r5, #0x00]
	ands r0, r1
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r1, [r0, #0x02]
	movs r0, #0x07
	ands r0, r1
	ldr r1, _080DECC0 @ =0x00004188
	adds r0, r0, r1
	str r0, [r3, #0x00]
	bl sub_8082AAC
	ldr r0, _080DECC4 @ =0x080DED4D
_080DECB4:
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_080DECBC: .4byte 0x083BBDD0
_080DECC0: .4byte 0x00004188
_080DECC4: .4byte sub_80DED4C
