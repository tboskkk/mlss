	.syntax unified
	.text

	thumb_func_start sub_813774C
sub_813774C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	mov r8, r1
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r7
	mov r10, r1
	movs r2, #0xA3
	lsls r2, r2, #0x01
	adds r4, r7, r2
	adds r1, r4, #0x0
	movs r6, #0x08
	movs r5, #0x00
_08137776:
	movs r3, #0x00
	ldsh r0, [r1, r3]
	adds r5, r5, r0
	adds r1, #0x02
	lsls r0, r6, #0x10
	ldr r2, _081378B8 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _08137776
	movs r6, #0x00
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	adds r5, r0, #0x0
	movs r3, #0x00
	ldsh r0, [r4, r3]
	mov r1, r10
	adds r1, #0x3E
	str r1, [sp, #0x004]
	mov r2, r10
	adds r2, #0x08
	str r2, [sp, #0x000]
	cmp r5, r0
	ble _081377C4
_081377AE:
	subs r5, r5, r0
	adds r4, #0x02
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r5, r0
	bgt _081377AE
_081377C4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x20
	bl sub_81DD77C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x0B
	subs r1, #0x40
	mov r2, r8
	ldrb r2, [r2, #0x02]
	adds r1, r1, r2
	adds r1, r1, r0
	subs r1, #0x10
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x004]
	adds r0, r3, r0
	movs r4, #0x00
	ldsh r0, [r0, r4]
	lsls r2, r0, #0x04
	adds r6, r2, #0x0
	mov r1, r8
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08137808
	adds r0, #0xFF
_08137808:
	asrs r4, r0, #0x08
	ldr r0, _081378BC @ =0x08198584
	movs r1, #0xFF
	ands r1, r5
	lsls r3, r1, #0x01
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	muls r0, r2
	cmp r0, #0x00
	bge _08137822
	ldr r2, _081378C0 @ =0x00003FFF
	adds r0, r0, r2
_08137822:
	asrs r0, r0, #0x0E
	adds r0, r4, r0
	movs r1, #0xB0
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	mov r4, r8
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08137838
	adds r0, #0xFF
_08137838:
	asrs r1, r0, #0x08
	ldr r0, _081378C4 @ =0x08198504
	adds r0, r3, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r6
	cmp r0, #0x00
	bge _0813784C
	ldr r3, _081378C0 @ =0x00003FFF
	adds r0, r0, r3
_0813784C:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	movs r2, #0xB1
	lsls r2, r2, #0x01
	add r2, r9
	strh r0, [r2, #0x00]
	ldr r1, [r7, #0x14]
	cmp r1, #0x00
	bge _08137860
	adds r1, #0xFF
_08137860:
	asrs r1, r1, #0x08
	movs r0, #0xB2
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xBC
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x0F
	ldr r3, [sp, #0x000]
	adds r1, r3, r0
	ldrh r3, [r1, #0x00]
	subs r4, #0x5B
	adds r1, r7, r4
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	add r0, r10
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r2, _081378C8 @ =0x0000023E
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081378B8: .4byte 0xFFFF0000
_081378BC: .4byte word_8198584 @ =0x08198584
_081378C0: .4byte 0x00003FFF
_081378C4: .4byte word_8198504 @ =0x08198504
_081378C8: .4byte 0x0000023E
