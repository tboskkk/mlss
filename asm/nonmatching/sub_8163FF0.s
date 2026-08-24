	.syntax unified
	.text

	thumb_func_start sub_8163FF0
sub_8163FF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, [sp, #0x024]
	ldr r5, [sp, #0x028]
	add r4, sp, #0x02C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r10, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldrb r4, [r4, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x00]
	str r0, [r7, #0x04]
	str r0, [r7, #0x08]
	str r0, [r7, #0x0C]
	str r0, [r7, #0x10]
	str r0, [r7, #0x14]
	str r0, [r7, #0x18]
	str r0, [r7, #0x1C]
	str r0, [r7, #0x20]
	cmp r5, #0x00
	bne _08164044
	ldr r1, _0816403C @ =0x0000201F
	ldr r2, _08164040 @ =0x08212AE0
	b _0816404A
	.byte 0x00, 0x00
_0816403C: .4byte 0x0000201F
_08164040: .4byte 0x08212AE0
_08164044:
	ldr r1, _081640A0 @ =0x0000201F
	ldr r2, _081640A4 @ =0x08212AE0
	movs r0, #0x01
_0816404A:
	bl alloc_heap_8018CEC
	str r0, [r7, #0x00]
	ldr r1, [r7, #0x00]
	adds r1, #0x1F
	movs r0, #0x20
	negs r0, r0
	ands r1, r0
	str r1, [r7, #0x04]
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r2, _081640A8 @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	adds r0, r7, #0x0
	adds r0, #0x34
	strb r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08164088
	ldr r1, _081640AC @ =0x00000403
	ldr r2, _081640B0 @ =0x08212AE8
	movs r0, #0x00
	bl alloc_heap_8018CEC
	str r0, [r7, #0x08]
	adds r0, #0x03
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0x0C]
_08164088:
	mov r0, r8
	cmp r0, #0x00
	beq _081640B4
	mov r1, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0816409A
	movs r1, #0x03
_0816409A:
	adds r0, r1, #0x0
	b _081640B6
	.byte 0x00, 0x00
_081640A0: .4byte 0x0000201F
_081640A4: .4byte 0x08212AE0
_081640A8: .4byte 0x01000800
_081640AC: .4byte 0x00000403
_081640B0: .4byte 0x08212AE8
_081640B4:
	movs r0, #0x00
_081640B6:
	mov r8, r0
	cmp r6, #0x00
	beq _081640CC
	adds r1, r6, #0x0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1F
	bls _081640C8
	movs r1, #0x1F
_081640C8:
	adds r0, r1, #0x0
	b _081640CE
_081640CC:
	movs r0, #0x00
_081640CE:
	adds r6, r0, #0x0
	mov r1, r9
	cmp r1, #0x00
	beq _081640E2
	mov r0, r9
	cmp r1, #0x0F
	bls _081640DE
	movs r0, #0x0F
_081640DE:
	adds r3, r0, #0x0
	b _081640E4
_081640E2:
	movs r3, #0x00
_081640E4:
	mov r2, r8
	lsls r0, r2, #0x0E
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	str r0, [r7, #0x10]
	lsls r1, r6, #0x0B
	adds r1, r1, r2
	str r1, [r7, #0x14]
	lsls r0, r3, #0x05
	ldr r5, _081641C0 @ =0x02000080
	adds r0, r0, r5
	str r0, [r7, #0x18]
	mov r12, r1
	lsls r1, r3, #0x0C
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	adds r3, r1, #0x0
	orrs r3, r0
	mov r2, r12
	movs r0, #0x80
	lsls r0, r0, #0x03
_08164112:
	strh r3, [r2, #0x00]
	strh r3, [r2, #0x02]
	strh r3, [r2, #0x04]
	strh r3, [r2, #0x06]
	adds r2, #0x08
	subs r0, #0x04
	cmp r0, #0x00
	bne _08164112
	movs r0, #0x00
_08164124:
	movs r4, #0x00
	adds r3, r0, #0x1
	mov r9, r3
	lsls r3, r0, #0x04
	lsls r0, r0, #0x06
	mov r5, r12
	adds r2, r0, r5
_08164132:
	adds r0, r3, r4
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x1
	adds r0, r3, r0
	orrs r0, r1
	strh r0, [r2, #0x02]
	adds r0, r4, #0x2
	adds r0, r3, r0
	orrs r0, r1
	strh r0, [r2, #0x04]
	adds r0, r4, #0x3
	adds r0, r3, r0
	orrs r0, r1
	strh r0, [r2, #0x06]
	adds r0, r4, #0x4
	adds r0, r3, r0
	orrs r0, r1
	strh r0, [r2, #0x08]
	adds r0, r4, #0x5
	adds r0, r3, r0
	orrs r0, r1
	strh r0, [r2, #0x0A]
	adds r0, r4, #0x6
	adds r0, r3, r0
	orrs r0, r1
	strh r0, [r2, #0x0C]
	adds r0, r4, #0x7
	adds r0, r3, r0
	orrs r0, r1
	strh r0, [r2, #0x0E]
	adds r2, #0x10
	adds r4, #0x08
	cmp r4, #0x0F
	ble _08164132
	mov r0, r9
	cmp r0, #0x0F
	ble _08164124
	adds r0, r7, #0x0
	movs r1, #0x1F
	movs r2, #0x1F
	movs r3, #0x1F
	bl sub_8165274
	ldr r0, _081641C4 @ =0x08212B10
	ldr r1, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r1, r1, r2
	movs r2, #0x08
	bl CpuFastSet
	ldr r0, [r7, #0x04]
	ldr r1, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	movs r0, #0x38
	negs r0, r0
	str r0, [r7, #0x24]
	adds r0, #0x28
	str r0, [r7, #0x28]
	mov r3, r10
	cmp r3, #0x01
	beq _081641EC
	cmp r3, #0x01
	bgt _081641C8
	cmp r3, #0x00
	beq _081641D4
	b _0816423C
_081641C0: .4byte 0x02000080
_081641C4: .4byte 0x08212B10
_081641C8:
	mov r5, r10
	cmp r5, #0x02
	beq _08164208
	cmp r5, #0x03
	beq _08164224
	b _0816423C
_081641D4:
	ldr r2, _081641E4 @ =0x02000008
	lsls r0, r6, #0x08
	mov r3, r8
	lsls r1, r3, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _081641E8 @ =0x02000010
	b _08164236
_081641E4: .4byte 0x02000008
_081641E8: .4byte 0x02000010
_081641EC:
	ldr r2, _08164200 @ =0x0200000A
	lsls r0, r6, #0x08
	mov r5, r8
	lsls r1, r5, #0x02
	orrs r0, r1
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _08164204 @ =0x02000014
	b _08164236
_08164200: .4byte 0x0200000A
_08164204: .4byte 0x02000014
_08164208:
	ldr r2, _0816421C @ =0x0200000C
	lsls r0, r6, #0x08
	mov r3, r8
	lsls r1, r3, #0x02
	orrs r0, r1
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _08164220 @ =0x02000018
	b _08164236
_0816421C: .4byte 0x0200000C
_08164220: .4byte 0x02000018
_08164224:
	ldr r2, _08164280 @ =0x0200000E
	lsls r0, r6, #0x08
	mov r5, r8
	lsls r1, r5, #0x02
	orrs r0, r1
	movs r1, #0x03
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _08164284 @ =0x0200001C
_08164236:
	str r0, [r7, #0x2C]
	adds r0, #0x02
	str r0, [r7, #0x30]
_0816423C:
	ldr r5, _08164288 @ =0x08002C28
	ldr r6, _0816428C @ =0x080022A4
	subs r5, r5, r6
	adds r1, r5, #0x3
	ldr r2, _08164290 @ =0x08212AF0
	movs r0, #0x00
	bl alloc_heap_8018CEC
	adds r4, r0, #0x0
	str r4, [r7, #0x1C]
	adds r4, #0x03
	movs r0, #0x04
	negs r0, r0
	ands r4, r0
	lsls r5, r5, #0x09
	lsrs r5, r5, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r5, r0
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl CpuSet
	str r4, [r7, #0x20]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08164280: .4byte 0x0200000E
_08164284: .4byte 0x0200001C
_08164288: .4byte 0x08002C28
_0816428C: .4byte 0x080022A4
_08164290: .4byte 0x08212AF0
