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
