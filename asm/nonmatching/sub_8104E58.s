	.syntax unified
	.text

	thumb_func_start sub_8104E58
sub_8104E58:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	adds r0, #0x01
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0C
	ble _08104EF4
	movs r0, #0x00
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x12]
	movs r1, #0x01
	eors r0, r1
	strh r0, [r7, #0x12]
	ldr r1, _08104F04 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	mov r10, r3
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0x1E
	mov r9, r1
	str r1, [sp, #0x000]
	movs r3, #0x02
	mov r8, r3
	str r3, [sp, #0x004]
	ldr r4, _08104F08 @ =0x084FB588
	adds r4, #0x4E
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	ldr r5, _08104F0C @ =0x089F808C
	adds r1, r1, r5
	movs r3, #0x12
	ldsh r2, [r7, r3]
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x08
	str r6, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084F28
	ldr r1, _08104F04 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r10
	ldr r0, [r0, #0x00]
	mov r3, r9
	str r3, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	movs r3, #0x12
	ldsh r2, [r7, r3]
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x12
	bl sub_8084F28
_08104EF4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104F04: .4byte 0x03000FD8
_08104F08: .4byte 0x084FB588
_08104F0C: .4byte 0x089F808C
