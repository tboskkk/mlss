	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r6, r3, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	bl process_add
	ldr r0, _08114C00 @ =0x08CDC368
	str r0, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ldr r2, _08114C04 @ =0x0820119C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x1C]
	movs r0, #0x96
	lsls r0, r0, #0x02
	ldr r2, _08114C08 @ =0x082011A4
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	str r1, [r7, #0x20]
	ldr r0, _08114C0C @ =0x08001AF8
	ldr r2, _08114C10 @ =0x04000096
	bl CpuSet
	ldr r0, [r7, #0x20]
	str r0, [r7, #0x50]
	adds r1, r0, #0x0
	adds r1, #0x88
	str r1, [r7, #0x54]
	movs r1, #0x9E
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r7, #0x58]
	adds r0, r7, #0x0
	adds r0, #0x24
	movs r5, #0x00
	strb r6, [r0, #0x00]
	str r5, [r7, #0x28]
	lsls r4, r6, #0x03
	subs r4, r4, r6
	lsls r0, r4, #0x02
	ldr r2, _08114C14 @ =0x082011AC
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	str r1, [r7, #0x2C]
	mov r0, sp
	movs r6, #0x00
	strh r5, [r0, #0x00]
	lsls r4, r4, #0x01
	ldr r0, _08114C18 @ =0x001FFFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	adds r2, r4, #0x0
	bl CpuSet
	adds r0, r7, #0x0
	adds r0, #0x32
	strb r6, [r0, #0x00]
	strh r5, [r7, #0x30]
	strh r5, [r7, #0x34]
	adds r0, #0x14
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strb r6, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	strh r5, [r7, #0x36]
	strh r5, [r7, #0x38]
	subs r0, #0x06
	strh r5, [r0, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08114C00: .4byte 0x08CDC368
_08114C04: .4byte 0x0820119C
_08114C08: .4byte 0x082011A4
_08114C0C: .4byte 0x08001AF8
_08114C10: .4byte 0x04000096
_08114C14: .4byte 0x082011AC
_08114C18: .4byte 0x001FFFFF
