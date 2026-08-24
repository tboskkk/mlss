	.syntax unified
	.text

	thumb_func_start sub_805B590
sub_805B590:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _0805B608 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805B600
	ldr r1, _0805B60C @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r4, #0x00
	ldr r6, _0805B610 @ =0x00007FFF
_0805B5A8:
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrh r2, [r0, #0x10]
	adds r0, r6, #0x0
	ands r0, r2
	cmp r0, r6
	beq _0805B5E6
	lsls r2, r2, #0x11
	ldr r0, _0805B614 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	lsrs r2, r2, #0x01
	movs r1, #0xE4
	lsls r1, r1, #0x13
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0805B5E6
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_805B618
_0805B5E6:
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B5A8
_0805B600:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B608: .4byte 0x03000DD0
_0805B60C: .4byte dword_83B7108 @ =0x083B7108
_0805B610: .4byte 0x00007FFF
_0805B614: .4byte 0x03000FC0
