	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DC070
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBFE0
	adds r0, #0xFF
_080DBFE0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBFF0
	adds r0, #0xFF
_080DBFF0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DC000
	adds r0, #0xFF
_080DC000:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [sp, #0x000]
	movs r1, #0x88
	lsls r1, r1, #0x01
	subs r1, r1, r0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r2, #0x0B
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DC078 @ =0x080DC0B5
	str r0, [r4, #0x4C]
_080DC070:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
_080DC078: .4byte sub_80DC0B4
