	.syntax unified
	.text

	thumb_func_start sub_81151E4
sub_81151E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [sp, #0x02C]
	ldr r4, [sp, #0x030]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	mov r12, r3
	lsrs r3, r3, #0x10
	mov r10, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	ldrh r2, [r5, #0x34]
	cmp r2, #0x00
	bne _081152DC
	adds r0, r5, #0x0
	adds r0, #0x32
	strb r6, [r0, #0x00]
	adds r4, r0, #0x0
	mov r0, r8
	cmp r0, #0x00
	bne _0811522E
	movs r1, #0x01
	adds r0, r6, #0x0
	orrs r0, r1
	strb r0, [r4, #0x00]
_0811522E:
	mov r1, r9
	cmp r1, #0x00
	bne _0811523C
	ldrb r0, [r4, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x00]
_0811523C:
	adds r0, r5, #0x0
	adds r0, #0x44
	strh r2, [r0, #0x00]
	strh r7, [r5, #0x30]
	strh r3, [r5, #0x34]
	mov r1, r12
	lsrs r0, r1, #0x14
	adds r1, r5, #0x0
	adds r1, #0x46
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0811526A
	adds r1, r5, #0x0
	adds r1, #0x48
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x4A
	strh r2, [r0, #0x00]
	b _0811527A
_0811526A:
	adds r1, r5, #0x0
	adds r1, #0x48
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x4A
	mov r1, r10
	strh r1, [r0, #0x00]
_0811527A:
	mov r0, r9
	strh r0, [r5, #0x36]
	mov r1, r8
	strh r1, [r5, #0x38]
	ldr r0, [sp, #0x034]
	str r0, [r5, #0x3C]
	ldr r0, [sp, #0x038]
	str r0, [r5, #0x40]
	ldr r6, _081152EC @ =0x02000080
	ldr r1, [r5, #0x1C]
	ldr r2, _081152F0 @ =0x04000100
	adds r0, r6, #0x0
	bl CpuSet
	ldrb r1, [r4, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _081152DC
	ldrh r0, [r5, #0x36]
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8116488
	ldr r2, _081152F4 @ =0x02000280
	ldrh r0, [r5, #0x38]
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8116488
	ldr r2, _081152F8 @ =0x0300034C
	ldrh r0, [r2, #0x02]
	ldrh r1, [r5, #0x36]
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldrh r0, [r2, #0x00]
	ldrh r1, [r5, #0x38]
	orrs r0, r1
	strh r0, [r2, #0x00]
_081152DC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081152EC: .4byte 0x02000080
_081152F0: .4byte 0x04000100
_081152F4: .4byte 0x02000280
_081152F8: .4byte 0x0300034C
