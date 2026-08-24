	.syntax unified
	.text

	thumb_func_start sub_805C7B4
sub_805C7B4:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _0805C814 @ =0x0000057C
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0805C80A
	ldr r0, _0805C818 @ =0x03000DD0
	ldrb r0, [r0, #0x08]
	ldr r1, _0805C81C @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0805C80A
	lsls r0, r4, #0x02
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805C80A
	ldrb r2, [r2, #0x01]
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	orrs r2, r0
	ldr r0, _0805C820 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	movs r2, #0xB0
	lsls r2, r2, #0x03
	adds r1, r5, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805C80A:
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C814: .4byte 0x0000057C
_0805C818: .4byte 0x03000DD0
_0805C81C: .4byte dword_83B79C4 @ =0x083B79C4
_0805C820: .4byte 0x0000FFFF
