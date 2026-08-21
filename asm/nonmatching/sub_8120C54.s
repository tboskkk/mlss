	.syntax unified
	.text

	thumb_func_start sub_8120C54
sub_8120C54:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r9, r0
	mov r10, r2
	ldr r4, [sp, #0x024]
	ldr r5, [sp, #0x028]
	ldr r0, [sp, #0x02C]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	lsls r4, r4, #0x08
	lsls r5, r5, #0x08
	cmp r3, #0x01
	bne _08120C90
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r9
	ldr r1, [r0, #0x00]
	lsls r0, r6, #0x06
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	adds r4, r4, r1
	ldr r0, [r0, #0x18]
	adds r5, r5, r0
_08120C90:
	movs r2, #0xAC
	lsls r2, r2, #0x01
	add r2, r9
	ldr r0, [r2, #0x00]
	lsls r3, r6, #0x06
	adds r0, r3, r0
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x1C]
	ldr r0, [r2, #0x00]
	adds r0, r3, r0
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x20]
	ldr r0, [r2, #0x00]
	adds r0, r3, r0
	str r4, [r0, #0x24]
	ldr r0, [r2, #0x00]
	adds r0, r3, r0
	str r5, [r0, #0x28]
	ldr r0, [r2, #0x00]
	adds r0, r3, r0
	ldr r2, [r0, #0x24]
	ldr r1, [r0, #0x1C]
	subs r4, r2, r1
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x28]
	subs r2, r1, r0
	adds r0, r4, #0x0
	adds r5, r3, #0x0
	cmp r4, #0x00
	bge _08120CCE
	adds r0, #0xFF
_08120CCE:
	asrs r0, r0, #0x08
	mov r8, r0
	adds r1, r2, #0x0
	cmp r2, #0x00
	bge _08120CDA
	adds r1, #0xFF
_08120CDA:
	asrs r7, r1, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r4, r3
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r1, r0
	bhi _08120CF4
	ldr r0, _08120D3C @ =0xFFFFF000
	cmp r2, r0
	blt _08120CF4
	cmp r2, r3
	ble _08120CF8
_08120CF4:
	mov r4, r8
	adds r2, r7, #0x0
_08120CF8:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0xAC
	lsls r6, r6, #0x01
	add r6, r9
	ldr r0, [r6, #0x00]
	adds r4, r5, r0
	adds r0, r2, #0x0
	asrs r3, r0, #0x08
	adds r0, r2, #0x0
	asrs r0, r0, #0x07
	movs r1, #0x01
	ands r0, r1
	adds r0, r3, r0
	adds r1, r4, #0x0
	adds r1, #0x34
	strb r0, [r1, #0x00]
	mov r0, r10
	cmp r0, #0x01
	bne _08120DD8
	ldr r1, [sp, #0x000]
	lsls r0, r1, #0x10
	cmp r0, #0x00
	bne _08120D40
	ldr r0, [r6, #0x00]
	adds r0, r5, r0
	ldrh r0, [r0, #0x3A]
	b _08120D42
_08120D3C: .4byte 0xFFFFF000
_08120D40:
	lsrs r0, r0, #0x10
_08120D42:
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, _08120DC8 @ =0x08198504
	movs r2, #0xAC
	lsls r2, r2, #0x01
	add r2, r9
	ldr r0, [r2, #0x00]
	adds r3, r5, r0
	adds r0, r3, #0x0
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r6, #0x00
	ldsh r0, [r0, r6]
	muls r0, r4
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08120D6C
	ldr r6, _08120DCC @ =0x00003FFF
	adds r1, r0, r6
_08120D6C:
	asrs r1, r1, #0x0E
	cmp r0, #0x00
	bge _08120D76
	ldr r6, _08120DD0 @ =0x00001FFF
	adds r0, r0, r6
_08120D76:
	asrs r0, r0, #0x0D
	movs r6, #0x01
	ands r0, r6
	adds r0, r1, r0
	strh r0, [r3, #0x2C]
	ldr r1, _08120DD4 @ =0x08198584
	ldr r0, [r2, #0x00]
	adds r3, r5, r0
	adds r0, r3, #0x0
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	muls r0, r4
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08120DA0
	ldr r4, _08120DCC @ =0x00003FFF
	adds r1, r0, r4
_08120DA0:
	asrs r1, r1, #0x0E
	cmp r0, #0x00
	bge _08120DAA
	ldr r4, _08120DD0 @ =0x00001FFF
	adds r0, r0, r4
_08120DAA:
	asrs r0, r0, #0x0D
	ands r0, r6
	adds r0, r1, r0
	negs r0, r0
	strh r0, [r3, #0x2E]
	ldr r0, [r2, #0x00]
	adds r0, r5, r0
	ldrh r1, [r0, #0x2C]
	strh r1, [r0, #0x36]
	ldr r0, [r2, #0x00]
	adds r0, r5, r0
	ldrh r1, [r0, #0x2E]
	strh r1, [r0, #0x38]
	b _08120E48
	.byte 0x00, 0x00
_08120DC8: .4byte 0x08198504
_08120DCC: .4byte 0x00003FFF
_08120DD0: .4byte 0x00001FFF
_08120DD4: .4byte 0x08198584
_08120DD8:
	ldr r0, [r6, #0x00]
	adds r0, r5, r0
	mov r1, sp
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x32]
	ldr r2, _08120E80 @ =0x03001038
	mov r4, r8
	mov r0, r8
	muls r0, r4
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	adds r4, r5, r1
	ldrh r1, [r4, #0x32]
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r1, _08120E84 @ =0x08198504
	adds r0, r4, #0x0
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	muls r0, r3
	cmp r0, #0x00
	bge _08120E20
	ldr r2, _08120E88 @ =0x00003FFF
	adds r0, r0, r2
_08120E20:
	asrs r0, r0, #0x0E
	strh r0, [r4, #0x36]
	ldr r0, [r6, #0x00]
	adds r2, r5, r0
	ldr r1, _08120E8C @ =0x08198584
	adds r0, r2, #0x0
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	muls r0, r3
	cmp r0, #0x00
	bge _08120E42
	ldr r6, _08120E88 @ =0x00003FFF
	adds r0, r0, r6
_08120E42:
	asrs r0, r0, #0x0E
	negs r0, r0
	strh r0, [r2, #0x38]
_08120E48:
	movs r2, #0xAC
	lsls r2, r2, #0x01
	add r2, r9
	ldr r0, [r2, #0x00]
	adds r0, r5, r0
	movs r1, #0x00
	strh r1, [r0, #0x30]
	ldr r1, [r2, #0x00]
	adds r1, r5, r1
	adds r1, #0x3C
	movs r0, #0x03
	mov r2, r10
	ands r2, r0
	lsls r3, r2, #0x01
	ldrb r2, [r1, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08120E80: .4byte 0x03001038
_08120E84: .4byte 0x08198504
_08120E88: .4byte 0x00003FFF
_08120E8C: .4byte 0x08198584
