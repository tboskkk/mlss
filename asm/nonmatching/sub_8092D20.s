	.syntax unified
	.text

	thumb_func_start sub_8092D20
sub_8092D20:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08092D38
	ldr r0, _08092D50 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08092D38:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092D54
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08092D6C
	.byte 0x00, 0x00
_08092D50: .4byte 0x00000111
_08092D54:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _08092D6C
	adds r0, r3, #0x0
	bl sub_808DD2C
_08092D6C:
	pop {r0}
	bx r0
