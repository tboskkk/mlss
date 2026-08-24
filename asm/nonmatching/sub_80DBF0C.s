	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBF20
	adds r0, #0xFF
_080DBF20:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBF30
	adds r0, #0xFF
_080DBF30:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBF40
	adds r0, #0xFF
_080DBF40:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [sp, #0x000]
	movs r4, #0xF0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r3, [r5, #0x28]
	adds r1, r3, #0x0
	adds r1, #0xD8
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	adds r1, r5, #0x0
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
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _080DBFB8 @ =0x080DC07D
	str r0, [r5, #0x4C]
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_080DBFB8: .4byte sub_80DC07C
