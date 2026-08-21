	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81053E0
sub_81053E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	ldr r0, _081054BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	mov r1, r8
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x06
	str r0, [r1, #0x00]
	mov r5, r8
	adds r5, #0x0C
	movs r6, #0x00
	ldr r2, _081054C0 @ =0x0819832C
	str r1, [sp, #0x004]
	adds r7, r1, #0x0
	ldr r0, _081054C4 @ =0x08198220
	subs r2, r2, r0
	mov r10, r2
_08105418:
	ldr r0, _081054C8 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	lsls r0, r6, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, _081054BC @ =0x03000FD8
	mov r9, r2
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xF0
	lsls r2, r2, #0x07
	adds r3, r0, r2
	ldr r1, _081054CC @ =0x08198584
	movs r0, #0xFF
	ands r0, r4
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r0, #0x00
	ldsh r1, [r1, r0]
	cmp r1, #0x00
	bge _08105458
	adds r1, #0x3F
_08105458:
	asrs r1, r1, #0x06
	ldr r0, [r7, #0x00]
	muls r0, r1
	adds r0, r3, r0
	str r0, [r5, #0x04]
	ldr r0, _081054D0 @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08105470
	adds r0, #0x3F
_08105470:
	asrs r1, r0, #0x06
	ldr r0, [r7, #0x00]
	muls r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r5, #0x0C]
	ldr r5, [r5, #0x00]
	adds r6, #0x01
	cmp r6, #0x0B
	ble _08105418
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x00]
	cmp r0, #0x9F
	ble _081054AA
	mov r0, r8
	bl sub_807C298
	mov r2, r9
	ldr r0, [r2, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r0, #0x28
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x10]
	str r1, [r2, #0x04]
_081054AA:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081054BC: .4byte 0x03000FD8
_081054C0: .4byte 0x0819832C
_081054C4: .4byte 0x08198220
_081054C8: .4byte 0x03001038
_081054CC: .4byte 0x08198584
_081054D0: .4byte 0x08198504
	thumb_func_start sub_81054D4
sub_81054D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r1, _08105668 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r5, _0810566C @ =0x03000FF4
	ldr r1, [r5, #0x00]
	subs r4, r1, r0
	adds r3, r4, #0x0
	subs r3, #0x3C
	movs r7, #0x7E
	ldrb r1, [r7, r2]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r7, r2]
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x0E]
	movs r1, #0x01
	cmp r0, #0x00
	beq _08105528
	adds r1, r0, #0x0
_08105528:
	adds r0, r2, #0x0
	adds r0, #0xF6
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x12]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x20]
	movs r5, #0x83
	lsls r5, r5, #0x01
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x1C]
	movs r7, #0x81
	lsls r7, r7, #0x01
	mov r10, r7
	mov r5, r10
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x24]
	adds r7, #0x02
	mov r9, r7
	mov r5, r9
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x28]
	adds r7, #0x04
	mov r8, r7
	mov r5, r8
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r3, #0x18]
	adds r1, r2, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	subs r0, r4, #0x7
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r7, #0x23
	adds r1, r2, r7
	strb r0, [r1, #0x00]
	subs r0, r4, #0x5
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	movs r6, #0x96
	lsls r6, r6, #0x01
	adds r1, r2, r6
	strb r0, [r1, #0x00]
	subs r0, r4, #0x4
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r5, _08105670 @ =0x0000012D
	adds r1, r2, r5
	strb r0, [r1, #0x00]
	ldr r1, _08105668 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08105648
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r7, _0810566C @ =0x03000FF4
	ldr r1, [r7, #0x00]
	subs r4, r1, r0
	adds r3, r4, #0x0
	subs r3, #0x3C
	movs r0, #0x7E
	adds r0, r0, r2
	mov r12, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	mov r7, r12
	strb r0, [r7, #0x00]
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x0E]
	movs r1, #0x01
	cmp r0, #0x00
	beq _081055EA
	adds r1, r0, #0x0
_081055EA:
	adds r0, r2, #0x0
	adds r0, #0xF6
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x12]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x20]
	movs r7, #0x83
	lsls r7, r7, #0x01
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x1C]
	mov r7, r10
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x24]
	mov r7, r9
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x28]
	mov r7, r8
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r3, #0x18]
	adds r1, r2, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	subs r0, r4, #0x7
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r3, _08105674 @ =0x0000012B
	adds r1, r2, r3
	strb r0, [r1, #0x00]
	subs r0, r4, #0x5
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r2, r6
	strb r0, [r1, #0x00]
	subs r0, r4, #0x4
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r2, r5
	strb r0, [r1, #0x00]
_08105648:
	movs r0, #0x10
	bl sub_80F7538
	movs r0, #0x01
	ldr r5, [sp, #0x000]
	strh r0, [r5, #0x10]
	ldr r0, _08105678 @ =0x0810567D
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105668: .4byte 0x03000FD8
_0810566C: .4byte 0x03000FF4
_08105670: .4byte 0x0000012D
_08105674: .4byte 0x0000012B
_08105678: .4byte sub_810567C
	thumb_func_start sub_810567C
sub_810567C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _08105690
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810577C
_08105690:
	ldr r4, _081056D4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldr r1, _081056D8 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810577C
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810577C
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	bne _081056DC
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081056DC
	bl sub_8106724
	b _0810577C
	.byte 0x00, 0x00
_081056D4: .4byte 0x03000FD8
_081056D8: .4byte 0x000002BF
_081056DC:
	ldr r5, _08105784 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _08105788 @ =0x000002BF
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810577C
	movs r0, #0x01
	bl sub_8019628
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r3, r0
	ldr r7, _0810578C @ =0x03000FF4
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	strh r1, [r4, #0x0E]
	ldr r0, [r2, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bne _08105732
	movs r0, #0x01
	strh r0, [r4, #0x0E]
_08105732:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08105774
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r3, r0
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xF6
	ldrh r2, [r0, #0x00]
	strh r2, [r4, #0x0E]
	ldr r0, [r1, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x14]
	lsls r2, r2, #0x10
	cmp r2, #0x00
	bne _08105774
	movs r0, #0x01
	strh r0, [r4, #0x0E]
_08105774:
	bl sub_801A6B0
	movs r0, #0x00
	str r0, [r6, #0x04]
_0810577C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105784: .4byte 0x03000FD8
_08105788: .4byte 0x000002BF
_0810578C: .4byte 0x03000FF4
	thumb_func_start sub_8105790
sub_8105790:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _081057DC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r1, [r1, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x00
	beq _081057B0
	movs r5, #0xE9
	lsls r5, r5, #0x02
	adds r1, r2, r5
	movs r0, #0x00
	strb r0, [r1, #0x00]
_081057B0:
	ldr r0, [r6, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x02
	adds r5, r0, r1
	ldr r1, _081057E0 @ =0x083BA948
	lsls r2, r4, #0x01
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	adds r7, r1, #0x0
	cmp r3, #0x00
	beq _081057E8
	ldr r0, _081057E4 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	b _081057EA
_081057DC: .4byte 0x03000FD8
_081057E0: .4byte 0x083BA948
_081057E4: .4byte 0x0300034C
_081057E8:
	movs r0, #0x00
_081057EA:
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	movs r5, #0xE7
	lsls r5, r5, #0x02
	adds r3, r0, r5
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r7, #0x4
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08105818
	ldr r0, _08105814 @ =0x0300034C
	movs r5, #0x8C
	lsls r5, r5, #0x04
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810581A
_08105814: .4byte 0x0300034C
_08105818:
	movs r0, #0x00
_0810581A:
	str r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x02
	adds r3, r0, r1
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r7, #0x0
	adds r1, #0x08
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810584C
	ldr r0, _08105848 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810584E
	.byte 0x00, 0x00
_08105848: .4byte 0x0300034C
_0810584C:
	movs r0, #0x00
_0810584E:
	str r0, [r3, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8105858
sub_8105858:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08105888 @ =0x03000FD8
	movs r0, #0xE9
	lsls r0, r0, #0x02
	mov r12, r0
	mov r8, r5
	movs r7, #0xE6
	lsls r7, r7, #0x02
	movs r6, #0x00
_0810586E:
	ldr r0, [r5, #0x00]
	mov r1, r12
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x02
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r2, #0x02
	bne _0810588C
	strb r6, [r3, #0x00]
	b _08105890
	.byte 0x00, 0x00
_08105888: .4byte 0x03000FD8
_0810588C:
	adds r0, r2, #0x1
	strb r0, [r3, #0x00]
_08105890:
	cmp r4, #0x00
	beq _0810586E
	mov r2, r8
	ldr r1, [r2, #0x00]
	movs r3, #0xE9
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0810590C
	ldr r2, _081058EC @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _081058CA
	ldr r1, _081058F0 @ =0x083BA8FC
	ldr r0, _081058F4 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r2, r0, #0x02
	adds r1, r2, r1
	ldr r0, [r1, #0x00]
	cmp r4, r0
	bne _081058CA
	ldr r0, _081058F8 @ =0x083BA910
	adds r0, r2, r0
	ldr r4, [r0, #0x00]
_081058CA:
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08105900
	ldr r1, _081058FC @ =0x000003A5
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x20]
	b _0810590C
_081058EC: .4byte 0x0000033E
_081058F0: .4byte 0x083BA8FC
_081058F4: .4byte 0x0300034C
_081058F8: .4byte 0x083BA910
_081058FC: .4byte 0x000003A5
_08105900:
	ldr r3, _08105918 @ =0x000003A5
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x00]
_0810590C:
	adds r0, r4, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08105918: .4byte 0x000003A5
	thumb_func_start sub_810591C
sub_810591C:
	push {r4, r5, r6, r7, lr}
	ldr r0, _08105944 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bne _08105940
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	bne _08105940
	ldrb r2, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _08105948
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x0B]
_08105940:
	movs r0, #0x00
	b _081059CE
_08105944: .4byte 0x03000FD8
_08105948:
	movs r7, #0x00
	adds r3, r1, #0x0
	adds r3, #0x58
	ldr r5, _081059D4 @ =0x00000111
	movs r6, #0x01
_08105952:
	ldr r2, [r3, #0x00]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x38
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x04]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x08]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x0C]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r3, #0x10
	adds r7, #0x04
	cmp r7, #0x07
	ble _08105952
	movs r0, #0x01
_081059CE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081059D4: .4byte 0x00000111
	thumb_func_start sub_81059D8
sub_81059D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r9, r0
	str r1, [sp, #0x000]
	movs r7, #0x00
	ldr r0, _08105A44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08105A48 @ =0x000002BE
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	cmp r7, r1
	bge _08105A76
	ldr r0, _08105A4C @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r2, _08105A50 @ =0x00008E4E
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	mov r10, r0
	cmp r1, r9
	bgt _08105A76
	ldr r4, _08105A54 @ =0x00008E4A
	movs r3, #0x00
_08105A10:
	mov r0, r10
	ldr r1, [r0, #0x00]
	ldr r0, _08105A50 @ =0x00008E4E
	adds r2, r1, r0
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	cmp r0, r9
	bne _08105A58
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	adds r0, r0, r2
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	adds r0, r0, r4
	adds r1, r0, r7
	ldrb r0, [r1, #0x00]
	cmp r0, #0x09
	bhi _08105A3C
	b _08105BF0
_08105A3C:
	movs r0, #0x09
	strb r0, [r1, #0x00]
	b _08105BF0
	.byte 0x00, 0x00
_08105A44: .4byte 0x03000FD8
_08105A48: .4byte 0x000002BE
_08105A4C: .4byte 0x03000FDC
_08105A50: .4byte 0x00008E4E
_08105A54: .4byte 0x00008E4A
_08105A58:
	adds r3, #0x02
	adds r7, #0x01
	ldr r1, _08105B18 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r1, _08105B1C @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r7, r0
	bge _08105A76
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	cmp r0, r9
	ble _08105A10
_08105A76:
	ldr r2, _08105B18 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, _08105B1C @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1A
	lsrs r0, r1, #0x1D
	cmp r0, #0x03
	bls _08105A8A
	b _08105BF0
_08105A8A:
	adds r4, r0, #0x0
	ldr r2, _08105B20 @ =0x03000FDC
	mov r10, r2
	cmp r4, r7
	bgt _08105A96
	b _08105BB0
_08105A96:
	mov r6, r10
	ldr r0, _08105B24 @ =0x00008E4A
	mov r8, r0
	lsls r3, r4, #0x01
	subs r5, r3, #0x2
	ldr r1, _08105B28 @ =0x00008E4E
	mov r12, r1
	subs r1, r7, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08105B2C
	cmp r1, #0x03
	bge _08105AF8
	cmp r1, #0x02
	bge _08105AD4
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	add r0, r12
	adds r1, r0, r3
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, r3, #0x4
	adds r4, r2, #0x0
_08105AD4:
	mov r2, r10
	ldr r0, [r2, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x02
	adds r4, r2, #0x0
_08105AF8:
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x02
	b _08105BAA
_08105B18: .4byte 0x03000FD8
_08105B1C: .4byte 0x000002BE
_08105B20: .4byte 0x03000FDC
_08105B24: .4byte 0x00008E4A
_08105B28: .4byte 0x00008E4E
_08105B2C:
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x2
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x4
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x6
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x08
_08105BAA:
	adds r4, r2, #0x0
	cmp r4, r7
	bgt _08105B2C
_08105BB0:
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldr r1, _08105C00 @ =0x00008E4A
	adds r0, r0, r1
	adds r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #0x00]
	strb r2, [r0, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r1, r4, #0x01
	ldr r2, _08105C04 @ =0x00008E4E
	adds r0, r0, r2
	adds r0, r0, r1
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _08105C08 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, _08105C0C @ =0x000002BE
	adds r2, r2, r1
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1A
	lsrs r1, r1, #0x1D
	adds r1, #0x01
	movs r0, #0x07
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_08105BF0:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105C00: .4byte 0x00008E4A
_08105C04: .4byte 0x00008E4E
_08105C08: .4byte 0x03000FD8
_08105C0C: .4byte 0x000002BE
	thumb_func_start sub_8105C10
sub_8105C10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08105C68 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	ldr r2, [r0, #0x00]
	ldr r0, _08105C6C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, _08105C70 @ =0x000002BE
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x1D
	movs r4, #0x00
	mov r9, r1
	cmp r4, r5
	bge _08105CF6
	movs r6, #0x7F
	ldr r7, _08105C74 @ =0x03000FDC
	mov r8, r7
	ldr r0, _08105C78 @ =0x083BE67C
	mov r12, r0
	ldr r1, _08105C7C @ =0x083BBDD0
	mov r10, r1
_08105C48:
	mov r7, r8
	ldr r0, [r7, #0x00]
	lsls r1, r4, #0x01
	ldr r7, _08105C80 @ =0x00008E4E
	adds r0, r0, r7
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	lsrs r0, r1, #0x07
	cmp r0, #0x02
	beq _08105C92
	cmp r0, #0x02
	bgt _08105C84
	cmp r0, #0x01
	beq _08105C8E
	b _08105CBA
	.byte 0x00, 0x00
_08105C68: .4byte 0x0300034C
_08105C6C: .4byte 0x03000FD8
_08105C70: .4byte 0x000002BE
_08105C74: .4byte 0x03000FDC
_08105C78: .4byte 0x083BE67C
_08105C7C: .4byte 0x083BBDD0
_08105C80: .4byte 0x00008E4E
_08105C84:
	cmp r0, #0x03
	beq _08105CA6
	cmp r0, #0x04
	beq _08105CB0
	b _08105CBA
_08105C8E:
	movs r3, #0x0C
	b _08105CBA
_08105C92:
	adds r0, r6, #0x0
	ands r0, r1
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	add r1, r12
	ldrb r0, [r1, #0x11]
	adds r3, r0, #0x0
	adds r3, #0x0C
	b _08105CBA
_08105CA6:
	adds r0, r6, #0x0
	ands r0, r1
	adds r3, r0, #0x0
	adds r3, #0x08
	b _08105CBA
_08105CB0:
	adds r0, r6, #0x0
	ands r0, r1
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r3, [r0, #0x02]
_08105CBA:
	movs r0, #0x0B
	muls r0, r4
	adds r0, #0x32
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	movs r0, #0x77
	strh r0, [r2, #0x00]
	adds r2, #0x02
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	cmp r3, #0x05
	beq _08105CE4
	cmp r3, #0x07
	beq _08105CE4
	cmp r3, #0x08
	beq _08105CE4
	cmp r3, #0x09
	bne _08105CE6
_08105CE4:
	movs r0, #0x01
_08105CE6:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x04
	adds r4, #0x01
	cmp r4, r5
	blt _08105C48
_08105CF6:
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r9
	str r2, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8105D0C
sub_8105D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldrh r1, [r7, #0x10]
	movs r2, #0x10
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	beq _08105D26
	subs r0, r1, #0x1
	strh r0, [r7, #0x10]
	b _08105DDA
_08105D26:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08105DDA
	ldr r0, _08105DE8 @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldr r2, _08105DEC @ =0x0000033F
	mov r8, r2
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r3, _08105DF0 @ =0x00002038
	cmp r2, #0x00
	beq _08105D54
	adds r3, #0x2F
_08105D54:
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08105DF4 @ =0x00008004
	movs r1, #0x03
	movs r2, #0x02
	movs r3, #0x00
	bl sub_8084338
	adds r4, r0, #0x0
	str r4, [r7, #0x08]
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105D7C
	adds r0, #0xFF
_08105D7C:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105D8C
	adds r0, #0xFF
_08105D8C:
	asrs r1, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08105DF8 @ =0x083B950C
	ldrb r0, [r0, #0x03]
	strh r0, [r7, #0x10]
	ldr r0, _08105DFC @ =0x08105E01
	str r0, [r7, #0x04]
	mov r1, r9
	ldr r0, [r1, #0x00]
	add r0, r8
	ldrb r0, [r0, #0x00]
	movs r2, #0xEF
	cmp r0, #0x00
	beq _08105DD0
	movs r2, #0xFD
_08105DD0:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08105DDA:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105DE8: .4byte 0x03000FD8
_08105DEC: .4byte 0x0000033F
_08105DF0: .4byte 0x00002038
_08105DF4: .4byte 0x00008004
_08105DF8: .4byte 0x083B950C
_08105DFC: .4byte sub_8105E00
	thumb_func_start sub_8105E00
sub_8105E00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08105E14
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08105E58
_08105E14:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _08105E60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r1, #0x04
	cmp r2, #0x00
	beq _08105E3A
	movs r1, #0x01
_08105E3A:
	ldr r3, _08105E64 @ =0x00002001
	cmp r2, #0x00
	beq _08105E42
	adds r3, #0x4D
_08105E42:
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x10
	strh r0, [r4, #0x10]
	ldr r1, _08105E68 @ =0x08105E6D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08105E58:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105E60: .4byte 0x03000FD8
_08105E64: .4byte 0x00002001
_08105E68: .4byte sub_8105E6C
	thumb_func_start sub_8105E6C
sub_8105E6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r1, #0x10
	ldsh r2, [r7, r1]
	cmp r2, #0x00
	beq _08105E86
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _08105F10
_08105E86:
	ldr r0, _08105F1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x08]
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	str r2, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	bl sub_807BC90
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08105EC4
	adds r0, #0xFF
_08105EC4:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r1, [r4, #0x3C]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08105ED4
	adds r1, #0xFF
_08105ED4:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r5, #0x02]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r5, #0x12]
	ldr r0, _08105F20 @ =0x083B950C
	ldrb r0, [r0, #0x01]
	strh r0, [r7, #0x10]
	ldr r0, _08105F24 @ =0x08106875
	str r0, [r7, #0x04]
	movs r0, #0x29
	mov r1, r8
	bl play_sfx_80195B4
_08105F10:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105F1C: .4byte 0x03000FD8
_08105F20: .4byte 0x083B950C
_08105F24: .4byte sub_8106874
	thumb_func_start sub_8105F28
sub_8105F28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldrh r0, [r6, #0x10]
	movs r2, #0x10
	ldsh r1, [r6, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _08105F48
	subs r0, #0x01
	strh r0, [r6, #0x10]
	b _08105FFC
_08105F48:
	ldr r0, _0810600C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08106010 @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r7, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x08]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	mov r10, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _08106014 @ =0x00002088
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105FAC
	adds r0, #0xFF
_08105FAC:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105FBC
	adds r0, #0xFF
_08105FBC:
	asrs r1, r0, #0x08
	adds r0, r7, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r7, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08106018 @ =0x00000155
	mov r1, r9
	bl play_sfx_80195B4
	movs r0, #0x40
	strh r0, [r6, #0x10]
	ldr r1, _0810601C @ =0x08106841
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
_08105FFC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810600C: .4byte 0x03000FD8
_08106010: .4byte 0x0000033F
_08106014: .4byte 0x00002088
_08106018: .4byte 0x00000155
_0810601C: .4byte sub_8106840
	thumb_func_start sub_8106020
sub_8106020:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r2, #0x10
	ldsh r1, [r7, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _0810603E
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _081060D2
_0810603E:
	ldr r0, _081060E0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x08]
	ldr r1, _081060E4 @ =0x00008004
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	mov r2, r9
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08106086
	adds r0, #0xFF
_08106086:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08106096
	adds r1, #0xFF
_08106096:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _081060E8 @ =0x083B950C
	ldrb r0, [r0, #0x00]
	strh r0, [r7, #0x10]
	ldr r0, _081060EC @ =0x081060F1
	str r0, [r7, #0x04]
	movs r0, #0x28
	mov r1, r9
	bl play_sfx_80195B4
_081060D2:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081060E0: .4byte 0x03000FD8
_081060E4: .4byte 0x00008004
_081060E8: .4byte 0x083B950C
_081060EC: .4byte sub_81060F0
	thumb_func_start sub_81060F0
sub_81060F0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106104
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106164
_08106104:
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r7, _0810616C @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r3, _08106170 @ =0x00002038
	cmp r2, #0x00
	beq _0810612C
	adds r3, #0x2F
_0810612C:
	adds r0, r5, #0x0
	movs r1, #0x03
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106174 @ =0x08106179
	str r0, [r4, #0x04]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	cmp r0, #0x00
	beq _0810615A
	adds r2, #0x19
_0810615A:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08106164:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810616C: .4byte 0x03000FD8
_08106170: .4byte 0x00002038
_08106174: .4byte sub_8106178
	thumb_func_start sub_8106178
sub_8106178:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, _08106204 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081061FC
	adds r0, r2, #0x0
	movs r1, #0x04
	cmp r0, #0x00
	beq _081061AC
	movs r1, #0x01
_081061AC:
	ldr r2, _08106208 @ =0x00002001
	cmp r0, #0x00
	beq _081061B4
	adds r2, #0x4D
_081061B4:
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x00]
	ldr r2, _0810620C @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106210 @ =0x08106791
	str r0, [r6, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
_081061FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106204: .4byte 0x03000FD8
_08106208: .4byte 0x00002001
_0810620C: .4byte 0x0000033F
_08106210: .4byte sub_8106790
