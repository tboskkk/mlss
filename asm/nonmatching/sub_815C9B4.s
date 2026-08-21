	.syntax unified
	.text

	thumb_func_start sub_815C9B4
sub_815C9B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	mov r9, r1
	mov r10, r3
	ldr r0, [sp, #0x024]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x03
	beq _0815C9E8
	cmp r0, #0x03
	bgt _0815C9E2
	cmp r0, #0x01
	blt _0815CA08
	b _0815CC4C
_0815C9E2:
	cmp r1, #0x04
	beq _0815CA00
	b _0815CA08
_0815C9E8:
	ldr r1, [r7, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r7, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _0815CC4C
_0815CA00:
	adds r0, r7, #0x0
	bl sub_815FAFC
	b _0815CC4C
_0815CA08:
	adds r4, r7, #0x0
	adds r4, #0x24
	ldrb r0, [r4, #0x00]
	cmp r0, #0x04
	beq _0815CA5A
	cmp r0, #0x04
	bgt _0815CA1C
	cmp r0, #0x02
	beq _0815CB0E
	b _0815CC4C
_0815CA1C:
	cmp r0, #0x05
	beq _0815CA26
	cmp r0, #0x06
	beq _0815CA7A
	b _0815CC4C
_0815CA26:
	ldr r1, [r7, #0x38]
	ldrb r2, [r1, #0x12]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	bne _0815CA4C
	ldr r0, [r7, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x38]
	ldr r0, [r7, #0x00]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r2, [r7, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _0815CC4C
_0815CA4C:
	movs r0, #0x20
	orrs r0, r2
	strb r0, [r1, #0x12]
	movs r0, #0x00
	strb r0, [r4, #0x00]
	movs r0, #0x01
	b _0815CC4E
_0815CA5A:
	movs r3, #0x18
	ldsh r1, [r7, r3]
	ldr r0, [r7, #0x08]
	adds r0, r0, r1
	str r0, [r7, #0x08]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r7, #0x20]
	adds r0, r0, r2
	ldrh r1, [r7, #0x18]
	adds r1, r1, r0
	movs r0, #0x00
	strh r1, [r7, #0x18]
	strh r0, [r7, #0x20]
	b _0815CC4C
_0815CA7A:
	ldr r0, _0815CAA4 @ =0x03001020
	ldr r2, [r0, #0x00]
	ldr r3, _0815CAA8 @ =0x00001CBC
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r1, r7, #0x4
	subs r3, #0x24
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	adds r2, #0x04
	bl sub_815999C
	cmp r0, #0x00
	bne _0815CAAC
	adds r0, r7, #0x0
	movs r1, #0x02
	bl sub_815FA70
	movs r0, #0x02
	strb r0, [r4, #0x00]
	b _0815CC4C
_0815CAA4: .4byte 0x03001020
_0815CAA8: .4byte 0x00001CBC
_0815CAAC:
	adds r1, r7, #0x0
	adds r1, #0x40
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1D
	bls _0815CAF2
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x04]
	subs r0, #0x04
	strh r0, [r1, #0x04]
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x06]
	subs r0, #0x04
	strh r0, [r1, #0x06]
	ldr r2, [r7, #0x00]
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x20
	bgt _0815CAF2
	ldr r1, [r7, #0x38]
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x38]
	ldr r0, [r7, #0x00]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r0, [r7, #0x38]
	bl sprite_show_8020CBC
	movs r0, #0x05
	strb r0, [r4, #0x00]
	b _0815CC4C
_0815CAF2:
	adds r2, r7, #0x0
	adds r2, #0x41
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	subs r0, r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	subs r1, #0x02
	lsls r1, r1, #0x08
	ldr r0, [r7, #0x04]
	adds r0, r0, r1
	str r0, [r7, #0x04]
	b _0815CC4C
_0815CB0E:
	ldr r5, _0815CB40 @ =0x03001020
	ldr r2, [r5, #0x00]
	ldr r3, _0815CB44 @ =0x00001CBC
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r1, r7, #0x4
	ldr r6, _0815CB48 @ =0x00001C98
	adds r2, r2, r6
	ldr r2, [r2, #0x00]
	adds r2, #0x04
	bl sub_815999C
	cmp r0, #0x00
	beq _0815CB4C
	adds r0, r7, #0x0
	adds r0, #0x40
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x07
	bl sub_815FA70
	movs r0, #0x06
	strb r0, [r4, #0x00]
	b _0815CC4C
_0815CB40: .4byte 0x03001020
_0815CB44: .4byte 0x00001CBC
_0815CB48: .4byte 0x00001C98
_0815CB4C:
	ldr r0, [r5, #0x00]
	ldr r1, _0815CC14 @ =0x00001C98
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8159DBC
	cmp r0, #0x00
	beq _0815CB80
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x30]
	movs r2, #0x10
	ldsh r1, [r3, r2]
	adds r0, r0, r1
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x05
	str r1, [sp, #0x000]
	ldr r4, [r3, #0x14]
	mov r1, r9
	mov r3, r10
	bl _call_via_r4
_0815CB80:
	ldr r2, [r7, #0x00]
	ldrh r1, [r2, #0x04]
	movs r3, #0x04
	ldsh r0, [r2, r3]
	cmp r0, #0xFF
	ble _0815CC20
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r2, #0x04]
	ldr r0, [r7, #0x00]
	strh r1, [r0, #0x06]
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	ldr r5, [r1, #0x04]
	ldr r0, [r7, #0x04]
	subs r5, r5, r0
	ldr r0, [r7, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r0, r2
	ldr r4, [r1, #0x08]
	subs r4, r4, r0
	ldr r2, _0815CC18 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	lsls r4, r4, #0x07
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl __divsi3
	adds r4, r0, #0x0
	lsls r5, r5, #0x07
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl __divsi3
	strh r0, [r7, #0x14]
	strh r4, [r7, #0x18]
	movs r3, #0x14
	ldsh r1, [r7, r3]
	ldr r0, [r7, #0x04]
	adds r0, r0, r1
	str r0, [r7, #0x04]
	movs r0, #0x18
	ldsh r1, [r7, r0]
	ldr r0, [r7, #0x08]
	adds r3, r0, r1
	str r3, [r7, #0x08]
	ldr r1, _0815CC1C @ =0x08198504
	ldrh r2, [r7, #0x3E]
	movs r0, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815CC06
	adds r0, #0x3F
_0815CC06:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	adds r0, r3, r0
	str r0, [r7, #0x08]
	adds r0, r2, #0x2
	strh r0, [r7, #0x3E]
	b _0815CC2C
_0815CC14: .4byte 0x00001C98
_0815CC18: .4byte 0x03001038
_0815CC1C: .4byte 0x08198504
_0815CC20:
	adds r0, r1, #0x4
	strh r0, [r2, #0x04]
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x06]
	adds r0, #0x04
	strh r0, [r1, #0x06]
_0815CC2C:
	movs r2, #0x14
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	ble _0815CC40
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
	b _0815CC4C
_0815CC40:
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_0815CC4C:
	movs r0, #0x00
_0815CC4E:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
