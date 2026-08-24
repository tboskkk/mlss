	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _08123D70 @ =0x03000FFC
	ldr r6, [r0, #0x00]
	movs r1, #0x00
	movs r0, #0x4D
	strb r0, [r6, #0x00]
	movs r0, #0x41
	strb r0, [r6, #0x01]
	movs r0, #0x4C
	strb r0, [r6, #0x02]
	movs r0, #0x52
	strb r0, [r6, #0x03]
	movs r0, #0x50
	strb r0, [r6, #0x04]
	movs r0, #0x47
	strb r0, [r6, #0x05]
	strb r1, [r6, #0x07]
	cmp r5, #0x01
	bne _08123BD4
	b _08123D84
_08123BD4:
	cmp r5, #0x00
	bne _08123C1A
	bl sub_801AF50
	ldr r2, _08123D74 @ =0x03000D40
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	movs r3, #0xE0
	lsls r3, r3, #0x03
	adds r1, r6, r3
	adds r1, r1, r0
	ldr r0, _08123D78 @ =0x0300034C
	ldr r0, [r0, #0x24]
	str r0, [r1, #0x00]
	ldr r0, _08123D7C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r2, [r2, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1E
	lsls r1, r2, #0x03
	subs r1, r1, r2
	lsls r1, r1, #0x05
	subs r1, r1, r2
	lsls r1, r1, #0x03
	adds r1, r1, r6
	adds r1, #0x30
	movs r2, #0xDE
	bl CpuSet
_08123C1A:
	ldr r3, _08123D74 @ =0x03000D40
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	lsls r1, r0
	ldrb r0, [r6, #0x06]
	orrs r1, r0
	strb r1, [r6, #0x06]
	ldr r2, [r3, #0x00]
	lsls r2, r2, #0x1C
	lsrs r1, r2, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r6, r0
	adds r2, r1, #0x0
	strb r2, [r0, #0x10]
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r2, r0, r6
	adds r2, #0x14
	movs r0, #0xDE
	lsls r0, r0, #0x03
	mov r12, r0
	movs r5, #0x00
	movs r4, #0x00
	adds r7, r3, #0x0
_08123C62:
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x1
	adds r0, r2, r0
	adds r1, r5, r1
	ldrb r0, [r0, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x2
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x3
	adds r0, r2, r0
	adds r1, r5, r1
	ldrb r0, [r0, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x4
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x5
	adds r0, r2, r0
	adds r1, r5, r1
	ldrb r0, [r0, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x6
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x7
	adds r0, r2, r0
	adds r1, r5, r1
	ldrb r0, [r0, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x09
	adds r0, r2, r0
	adds r1, r5, r1
	ldrb r0, [r0, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x0A
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x0B
	adds r0, r2, r0
	adds r1, r5, r1
	ldrb r0, [r0, #0x00]
	adds r5, r1, r0
	adds r4, #0x0C
	cmp r4, r12
	blt _08123C62
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r6, r0
	strb r5, [r0, #0x11]
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r6, r0
	movs r1, #0x41
	strb r1, [r0, #0x12]
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r6, r0
	movs r1, #0x44
	strb r1, [r0, #0x13]
	movs r4, #0x00
	ldr r3, _08123D80 @ =0x00000704
	adds r2, r6, r3
	movs r3, #0x00
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r2, r0
	strb r4, [r0, #0x00]
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x01
	adds r0, r2, r0
	strb r3, [r0, #0x00]
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x02
	adds r0, r2, r0
	strb r3, [r0, #0x00]
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x03
	adds r2, r2, r0
	strb r3, [r2, #0x00]
	b _08123DB2
	.byte 0x00, 0x00
_08123D70: .4byte 0x03000FFC
_08123D74: .4byte 0x03000D40
_08123D78: .4byte 0x0300034C
_08123D7C: .4byte 0x03000FF4
_08123D80: .4byte 0x00000704
_08123D84:
	str r1, [sp, #0x000]
	ldr r4, _08123DBC @ =0x03000D40
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r1, r0, #0x03
	subs r1, r1, r0
	lsls r1, r1, #0x05
	subs r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x10
	adds r1, r6, r1
	ldr r2, _08123DC0 @ =0x050001BE
	mov r0, sp
	bl CpuSet
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r5, r0
	ldrb r0, [r6, #0x06]
	bics r0, r5
	strb r0, [r6, #0x06]
_08123DB2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08123DBC: .4byte 0x03000D40
_08123DC0: .4byte 0x050001BE
