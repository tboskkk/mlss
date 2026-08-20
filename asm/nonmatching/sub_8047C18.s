	.syntax unified
	.text

	thumb_func_start sub_8047C18
sub_8047C18:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	ldr r1, [r2, #0x1C]
	ldr r0, [r3, #0x1C]
	cmp r1, r0
	beq _08047C5E
	adds r0, r2, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	movs r4, #0x0C
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08047C44
	adds r0, r3, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08047C56
_08047C44:
	ldr r0, [r2, #0x20]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x20]
	ldr r0, [r0, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _08047C5E
_08047C56:
	ldr r0, [r2, #0x1C]
	ldr r1, [r3, #0x1C]
	subs r0, r0, r1
	b _08047C60
_08047C5E:
	movs r0, #0x00
_08047C60:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
