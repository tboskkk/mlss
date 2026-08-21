	.syntax unified
	.text

	thumb_func_start sub_814C04C
sub_814C04C:
	push {r4, lr}
	add sp, #-0x008
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r4, [r1, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #0x14]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	bl sub_8047F60
	ldr r0, _0814C0BC @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r3, #0x05
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814C0C0 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	ands r0, r3
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _0814C0C4 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r2, _0814C0C8 @ =0x0000020F
	adds r4, r4, r2
	ldrb r0, [r4, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r4, #0x00]
	add sp, #0x008
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C0BC: .4byte 0x0000020E
_0814C0C0: .4byte 0x0000020D
_0814C0C4: .4byte 0xFFFC7FFF
_0814C0C8: .4byte 0x0000020F
