	.syntax unified
	.text

	thumb_func_start sub_8072DCC
sub_8072DCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08072E0E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08072DEC
	adds r1, #0xFF
_08072DEC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08072DF6
	adds r2, #0xFF
_08072DF6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08072E00
	adds r3, #0xFF
_08072E00:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08072EE4 @ =0x00002276
	bl sub_80DF024
	movs r0, #0x05
	str r0, [r5, #0x00]
_08072E0E:
	adds r3, r4, #0x0
	adds r3, #0xAC
	ldr r0, _08072EE8 @ =0xFFFFFE80
	adds r1, r0, #0x0
	ldrh r2, [r3, #0x00]
	adds r1, r1, r2
	movs r5, #0x00
	mov r8, r5
	movs r7, #0x01
	negs r7, r7
	strh r1, [r3, #0x00]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r5, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	movs r2, #0x90
	lsls r2, r2, #0x07
	adds r6, r0, r2
	str r1, [r4, #0x14]
	ldr r1, _08072EEC @ =0x08198584
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	bge _08072E4E
	adds r0, #0xFF
_08072E4E:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08072E62
	adds r0, #0x3F
_08072E62:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x04
	adds r0, r5, r0
	str r0, [r4, #0x10]
	ldr r1, _08072EF0 @ =0x08198504
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08072E7A
	adds r0, #0xFF
_08072E7A:
	asrs r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08072E8C
	adds r0, #0x3F
_08072E8C:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x03
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, r6, r1
	str r1, [r4, #0x18]
	ldrh r2, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r2, r0
	bls _08072EAA
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	str r0, [r1, #0x00]
_08072EAA:
	ldr r0, _08072EF4 @ =0x00003FFF
	cmp r2, r0
	bhi _08072F34
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08072F34
	ldr r0, [r4, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _08072EF8
	movs r0, #0xD3
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	mov r2, r8
	strh r2, [r0, #0x0C]
	b _08072F30
_08072EE4: .4byte 0x00002276
_08072EE8: .4byte 0xFFFFFE80
_08072EEC: .4byte word_8198584 @ =0x08198584
_08072EF0: .4byte word_8198504 @ =0x08198504
_08072EF4: .4byte 0x00003FFF
_08072EF8:
	mov r5, r8
	str r5, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08072F16
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	b _08072F34
_08072F16:
	movs r0, #0xD3
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	mov r1, r8
	strh r1, [r0, #0x0C]
_08072F30:
	ldr r0, _08072F40 @ =0x0808750D
	str r0, [r4, #0x4C]
_08072F34:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08072F40: .4byte sub_808750C
