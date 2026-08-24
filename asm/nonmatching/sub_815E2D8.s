	.syntax unified
	.text

	thumb_func_start sub_815E2D8
sub_815E2D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r10, r0
	adds r7, r1, #0x0
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0815E3CC
	cmp r0, #0x01
	bgt _0815E2F8
	cmp r0, #0x00
	beq _0815E300
	b _0815E61E
_0815E2F8:
	cmp r0, #0x02
	bne _0815E2FE
	b _0815E58C
_0815E2FE:
	b _0815E61E
_0815E300:
	ldr r0, _0815E3B4 @ =0x00001CB4
	adds r2, r7, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _0815E3B8 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0815E3BC @ =0x00001E8C
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	bl sub_815D980
	cmp r0, #0x02
	beq _0815E31C
	b _0815E61E
_0815E31C:
	ldr r2, _0815E3C0 @ =0x00001C98
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x30]
	movs r4, #0x10
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	movs r1, #0x1C
	adds r1, r1, r7
	mov r9, r1
	adds r2, #0x08
	adds r6, r7, r2
	movs r4, #0x00
	ldsh r2, [r6, r4]
	ldr r1, _0815E3C4 @ =0x00001CA4
	adds r1, r1, r7
	mov r8, r1
	movs r5, #0x0C
	str r5, [sp, #0x000]
	ldr r4, [r3, #0x14]
	mov r1, r9
	mov r3, r8
	bl _call_via_r4
	ldr r2, _0815E3C8 @ =0x00001C9C
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x30]
	movs r4, #0x10
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	movs r2, #0x84
	lsls r2, r2, #0x04
	adds r1, r7, r2
	movs r4, #0x00
	ldsh r2, [r6, r4]
	str r5, [sp, #0x000]
	ldr r4, [r3, #0x14]
	mov r3, r8
	bl _call_via_r4
	mov r1, r10
	ldr r0, [r1, #0x08]
	ldr r3, [r0, #0x30]
	movs r2, #0x10
	ldsh r1, [r3, r2]
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r2, [r6, r4]
	str r5, [sp, #0x000]
	ldr r4, [r3, #0x14]
	mov r1, r9
	mov r3, r8
	bl _call_via_r4
	mov r1, r10
	ldr r0, [r1, #0x0C]
	ldr r3, [r0, #0x30]
	movs r2, #0x10
	ldsh r1, [r3, r2]
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r2, [r6, r4]
	str r5, [sp, #0x000]
	ldr r4, [r3, #0x14]
	mov r1, r9
	mov r3, r8
	bl _call_via_r4
	movs r0, #0x41
	mov r1, r10
	str r0, [r1, #0x10]
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	b _0815E61E
_0815E3B4: .4byte 0x00001CB4
_0815E3B8: .4byte 0x0000FFFE
_0815E3BC: .4byte 0x00001E8C
_0815E3C0: .4byte 0x00001C98
_0815E3C4: .4byte 0x00001CA4
_0815E3C8: .4byte 0x00001C9C
_0815E3CC:
	movs r2, #0xE5
	lsls r2, r2, #0x05
	adds r4, r7, r2
	movs r3, #0x00
	ldsh r1, [r4, r3]
	ldr r0, _0815E420 @ =0x00001C98
	adds r5, r7, r0
	ldr r0, [r5, #0x00]
	bl sub_815FAE4
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r3, _0815E424 @ =0x00001C9C
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	bl sub_815FAE4
	ldr r5, [r5, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x1C
	ldr r1, [r5, #0x04]
	adds r0, r4, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r2, r0, #0x08
	str r2, [r5, #0x44]
	ldr r0, [r5, #0x08]
	mov r8, r4
	cmp r0, r2
	ble _0815E428
	str r2, [r5, #0x08]
	ldr r0, [r5, #0x04]
	ldr r1, [r5, #0x0C]
	subs r1, r0, r1
	strh r1, [r5, #0x14]
	ldr r1, [r5, #0x10]
	subs r1, r2, r1
	strh r1, [r5, #0x18]
	str r0, [r5, #0x0C]
	str r2, [r5, #0x10]
	b _0815E42E
_0815E420: .4byte 0x00001C98
_0815E424: .4byte 0x00001C9C
_0815E428:
	adds r0, r5, #0x0
	bl sub_815FACC
_0815E42E:
	ldr r4, _0815E464 @ =0x00001C9C
	adds r0, r7, r4
	ldr r4, [r0, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r7, r1
	ldr r1, [r4, #0x04]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r2, r0, #0x08
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x08]
	cmp r0, r2
	ble _0815E468
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x0C]
	subs r1, r0, r1
	strh r1, [r4, #0x14]
	ldr r1, [r4, #0x10]
	subs r1, r2, r1
	strh r1, [r4, #0x18]
	str r0, [r4, #0x0C]
	str r2, [r4, #0x10]
	b _0815E46E
	.byte 0x00, 0x00
_0815E464: .4byte 0x00001C9C
_0815E468:
	adds r0, r4, #0x0
	bl sub_815FACC
_0815E46E:
	ldr r2, _0815E55C @ =0x00001C98
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	movs r3, #0x18
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, _0815E560 @ =0x00001CA4
	adds r5, r7, r4
	ldr r2, [r2, #0x1C]
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, _0815E564 @ =0x00001C9C
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	movs r3, #0x18
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1C]
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r4, r10
	ldr r0, [r4, #0x08]
	ldr r3, [r0, #0x30]
	movs r2, #0x10
	ldsh r1, [r3, r2]
	adds r0, r0, r1
	movs r4, #0xE5
	lsls r4, r4, #0x05
	adds r6, r7, r4
	movs r1, #0x00
	ldsh r2, [r6, r1]
	movs r7, #0x00
	str r7, [sp, #0x000]
	ldr r4, [r3, #0x14]
	mov r1, r8
	adds r3, r5, #0x0
	bl _call_via_r4
	mov r2, r10
	ldr r0, [r2, #0x0C]
	ldr r3, [r0, #0x30]
	movs r4, #0x10
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r2, [r6, r1]
	str r7, [sp, #0x000]
	ldr r4, [r3, #0x14]
	mov r1, r8
	adds r3, r5, #0x0
	bl _call_via_r4
	mov r2, r10
	ldr r0, [r2, #0x10]
	subs r0, #0x01
	str r0, [r2, #0x10]
	cmp r0, #0x00
	ble _0815E4EC
	b _0815E61E
_0815E4EC:
	ldr r1, _0815E568 @ =0x02000050
	movs r0, #0xDF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	str r7, [r2, #0x18]
	ldr r0, _0815E56C @ =0x0300101C
	ldr r0, [r0, #0x00]
	strh r7, [r0, #0x02]
	ldr r3, _0815E570 @ =0x04000208
	strh r7, [r3, #0x00]
	ldr r2, _0815E574 @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _0815E578 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r6, _0815E57C @ =0x04000200
	ldrh r1, [r6, #0x00]
	ldr r0, _0815E580 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #0x00]
	ldr r4, _0815E584 @ =0x04000202
	ldrh r0, [r4, #0x00]
	movs r5, #0x02
	orrs r0, r5
	strh r0, [r4, #0x00]
	movs r0, #0x01
	mov r8, r0
	strh r0, [r3, #0x00]
	ldr r1, _0815E588 @ =0x08159CAD
	movs r0, #0x04
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	bl sub_8018B78
	ldr r3, [sp, #0x008]
	strh r7, [r3, #0x00]
	ldr r2, [sp, #0x004]
	ldrh r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r6, #0x00]
	orrs r0, r5
	strh r0, [r6, #0x00]
	ldrh r0, [r4, #0x00]
	orrs r0, r5
	strh r0, [r4, #0x00]
	mov r1, r8
	strh r1, [r3, #0x00]
	mov r2, r10
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	str r0, [r2, #0x00]
	b _0815E61E
_0815E55C: .4byte 0x00001C98
_0815E560: .4byte 0x00001CA4
_0815E564: .4byte 0x00001C9C
_0815E568: .4byte 0x02000050
_0815E56C: .4byte 0x0300101C
_0815E570: .4byte 0x04000208
_0815E574: .4byte 0x02000004
_0815E578: .4byte 0x0000FFEF
_0815E57C: .4byte 0x04000200
_0815E580: .4byte 0x0000FFFD
_0815E584: .4byte 0x04000202
_0815E588: .4byte sub_8159CAC
_0815E58C:
	ldr r0, _0815E5E4 @ =0x0300101C
	ldr r1, [r0, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x18]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	ldr r0, [r3, #0x18]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r0, r4
	str r0, [r3, #0x18]
	movs r1, #0xA0
	lsls r1, r1, #0x07
	cmp r0, r1
	ble _0815E61E
	adds r0, r7, #0x0
	bl sub_815A5D0
	movs r0, #0x00
	bl sub_8019628
	ldr r0, _0815E5E8 @ =0x00001EA2
	adds r1, r7, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x04
	bls _0815E5F0
	ldr r1, _0815E5EC @ =0x02000054
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r2, r10
	ldr r1, [r2, #0x04]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	add r0, r10
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
	movs r0, #0x00
	b _0815E620
_0815E5E4: .4byte 0x0300101C
_0815E5E8: .4byte 0x00001EA2
_0815E5EC: .4byte 0x02000054
_0815E5F0:
	mov r4, r10
	ldr r1, [r4, #0x04]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	add r0, r10
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
	ldr r2, _0815E630 @ =0x082127A8
	movs r0, #0x08
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	bl sub_815EA08
	ldr r0, _0815E634 @ =0x08CDCAF0
	str r0, [r4, #0x04]
	ldr r3, _0815E638 @ =0x00001E94
	adds r0, r7, r3
	str r4, [r0, #0x00]
_0815E61E:
	movs r0, #0x01
_0815E620:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0815E630: .4byte dword_82127A8 @ =0x082127A8
_0815E634: .4byte dword_8CDCAF0 @ =0x08CDCAF0
_0815E638: .4byte 0x00001E94
