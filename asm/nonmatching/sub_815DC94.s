	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x010]
	adds r7, r1, #0x0
	adds r0, r7, #0x0
	bl sub_815A394
	ldr r0, _0815DDEC @ =0x0300034C
	ldr r1, _0815DDF0 @ =0x00000884
	adds r0, r0, r1
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	str r2, [r0, #0x00]
	ldr r0, _0815DDF4 @ =0x00001C98
	adds r0, r0, r7
	mov r8, r0
	ldr r4, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x1C
	ldr r1, [r4, #0x04]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x44]
	str r0, [r4, #0x08]
	adds r4, #0x24
	movs r5, #0x09
	strb r5, [r4, #0x00]
	ldr r1, _0815DDF8 @ =0x00001C9C
	adds r6, r7, r1
	ldr r4, [r6, #0x00]
	movs r2, #0x84
	lsls r2, r2, #0x04
	adds r0, r7, r2
	ldr r1, [r4, #0x04]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x44]
	str r0, [r4, #0x08]
	adds r4, #0x24
	strb r5, [r4, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x08]
	str r0, [sp, #0x004]
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, [r0, #0x08]
	ldr r0, [r0, #0x04]
	str r0, [sp, #0x008]
	str r1, [sp, #0x00C]
	ldr r2, _0815DDFC @ =0x00001CA4
	adds r1, r7, r2
	ldr r0, [sp, #0x008]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	add r2, sp, #0x008
	ldr r0, _0815DE00 @ =0x00001CA8
	adds r1, r7, r0
	ldr r0, [r2, #0x04]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x04]
	ldr r1, _0815DE04 @ =0x00001CBC
	adds r4, r7, r1
	ldr r0, [r4, #0x00]
	mov r1, sp
	movs r3, #0x7E
	bl sub_8159A18
	ldr r0, [r4, #0x00]
	bl sub_8159974
	movs r0, #0x00
	movs r1, #0x01
	mov r2, r9
	bl sub_8019308
	ldr r2, _0815DE08 @ =0x04000208
	mov r9, r2
	movs r0, #0x00
	strh r0, [r2, #0x00]
	ldr r1, _0815DE0C @ =0x02000004
	mov r8, r1
	ldrh r1, [r1, #0x00]
	ldr r0, _0815DE10 @ =0x0000FFEF
	ands r0, r1
	mov r2, r8
	strh r0, [r2, #0x00]
	ldr r5, _0815DE14 @ =0x04000200
	ldrh r1, [r5, #0x00]
	ldr r0, _0815DE18 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r4, _0815DE1C @ =0x04000202
	ldrh r0, [r4, #0x00]
	movs r6, #0x02
	orrs r0, r6
	strh r0, [r4, #0x00]
	movs r0, #0x01
	mov r10, r0
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r1, _0815DE20 @ =0x08159A91
	movs r0, #0x02
	bl sub_8018B78
	ldr r1, _0815DE24 @ =0x08159BD9
	movs r0, #0x04
	bl sub_8018B78
	movs r0, #0x00
	mov r2, r9
	strh r0, [r2, #0x00]
	mov r1, r8
	ldrh r0, [r1, #0x00]
	movs r1, #0x10
	orrs r0, r1
	mov r2, r8
	strh r0, [r2, #0x00]
	ldrh r0, [r5, #0x00]
	orrs r0, r6
	strh r0, [r5, #0x00]
	ldrh r0, [r4, #0x00]
	orrs r0, r6
	strh r0, [r4, #0x00]
	mov r1, r10
	mov r0, r9
	strh r1, [r0, #0x00]
	ldr r2, [sp, #0x010]
	cmp r2, #0x00
	beq _0815DDC4
	ldr r1, [r2, #0x04]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	ldr r2, [sp, #0x010]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0815DDC4:
	ldr r2, _0815DE28 @ =0x082127A8
	movs r0, #0x28
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_815E9EC
	ldr r2, _0815DE2C @ =0x00001E94
	adds r1, r7, r2
	str r0, [r1, #0x00]
	movs r0, #0x01
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0815DDEC: .4byte 0x0300034C
_0815DDF0: .4byte 0x00000884
_0815DDF4: .4byte 0x00001C98
_0815DDF8: .4byte 0x00001C9C
_0815DDFC: .4byte 0x00001CA4
_0815DE00: .4byte 0x00001CA8
_0815DE04: .4byte 0x00001CBC
_0815DE08: .4byte 0x04000208
_0815DE0C: .4byte 0x02000004
_0815DE10: .4byte 0x0000FFEF
_0815DE14: .4byte 0x04000200
_0815DE18: .4byte 0x0000FFFD
_0815DE1C: .4byte 0x04000202
_0815DE20: .4byte sub_8159A90
_0815DE24: .4byte sub_8159BD8
_0815DE28: .4byte 0x082127A8
_0815DE2C: .4byte 0x00001E94
