	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x00C]
	movs r1, #0x12
	ldsh r0, [r0, r1]
	mov r9, r0
	ldr r2, [sp, #0x00C]
	movs r0, #0x14
	ldsh r2, [r2, r0]
	str r2, [sp, #0x010]
	ldr r1, [sp, #0x00C]
	ldr r7, [r1, #0x0C]
	ldr r1, _08109300 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldrb r2, [r3, #0x07]
	movs r0, #0xE0
	ands r0, r2
	cmp r0, #0x00
	beq _08109370
	lsrs r1, r2, #0x05
	subs r1, #0x05
	lsls r1, r1, #0x02
	movs r2, #0xC3
	lsls r2, r2, #0x02
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r5, #0x00
	mov r2, r10
	adds r2, #0x9C
	b _08109306
_08109300: .4byte 0x03000FD8
_08109304:
	adds r5, #0x01
_08109306:
	cmp r7, #0x00
	beq _08109310
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	b _08109312
_08109310:
	movs r1, #0x05
_08109312:
	cmp r1, #0x7F
	bne _0810931A
	movs r1, #0x04
	b _08109322
_0810931A:
	cmp r7, #0x00
	beq _08109322
	ldr r0, [sp, #0x010]
	adds r1, r1, r0
_08109322:
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bne _08109304
	ldr r1, _081093E8 @ =0x03000FD8
	mov r8, r1
	ldr r0, [r1, #0x00]
	lsls r4, r5, #0x02
	movs r6, #0xBF
	lsls r6, r6, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109342
	bl sub_807C298
_08109342:
	mov r2, r8
	ldr r3, [r2, #0x00]
	adds r0, r3, r6
	adds r0, r0, r4
	mov r1, r10
	str r1, [r0, #0x00]
	ldrb r0, [r3, #0x07]
	lsrs r0, r0, #0x05
	subs r0, #0x05
	lsls r0, r0, #0x02
	movs r2, #0xC3
	lsls r2, r2, #0x02
	adds r1, r3, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, r5, #0x1
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x07]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x07]
_08109370:
	movs r5, #0x00
	cmp r5, r9
	bge _08109416
	ldr r0, _081093E8 @ =0x03000FD8
	mov r8, r0
	movs r1, #0xBF
	lsls r1, r1, #0x02
	mov r10, r1
_08109380:
	mov r0, r8
	ldr r2, [r0, #0x00]
	lsls r6, r5, #0x02
	mov r1, r10
	adds r0, r2, r1
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _081093DE
	ldr r1, _081093EC @ =0x00007001
	ldr r0, [r2, #0x7C]
	ldr r2, [r0, #0x40]
	cmp r2, #0x00
	bge _0810939E
	adds r2, #0xFF
_0810939E:
	asrs r2, r2, #0x08
	ldr r0, [r0, #0x44]
	cmp r0, #0x00
	bge _081093A8
	adds r0, #0xFF
_081093A8:
	asrs r3, r0, #0x08
	movs r0, #0x30
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x00]
	add r0, r10
	adds r0, r0, r6
	str r4, [r0, #0x00]
_081093DE:
	cmp r7, #0x00
	beq _081093F0
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	b _081093F2
_081093E8: .4byte 0x03000FD8
_081093EC: .4byte 0x00007001
_081093F0:
	movs r1, #0x05
_081093F2:
	cmp r1, #0x7F
	bne _081093FA
	movs r1, #0x04
	b _08109402
_081093FA:
	cmp r7, #0x00
	beq _08109402
	ldr r0, [sp, #0x010]
	adds r1, r1, r0
_08109402:
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r5, #0x01
	cmp r5, r9
	blt _08109380
_08109416:
	mov r5, r9
	cmp r5, #0x03
	ble _0810941E
	b _0810951E
_0810941E:
	ldr r7, _08109574 @ =0x03000FD8
	movs r6, #0xBF
	lsls r6, r6, #0x02
	movs r0, #0x04
	subs r1, r0, r5
	movs r0, #0x03
	ands r1, r0
	cmp r5, #0x04
	bge _0810947E
	cmp r1, #0x00
	beq _081094A0
	cmp r1, #0x01
	ble _0810947E
	cmp r1, #0x02
	ble _08109460
	adds r1, r7, #0x0
	ldr r0, [r1, #0x00]
	lsls r4, r5, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109450
	bl sub_807C298
_08109450:
	ldr r2, _08109574 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	movs r1, #0x00
	str r1, [r0, #0x00]
	mov r5, r9
	adds r5, #0x01
_08109460:
	ldr r0, [r7, #0x00]
	lsls r4, r5, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109472
	bl sub_807C298
_08109472:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r5, #0x01
_0810947E:
	ldr r0, [r7, #0x00]
	lsls r4, r5, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109490
	bl sub_807C298
_08109490:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r5, #0x01
	cmp r5, #0x03
	bgt _0810951E
_081094A0:
	ldr r0, [r7, #0x00]
	lsls r4, r5, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081094B2
	bl sub_807C298
_081094B2:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	movs r1, #0x00
	mov r8, r1
	str r1, [r0, #0x00]
	adds r1, r5, #0x1
	ldr r0, [r7, #0x00]
	lsls r4, r1, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081094D2
	bl sub_807C298
_081094D2:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	mov r2, r8
	str r2, [r0, #0x00]
	adds r1, r5, #0x2
	ldr r0, [r7, #0x00]
	lsls r4, r1, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081094F0
	bl sub_807C298
_081094F0:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	mov r1, r8
	str r1, [r0, #0x00]
	adds r1, r5, #0x3
	ldr r0, [r7, #0x00]
	lsls r4, r1, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810950E
	bl sub_807C298
_0810950E:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	mov r2, r8
	str r2, [r0, #0x00]
	adds r5, #0x04
	cmp r5, #0x03
	ble _081094A0
_0810951E:
	movs r1, #0x00
	mov r2, r9
	ldr r0, [sp, #0x00C]
	strh r2, [r0, #0x16]
	ldr r0, _08109574 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	ldr r2, _08109578 @ =0x03001038
	ldr r0, _0810957C @ =0x0819832C
	ldr r1, _08109580 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x10
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	mov r1, r9
	bl _call_via_r2
	ldr r2, _08109574 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldr r2, _08109584 @ =0x00000316
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r0, _08109588 @ =0x0810958D
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x04]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08109574: .4byte 0x03000FD8
_08109578: .4byte 0x03001038
_0810957C: .4byte 0x0819832C
_08109580: .4byte 0x08198220
_08109584: .4byte 0x00000316
_08109588: .4byte sub_810958C
