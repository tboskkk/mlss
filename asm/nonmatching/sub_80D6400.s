	.syntax unified
	.text

	thumb_func_start sub_80D6400
sub_80D6400:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080D6590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D642E
	b _080D6580
_080D642E:
	movs r7, #0x00
	movs r0, #0x7E
	adds r0, r0, r4
	mov r9, r0
	adds r4, #0xD4
	mov r8, r4
_080D643A:
	ldr r0, _080D6590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080D64EE
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D64EE
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x55
	orrs r1, r0
	mov r0, r8
	strb r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	ldr r0, _080D6594 @ =0x0881838D
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D64B8
	ldr r2, _080D6598 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D64EE
_080D64B8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D64C0
	adds r1, #0xFF
_080D64C0:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D64D6
	adds r2, #0xFF
_080D64D6:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D64EE:
	adds r7, #0x01
	cmp r7, #0x05
	ble _080D643A
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6504
	cmp r1, #0x04
	bne _080D651C
_080D6504:
	ldr r2, _080D659C @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D651C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D653A
	ldr r2, _080D65A0 @ =0x00002095
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D653A:
	mov r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D654A
	cmp r1, #0x04
	bne _080D657A
_080D654A:
	ldr r2, _080D65A4 @ =0x03001038
	ldr r0, _080D65A8 @ =0x0819832C
	ldr r1, _080D65AC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D657A:
	ldr r0, _080D65B0 @ =0x080D65B5
	mov r1, r10
	str r0, [r1, #0x4C]
_080D6580:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D6590: .4byte 0x03000FD8
_080D6594: .4byte 0x0881838D
_080D6598: .4byte 0x00000111
_080D659C: .4byte 0x00002066
_080D65A0: .4byte 0x00002095
_080D65A4: .4byte 0x03001038
_080D65A8: .4byte 0x0819832C
_080D65AC: .4byte 0x08198220
_080D65B0: .4byte sub_80D65B4
