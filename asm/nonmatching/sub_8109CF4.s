	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	adds r6, r3, #0x0
	ldr r5, [r4, #0x4C]
	cmp r5, #0x00
	bne _08109D16
	ldr r0, _08109DB4 @ =0x08109DC5
	adds r1, r4, #0x0
	bl sub_807FF48
	adds r5, r0, #0x0
	str r5, [r4, #0x4C]
_08109D16:
	add r1, sp, #0x008
	ldr r2, [r4, #0x18]
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r3, r6, #0x0
	bl sub_8087878
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r3, [sp, #0x004]
	str r3, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [sp, #0x008]
	str r0, [r1, #0x00]
	ldr r2, _08109DB8 @ =0x03001038
	ldr r0, _08109DBC @ =0x0819832C
	ldr r1, _08109DC0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r3, #0x0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08109D4C
	adds r0, #0x1F
_08109D4C:
	asrs r0, r0, #0x05
	muls r0, r3
	cmp r0, #0x00
	bge _08109D56
	adds r0, #0x3F
_08109D56:
	asrs r1, r0, #0x06
	movs r0, #0xB3
	lsls r0, r0, #0x0E
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	str r7, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x0C
	ldr r2, [sp, #0x024]
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x94
	ldr r0, [r4, #0x08]
	movs r2, #0x04
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08109D90
	adds r0, #0xFF
_08109D90:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x12]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08109D9C
	adds r0, #0xFF
_08109D9C:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x14]
	movs r0, #0x00
	strh r0, [r5, #0x10]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08109DB4: .4byte sub_8109DC4
_08109DB8: .4byte 0x03001038
_08109DBC: .4byte 0x0819832C
_08109DC0: .4byte 0x08198220
