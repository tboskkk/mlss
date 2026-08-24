	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C19D8 @ =0x03000FD8
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
	beq _080C19CA
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x7E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C1926
	adds r1, #0xFF
_080C1926:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C1930
	adds r2, #0xFF
_080C1930:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C193A
	adds r3, #0xFF
_080C193A:
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
	beq _080C1956
	cmp r1, #0x04
	bne _080C199A
_080C1956:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C195E
	adds r0, #0xFF
_080C195E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0A
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C1978
	adds r2, #0xFF
_080C1978:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C199A:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C19AC
	cmp r1, #0x04
	bne _080C19C4
_080C19AC:
	ldr r2, _080C19DC @ =0x00002034
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
_080C19C4:
	ldr r0, _080C19E0 @ =0x080C19E5
	mov r1, r8
	str r0, [r1, #0x4C]
_080C19CA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C19D8: .4byte 0x03000FD8
_080C19DC: .4byte 0x00002034
_080C19E0: .4byte sub_80C19E4
