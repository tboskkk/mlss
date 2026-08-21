	.syntax unified
	.text

	thumb_func_start sub_807C564
sub_807C564:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r12, r2
	mov r9, r3
	ldr r0, [sp, #0x028]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #0x40
	negs r0, r0
	cmp r12, r0
	bge _0807C58A
	b _0807C6BE
_0807C58A:
	cmp r9, r0
	bge _0807C590
	b _0807C6BE
_0807C590:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r12, r0
	ble _0807C59A
	b _0807C6BE
_0807C59A:
	cmp r3, #0xE0
	ble _0807C5A0
	b _0807C6BE
_0807C5A0:
	ldr r0, _0807C614 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807C618 @ =0x000037E8
	adds r3, r0, r1
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bne _0807C620
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C5BA
	b _0807C6BE
_0807C5BA:
	movs r4, #0xC0
	lsls r4, r4, #0x04
_0807C5BE:
	ldr r2, [r6, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r9
	movs r1, #0xFF
	ands r0, r1
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	mov r7, r8
	orrs r0, r7
	strh r0, [r2, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	add r0, r12
	ldr r7, _0807C61C @ =0x000001FF
	adds r1, r7, #0x0
	ands r0, r1
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x02]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x04]
	ldrh r0, [r3, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	adds r3, #0x02
	lsls r0, r1, #0x14
	ldr r1, [sp, #0x024]
	orrs r0, r1
	str r0, [r2, #0x08]
	movs r0, #0x00
	strh r0, [r2, #0x06]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x00]
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C5BE
	b _0807C6BE
_0807C614: .4byte 0x03000FDC
_0807C618: .4byte 0x000037E8
_0807C61C: .4byte 0x000001FF
_0807C620:
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807C6BE
	ldr r2, _0807C668 @ =0x000001FF
	mov r10, r2
_0807C62E:
	ldr r7, [r6, #0x00]
	str r7, [sp, #0x000]
	ldrh r0, [r3, #0x00]
	mov r2, r9
	adds r1, r0, r2
	movs r0, #0xFF
	ands r1, r0
	adds r3, #0x02
	ldrh r2, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r2
	adds r4, r7, #0x0
	cmp r0, #0x00
	beq _0807C66C
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r4, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	mov r1, r12
	subs r0, r1, r0
	mov r2, r10
	ands r0, r2
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	b _0807C68C
	.byte 0x00, 0x00
_0807C668: .4byte 0x000001FF
_0807C66C:
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r4, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	mov r1, r12
	subs r0, r1, r0
	mov r2, r10
	ands r0, r2
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x05
	adds r2, r7, #0x0
	eors r1, r2
_0807C68C:
	orrs r0, r1
	strh r0, [r4, #0x02]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	ldr r1, [sp, #0x000]
	strh r0, [r1, #0x04]
	ldrh r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x04
	ands r1, r0
	adds r3, #0x02
	lsls r0, r1, #0x14
	ldr r2, [sp, #0x024]
	orrs r0, r2
	str r0, [r4, #0x08]
	movs r0, #0x00
	strh r0, [r4, #0x06]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x00]
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C62E
_0807C6BE:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
