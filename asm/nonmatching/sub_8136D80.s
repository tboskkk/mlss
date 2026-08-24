	.syntax unified
	.text

	thumb_func_start sub_8136D80
sub_8136D80:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	beq _08136D98
	b _08136EDC
_08136D98:
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08136DBC
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_08136DBC:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	ldr r2, _08136DF4 @ =0x083A05EC
	ldr r1, _08136DF8 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08136E6C
	cmp r0, #0x01
	bgt _08136DFC
	cmp r0, #0x00
	beq _08136E00
	b _08136E6C
_08136DF4: .4byte dword_83A05EC @ =0x083A05EC
_08136DF8: .4byte 0x00000216
_08136DFC:
	cmp r0, #0x02
	bne _08136E6C
_08136E00:
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	blt _08136E1C
	ldr r0, [r4, #0x0C]
	ldr r3, [r3, #0x0C]
	cmp r0, r3
	blt _08136EF4
	movs r0, #0x00
	ldsh r2, [r1, r0]
	b _08136E2A
_08136E1C:
	ldr r0, [r4, #0x0C]
	ldr r3, [r3, #0x0C]
	cmp r0, r3
	bge _08136EF4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r2, r0
_08136E2A:
	ldr r0, [r4, #0x34]
	subs r1, r0, r2
	adds r5, r0, #0x0
	cmp r1, r3
	bge _08136E44
	adds r0, r5, r2
	cmp r0, r3
	ble _08136E44
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	b _08136E56
_08136E44:
	movs r2, #0xB3
	lsls r2, r2, #0x02
	adds r1, r4, r2
	adds r2, #0x0C
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r0, r5, r0
	str r0, [r1, #0x00]
_08136E56:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	b _08136EF4
_08136E6C:
	ldr r0, _08136E88 @ =0x000002DA
	adds r1, r4, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	blt _08136E8C
	ldr r0, [r4, #0x10]
	ldr r3, [r3, #0x10]
	cmp r0, r3
	blt _08136EF4
	movs r0, #0x00
	ldsh r2, [r1, r0]
	b _08136E9A
	.byte 0x00, 0x00
_08136E88: .4byte 0x000002DA
_08136E8C:
	ldr r0, [r4, #0x10]
	ldr r3, [r3, #0x10]
	cmp r0, r3
	bge _08136EF4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r2, r0
_08136E9A:
	ldr r0, [r4, #0x38]
	subs r1, r0, r2
	adds r5, r0, #0x0
	cmp r1, r3
	bge _08136EB4
	adds r0, r5, r2
	cmp r0, r3
	ble _08136EB4
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	b _08136EC6
_08136EB4:
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	adds r2, #0x0A
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r0, r5, r0
	str r0, [r1, #0x00]
_08136EC6:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	b _08136EF4
_08136EDC:
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x04]
	str r0, [r6, #0x00]
_08136EF4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
