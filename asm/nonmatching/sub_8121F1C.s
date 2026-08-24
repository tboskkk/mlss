	.syntax unified
	.text

	thumb_func_start sub_8121F1C
sub_8121F1C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	mov r9, r4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r6, #0x28
	str r6, [sp, #0x000]
	movs r0, #0x04
	str r0, [sp, #0x004]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x008]
	movs r0, #0x07
	str r0, [sp, #0x00C]
	movs r0, #0x10
	adds r1, r3, #0x0
	adds r2, r7, #0x0
	movs r3, #0x88
	bl sub_8121B5C
	adds r7, r0, #0x0
	cmp r4, #0x63
	bls _08121F6E
	str r6, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x02
	movs r1, #0x63
	b _08121F9A
_08121F6E:
	cmp r4, #0x09
	bhi _08121F8A
	str r6, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x02
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r3, #0xBA
	bl sub_8121B5C
	adds r7, r0, #0x0
_08121F8A:
	str r6, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x06
	str r0, [sp, #0x00C]
	movs r0, #0x12
	mov r1, r9
_08121F9A:
	adds r2, r7, #0x0
	movs r3, #0xBA
	bl sub_8121B5C
	adds r7, r0, #0x0
	mov r0, r8
	cmp r0, #0x3B
	bls _08121FBE
	movs r0, #0x28
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	subs r0, #0x02
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x02
	movs r1, #0x3B
	b _08121FF4
_08121FBE:
	mov r1, r8
	cmp r1, #0x09
	bhi _08121FE0
	movs r0, #0x28
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	subs r0, #0x02
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x02
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r3, #0xC8
	bl sub_8121B5C
	adds r7, r0, #0x0
_08121FE0:
	movs r0, #0x28
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	subs r0, #0x03
	str r0, [sp, #0x008]
	movs r0, #0x06
	str r0, [sp, #0x00C]
	movs r0, #0x12
	mov r1, r8
_08121FF4:
	adds r2, r7, #0x0
	movs r3, #0xC8
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r0, #0xC5
	mov r9, r0
	movs r4, #0x28
	movs r5, #0x02
	movs r1, #0x4A
	mov r8, r1
	movs r6, #0x01
	ldr r0, _08122090 @ =0x08202F58
	mov r10, r0
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x0C
	bl memcpy
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r4, r1
	strh r4, [r7, #0x00]
	mov r0, r9
	strh r0, [r7, #0x02]
	lsls r1, r6, #0x0C
	lsls r5, r5, #0x0A
	orrs r1, r5
	mov r9, r1
	mov r0, r8
	orrs r0, r1
	strh r0, [r7, #0x04]
	adds r7, #0x08
	movs r1, #0x20
	mov r8, r1
	movs r4, #0xAC
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x0C
	bl memcpy
	lsls r6, r6, #0x0E
	mov r0, r8
	orrs r6, r0
	strh r6, [r7, #0x00]
	ldr r0, _08122094 @ =0x0000C07C
	strh r0, [r7, #0x02]
	mov r1, r9
	orrs r4, r1
	strh r4, [r7, #0x04]
	adds r7, #0x08
	movs r4, #0xBC
	movs r5, #0xCC
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x0C
	bl memcpy
	mov r0, r8
	strh r0, [r7, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r4, r1
	strh r4, [r7, #0x02]
	mov r0, r9
	orrs r5, r0
	strh r5, [r7, #0x04]
	adds r7, #0x08
	adds r0, r7, #0x0
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08122090: .4byte 0x08202F58
_08122094: .4byte 0x0000C07C
