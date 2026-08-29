	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r0, r1, #0x0
	ldr r4, [sp, #0x028]
	ldr r5, [sp, #0x02C]
	lsls r4, r4, #0x18
	lsls r5, r5, #0x18
	ldr r1, _080E921C @ =0x03000F8C
	mov r9, r1
	movs r6, #0x80
	lsls r6, r6, #0x11
	adds r1, r4, r6
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r7, #0x08
	adds r7, r7, r2
	mov r8, r7
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r6, r3, #0x0
	adds r6, #0x08
	lsrs r4, r4, #0x08
	ldr r7, _080E9220 @ =0xFFFF0000
	adds r4, r4, r7
	lsrs r4, r4, #0x0D
	adds r2, r2, r4
	str r2, [sp, #0x000]
	lsrs r5, r5, #0x08
	adds r2, r7, #0x0
	adds r5, r5, r2
	lsrs r5, r5, #0x0D
	adds r3, r3, r5
	str r3, [sp, #0x004]
	ldr r2, _080E9224 @ =0x55555555
	str r2, [sp, #0x008]
	mov r7, r9
	ldr r4, [r7, #0x00]
	mov r2, r8
	adds r3, r6, #0x0
	bl _call_via_r4
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E921C: .4byte 0x03000F8C
_080E9220: .4byte 0xFFFF0000
_080E9224: .4byte 0x55555555
