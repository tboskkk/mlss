	.syntax unified
	.text

	thumb_func_start sub_8122248
sub_8122248:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	subs r0, #0x64
	movs r1, #0x02
	ands r0, r1
	asrs r0, r0, #0x01
	movs r1, #0x68
	adds r5, r0, #0x0
	muls r5, r1
	cmp r2, #0x65
	beq _081222B0
	cmp r2, #0x65
	bgt _08122278
	cmp r2, #0x64
	beq _08122282
	b _081222EE
_08122278:
	cmp r2, #0x66
	beq _081222C4
	cmp r2, #0x67
	beq _0812229C
	b _081222EE
_08122282:
	ldr r0, _08122298 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x12]
	adds r3, r5, #0x0
	adds r3, #0x48
	str r2, [sp, #0x000]
	b _081222DA
_08122298: .4byte 0x03000FF4
_0812229C:
	ldr r0, _081222AC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x24]
	b _081222D2
_081222AC: .4byte 0x03000FF4
_081222B0:
	ldr r0, _081222C0 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x18]
	b _081222D2
_081222C0: .4byte 0x03000FF4
_081222C4:
	ldr r0, _08122328 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x1C]
_081222D2:
	adds r3, r5, #0x0
	adds r3, #0x48
	movs r0, #0x64
	str r0, [sp, #0x000]
_081222DA:
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
_081222EE:
	adds r5, #0x40
	mov r8, r5
	movs r5, #0x64
	movs r4, #0x02
	movs r6, #0x6C
	ldr r1, _0812232C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	orrs r5, r0
	strh r5, [r7, #0x00]
	mov r0, r8
	strh r0, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r6, r0
	strh r6, [r7, #0x04]
	adds r7, #0x08
	adds r0, r7, #0x0
	add sp, #0x01C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08122328: .4byte 0x03000FF4
_0812232C: .4byte 0x08202F58
