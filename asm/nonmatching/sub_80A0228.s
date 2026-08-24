	.syntax unified
	.text

	thumb_func_start sub_80A0228
sub_80A0228:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	movs r2, #0x00
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	ldr r4, _080A02BC @ =0x083B89C7
	ldr r0, _080A02C0 @ =0x03001038
	mov r12, r0
	cmp r1, #0x00
	ble _080A0264
	adds r7, r4, #0x0
	adds r6, r4, #0x0
_080A0240:
	adds r0, r2, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, #0x01
	subs r1, #0x01
	cmp r0, #0x00
	beq _080A0260
	adds r3, r6, #0x0
_080A0252:
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, #0x01
	cmp r0, #0x00
	bne _080A0252
_080A0260:
	cmp r1, #0x00
	bgt _080A0240
_080A0264:
	adds r1, r5, #0x0
	adds r1, #0xA8
	str r2, [r1, #0x00]
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r5, #0x0
	adds r4, #0xB0
	strh r0, [r4, #0x00]
	adds r0, r2, #0x1
	str r0, [r1, #0x00]
	ldr r0, _080A02C4 @ =0x000004C4
	mov r2, r12
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _080A02C8
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A02A6
	adds r0, #0xFF
_080A02A6:
	asrs r0, r0, #0x08
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	cmp r0, #0x80
	bhi _080A02E2
	movs r2, #0x80
	negs r2, r2
	adds r1, r2, #0x0
	b _080A02E2
	.byte 0x00, 0x00
_080A02BC: .4byte dword_83B89C7 @ =0x083B89C7
_080A02C0: .4byte 0x03001038
_080A02C4: .4byte 0x000004C4
_080A02C8:
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A02D4
	adds r0, #0xFF
_080A02D4:
	lsls r0, r0, #0x10
	movs r1, #0x80
	cmp r0, #0x00
	bge _080A02E2
	movs r0, #0xC0
	lsls r0, r0, #0x01
	adds r1, r0, #0x0
_080A02E2:
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x88
	movs r2, #0x00
	ldsh r1, [r4, r2]
	lsls r1, r1, #0x03
	str r1, [r0, #0x00]
	ldr r0, _080A0300 @ =0x080A0305
	str r0, [r5, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A0300: .4byte sub_80A0304
