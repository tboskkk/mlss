	.syntax unified
	.text

	thumb_func_start sub_8066CEC
sub_8066CEC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066D44
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08066D44
	subs r1, #0x0C
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08066D34
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066D30 @ =0x0806688D
	b _08066D42
_08066D30: .4byte sub_806688C
_08066D34:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066D4C @ =0x08066D79
_08066D42:
	str r0, [r4, #0x4C]
_08066D44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066D4C: .4byte sub_8066D78
