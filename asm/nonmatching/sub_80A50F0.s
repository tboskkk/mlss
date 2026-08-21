	.syntax unified
	.text

	thumb_func_start sub_80A50F0
sub_80A50F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _080A51F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r9, r0
	adds r0, r7, #0x0
	bl sub_80884AC
	ldr r4, [r7, #0x34]
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x00]
	adds r0, #0x14
	strh r0, [r4, #0x00]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x02]
	subs r0, #0x0E
	strh r0, [r4, #0x02]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080A514A
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A514A:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080A515A
	b _080A5264
_080A515A:
	mov r2, r9
	movs r1, #0x00
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080A5174
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A5176
_080A5174:
	movs r1, #0x00
_080A5176:
	adds r6, r7, #0x0
	adds r6, #0xAE
	cmp r1, #0x00
	beq _080A519A
	ldr r0, _080A51FC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080A519A
	ldrh r0, [r6, #0x00]
	ldr r1, _080A5200 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A519A:
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A5264
	mov r1, r9
	ldr r0, _080A5204 @ =0x00007FFF
	cmp r1, r0
	ble _080A51AC
	adds r1, r0, #0x0
_080A51AC:
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A51C6
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A51C8
_080A51C6:
	movs r2, #0x00
_080A51C8:
	cmp r2, #0x00
	beq _080A5208
	ldr r0, _080A51F8 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldrh r1, [r6, #0x00]
	ldr r0, _080A5200 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	b _080A5264
_080A51F8: .4byte 0x03000FD8
_080A51FC: .4byte 0x0300034C
_080A5200: .4byte 0x00000FFF
_080A5204: .4byte 0x00007FFF
_080A5208:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r9
	bgt _080A5264
	ldr r0, _080A52C4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A5228
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A5264
_080A5228:
	ldr r4, _080A52C8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A5264
	ldrh r0, [r6, #0x00]
	ldr r1, _080A52CC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A5264:
	ldrh r0, [r6, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A52D8
	movs r1, #0x00
	mov r2, r9
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A527A
	adds r1, r0, #0x0
_080A527A:
	ldr r0, _080A52D0 @ =0x00007FFF
	cmp r2, r0
	ble _080A5282
	adds r2, r0, #0x0
_080A5282:
	cmp r2, r1
	bge _080A5288
	adds r1, r2, #0x0
_080A5288:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A52A2
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A52A4
_080A52A2:
	movs r1, #0x00
_080A52A4:
	cmp r1, #0x00
	beq _080A52D8
	cmp r3, #0x01
	ble _080A52D8
	ldrh r0, [r6, #0x00]
	ldr r1, _080A52CC @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r1, _080A52D4 @ =0x080A56DD
	mov r2, r8
	str r1, [r2, #0x4C]
	mov r0, r8
	bl _call_via_r1
	b _080A52EC
	.byte 0x00, 0x00
_080A52C4: .4byte 0x0300034C
_080A52C8: .4byte 0x03000FD8
_080A52CC: .4byte 0x00000FFF
_080A52D0: .4byte 0x00007FFF
_080A52D4: .4byte sub_80A56DC
_080A52D8:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A52EC
	ldr r0, _080A52F8 @ =0x080A52FD
	mov r4, r8
	str r0, [r4, #0x4C]
_080A52EC:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A52F8: .4byte sub_80A52FC
