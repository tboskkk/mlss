	.syntax unified
	.text

	thumb_func_start sub_80214A4
sub_80214A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r0, r4
	cmp r0, #0x00
	beq _080214CA
	asrs r0, r4, #0x0C
	subs r7, r0, #0x1
	ldr r0, _0802154C @ =0x00000FFF
	ands r4, r0
_080214CA:
	ldr r0, _08021550 @ =0x0839EE60
	lsls r1, r7, #0x02
	adds r0, r1, r0
	lsls r2, r4, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x05
	lsrs r3, r0, #0x17
	ldr r0, _08021554 @ =0x0839EE8C
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldrb r1, [r5, #0x02]
	ldrb r0, [r5, #0x03]
	lsls r0, r0, #0x08
	orrs r1, r0
	cmp r1, #0x00
	bne _08021562
	ldrb r1, [r5, #0x00]
	ldrb r0, [r5, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	subs r1, r5, r1
	ldrb r2, [r5, #0x06]
	movs r0, #0x7F
	ands r0, r2
	adds r2, r0, #0x1
	ldrb r1, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _08021516
	adds r0, r2, #0x0
	muls r0, r1
	adds r6, r0, #0x1
_08021516:
	adds r6, #0x03
	movs r0, #0x04
	negs r0, r0
	ands r6, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r7, r3, #0x0
	movs r0, #0x03
	mov r1, r8
	adds r2, r7, #0x0
	bl sprite_heap_search
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08021558
	movs r0, #0x03
	adds r1, r6, #0x0
	mov r2, r8
	adds r3, r7, #0x0
	bl sprite_heap_alloc
	adds r4, r0, #0x0
	adds r1, r5, #0x0
	bl sub_801E3EC
	b _08021564
_0802154C: .4byte 0x00000FFF
_08021550: .4byte dword_839EE60 @ =0x0839EE60
_08021554: .4byte dword_839EE8C @ =0x0839EE8C
_08021558:
	mov r0, r9
	cmp r0, #0x00
	bne _08021564
	movs r0, #0x00
	b _08021566
_08021562:
	subs r4, r5, r1
_08021564:
	adds r0, r4, #0x0
_08021566:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
