	.syntax unified
	.text

	thumb_func_start sub_8148DA4
sub_8148DA4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08148E1C @ =0x0000020D
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148E20 @ =0x0000020E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08148E24 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08148E28 @ =0x0000020F
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_801E150
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148E1C: .4byte 0x0000020D
_08148E20: .4byte 0x0000020E
_08148E24: .4byte 0xFFFC7FFF
_08148E28: .4byte 0x0000020F
