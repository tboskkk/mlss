	push {r4, r5, r6, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	ldr r1, _08120C34 @ =0x08202F38
	mov r0, sp
	movs r2, #0x14
	bl memcpy
	movs r5, #0xE0
	ldr r2, [r4, #0x38]
	adds r2, #0x23
	ldrb r0, [r2, #0x00]
	add r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x08
	movs r1, #0xA0
	orrs r0, r1
	ldr r1, _08120C38 @ =0x02000044
	strh r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	movs r1, #0x05
	bl __umodsi3
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	cmp r1, #0x00
	bne _08120BDE
	movs r1, #0xA7
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	adds r1, #0x01
	strb r1, [r2, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x08
	bls _08120BCE
	movs r1, #0x08
	strb r1, [r2, #0x00]
_08120BCE:
	ldr r3, _08120C3C @ =0x02000052
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x08
	ldr r6, _08120C40 @ =0x0000014D
	adds r1, r4, r6
	ldrb r1, [r1, #0x00]
	orrs r1, r2
	strh r1, [r3, #0x00]
_08120BDE:
	movs r1, #0xB4
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	adds r1, #0x01
	strb r1, [r2, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x10
	bls _08120C26
	ldrb r2, [r2, #0x00]
	adds r1, r2, #0x0
	subs r1, #0x10
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r5, r1, #0x0
	adds r5, #0xE0
	cmp r5, #0x60
	ble _08120C26
	cmp r2, #0x1A
	bls _08120C26
	movs r6, #0xAB
	lsls r6, r6, #0x01
	adds r2, r4, r6
	movs r1, #0x00
	strb r1, [r2, #0x00]
	ldr r2, _08120C44 @ =0x02000008
	ldr r3, _08120C48 @ =0x00001A08
	adds r1, r3, #0x0
	strh r1, [r2, #0x00]
	movs r5, #0x00
	ldr r1, _08120C4C @ =0x02000050
	strh r5, [r1, #0x00]
	adds r1, #0x02
	strh r5, [r1, #0x00]
_08120C26:
	ldr r1, _08120C50 @ =0x02000012
	strh r5, [r1, #0x00]
	add sp, #0x014
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08120C34: .4byte 0x08202F38
_08120C38: .4byte 0x02000044
_08120C3C: .4byte 0x02000052
_08120C40: .4byte 0x0000014D
_08120C44: .4byte 0x02000008
_08120C48: .4byte 0x00001A08
_08120C4C: .4byte 0x02000050
_08120C50: .4byte 0x02000012
