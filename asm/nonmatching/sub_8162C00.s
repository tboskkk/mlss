	.syntax unified
	.text

	thumb_func_start sub_8162C00
sub_8162C00:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	movs r1, #0x00
	adds r0, #0x04
	str r0, [sp, #0x000]
	movs r7, #0x00
	ldr r0, _08162CB8 @ =0x0821291E
	mov r10, r0
_08162C18:
	lsls r5, r1, #0x01
	adds r0, r1, #0x1
	mov r9, r0
	adds r5, r5, r1
	lsls r5, r5, #0x02
	ldr r1, [sp, #0x000]
	adds r4, r5, r1
	mov r8, r4
	ldr r6, _08162CBC @ =0x083CC284
	adds r0, r5, r6
	ldr r1, [r4, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	ldr r0, [r4, #0x00]
	bl sub_8161E38
	ldm r4!, {r1}
	mov r0, r10
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	adds r0, r5, #0x4
	adds r0, r0, r6
	ldr r1, [r4, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	ldr r0, [r4, #0x00]
	bl sub_8161E38
	ldr r1, [r4, #0x00]
	mov r0, r10
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	adds r0, r5, #0x0
	adds r0, #0x08
	adds r6, r0, r6
	mov r0, r8
	ldr r1, [r0, #0x08]
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	mov r1, r8
	ldr r0, [r1, #0x08]
	bl sub_8161E38
	mov r0, r8
	ldr r1, [r0, #0x08]
	mov r0, r10
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	mov r1, r9
	cmp r1, #0x01
	ble _08162C18
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08162CB8: .4byte dword_821291E @ =0x0821291E
_08162CBC: .4byte dword_83CC284 @ =0x083CC284
