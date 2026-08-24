	.syntax unified
	.text

	thumb_func_start sub_815A394
sub_815A394:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r1, _0815A570 @ =0x00001888
	adds r0, r7, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r2, _0815A574 @ =0x0000188C
	adds r0, r7, r2
	str r1, [r0, #0x00]
	ldr r3, _0815A578 @ =0x00001890
	adds r0, r7, r3
	str r1, [r0, #0x00]
	ldr r4, _0815A57C @ =0x00001894
	adds r0, r7, r4
	str r1, [r0, #0x00]
	ldr r2, _0815A580 @ =0x00001E9C
	adds r0, r7, r2
	ldrh r2, [r0, #0x00]
	movs r3, #0xE5
	lsls r3, r3, #0x05
	adds r0, r7, r3
	strh r2, [r0, #0x00]
	ldr r4, _0815A584 @ =0x00001CA4
	adds r0, r7, r4
	str r1, [r0, #0x00]
	ldr r2, _0815A588 @ =0x00001CA8
	adds r0, r7, r2
	str r1, [r0, #0x00]
	adds r3, #0x10
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r2, _0815A58C @ =0x083CC1A0
	ldr r4, _0815A590 @ =0x00001EA2
	adds r3, r7, r4
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x05
	adds r0, r0, r2
	ldrb r1, [r0, #0x1B]
	ldr r4, _0815A594 @ =0x00001CC2
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x05
	adds r2, #0x10
	adds r0, r0, r2
	ldr r4, [r0, #0x00]
	movs r5, #0x00
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0815A426
	movs r0, #0x1C
	adds r0, r0, r7
	mov r9, r0
_0815A406:
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_815B058
	lsls r2, r5, #0x02
	ldr r3, _0815A598 @ =0x00001898
	adds r1, r7, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, #0x10
	adds r5, #0x01
	cmp r5, #0xFF
	bgt _0815A474
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0815A406
_0815A426:
	movs r4, #0x1C
	adds r4, r4, r7
	mov r9, r4
	cmp r5, #0xFF
	bgt _0815A474
	movs r4, #0x00
	lsls r0, r5, #0x02
	ldr r1, _0815A598 @ =0x00001898
	adds r0, r0, r1
	adds r2, r0, r7
	movs r1, #0x80
	lsls r1, r1, #0x01
	subs r3, r1, r5
	movs r0, #0x03
	ands r3, r0
	cmp r5, r1
	bge _0815A45C
	cmp r3, #0x00
	beq _0815A464
	cmp r3, #0x01
	ble _0815A45C
	cmp r3, #0x02
	ble _0815A458
	stm r2!, {r4}
	adds r5, #0x01
_0815A458:
	stm r2!, {r4}
	adds r5, #0x01
_0815A45C:
	stm r2!, {r4}
	adds r5, #0x01
	cmp r5, #0xFF
	bgt _0815A474
_0815A464:
	str r4, [r2, #0x00]
	str r4, [r2, #0x04]
	str r4, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r2, #0x10
	adds r5, #0x04
	cmp r5, #0xFF
	ble _0815A464
_0815A474:
	ldr r2, _0815A59C @ =0x00001C98
	adds r1, r7, r2
	ldr r3, _0815A598 @ =0x00001898
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r4, _0815A5A0 @ =0x00001C9C
	adds r1, r7, r4
	ldr r2, _0815A5A4 @ =0x0000189C
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r5, _0815A58C @ =0x083CC1A0
	ldr r3, _0815A590 @ =0x00001EA2
	adds r3, r3, r7
	mov r8, r3
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x05
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	ldrh r2, [r0, #0x18]
	lsls r2, r2, #0x15
	asrs r2, r2, #0x10
	movs r6, #0x00
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r0, _0815A5A8 @ =0x0600A000
	str r0, [sp, #0x008]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x05
	adds r3, r5, #0x4
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	mov r0, r9
	movs r3, #0x20
	bl sub_815FB88
	movs r4, #0x84
	lsls r4, r4, #0x04
	adds r0, r7, r4
	mov r1, r8
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x05
	adds r1, r5, #0x0
	adds r1, #0x08
	adds r1, r2, r1
	ldr r1, [r1, #0x00]
	adds r2, r2, r5
	ldrh r2, [r2, #0x18]
	lsls r2, r2, #0x15
	asrs r2, r2, #0x10
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r3, _0815A5AC @ =0x06008800
	str r3, [sp, #0x008]
	mov r4, r8
	ldrb r3, [r4, #0x00]
	lsls r3, r3, #0x05
	adds r4, r5, #0x0
	adds r4, #0x0C
	adds r3, r3, r4
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x00C]
	movs r3, #0x20
	bl sub_815FB88
	ldr r1, _0815A5B0 @ =0x00001064
	adds r0, r7, r1
	mov r2, r8
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x05
	adds r5, #0x14
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r2, _0815A5B4 @ =0x0600F000
	str r2, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r2, #0x60
	movs r3, #0x20
	bl sub_815FB88
	ldr r3, _0815A5B8 @ =0x00001E88
	adds r4, r7, r3
	ldr r2, _0815A5BC @ =0x08212718
	movs r0, #0x4C
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_815D658
	str r0, [r4, #0x00]
	ldr r0, _0815A5C0 @ =0x00001E8C
	adds r4, r7, r0
	ldr r2, _0815A5C4 @ =0x08212720
	movs r0, #0x60
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_815D8CC
	str r0, [r4, #0x00]
	ldr r1, _0815A5C8 @ =0x00001E90
	adds r0, r7, r1
	str r6, [r0, #0x00]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	cmp r0, #0x03
	bls _0815A562
	ldr r2, _0815A5CC @ =0x03001010
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0815A562:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0815A570: .4byte 0x00001888
_0815A574: .4byte 0x0000188C
_0815A578: .4byte 0x00001890
_0815A57C: .4byte 0x00001894
_0815A580: .4byte 0x00001E9C
_0815A584: .4byte 0x00001CA4
_0815A588: .4byte 0x00001CA8
_0815A58C: .4byte dword_83CC1A0 @ =0x083CC1A0
_0815A590: .4byte 0x00001EA2
_0815A594: .4byte 0x00001CC2
_0815A598: .4byte 0x00001898
_0815A59C: .4byte 0x00001C98
_0815A5A0: .4byte 0x00001C9C
_0815A5A4: .4byte 0x0000189C
_0815A5A8: .4byte 0x0600A000
_0815A5AC: .4byte 0x06008800
_0815A5B0: .4byte 0x00001064
_0815A5B4: .4byte 0x0600F000
_0815A5B8: .4byte 0x00001E88
_0815A5BC: .4byte dword_8212718 @ =0x08212718
_0815A5C0: .4byte 0x00001E8C
_0815A5C4: .4byte dword_8212720 @ =0x08212720
_0815A5C8: .4byte 0x00001E90
_0815A5CC: .4byte 0x03001010
