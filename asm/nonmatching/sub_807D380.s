	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _0807D3C4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807D39C
	str r1, [sp, #0x000]
	bl _call_via_r0
	ldr r1, [sp, #0x000]
_0807D39C:
	ldr r0, [r1, #0x00]
	adds r7, r0, #0x0
	adds r7, #0x50
	movs r6, #0x00
	ldr r4, [r0, #0x50]
	cmp r4, #0x00
	beq _0807D402
_0807D3AA:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807D3C8
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0807D3C8
	adds r6, r4, #0x0
	b _0807D3FC
	.byte 0x00, 0x00
_0807D3C4: .4byte 0x03000FD8
_0807D3C8:
	cmp r6, #0x00
	beq _0807D3D8
	str r5, [r6, #0x00]
	ldr r1, _0807D3D4 @ =0x03000FD8
	b _0807D3F4
	.byte 0x00, 0x00
_0807D3D4: .4byte 0x03000FD8
_0807D3D8:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _0807D3E8
	str r5, [r7, #0x00]
	ldr r1, _0807D3E4 @ =0x03000FD8
	b _0807D3F4
_0807D3E4: .4byte 0x03000FD8
_0807D3E8:
	ldr r1, _0807D448 @ =0x03000FD8
_0807D3EA:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _0807D3EA
	str r5, [r6, #0x00]
_0807D3F4:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_0807D3FC:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _0807D3AA
_0807D402:
	ldr r1, _0807D448 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807D41A
	str r1, [sp, #0x000]
	bl sub_8085328
	ldr r1, [sp, #0x000]
_0807D41A:
	ldr r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0807D512
	adds r7, r0, #0x0
	movs r6, #0x00
	adds r4, r1, #0x0
_0807D42E:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807D44C
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0807D44C
	adds r6, r4, #0x0
	b _0807D480
	.byte 0x00, 0x00
_0807D448: .4byte 0x03000FD8
_0807D44C:
	cmp r6, #0x00
	beq _0807D45C
	str r5, [r6, #0x00]
	ldr r1, _0807D458 @ =0x03000FD8
	b _0807D478
	.byte 0x00, 0x00
_0807D458: .4byte 0x03000FD8
_0807D45C:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _0807D46C
	str r5, [r7, #0x00]
	ldr r1, _0807D468 @ =0x03000FD8
	b _0807D478
_0807D468: .4byte 0x03000FD8
_0807D46C:
	ldr r1, _0807D4D4 @ =0x03000FD8
_0807D46E:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _0807D46E
	str r5, [r6, #0x00]
_0807D478:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_0807D480:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _0807D42E
	ldr r0, _0807D4D4 @ =0x03000FD8
	ldr r6, [r0, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	beq _0807D4E4
	ldr r3, _0807D4D8 @ =0x04000208
	strh r4, [r3, #0x00]
	ldr r2, _0807D4DC @ =0x04000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x08
	movs r1, #0x20
	orrs r0, r1
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0807D4E0 @ =0x04000200
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
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r5, [r0, #0x00]
	b _0807D512
	.byte 0x00, 0x00
_0807D4D4: .4byte 0x03000FD8
_0807D4D8: .4byte 0x04000208
_0807D4DC: .4byte 0x04000004
_0807D4E0: .4byte 0x04000200
_0807D4E4:
	movs r0, #0x03
	movs r1, #0x00
	bl sub_8018B78
	ldr r3, _0807D51C @ =0x04000208
	strh r5, [r3, #0x00]
	ldr r2, _0807D520 @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _0807D524 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0807D528 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _0807D52C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
_0807D512:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D51C: .4byte 0x04000208
_0807D520: .4byte 0x02000004
_0807D524: .4byte 0x0000FFDF
_0807D528: .4byte 0x04000200
_0807D52C: .4byte 0x0000FFFB
