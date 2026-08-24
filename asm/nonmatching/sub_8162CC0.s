	.syntax unified
	.text

	thumb_func_start sub_8162CC0
sub_8162CC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r10, r0
	ldr r5, _08162DE4 @ =0x0000500B
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x04
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, _08162DE8 @ =0x0000500A
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r1, #0x00
	mov r8, r1
	adds r7, r4, #0x0
	movs r6, #0x00
	mov r9, r10
_08162D0C:
	mov r2, r8
	lsls r5, r2, #0x02
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _08162DEC @ =0x08212824
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x00
	bl sub_8161C28
	adds r4, r0, #0x0
	mov r3, r9
	str r4, [r3, #0x00]
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
	str r7, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _08162DE4 @ =0x0000500B
	movs r2, #0x00
	adds r3, r7, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x10]
	str r6, [sp, #0x000]
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x10]
	bl sprite_show_8020CBC
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r3, #0x31
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	adds r3, #0x24
	adds r1, r3, #0x0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	adds r3, #0x09
	adds r1, r3, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r4, #0x10]
	strh r6, [r0, #0x0E]
	str r6, [r4, #0x14]
	ldr r0, _08162DF0 @ =0x083CC2B0
	adds r5, r5, r0
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldm r2!, {r1}
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r6, [r0, #0x00]
	str r6, [r1, #0x40]
	movs r3, #0x01
	add r8, r3
	mov r0, r8
	cmp r0, #0x03
	ble _08162D0C
	mov r1, r10
	ldr r0, [r1, #0x0C]
	ldr r0, [r0, #0x10]
	ldr r2, _08162DF4 @ =0x0821294A
	ldr r1, _08162DF8 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	mov r0, r10
	bl sub_81634DC
	mov r0, r10
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08162DE4: .4byte 0x0000500B
_08162DE8: .4byte 0x0000500A
_08162DEC: .4byte dword_8212824 @ =0x08212824
_08162DF0: .4byte dword_83CC2B0 @ =0x083CC2B0
_08162DF4: .4byte dword_821294A @ =0x0821294A
_08162DF8: .4byte 0x0300034C
