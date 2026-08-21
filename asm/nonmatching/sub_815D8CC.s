	.syntax unified
	.text

	thumb_func_start sub_815D8CC
sub_815D8CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r4, #0x00
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	adds r1, r5, #0x4
	mov r9, r1
	mov r10, r4
_0815D8E8:
	mov r2, r8
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815D918 @ =0x00005005
	movs r2, #0x00
	mov r3, r8
	bl sub_8020DD0
	adds r2, r0, #0x0
	lsls r1, r4, #0x02
	mov r3, r9
	adds r0, r3, r1
	str r2, [r0, #0x00]
	adds r7, r1, #0x0
	cmp r4, #0x03
	ble _0815D91C
	adds r1, r4, #0x1
	lsls r0, r1, #0x04
	adds r0, #0x28
	strh r0, [r2, #0x00]
	adds r6, r1, #0x0
	b _0815D924
_0815D918: .4byte 0x00005005
_0815D91C:
	lsls r0, r4, #0x04
	adds r0, #0x28
	strh r0, [r2, #0x00]
	adds r6, r4, #0x1
_0815D924:
	mov r0, r9
	adds r2, r0, r7
	ldr r1, [r2, #0x00]
	movs r0, #0x3C
	strh r0, [r1, #0x02]
	ldr r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x0A
	mov r2, r10
	str r2, [sp, #0x000]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
	lsls r2, r4, #0x01
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r2
	mov r3, r10
	strh r3, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x3A
	adds r0, r0, r2
	adds r1, r7, r4
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x4C
	adds r0, r0, r2
	strh r3, [r0, #0x00]
	adds r4, r6, #0x0
	cmp r4, #0x08
	ble _0815D8E8
	movs r0, #0xFA
	lsls r0, r0, #0x02
	strh r0, [r5, #0x00]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
