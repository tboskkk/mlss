	.syntax unified
	.text

	thumb_func_start sub_813A44C
sub_813A44C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	mov r9, r3
	add r0, sp, #0x024
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813A476
	ldr r0, [r4, #0x0C]
	adds r6, r6, r0
	ldr r0, [r4, #0x10]
	add r8, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	add r9, r0
_0813A476:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r6, [r0, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r4, r2
	mov r1, r8
	str r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r4, r2
	mov r1, r9
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r6, r6, r0
	ldr r0, [r4, #0x10]
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	mov r1, r9
	subs r1, r1, r0
	mov r9, r1
	ldr r2, _0813A590 @ =0x03001038
	mov r10, r2
	ldr r1, _0813A594 @ =0x0819832C
	ldr r0, _0813A598 @ =0x08198220
	subs r5, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	mov r0, r8
	movs r1, #0x10
	bl _call_via_r2
	mov r8, r0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	mov r0, r9
	movs r1, #0x10
	bl _call_via_r2
	mov r9, r0
	adds r0, r6, #0x0
	muls r0, r6
	mov r2, r8
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	mov r2, r9
	mov r1, r9
	muls r1, r2
	adds r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r4, r2
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	ldr r1, [sp, #0x020]
	bl _call_via_r2
	movs r2, #0xE6
	lsls r2, r2, #0x01
	adds r1, r4, r2
	str r0, [r1, #0x00]
	ldr r1, _0813A59C @ =0x000002DE
	adds r7, r4, r1
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x00
	beq _0813A5A4
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	lsls r0, r6, #0x04
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	ldr r2, _0813A5A0 @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	mov r1, r8
	lsls r0, r1, #0x04
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	mov r1, r9
	lsls r0, r1, #0x04
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	b _0813A5B8
_0813A590: .4byte 0x03001038
_0813A594: .4byte 0x0819832C
_0813A598: .4byte 0x08198220
_0813A59C: .4byte 0x000002DE
_0813A5A0: .4byte 0x00000242
_0813A5A4:
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	subs r2, #0x98
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	subs r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
_0813A5B8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
