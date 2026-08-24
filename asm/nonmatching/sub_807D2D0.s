	.syntax unified
	.text

	thumb_func_start sub_807D2D0
sub_807D2D0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _0807D324 @ =0x0807D531
	movs r0, #0x03
	bl sub_8018B78
	ldr r3, _0807D328 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _0807D32C @ =0x02000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0807D330 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	ldr r0, _0807D334 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x3C]
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x3C]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r3, #0x00
	b _0807D33C
_0807D324: .4byte sub_807D530
_0807D328: .4byte 0x04000208
_0807D32C: .4byte 0x02000004
_0807D330: .4byte 0x04000200
_0807D334: .4byte 0x03000FD8
_0807D338:
	adds r3, r1, #0x0
	ldr r1, [r3, #0x00]
_0807D33C:
	cmp r1, #0x00
	beq _0807D348
	movs r7, #0x10
	ldsh r0, [r1, r7]
	cmp r4, r0
	bge _0807D338
_0807D348:
	str r1, [r2, #0x00]
	cmp r3, #0x00
	beq _0807D358
	str r2, [r3, #0x00]
_0807D350:
	cmp r5, #0x00
	beq _0807D36C
	str r5, [r2, #0x04]
	b _0807D370
_0807D358:
	ldr r0, _0807D368 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r2, [r0, #0x00]
	b _0807D350
	.byte 0x00, 0x00
_0807D368: .4byte 0x03000FD8
_0807D36C:
	ldr r0, _0807D37C @ =0x0807F7B9
	str r0, [r2, #0x04]
_0807D370:
	str r6, [r2, #0x0C]
	strh r4, [r2, #0x10]
	adds r0, r2, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807D37C: .4byte 0x0807F7B9
