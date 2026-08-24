	.syntax unified
	.text

	thumb_func_start sub_80E5968
sub_80E5968:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	mov r9, r1
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	beq _080E5980
	movs r1, #0x03
	bl sub_80E9484
_080E5980:
	movs r0, #0x00
	str r0, [r7, #0x00]
	ldr r2, [r7, #0x04]
	cmp r2, #0x00
	beq _080E5A7E
	mov r8, r0
	adds r6, r2, #0x0
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080E59C8
	ldr r5, _080E5A9C @ =0x083B9512
	adds r4, r2, #0x0
	adds r4, #0x41
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	bl sub_8019588
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080E59C8
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	bl stop_sfx_80195A8
_080E59C8:
	movs r2, #0x01
	add r8, r2
	adds r6, #0x4C
	mov r0, r8
	cmp r0, #0x04
	bgt _080E5A62
_080E59D4:
	ldr r0, [r7, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	mov r2, r8
	asrs r0, r2
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080E5A14
	ldr r5, _080E5A9C @ =0x083B9512
	adds r4, r6, #0x0
	adds r4, #0x41
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	bl sub_8019588
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080E5A14
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	bl stop_sfx_80195A8
_080E5A14:
	mov r1, r8
	adds r1, #0x01
	ldr r0, [r7, #0x04]
	movs r2, #0xD9
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	asrs r0, r1
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080E5A56
	ldr r5, _080E5A9C @ =0x083B9512
	adds r4, r6, #0x0
	adds r4, #0x8D
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	bl sub_8019588
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080E5A56
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	bl stop_sfx_80195A8
_080E5A56:
	movs r0, #0x02
	add r8, r0
	adds r6, #0x98
	mov r1, r8
	cmp r1, #0x04
	ble _080E59D4
_080E5A62:
	ldr r0, [r7, #0x04]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E5A74
	bl free_heap_memory_8018C68
_080E5A74:
	ldr r0, [r7, #0x04]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r7, #0x04]
_080E5A7E:
	movs r0, #0x01
	mov r1, r9
	ands r0, r1
	cmp r0, #0x00
	beq _080E5A8E
	adds r0, r7, #0x0
	bl free_heap_8018DA8
_080E5A8E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E5A9C: .4byte dword_83B9512 @ =0x083B9512
