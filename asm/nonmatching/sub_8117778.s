	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x030]
	ldr r0, _0811785C @ =0x03000FF4
	mov r10, r0
	lsls r1, r7, #0x04
	subs r1, r1, r7
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x32
	str r1, [sp, #0x00C]
	subs r1, #0x01
	str r1, [sp, #0x010]
	adds r0, #0x33
	str r0, [sp, #0x014]
	add r1, sp, #0x00C
	mov r8, r1
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	mov r0, r10
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	adds r1, r7, #0x0
	eors r1, r0
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r0, r2, #0x0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	add r5, sp, #0x010
	strb r0, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x31
	ldrb r1, [r0, #0x00]
	mov r0, sp
	adds r0, #0x11
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x33
	ldrb r1, [r0, #0x00]
	mov r0, sp
	adds r0, #0x12
	strb r1, [r0, #0x00]
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x03
	bl memcpy
	add r4, sp, #0x018
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xF2
	str r0, [sp, #0x024]
	subs r0, #0x38
	str r0, [sp, #0x028]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r1, r2
	str r0, [sp, #0x02C]
	add r1, sp, #0x024
	adds r0, r4, #0x0
	movs r2, #0x0C
	bl memcpy
	mov r1, r9
	lsls r0, r1, #0x02
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0811783A
	mov r0, r8
	add r0, r9
	ldrb r0, [r0, #0x00]
	cmp r0, r6
	beq _08117856
_0811783A:
	mov r2, r9
	cmp r2, #0x00
	bne _08117864
	ldr r1, _08117860 @ =0x083BE67C
	lsls r0, r6, #0x02
	adds r0, r0, r6
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x11]
	asrs r0, r7
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08117864
_08117856:
	movs r0, #0x00
	b _0811793A
	.byte 0x00, 0x00
_0811785C: .4byte 0x03000FF4
_08117860: .4byte 0x083BE67C
_08117864:
	ldr r0, [sp, #0x030]
	cmp r0, #0x00
	bne _08117938
	mov r1, r9
	lsls r0, r1, #0x02
	add r0, sp
	ldr r0, [r0, #0x00]
	strb r6, [r0, #0x00]
	cmp r1, #0x02
	beq _08117900
	adds r0, r7, #0x0
	bl sub_81230D0
	mov r2, r9
	cmp r2, #0x00
	bne _081178BC
	ldr r4, _081178B4 @ =0x03000FF4
	ldr r3, [r4, #0x00]
	lsls r2, r7, #0x04
	subs r2, r2, r7
	lsls r2, r2, #0x02
	adds r3, r3, r2
	ldr r1, _081178B8 @ =0x083BE67C
	lsls r0, r6, #0x02
	adds r0, r0, r6
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x06]
	strb r1, [r5, #0x00]
	ldrb r1, [r0, #0x06]
	adds r3, #0x36
	strb r1, [r3, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r2
	ldrb r2, [r0, #0x0A]
	strb r2, [r5, #0x01]
	ldrb r2, [r0, #0x0A]
	adds r1, #0x37
	b _081178E8
	.byte 0x00, 0x00
_081178B4: .4byte 0x03000FF4
_081178B8: .4byte 0x083BE67C
_081178BC:
	ldr r4, _081178F8 @ =0x03000FF4
	ldr r3, [r4, #0x00]
	lsls r2, r7, #0x04
	subs r2, r2, r7
	lsls r2, r2, #0x02
	adds r3, r3, r2
	ldr r1, _081178FC @ =0x083BD844
	lsls r0, r6, #0x02
	adds r0, r0, r6
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x06]
	strb r1, [r5, #0x00]
	ldrb r1, [r0, #0x06]
	adds r3, #0x34
	strb r1, [r3, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r2
	ldrb r2, [r0, #0x0A]
	strb r2, [r5, #0x01]
	ldrb r2, [r0, #0x0A]
	adds r1, #0x35
_081178E8:
	strb r2, [r1, #0x00]
	add r2, sp, #0x014
	ldrh r1, [r0, #0x08]
	strb r1, [r2, #0x00]
	ldrh r0, [r0, #0x0C]
	strb r0, [r2, #0x01]
	b _08117938
	.byte 0x00, 0x00
_081178F8: .4byte 0x03000FF4
_081178FC: .4byte 0x083BD844
_08117900:
	ldr r4, _0811794C @ =0x03000FF4
	ldr r1, [r4, #0x00]
	lsls r0, r7, #0x04
	subs r0, r0, r7
	lsls r3, r0, #0x02
	adds r1, r1, r3
	ldrh r0, [r1, #0x26]
	strh r0, [r1, #0x28]
	ldr r2, _08117950 @ =0x083BEBB8
	lsls r0, r6, #0x03
	adds r0, r0, r2
	ldrb r2, [r0, #0x04]
	adds r1, #0x38
	strb r2, [r1, #0x00]
	ldrb r0, [r0, #0x04]
	cmp r0, #0x1E
	bne _08117938
	ldr r0, [r4, #0x00]
	adds r2, r0, r3
	ldrh r0, [r2, #0x26]
	lsls r1, r0, #0x01
	strh r1, [r2, #0x28]
	lsls r0, r0, #0x11
	ldr r1, _08117954 @ =0x03E60000
	cmp r0, r1
	bls _08117938
	ldr r0, _08117958 @ =0x000003E7
	strh r0, [r2, #0x28]
_08117938:
	movs r0, #0x01
_0811793A:
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0811794C: .4byte 0x03000FF4
_08117950: .4byte 0x083BEBB8
_08117954: .4byte 0x03E60000
_08117958: .4byte 0x000003E7
