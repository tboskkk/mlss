	.syntax unified
	.text

	thumb_func_start sub_8122198
sub_8122198:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r5, r0, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	add r0, sp, #0x010
	strb r1, [r0, #0x00]
	strb r2, [r0, #0x01]
	movs r6, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r8, r0
	movs r1, #0x98
	mov r10, r1
	movs r7, #0x00
_081221C4:
	movs r4, #0xA0
	subs r4, r4, r7
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r0, sp, #0x014
	ldr r1, _08122240 @ =0x08202F58
	movs r2, #0x0C
	bl memcpy
	ldr r1, _08122244 @ =0x000001FF
	adds r0, r1, #0x0
	ands r4, r0
	movs r0, #0x60
	movs r1, #0x80
	lsls r1, r1, #0x07
	orrs r0, r1
	strh r0, [r5, #0x00]
	mov r0, r8
	orrs r4, r0
	strh r4, [r5, #0x02]
	mov r1, r10
	strh r1, [r5, #0x04]
	adds r5, #0x08
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x10
	ldrb r1, [r0, #0x00]
	movs r3, #0xB9
	subs r3, r3, r7
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x59
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	subs r0, #0x03
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x10
	adds r2, r5, #0x0
	bl sub_8121B5C
	adds r5, r0, #0x0
	adds r7, #0x28
	adds r6, #0x01
	cmp r6, #0x01
	bgt _0812222C
	cmp r6, #0x00
	beq _081221C4
	mov r0, r9
	cmp r0, #0x00
	beq _081221C4
_0812222C:
	adds r0, r5, #0x0
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08122240: .4byte dword_8202F58 @ =0x08202F58
_08122244: .4byte 0x000001FF
