	.syntax unified
	.text

	thumb_func_start sub_807D530
sub_807D530:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807D5BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r2, #0x10
	ldsh r6, [r4, r2]
	ldr r7, _0807D5C0 @ =0x0807F7A5
	ldr r3, _0807D5C4 @ =0x04000208
	mov r10, r3
	ldr r5, _0807D5C8 @ =0x04000004
	ldr r0, _0807D5CC @ =0x04000200
	mov r8, r0
	movs r1, #0x04
	mov r9, r1
_0807D55A:
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807D566
	adds r0, r4, #0x0
	bl _call_via_r1
_0807D566:
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0807D5D8
	movs r3, #0x10
	ldsh r2, [r1, r3]
	cmp r6, r2
	bge _0807D5D4
	ldr r0, _0807D5BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x96
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r1, [r0, #0x00]
	lsls r4, r2, #0x08
_0807D582:
	bl _call_via_r7
	cmp r0, #0x00
	beq _0807D582
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrh r1, [r5, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	movs r0, #0x20
	orrs r4, r0
	ldrh r0, [r5, #0x00]
	orrs r4, r0
	strh r4, [r5, #0x00]
	mov r2, r8
	ldrh r0, [r2, #0x00]
	mov r3, r9
	orrs r0, r3
	strh r0, [r2, #0x00]
	ldr r1, _0807D5D0 @ =0x04000202
	ldrh r0, [r1, #0x00]
	orrs r0, r3
	strh r0, [r1, #0x00]
	movs r0, #0x01
	mov r1, r10
	strh r0, [r1, #0x00]
	b _0807D5D8
_0807D5BC: .4byte 0x03000FD8
_0807D5C0: .4byte dword_807F7A5 @ =0x0807F7A5
_0807D5C4: .4byte 0x04000208
_0807D5C8: .4byte 0x04000004
_0807D5CC: .4byte 0x04000200
_0807D5D0: .4byte 0x04000202
_0807D5D4:
	adds r4, r1, #0x0
	b _0807D55A
_0807D5D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
