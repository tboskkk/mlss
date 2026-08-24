	push {r4, r5, lr}
	ldr r0, _081233A0 @ =0x03000FFC
	ldr r5, [r0, #0x00]
	ldr r4, _081233A4 @ =0x03000FF4
	movs r0, #0xDE
	lsls r0, r0, #0x01
	ldr r2, _081233A8 @ =0x08210F00
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	ldr r0, _081233AC @ =0x03000D40
	ldr r2, [r0, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1E
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x05
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r0, r0, r5
	adds r0, #0x30
	movs r2, #0xDE
	bl CpuSet
	ldr r1, _081233B0 @ =0x03000FF8
	ldr r0, [r4, #0x00]
	adds r0, #0x78
	str r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_081233A0: .4byte 0x03000FFC
_081233A4: .4byte 0x03000FF4
_081233A8: .4byte 0x08210F00
_081233AC: .4byte 0x03000D40
_081233B0: .4byte 0x03000FF8
