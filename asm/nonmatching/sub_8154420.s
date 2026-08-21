	.syntax unified
	.text

	thumb_func_start sub_8154420
sub_8154420:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r8, r1
	ldr r0, [sp, #0x01C]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x04
	beq _08154470
	cmp r0, #0x04
	bgt _08154442
	cmp r0, #0x03
	beq _08154448
	b _0815448C
_08154442:
	cmp r1, #0x0C
	beq _08154478
	b _0815448C
_08154448:
	ldr r1, [r5, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	ldr r2, [r5, #0x34]
	cmp r2, #0x00
	beq _08154466
	ldrb r1, [r2, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08154466:
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08154584
_08154470:
	adds r0, r5, #0x0
	bl sub_815FAFC
	b _08154584
_08154478:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAC
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x03
	strb r0, [r1, #0x00]
	b _08154584
_0815448C:
	adds r7, r5, #0x0
	adds r7, #0x24
	ldrb r0, [r7, #0x00]
	cmp r0, #0x01
	beq _081544A4
	cmp r0, #0x01
	ble _08154584
	cmp r0, #0x02
	beq _0815452C
	cmp r0, #0x03
	beq _08154558
	b _08154584
_081544A4:
	movs r0, #0x00
	strh r0, [r5, #0x38]
	ldr r6, _08154520 @ =0x03001018
	ldr r0, [r6, #0x00]
	ldr r1, _08154524 @ =0x00001C98
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r1, [r3, #0x04]
	ldr r0, [r5, #0x04]
	cmp r1, r0
	ble _081544D8
	ldr r2, [r3, #0x30]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	adds r0, r3, r0
	movs r1, #0x0D
	str r1, [sp, #0x000]
	ldr r4, [r2, #0x14]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl _call_via_r4
	ldrh r0, [r5, #0x38]
	adds r0, #0x01
	strh r0, [r5, #0x38]
_081544D8:
	ldr r0, [r6, #0x00]
	ldr r2, _08154528 @ =0x00001C9C
	adds r0, r0, r2
	ldr r3, [r0, #0x00]
	ldr r1, [r3, #0x04]
	ldr r0, [r5, #0x04]
	cmp r1, r0
	ble _08154506
	ldr r2, [r3, #0x30]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	adds r0, r3, r0
	movs r1, #0x0D
	str r1, [sp, #0x000]
	ldr r4, [r2, #0x14]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl _call_via_r4
	ldrh r0, [r5, #0x38]
	adds r0, #0x01
	strh r0, [r5, #0x38]
_08154506:
	ldrh r0, [r5, #0x38]
	cmp r0, #0x01
	bls _08154510
	movs r0, #0x02
	strb r0, [r7, #0x00]
_08154510:
	ldr r1, [r5, #0x04]
	mov r0, r8
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r5, #0x08]
	b _08154584
_08154520: .4byte 0x03001018
_08154524: .4byte 0x00001C98
_08154528: .4byte 0x00001C9C
_0815452C:
	ldr r0, _08154550 @ =0x03001018
	ldr r1, [r0, #0x00]
	ldr r2, _08154554 @ =0x00001C98
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _08154584
	adds r2, #0x04
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _08154584
	movs r0, #0x01
	b _08154586
_08154550: .4byte 0x03001018
_08154554: .4byte 0x00001C98
_08154558:
	ldr r0, [r5, #0x34]
	cmp r0, #0x00
	beq _08154568
	adds r0, r5, #0x0
	movs r1, #0x2F
	bl sub_815FA70
	b _08154570
_08154568:
	adds r0, r5, #0x0
	movs r1, #0x3C
	bl sub_815FA70
_08154570:
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x12]
	movs r1, #0x07
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x12]
_08154584:
	movs r0, #0x00
_08154586:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
