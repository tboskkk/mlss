	subs r2, #0x01
	lsls r3, r1, #0x01
	adds r3, r3, r1
	adds r3, r3, r2
	lsls r3, r3, #0x02
	adds r0, #0x04
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	ldr r0, _08163670 @ =0x08212934
	str r0, [r1, #0x44]
	adds r2, r1, #0x0
	adds r2, #0x48
	movs r0, #0x00
	strh r0, [r2, #0x00]
	str r0, [r1, #0x40]
	bx lr
_08163670: .4byte 0x08212934
