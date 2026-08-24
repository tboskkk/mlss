	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	mov r9, r1
	adds r6, r2, #0x0
	adds r7, r3, #0x0
	cmp r6, #0x00
	bgt _08163E68
	movs r6, #0x01
_08163E68:
	cmp r7, #0x00
	bge _08163E6E
	movs r7, #0x00
_08163E6E:
	cmp r7, r6
	ble _08163E74
	adds r7, r6, #0x0
_08163E74:
	ldr r5, _08163ED8 @ =0x0819832C
	ldr r0, _08163EDC @ =0x08198220
	subs r5, r5, r0
	ldr r0, _08163EE0 @ =0x03001038
	ldr r4, [r0, #0x00]
	adds r4, r4, r5
	mov r2, r10
	lsls r1, r2, #0x01
	add r1, r10
	mov r2, r9
	lsls r0, r2, #0x01
	add r0, r9
	subs r0, r0, r1
	muls r0, r7
	adds r1, r6, #0x0
	bl _call_via_r4
	muls r0, r7
	adds r1, r6, #0x0
	bl _call_via_r4
	mov r8, r0
	ldr r0, _08163EE0 @ =0x03001038
	ldr r4, [r0, #0x00]
	adds r4, r4, r5
	mov r2, r10
	mov r0, r9
	subs r1, r2, r0
	lsls r0, r7, #0x01
	muls r0, r1
	adds r1, r6, #0x0
	bl _call_via_r4
	muls r0, r7
	adds r1, r6, #0x0
	bl _call_via_r4
	muls r0, r7
	adds r1, r6, #0x0
	bl _call_via_r4
	add r0, r8
	add r0, r10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08163ED8: .4byte 0x0819832C
_08163EDC: .4byte 0x08198220
_08163EE0: .4byte 0x03001038
