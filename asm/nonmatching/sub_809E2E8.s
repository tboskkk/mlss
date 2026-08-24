	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r1, r0, #0x0
	adds r1, #0xA8
	ldr r2, [r1, #0x00]
	ldr r5, [r0, #0x30]
	ldr r1, [r5, #0x08]
	strh r2, [r1, #0x0C]
	ldr r1, [r0, #0x38]
	str r1, [sp, #0x000]
	ldr r4, [r0, #0x3C]
	str r4, [sp, #0x004]
	ldr r0, [r0, #0x40]
	str r0, [sp, #0x008]
	ldr r4, _0809E3CC @ =0x08198584
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0809E316
	adds r0, #0xFF
_0809E316:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r0, r3, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	cmp r1, #0x00
	bge _0809E32A
	adds r1, #0x3F
_0809E32A:
	asrs r1, r1, #0x06
	negs r1, r1
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x06
	str r0, [sp, #0x00C]
	ldr r0, _0809E3D0 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809E344
	adds r0, #0x3F
_0809E344:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x06
	mov r9, r0
	adds r4, r5, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _0809E3BC
	ldr r0, _0809E3D4 @ =0x03001038
	mov r10, r0
	ldr r1, _0809E3D8 @ =0x0819832C
	ldr r0, _0809E3DC @ =0x08198220
	subs r7, r1, r0
	movs r1, #0x00
	mov r8, r1
	mov r6, r9
	ldr r5, [sp, #0x00C]
_0809E368:
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x18
	bl _call_via_r2
	ldr r1, [sp, #0x000]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x18
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x18
	bl _call_via_r2
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	movs r1, #0x00
	lsls r0, r1, #0x01
	add r8, r0
	mov r1, r9
	lsls r0, r1, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x00C]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0809E368
_0809E3BC:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809E3CC: .4byte 0x08198584
_0809E3D0: .4byte 0x08198504
_0809E3D4: .4byte 0x03001038
_0809E3D8: .4byte 0x0819832C
_0809E3DC: .4byte 0x08198220
