	.syntax unified
	.text

	thumb_func_start sub_8080A40
sub_8080A40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	movs r0, #0x10
	ldsh r5, [r7, r0]
	cmp r5, #0x05
	bgt _08080B1E
	movs r0, #0x06
	subs r1, r0, r5
	movs r0, #0x01
	ands r1, r0
	cmp r5, #0x06
	bge _08080A62
	cmp r1, #0x00
	beq _08080AA2
_08080A62:
	ldr r0, _08080A94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080A9C
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080A9C
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r5, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080A98 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080A94: .4byte 0x03000FD8
_08080A98: .4byte sub_8082158
_08080A9C:
	adds r5, #0x01
	cmp r5, #0x05
	bgt _08080B1E
_08080AA2:
	ldr r0, _08080AD4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080ADC
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080ADC
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r5, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080AD8 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080AD4: .4byte 0x03000FD8
_08080AD8: .4byte sub_8082158
_08080ADC:
	adds r6, r5, #0x1
	ldr r0, _08080B10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080B18
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080B18
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r6, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080B14 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080B10: .4byte 0x03000FD8
_08080B14: .4byte sub_8082158
_08080B18:
	adds r5, #0x02
	cmp r5, #0x05
	ble _08080AA2
_08080B1E:
	ldr r1, _08080BB0 @ =0x0000700A
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, _08080BB4 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _08080BB8 @ =0x08080BE1
	mov r8, r1
	str r1, [r7, #0x04]
	movs r4, #0x00
	strh r4, [r7, #0x10]
	ldr r6, _08080BBC @ =0x084FB4FC
	adds r0, r6, #0x0
	adds r0, #0x6C
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r5, _08080BC0 @ =0x089F2CE0
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	adds r1, r1, r5
	ldr r2, _08080BC4 @ =0x06016800
	movs r3, #0x80
	lsls r3, r3, #0x02
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r2, _08080BC8 @ =0x03001034
	ldr r0, _08080BCC @ =0x08198154
	ldr r1, _08080BD0 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r4, _08080BD4 @ =0x0300034C
	ldr r2, _08080BD8 @ =0x00000888
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x6E
	cmp r0, #0x00
	beq _08080B7E
	movs r1, #0x70
_08080B7E:
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r0, r0, r5
	ldr r1, _08080BDC @ =0x020003C0
	movs r2, #0x20
	bl _call_via_r3
	ldrh r0, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	mov r0, r8
_08080BA0:
	str r0, [r7, #0x04]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080BB0: .4byte 0x0000700A
_08080BB4: .4byte 0x03000FD8
_08080BB8: .4byte sub_8080BE0
_08080BBC: .4byte 0x084FB4FC
_08080BC0: .4byte 0x089F2CE0
_08080BC4: .4byte 0x06016800
_08080BC8: .4byte 0x03001034
_08080BCC: .4byte 0x08198154
_08080BD0: .4byte 0x081980D8
_08080BD4: .4byte 0x0300034C
_08080BD8: .4byte 0x00000888
_08080BDC: .4byte 0x020003C0
