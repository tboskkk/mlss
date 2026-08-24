	.syntax unified
	.text

	thumb_func_start sub_8057BE4
sub_8057BE4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r5, #0x00
	ldr r0, _08057C38 @ =0x0000FFFB
	strh r0, [r4, #0x1C]
	movs r0, #0xAF
	lsls r0, r0, #0x03
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r4, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _08057C3C @ =0x081E27BC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	str r5, [sp, #0x000]
	ldr r2, _08057C40 @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	ldr r0, _08057C44 @ =0x03000DD0
	ldrb r0, [r0, #0x02]
	movs r1, #0x60
	ands r1, r0
	adds r0, r1, #0x0
	movs r2, #0x00
	movs r3, #0x00
	movs r4, #0x00
	cmp r1, #0x20
	beq _08057C56
	cmp r1, #0x20
	bgt _08057C48
	cmp r1, #0x00
	beq _08057C4E
	b _08057C64
	.byte 0x00, 0x00
_08057C38: .4byte 0x0000FFFB
_08057C3C: .4byte 0x081E27BC
_08057C40: .4byte 0x01000800
_08057C44: .4byte 0x03000DD0
_08057C48:
	cmp r0, #0x40
	beq _08057C5E
	b _08057C64
_08057C4E:
	movs r2, #0x01
	movs r3, #0x02
	movs r4, #0x03
	b _08057C64
_08057C56:
	movs r2, #0x01
	movs r3, #0x03
	movs r4, #0x02
	b _08057C64
_08057C5E:
	movs r2, #0x02
	movs r3, #0x03
	movs r4, #0x01
_08057C64:
	ldr r1, _08057C8C @ =0x0200000A
	ldr r5, _08057C90 @ =0x00004004
	adds r0, r5, #0x0
	orrs r2, r0
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08057C94 @ =0x00004204
	adds r0, r2, #0x0
	orrs r3, r0
	strh r3, [r1, #0x00]
	adds r1, #0x02
	ldr r5, _08057C98 @ =0x00004404
	adds r0, r5, #0x0
	orrs r4, r0
	strh r4, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08057C8C: .4byte 0x0200000A
_08057C90: .4byte 0x00004004
_08057C94: .4byte 0x00004204
_08057C98: .4byte 0x00004404
