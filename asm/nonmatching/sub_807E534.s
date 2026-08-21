	.syntax unified
	.text

	thumb_func_start sub_807E534
sub_807E534:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	mov r10, r1
	ldr r6, _0807E584 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0807E554
	b _0807E656
_0807E554:
	movs r7, #0x92
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0807E588
	ldr r0, [r6, #0x00]
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r4, [r0, #0x34]
	movs r1, #0x01
	bl sub_81165CC
	ldr r0, [r6, #0x00]
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r4, [r0, #0x34]
	b _0807E5DA
_0807E584: .4byte 0x03000FD8
_0807E588:
	ldr r0, [r6, #0x00]
	movs r4, #0x92
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0807E656
	ldr r2, _0807E668 @ =0x03001038
	ldr r0, _0807E66C @ =0x0819832C
	ldr r1, _0807E670 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r10
	lsls r0, r1, #0x08
	lsrs r1, r5, #0x1F
	adds r1, r5, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	movs r1, #0xFF
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	bl sub_81151E4
_0807E5DA:
	ldr r4, _0807E674 @ =0x03000FD8
	mov r8, r4
	ldr r3, [r4, #0x00]
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r3, r3, r6
	ldr r0, [r3, #0x00]
	adds r0, #0x4A
	movs r1, #0x00
	mov r9, r1
	mov r4, r10
	strh r4, [r0, #0x00]
	ldr r2, _0807E668 @ =0x03001038
	ldr r0, _0807E66C @ =0x0819832C
	ldr r1, _0807E670 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, [r3, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x4A
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x05
	ldrh r1, [r1, #0x34]
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	ldr r5, [r0, #0x00]
	adds r5, r5, r6
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x1C]
	ldr r2, _0807E678 @ =0x02000080
	ldrh r4, [r0, #0x36]
	str r4, [sp, #0x000]
	ldr r4, [r5, #0x00]
	ldrh r4, [r4, #0x30]
	str r4, [sp, #0x004]
	mov r4, r9
	str r4, [sp, #0x008]
	bl sub_8116488
	ldr r3, _0807E67C @ =0x0300034C
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	ldr r1, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	ldrh r1, [r1, #0x36]
	orrs r0, r1
	strh r0, [r3, #0x02]
	ldr r0, [r2, #0x00]
	bl sub_8116610
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0C]
_0807E656:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807E668: .4byte 0x03001038
_0807E66C: .4byte 0x0819832C
_0807E670: .4byte 0x08198220
_0807E674: .4byte 0x03000FD8
_0807E678: .4byte 0x02000080
_0807E67C: .4byte 0x0300034C
