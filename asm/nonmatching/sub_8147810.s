	.syntax unified
	.text

	thumb_func_start sub_8147810
sub_8147810:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147842
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814784E
_08147842:
	movs r7, #0x82
	lsls r7, r7, #0x02
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814784E:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r7, [r0, #0x28]
	ldr r1, [r7, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r7, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08147878
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814787A
_08147878:
	movs r0, #0xFF
_0814787A:
	movs r1, #0x00
	mov r12, r1
	strb r0, [r6, #0x02]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r4, #0xBC
	lsls r4, r4, #0x01
	add r4, r8
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r3, [r0, #0x2E]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r0, sp
	mov r7, r12
	strb r7, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x36
	ldrb r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r0, _081478D8 @ =0x081478DD
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081478D8: .4byte sub_81478DC
