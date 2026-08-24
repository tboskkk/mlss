	.syntax unified
	.text

	thumb_func_start sub_8053FC4
sub_8053FC4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08053FD4
	cmp r0, #0x01
	beq _0805402C
	b _080540A0
_08053FD4:
	adds r3, r4, #0x0
	adds r3, #0x39
	movs r0, #0x00
	ldsb r0, [r3, r0]
	cmp r0, #0x00
	ble _08053FEA
	adds r0, r4, #0x0
	adds r0, #0x38
	bl sub_8051EE0
	b _080540A0
_08053FEA:
	ldrb r0, [r4, #0x1C]
	subs r0, #0x01
	strb r0, [r4, #0x1C]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08054002
	ldr r0, _08054024 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x0B
	ands r0, r1
	cmp r0, #0x00
	beq _080540A0
_08054002:
	ldr r0, _08054028 @ =0x0839EC80
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x01]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x01]
	adds r2, r4, #0x0
	adds r2, #0x38
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x07
	strb r0, [r3, #0x00]
	movs r0, #0x01
	strb r0, [r4, #0x00]
	b _080540A0
_08054024: .4byte 0x0300034C
_08054028: .4byte 0x0839EC80
_0805402C:
	adds r0, r4, #0x0
	adds r0, #0x38
	bl sub_8051EE0
	adds r0, r4, #0x0
	adds r0, #0x39
	movs r5, #0x00
	ldsb r5, [r0, r5]
	cmp r5, #0x00
	bne _080540A0
	cmp r4, #0x00
	beq _08054088
	ldr r0, _080540A8 @ =0x08CDC1C8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	beq _08054052
	bl free_heap_8018D9C
_08054052:
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _0805405C
	bl free_heap_8018D9C
_0805405C:
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08054066
	bl free_heap_8018D9C
_08054066:
	ldr r0, [r4, #0x2C]
	cmp r0, #0x00
	beq _08054070
	bl free_heap_8018D9C
_08054070:
	ldr r0, [r4, #0x30]
	bl free_heap_8018DA8
	movs r0, #0x80
	lsls r0, r0, #0x12
	strh r5, [r0, #0x00]
	adds r0, #0x50
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_08054088:
	ldr r4, _080540AC @ =0x081E2714
	movs r0, #0xE4
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x02
	bl open_init_8055A00
_080540A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080540A8: .4byte dword_8CDC1C8 @ =0x08CDC1C8
_080540AC: .4byte dword_81E2714 @ =0x081E2714
