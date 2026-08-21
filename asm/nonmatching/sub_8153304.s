	.syntax unified
	.text

	thumb_func_start sub_8153304
sub_8153304:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	mov r9, r1
	ldr r0, [sp, #0x01C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x03
	beq _0815333C
	cmp r5, #0x04
	beq _08153352
	adds r5, r4, #0x0
	adds r5, #0x24
	ldrb r0, [r5, #0x00]
	adds r7, r5, #0x0
	cmp r0, #0x00
	bne _08153332
	b _0815367A
_08153332:
	adds r6, r7, #0x0
	adds r3, r0, #0x0
	cmp r3, #0x03
	bne _08153404
	b _08153370
_0815333C:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r0, r4, #0x0
	adds r0, #0x24
	strb r5, [r0, #0x00]
	b _0815367A
_08153352:
	ldr r1, [r4, #0x30]
	movs r3, #0x38
	ldsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	movs r0, #0xA0
	negs r0, r0
	str r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x06
	strb r0, [r1, #0x00]
	b _0815367A
_08153370:
	ldrh r0, [r4, #0x38]
	adds r0, #0x04
	strh r0, [r4, #0x38]
	adds r0, r4, #0x0
	bl sub_815FA3C
	adds r3, r0, #0x0
	ldr r2, _081533C4 @ =0x08198584
	ldrh r1, [r4, #0x38]
	movs r0, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08153396
	ldr r2, _081533C8 @ =0x000001FF
	adds r0, r0, r2
_08153396:
	asrs r0, r0, #0x09
	lsls r0, r0, #0x08
	strh r0, [r3, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _081533D8
	ldr r0, _081533CC @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r3, _081533D0 @ =0x00001C98
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x04]
	ldr r1, [r1, #0x04]
	subs r0, r0, r1
	ldr r1, _081533D4 @ =0x0000B3FF
	cmp r0, r1
	ble _081533BE
	b _0815367A
_081533BE:
	mov r0, r8
	lsls r1, r0, #0x10
	b _081533F2
_081533C4: .4byte 0x08198584
_081533C8: .4byte 0x000001FF
_081533CC: .4byte 0x03001018
_081533D0: .4byte 0x00001C98
_081533D4: .4byte 0x0000B3FF
_081533D8:
	ldr r0, _081533FC @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r1, _08153400 @ =0x00001C98
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x04]
	ldr r1, [r1, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	blt _081533EE
	b _0815367A
_081533EE:
	mov r2, r8
	lsls r1, r2, #0x10
_081533F2:
	asrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_8158A98
	b _0815367A
_081533FC: .4byte 0x03001018
_08153400: .4byte 0x00001C98
_08153404:
	cmp r3, #0x02
	bne _08153448
	ldrh r0, [r4, #0x36]
	subs r0, #0x01
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	blt _08153416
	b _0815367A
_08153416:
	ldr r0, _08153430 @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r3, _08153434 @ =0x00001C98
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x04]
	ldr r0, [r0, #0x04]
	cmp r1, r0
	ble _08153438
	movs r0, #0x80
	lsls r0, r0, #0x02
	b _0815343C
	.byte 0x00, 0x00
_08153430: .4byte 0x03001018
_08153434: .4byte 0x00001C98
_08153438:
	movs r0, #0xFE
	lsls r0, r0, #0x08
_0815343C:
	strh r0, [r4, #0x14]
	movs r0, #0x00
	strh r0, [r4, #0x18]
	movs r0, #0x01
	strb r0, [r7, #0x00]
	b _0815367A
_08153448:
	cmp r3, #0x01
	bne _081534B4
	ldrh r0, [r4, #0x38]
	adds r0, #0x04
	strh r0, [r4, #0x38]
	ldr r2, _081534B0 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08153466
	adds r0, #0x3F
_08153466:
	asrs r0, r0, #0x07
	ldr r2, [r4, #0x08]
	adds r2, r2, r0
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	movs r1, #0x18
	ldsh r0, [r4, r1]
	adds r2, r2, r0
	str r2, [r4, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _081534A6
	b _0815367A
_081534A6:
	str r1, [r4, #0x04]
	movs r0, #0x06
	strb r0, [r6, #0x00]
	b _0815367A
	.byte 0x00, 0x00
_081534B0: .4byte 0x08198584
_081534B4:
	cmp r3, #0x04
	beq _081534BA
	b _081535D4
_081534BA:
	ldr r6, _081534E0 @ =0x03001018
	ldr r2, [r6, #0x00]
	ldr r3, _081534E4 @ =0x00001CB4
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x4
	ldr r5, _081534E8 @ =0x00001C98
	adds r2, r2, r5
	ldr r2, [r2, #0x00]
	adds r2, #0x04
	bl sub_8150E60
	cmp r0, #0x00
	beq _081534EC
	adds r0, r4, #0x0
	bl sub_8158ABC
	b _081535AA
	.byte 0x00, 0x00
_081534E0: .4byte 0x03001018
_081534E4: .4byte 0x00001CB4
_081534E8: .4byte 0x00001C98
_081534EC:
	adds r0, r4, #0x0
	bl sub_815FA3C
	cmp r0, #0x00
	beq _0815352A
	adds r0, r4, #0x0
	movs r1, #0x04
	bl sub_815FA70
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x04]
	ldr r0, [r0, #0x04]
	cmp r1, r0
	ble _0815351C
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	b _08153528
_0815351C:
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
_08153528:
	strb r1, [r0, #0x11]
_0815352A:
	adds r0, r4, #0x0
	bl sub_815FA3C
	movs r1, #0x00
	strh r1, [r0, #0x0C]
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r4, #0x20]
	adds r1, r1, r3
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r3, #0x18
	ldsh r2, [r4, r3]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	mov r0, r9
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r1, _0815358C @ =0xFFFFF000
	adds r0, r0, r1
	ldr r1, [r4, #0x08]
	cmp r1, r0
	blt _081535AA
	ldr r0, _08153590 @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r2, _08153594 @ =0x00001C98
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x04]
	ldr r0, [r0, #0x04]
	cmp r1, r0
	ble _0815359C
	ldr r0, _08153598 @ =0x0000FE70
	b _081535A0
	.byte 0x00, 0x00
_0815358C: .4byte 0xFFFFF000
_08153590: .4byte 0x03001018
_08153594: .4byte 0x00001C98
_08153598: .4byte 0x0000FE70
_0815359C:
	movs r0, #0xC8
	lsls r0, r0, #0x01
_081535A0:
	strh r0, [r4, #0x14]
	movs r0, #0x00
	strh r0, [r4, #0x18]
	movs r0, #0x05
	strb r0, [r7, #0x00]
_081535AA:
	ldrh r0, [r4, #0x38]
	adds r0, #0x04
	strh r0, [r4, #0x38]
	ldr r2, _081535D0 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _081535C4
	adds r1, #0x3F
_081535C4:
	asrs r1, r1, #0x07
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	b _0815367A
	.byte 0x00, 0x00
_081535D0: .4byte 0x08198584
_081535D4:
	cmp r3, #0x05
	bne _0815366C
	ldr r0, _081535FC @ =0x03001018
	ldr r2, [r0, #0x00]
	ldr r1, _08153600 @ =0x00001CB4
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x4
	ldr r3, _08153604 @ =0x00001C98
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	adds r2, #0x04
	bl sub_8150E60
	cmp r0, #0x00
	beq _08153608
	adds r0, r4, #0x0
	bl sub_8158ABC
	b _0815367A
_081535FC: .4byte 0x03001018
_08153600: .4byte 0x00001CB4
_08153604: .4byte 0x00001C98
_08153608:
	ldrh r0, [r4, #0x38]
	adds r0, #0x06
	strh r0, [r4, #0x38]
	ldr r2, _08153668 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08153622
	adds r0, #0x3F
_08153622:
	asrs r0, r0, #0x07
	ldr r2, [r4, #0x08]
	adds r2, r2, r0
	ldrh r0, [r4, #0x1C]
	ldrh r3, [r4, #0x14]
	adds r0, r0, r3
	strh r0, [r4, #0x14]
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r4, #0x20]
	adds r1, r1, r3
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	movs r1, #0x18
	ldsh r0, [r4, r1]
	adds r2, r2, r0
	str r2, [r4, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _0815367A
	str r1, [r4, #0x04]
	movs r0, #0x06
	strb r0, [r5, #0x00]
	b _0815367A
_08153668: .4byte 0x08198584
_0815366C:
	cmp r0, #0x06
	bne _0815367A
	movs r0, #0x64
	negs r0, r0
	str r0, [r4, #0x08]
	movs r0, #0x01
	b _0815367C
_0815367A:
	movs r0, #0x00
_0815367C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
