	.syntax unified
	.text

	thumb_func_start sub_8150C68
sub_8150C68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r1, #0x00]
	ldr r2, [r6, #0x0C]
	adds r0, r0, r2
	asrs r3, r0, #0x08
	ldr r0, [r1, #0x04]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	asrs r5, r0, #0x08
	ldrh r1, [r6, #0x2C]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08150D74
	ldr r4, [r6, #0x30]
	movs r0, #0x00
	mov r8, r0
	ldr r1, _08150CB4 @ =0x03001038
	mov r10, r1
	mov r9, r0
_08150C9C:
	subs r0, r5, r4
	cmp r8, r0
	ble _08150CA8
	adds r0, r5, r4
	cmp r8, r0
	blt _08150CB8
_08150CA8:
	ldr r0, [r6, #0x00]
	add r0, r9
	movs r1, #0x00
	strh r1, [r0, #0x00]
	b _08150D00
	.byte 0x00, 0x00
_08150CB4: .4byte 0x03001038
_08150CB8:
	mov r2, r8
	subs r1, r2, r5
	adds r0, r4, #0x0
	muls r0, r4
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	subs r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x000]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r3, [sp, #0x000]
	subs r0, r3, r1
	cmp r0, #0x00
	bgt _08150CE0
	movs r0, #0x01
	b _08150CE6
_08150CE0:
	cmp r0, #0xEF
	ble _08150CE6
	movs r0, #0xEF
_08150CE6:
	adds r2, r3, r1
	cmp r2, #0x00
	bgt _08150CF0
	movs r2, #0x01
	b _08150CF6
_08150CF0:
	cmp r2, #0xEF
	ble _08150CF6
	movs r2, #0xEF
_08150CF6:
	ldr r1, [r6, #0x00]
	add r1, r9
	lsls r0, r0, #0x08
	orrs r0, r2
	strh r0, [r1, #0x00]
_08150D00:
	mov r7, r9
	adds r7, #0x02
	mov r1, r8
	adds r1, #0x01
	subs r0, r5, r4
	cmp r1, r0
	ble _08150D14
	adds r0, r5, r4
	cmp r1, r0
	blt _08150D1E
_08150D14:
	ldr r0, [r6, #0x00]
	adds r0, r7, r0
	movs r1, #0x00
	strh r1, [r0, #0x00]
	b _08150D64
_08150D1E:
	subs r1, r1, r5
	adds r0, r4, #0x0
	muls r0, r4
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	subs r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x000]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r3, [sp, #0x000]
	subs r0, r3, r1
	cmp r0, #0x00
	bgt _08150D44
	movs r0, #0x01
	b _08150D4A
_08150D44:
	cmp r0, #0xEF
	ble _08150D4A
	movs r0, #0xEF
_08150D4A:
	adds r2, r3, r1
	cmp r2, #0x00
	bgt _08150D54
	movs r2, #0x01
	b _08150D5A
_08150D54:
	cmp r2, #0xEF
	ble _08150D5A
	movs r2, #0xEF
_08150D5A:
	ldr r1, [r6, #0x00]
	adds r1, r7, r1
	lsls r0, r0, #0x08
	orrs r0, r2
	strh r0, [r1, #0x00]
_08150D64:
	movs r0, #0x04
	add r9, r0
	movs r1, #0x02
	add r8, r1
	mov r2, r8
	cmp r2, #0xE3
	ble _08150C9C
	b _08150DB6
_08150D74:
	ldr r0, [r6, #0x00]
	movs r2, #0x00
	movs r3, #0xE3
	movs r1, #0xE3
	lsls r1, r1, #0x01
	adds r0, r0, r1
_08150D80:
	strh r2, [r0, #0x00]
	subs r1, r0, #0x2
	strh r2, [r1, #0x00]
	subs r1, r0, #0x4
	strh r2, [r1, #0x00]
	subs r1, r0, #0x6
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r0, #0x18
	subs r3, #0x0C
	cmp r3, #0x00
	bge _08150D80
_08150DB6:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
