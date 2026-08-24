	.syntax unified
	.text

	thumb_func_start sub_8104DB8
sub_8104DB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r1, _08104E48 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r7, #0x94
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	movs r1, #0x1E
	mov r10, r1
	str r1, [sp, #0x000]
	movs r1, #0x02
	mov r9, r1
	str r1, [sp, #0x004]
	ldr r4, _08104E4C @ =0x084FB588
	adds r4, #0x4E
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	ldr r5, _08104E50 @ =0x089F808C
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r5
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	mov r8, r1
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084F28
	ldr r1, _08104E48 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r5
	str r1, [sp, #0x008]
	mov r1, r8
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x12
	bl sub_8084F28
	movs r0, #0x00
	strh r0, [r6, #0x12]
	strh r0, [r6, #0x10]
	ldr r0, _08104E54 @ =0x08104E59
	str r0, [r6, #0x04]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104E48: .4byte 0x03000FD8
_08104E4C: .4byte word_84FB588 @ =0x084FB588
_08104E50: .4byte dword_89F808C @ =0x089F808C
_08104E54: .4byte sub_8104E58
