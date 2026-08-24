	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D0B98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r7, #0x2C]
	mov r12, r0
	ldr r6, [r4, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0B20
	cmp r1, #0x04
	bne _080D0B8A
_080D0B20:
	mov r0, r12
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _080D0B2A
	adds r1, #0xFF
_080D0B2A:
	asrs r1, r1, #0x08
	mov r0, r12
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	mov r1, r12
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080D0B42
	adds r0, #0xFF
_080D0B42:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	mov r0, r12
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _080D0B5A
	adds r3, #0xFF
_080D0B5A:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x30]
	movs r1, #0x20
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x04
	bl sub_8088164
_080D0B8A:
	ldr r0, _080D0B9C @ =0x080D0BA1
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D0B98: .4byte 0x03000FD8
_080D0B9C: .4byte sub_80D0BA0
