	.syntax unified
	.text

	thumb_func_start sub_80C943C
sub_80C943C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C9540 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	mov r1, r8
	ldr r6, [r1, #0x2C]
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C9532
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r0, #0x7E
	mov r1, r9
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C9482
	adds r1, #0xFF
_080C9482:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C948C
	adds r2, #0xFF
_080C948C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C9496
	adds r3, #0xFF
_080C9496:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C94B2
	cmp r1, #0x04
	bne _080C9502
_080C94B2:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C94BA
	adds r0, #0xFF
_080C94BA:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080C94D4
	adds r0, #0xFF
_080C94D4:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r1, [r6, #0x40]
	cmp r1, #0x00
	bge _080C94EA
	adds r1, #0xFF
_080C94EA:
	asrs r3, r1, #0x08
	mov r1, r9
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C9502:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9514
	cmp r1, #0x04
	bne _080C952C
_080C9514:
	ldr r2, _080C9544 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C952C:
	ldr r0, _080C9548 @ =0x080C954D
	mov r1, r8
	str r0, [r1, #0x4C]
_080C9532:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C9540: .4byte 0x03000FD8
_080C9544: .4byte 0x00002034
_080C9548: .4byte sub_80C954C
