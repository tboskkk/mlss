	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	ldr r0, _0807FAFC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807FB00 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	str r5, [r4, #0x04]
	str r6, [r4, #0x08]
	mov r0, r8
	str r0, [r4, #0x0C]
	adds r0, r4, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807FAFC: .4byte 0x03000FD8
_0807FB00: .4byte 0x03001034
