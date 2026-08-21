	.syntax unified
	.text

	thumb_func_start sub_80757C0
sub_80757C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xAC
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080758A4
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080757F4
	ldr r0, _080757F0 @ =0x08075C8D
	b _080758A2
_080757F0: .4byte sub_8075C8C
_080757F4:
	str r2, [sp, #0x008]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r5
	mov r9, r1
	movs r2, #0x8C
	adds r2, r2, r5
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x79
	adds r6, r5, #0x0
	adds r6, #0x7C
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x7A
	str r0, [sp, #0x000]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, _080758B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x58
	movs r3, #0x01
_08075826:
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	ands r0, r3
	str r0, [r1, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r6, #0x01
	cmp r0, #0x00
	beq _0807584A
	movs r6, #0x00
_0807584A:
	cmp r6, #0x00
	bne _08075826
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r2, r9
	str r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r0, [r1, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x00]
	ldr r0, [sp, #0x000]
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r0, #0x08
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	ldr r0, _080758B8 @ =0x08075565
_080758A2:
	str r0, [r5, #0x4C]
_080758A4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080758B4: .4byte 0x03000FD8
_080758B8: .4byte sub_8075564
