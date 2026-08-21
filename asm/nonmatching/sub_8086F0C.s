	.syntax unified
	.text

	thumb_func_start sub_8086F0C
sub_8086F0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	ldr r0, [r0, #0x08]
	mov r8, r0
	ldr r0, _08086FA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r3, [r0, #0x74]
	movs r1, #0x08
	adds r1, r1, r3
	mov r12, r1
	movs r5, #0x7E
	adds r5, r5, r2
	mov r10, r5
	ldrb r1, [r5, #0x00]
	movs r6, #0x06
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08086F4A
	ldr r1, [r4, #0x08]
	mov r7, r8
	ldrh r0, [r7, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
_08086F4A:
	adds r5, r3, #0x0
	adds r5, #0x7E
	ldrb r1, [r5, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08086F64
	mov r0, r12
	ldr r1, [r0, #0x08]
	mov r7, r8
	ldrh r0, [r7, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
_08086F64:
	mov r0, r10
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08086FE0
	ldrb r1, [r5, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08086FCC
	adds r0, r2, #0x0
	adds r0, #0x7C
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, r0
	adds r0, r3, #0x0
	adds r0, #0x7C
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r2, r0
	bge _08086FAC
	mov r2, r12
	ldr r1, [r2, #0x08]
	b _08086FC6
_08086FA8: .4byte 0x03000FD8
_08086FAC:
	cmp r0, r2
	bge _08086FB4
	ldr r1, [r4, #0x08]
	b _08086FC6
_08086FB4:
	ldr r1, [r4, #0x14]
	mov r5, r12
	ldr r0, [r5, #0x14]
	cmp r1, r0
	bge _08086FC2
	ldr r1, [r4, #0x08]
	b _08086FC6
_08086FC2:
	mov r7, r12
	ldr r1, [r7, #0x08]
_08086FC6:
	ldrh r0, [r1, #0x0E]
	adds r0, #0x01
	strh r0, [r1, #0x0E]
_08086FCC:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086FE0
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	bne _08087028
_08086FE0:
	mov r0, r12
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086FF6
	mov r1, r12
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	bne _08087028
_08086FF6:
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r3, #0x00
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	mov r0, r12
	adds r0, #0x74
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r4, #0x79
	ldrb r2, [r4, #0x00]
	movs r1, #0x05
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r4, #0x00]
	mov r2, r12
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	mov r2, r9
	str r3, [r2, #0x04]
_08087028:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
