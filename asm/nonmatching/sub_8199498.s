	push {r4, r5, lr}
	cmp r0, #0x00
	beq _081994D4
	adds r4, r0, #0x3
	movs r0, #0x04
	negs r0, r0
	ands r4, r0
	ldr r0, _081994C8 @ =0x08198220
	ldr r5, _081994CC @ =0x08198504
	subs r5, r5, r0
	lsls r2, r5, #0x09
	lsrs r2, r2, #0x0B
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r2, r1
	adds r1, r4, #0x0
	bl CpuSet
	ldr r0, _081994D0 @ =0x03001038
	str r4, [r0, #0x00]
	adds r4, r4, r5
	adds r0, r4, #0x0
	b _081994DC
	.byte 0x00, 0x00
_081994C8: .4byte 0x08198220
_081994CC: .4byte 0x08198504
_081994D0: .4byte 0x03001038
_081994D4:
	ldr r1, _081994E4 @ =0x03001038
	ldr r0, _081994E8 @ =0x08198220
	str r0, [r1, #0x00]
	movs r0, #0x00
_081994DC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081994E4: .4byte 0x03001038
_081994E8: .4byte 0x08198220
