	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	ldr r6, _0813B910 @ =0x03001038
	ldr r5, _0813B914 @ =0x0819832C
	ldr r0, _0813B918 @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	ldr r4, _0813B91C @ =0x00000272
	mov r1, r8
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	add r4, r9
	ldrh r0, [r4, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0x00
	mov r0, r8
	ldr r3, [r0, #0x0C]
	adds r1, r3, r7
	mov r0, r9
	ldr r2, [r0, #0x0C]
	subs r0, r2, r4
	cmp r1, r0
	blt _0813B900
	subs r1, r3, r7
	adds r0, r2, r4
	cmp r1, r0
	bgt _0813B900
	movs r5, #0x01
_0813B900:
	adds r0, r5, #0x0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813B910: .4byte 0x03001038
_0813B914: .4byte 0x0819832C
_0813B918: .4byte 0x08198220
_0813B91C: .4byte 0x00000272
