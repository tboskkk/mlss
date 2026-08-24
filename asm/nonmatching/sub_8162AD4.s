	.syntax unified
	.text

	thumb_func_start sub_8162AD4
sub_8162AD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	str r0, [sp, #0x010]
	ldr r4, _08162BF4 @ =0x00005001
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80214A4
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x04
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r1, #0x00
	mov r10, r1
	ldr r3, [sp, #0x010]
	adds r3, #0x04
	str r3, [sp, #0x018]
	mov r8, r5
	movs r7, #0x00
_08162B24:
	movs r0, #0x00
	mov r9, r0
	mov r1, r10
	lsls r1, r1, #0x01
	str r1, [sp, #0x01C]
	mov r3, r10
	adds r3, #0x10
	str r3, [sp, #0x020]
	mov r0, r10
	adds r0, #0x01
	str r0, [sp, #0x014]
_08162B3A:
	ldr r5, [sp, #0x01C]
	add r5, r10
	add r5, r9
	lsls r5, r5, #0x02
	ldr r1, [sp, #0x018]
	adds r6, r1, r5
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _08162BF8 @ =0x0821281C
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x00
	bl sub_8161C28
	adds r4, r0, #0x0
	str r4, [r6, #0x00]
	mov r3, r8
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _08162BF4 @ =0x00005001
	movs r2, #0x00
	bl sub_8020DD0
	str r0, [r4, #0x10]
	str r7, [sp, #0x000]
	ldr r1, [sp, #0x020]
	mov r2, r8
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
	strh r7, [r0, #0x0E]
	str r7, [r4, #0x14]
	ldr r0, _08162BFC @ =0x083CC284
	adds r5, r5, r0
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	movs r3, #0x01
	add r9, r3
	mov r0, r9
	cmp r0, #0x02
	ble _08162B3A
	ldr r1, [sp, #0x014]
	mov r10, r1
	cmp r1, #0x01
	ble _08162B24
	ldr r0, [sp, #0x010]
	bl sub_8163674
	ldr r0, [sp, #0x010]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08162BF4: .4byte 0x00005001
_08162BF8: .4byte dword_821281C @ =0x0821281C
_08162BFC: .4byte dword_83CC284 @ =0x083CC284
