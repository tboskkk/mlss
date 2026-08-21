	.syntax unified
	.text

	thumb_func_start sub_8064D20
sub_8064D20:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064D58
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08064D48
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08064D54
_08064D48:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08064D54:
	ldr r0, _08064D60 @ =0x08064615
	str r0, [r4, #0x4C]
_08064D58:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064D60: .4byte sub_8064614
