	.syntax unified
	.text

	thumb_func_start sub_816BB70
sub_816BB70:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldr r2, [r7, #0x70]
	ldr r3, [r7, #0x6C]
	ldr r1, [r2, #0x74]
	ldr r0, [r3, #0x74]
	subs r5, r1, r0
	ldr r1, [r2, #0x78]
	ldr r0, [r3, #0x78]
	subs r1, r1, r0
	mov r8, r1
	lsls r0, r5, #0x08
	asrs r0, r0, #0x10
	lsls r1, r1, #0x08
	asrs r1, r1, #0x10
	bl sub_81DA690
	adds r1, r7, #0x0
	adds r1, #0x84
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r1, [r7, #0x10]
	strh r0, [r1, #0x0C]
	ldr r2, [r7, #0x6C]
	asrs r1, r5, #0x01
	ldr r0, [r2, #0x74]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	mov r0, r8
	asrs r1, r0, #0x01
	ldr r0, [r2, #0x78]
	adds r0, r0, r1
	str r0, [r7, #0x1C]
	ldr r1, _0816BC40 @ =0x03001038
	mov r9, r1
	adds r0, r5, #0x0
	muls r0, r5
	mov r2, r8
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	mov r3, r9
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r4, _0816BC44 @ =0x0819832C
	ldr r0, _0816BC48 @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	lsls r0, r5, #0x0E
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	mov r3, r8
	lsls r0, r3, #0x0E
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r8, r0
	ldr r1, [r7, #0x18]
	subs r0, r1, r5
	str r0, [r7, #0x74]
	ldr r2, [r7, #0x1C]
	mov r3, r8
	subs r0, r2, r3
	str r0, [r7, #0x78]
	adds r1, r1, r5
	str r1, [r7, #0x7C]
	adds r0, r7, #0x0
	adds r0, #0x80
	add r2, r8
	str r2, [r0, #0x00]
	ldr r1, [r7, #0x6C]
	ldr r0, [r1, #0x74]
	str r0, [r1, #0x18]
	ldr r0, [r1, #0x78]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x1C]
	ldr r1, [r7, #0x70]
	ldr r0, [r1, #0x74]
	str r0, [r1, #0x18]
	ldr r0, [r1, #0x78]
	adds r0, r0, r2
	str r0, [r1, #0x1C]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0816BC40: .4byte 0x03001038
_0816BC44: .4byte 0x0819832C
_0816BC48: .4byte 0x08198220
