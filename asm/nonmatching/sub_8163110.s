	lsls r0, r0, #0x10
	movs r2, #0xF8
	lsls r2, r2, #0x0D
	ands r2, r0
	lsrs r2, r2, #0x10
	ldr r1, _08163130 @ =0x03000FC0
	ldr r1, [r1, #0x00]
	lsrs r0, r0, #0x15
	lsls r0, r0, #0x02
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	lsrs r0, r2
	movs r1, #0x01
	ands r0, r1
	bx lr
_08163130: .4byte 0x03000FC0
