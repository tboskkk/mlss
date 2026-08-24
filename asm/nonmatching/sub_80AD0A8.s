	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AD178 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r7, r2, #0x0
	adds r7, #0x08
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AD16A
	ldr r0, [r7, #0x10]
	ldr r1, _080AD17C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r7, #0x10]
	str r0, [r7, #0x38]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD0E4
	cmp r1, #0x04
	bne _080AD0FC
_080AD0E4:
	ldr r2, _080AD180 @ =0x00002061
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD0FC:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD10E
	cmp r1, #0x04
	bne _080AD164
_080AD10E:
	ldr r0, [r7, #0x08]
	movs r1, #0x02
	ldsh r6, [r0, r1]
	ldr r5, _080AD178 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x18
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r6
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x28
	adds r1, r7, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_8088164
_080AD164:
	ldr r0, _080AD184 @ =0x080B3171
	mov r1, r8
	str r0, [r1, #0x4C]
_080AD16A:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AD178: .4byte 0x03000FD8
_080AD17C: .4byte 0xFFFFF000
_080AD180: .4byte 0x00002061
_080AD184: .4byte sub_80B3170
