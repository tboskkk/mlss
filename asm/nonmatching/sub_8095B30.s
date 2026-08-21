	.syntax unified
	.text

	thumb_func_start sub_8095B30
sub_8095B30:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	bl sub_80884AC
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08095B52
	b _08095D40
_08095B52:
	movs r0, #0x00
	mov r10, r0
	ldr r6, [r7, #0x30]
	cmp r6, #0x00
	bne _08095B5E
	b _08095D3C
_08095B5E:
	ldr r1, _08095BE8 @ =0x03001038
	mov r9, r1
	ldr r1, _08095BEC @ =0x0819832C
	ldr r0, _08095BF0 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
_08095B6A:
	ldr r5, [r6, #0x2C]
	cmp r7, r5
	bne _08095C42
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08095B84
	cmp r1, #0x04
	beq _08095B84
	b _08095D04
_08095B84:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _08095B8C
	adds r1, #0xFF
_08095B8C:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x04
	mov r12, r1
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08095BA6
	adds r0, #0xFF
_08095BA6:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _08095BBC
	adds r3, #0xFF
_08095BBC:
	asrs r3, r3, #0x08
	adds r4, r7, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r7, #0x28]
	adds r0, #0x08
	cmp r7, r0
	bne _08095BF4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _08095C04
_08095BE8: .4byte 0x03001038
_08095BEC: .4byte 0x0819832C
_08095BF0: .4byte 0x08198220
_08095BF4:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r7, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_08095C04:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08095C0C
	adds r0, #0xFF
_08095C0C:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	mov r2, r9
	ldr r0, [r2, #0x00]
	mov r1, r8
	adds r2, r0, r1
	movs r0, #0xC8
	lsls r0, r0, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _08095C26
	adds r1, #0x3F
_08095C26:
	asrs r1, r1, #0x06
	adds r1, #0x28
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x03
	bl sub_8088164
	b _08095D04
_08095C42:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08095C54
	cmp r1, #0x04
	bne _08095D04
_08095C54:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08095C5C
	adds r1, #0xFF
_08095C5C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x04
	mov r12, r1
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08095C76
	adds r0, #0xFF
_08095C76:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08095C8C
	adds r3, #0xFF
_08095C8C:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _08095CB8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _08095CC8
_08095CB8:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_08095CC8:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08095CD0
	adds r0, #0xFF
_08095CD0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	mov r2, r9
	ldr r0, [r2, #0x00]
	mov r1, r8
	adds r2, r0, r1
	movs r0, #0xC8
	lsls r0, r0, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _08095CEA
	adds r1, #0x3F
_08095CEA:
	asrs r1, r1, #0x06
	adds r1, #0x28
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x03
	bl sub_8088164
_08095D04:
	mov r2, r9
	ldr r3, [r2, #0x00]
	add r3, r8
	adds r4, r6, #0x0
	adds r4, #0x7A
	movs r0, #0x00
	ldsh r1, [r4, r0]
	lsls r0, r1, #0x0E
	mov r2, r10
	muls r2, r1
	adds r1, r2, #0x0
	lsls r2, r1, #0x03
	adds r2, r2, r1
	lsls r2, r2, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r1, r1, r2
	movs r2, #0x01
	add r10, r2
	bl _call_via_r3
	strh r0, [r4, #0x00]
	ldr r0, _08095D50 @ =0x08095D55
	str r0, [r6, #0x4C]
	ldr r6, [r6, #0x30]
	cmp r6, #0x00
	beq _08095D3C
	b _08095B6A
_08095D3C:
	movs r0, #0x00
	str r0, [r7, #0x4C]
_08095D40:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08095D50: .4byte sub_8095D54
