	.syntax unified
	.text

	thumb_func_start sub_815949C
sub_815949C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r2, _08159558 @ =0x00000504
	adds r0, r6, r2
	str r1, [r0, #0x00]
	movs r3, #0xA1
	lsls r3, r3, #0x03
	adds r0, r6, r3
	str r1, [r0, #0x00]
	ldr r0, _0815955C @ =0x0000050C
	adds r2, r6, r0
	ldr r0, _08159560 @ =0xFFFF9C00
	str r0, [r2, #0x00]
	movs r2, #0xA2
	lsls r2, r2, #0x03
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r3, #0x0C
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r3, #0x08
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r3, #0x08
	adds r0, r6, r3
	str r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r3, #0x08
	adds r2, r6, r3
	movs r0, #0x50
	str r0, [r2, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x03
	adds r2, r6, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r2, #0x00]
	adds r3, #0x10
	adds r0, r6, r3
	str r1, [r0, #0x00]
	ldr r0, _08159564 @ =0x00000534
	adds r1, r6, r0
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	movs r7, #0x00
	movs r2, #0x00
	ldr r1, _08159568 @ =0x03001010
	mov r10, r1
	ldrh r3, [r1, #0x00]
	mov r8, r3
	adds r4, r6, #0x0
	mov r1, r8
	lsls r0, r1, #0x16
	asrs r0, r0, #0x1D
	mov r9, r0
_0815952E:
	strh r2, [r4, #0x00]
	strh r7, [r4, #0x02]
	mov r3, r9
	cmp r3, #0x01
	ble _0815956C
	adds r0, r7, #0x0
	subs r0, #0x50
	cmp r0, #0x00
	bge _08159542
	negs r0, r0
_08159542:
	movs r1, #0x05
	str r2, [sp, #0x000]
	bl __divsi3
	movs r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x08
	orrs r0, r1
	strh r0, [r4, #0x04]
	ldr r2, [sp, #0x000]
	b _08159590
_08159558: .4byte 0x00000504
_0815955C: .4byte 0x0000050C
_08159560: .4byte 0xFFFF9C00
_08159564: .4byte 0x00000534
_08159568: .4byte 0x03001010
_0815956C:
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	mov r3, r8
	ands r0, r3
	cmp r0, #0x80
	bne _0815958E
	mov r0, r10
	ldrb r1, [r0, #0x01]
	lsls r1, r1, #0x19
	asrs r1, r1, #0x1B
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x04]
	b _08159590
_0815958E:
	strh r2, [r4, #0x04]
_08159590:
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r7, #0x1
	strh r2, [r4, #0x08]
	strh r0, [r5, #0x02]
	mov r1, r9
	cmp r1, #0x01
	ble _081595BE
	subs r0, #0x50
	cmp r0, #0x00
	bge _081595A8
	negs r0, r0
_081595A8:
	movs r1, #0x05
	str r2, [sp, #0x000]
	bl __divsi3
	movs r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x08
	orrs r0, r1
	strh r0, [r5, #0x04]
	ldr r2, [sp, #0x000]
	b _081595E2
_081595BE:
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	mov r1, r8
	ands r0, r1
	cmp r0, #0x80
	bne _081595E0
	mov r3, r10
	ldrb r1, [r3, #0x01]
	lsls r1, r1, #0x19
	asrs r1, r1, #0x1B
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r5, #0x04]
	b _081595E2
_081595E0:
	strh r2, [r5, #0x04]
_081595E2:
	adds r4, #0x10
	adds r7, #0x02
	cmp r7, #0x9F
	ble _0815952E
	adds r0, r6, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
