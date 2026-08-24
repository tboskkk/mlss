	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	ldr r0, _0801A670 @ =0x0300034C
	ldr r1, _0801A674 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801A65E
	bl sub_801AE1C
	ldr r2, _0801A678 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0801A67C @ =0x04000208
	mov r8, r0
	movs r1, #0x00
	mov r9, r1
	strh r1, [r0, #0x00]
	ldr r5, _0801A680 @ =0x04000200
	ldrh r1, [r5, #0x00]
	ldr r0, _0801A684 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r4, _0801A688 @ =0x04000202
	ldrh r0, [r4, #0x00]
	movs r7, #0x40
	orrs r0, r7
	strh r0, [r4, #0x00]
	movs r2, #0x01
	mov r10, r2
	mov r0, r8
	strh r2, [r0, #0x00]
	mov r1, r9
	strh r1, [r0, #0x00]
	ldrh r1, [r5, #0x00]
	ldr r0, _0801A68C @ =0x0000FF7F
	ands r0, r1
	strh r0, [r5, #0x00]
	ldrh r0, [r4, #0x00]
	movs r2, #0x80
	orrs r0, r2
	strh r0, [r4, #0x00]
	mov r1, r10
	mov r0, r8
	strh r1, [r0, #0x00]
	ldr r0, _0801A690 @ =0x04000134
	mov r2, r9
	strh r2, [r0, #0x00]
	ldr r6, _0801A694 @ =0x04000128
	ldr r1, _0801A698 @ =0x00001008
	adds r0, r1, #0x0
	strh r0, [r6, #0x00]
	ldrh r0, [r6, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	ldr r1, _0801A69C @ =0x0801A74D
	movs r0, #0x01
	bl sub_8018B78
	ldr r1, _0801A6A0 @ =0x0801AE3D
	movs r0, #0x00
	bl sub_8018B78
	mov r1, r9
	mov r0, r8
	strh r1, [r0, #0x00]
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	orrs r0, r2
	strh r0, [r5, #0x00]
	ldrh r0, [r4, #0x00]
	orrs r0, r2
	strh r0, [r4, #0x00]
	mov r1, r10
	mov r0, r8
	strh r1, [r0, #0x00]
	mov r2, r9
	strh r2, [r0, #0x00]
	ldrh r0, [r5, #0x00]
	orrs r0, r7
	strh r0, [r5, #0x00]
	ldrh r0, [r4, #0x00]
	orrs r0, r7
	strh r0, [r4, #0x00]
	mov r0, r8
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
	ldr r2, _0801A678 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x0F
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, _0801A6A4 @ =0x03000D30
	ldr r2, _0801A6A8 @ =0x05000003
	mov r0, sp
	bl CpuSet
	mov r0, r8
	strh r4, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r6, #0x00]
	mov r0, r10
	mov r2, r8
	strh r0, [r2, #0x00]
	ldr r1, _0801A6AC @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0xC1
	strh r0, [r1, #0x00]
_0801A65E:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801A670: .4byte 0x0300034C
_0801A674: .4byte 0x00000888
_0801A678: .4byte 0x03000D18
_0801A67C: .4byte 0x04000208
_0801A680: .4byte 0x04000200
_0801A684: .4byte 0x0000FFBF
_0801A688: .4byte 0x04000202
_0801A68C: .4byte 0x0000FF7F
_0801A690: .4byte 0x04000134
_0801A694: .4byte 0x04000128
_0801A698: .4byte 0x00001008
_0801A69C: .4byte sub_801A74C
_0801A6A0: .4byte sub_801AE3C
_0801A6A4: .4byte 0x03000D30
_0801A6A8: .4byte 0x05000003
_0801A6AC: .4byte 0x0400010C
