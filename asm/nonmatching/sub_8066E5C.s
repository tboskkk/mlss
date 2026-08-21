	.syntax unified
	.text

	thumb_func_start sub_8066E5C
sub_8066E5C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066EA8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08066EA8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0xA4
	movs r1, #0x01
	ands r1, r0
	adds r1, #0x03
	str r1, [r2, #0x00]
	ldr r0, _08066EB0 @ =0x08066EB5
	str r0, [r4, #0x4C]
_08066EA8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066EB0: .4byte sub_8066EB4
