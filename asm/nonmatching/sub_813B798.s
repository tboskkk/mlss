	.syntax unified
	.text

	thumb_func_start sub_813B798
sub_813B798:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	add r0, sp, #0x01C
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813B7BC
	ldr r0, [r6, #0x0C]
	adds r7, r7, r0
	ldr r0, [r6, #0x10]
	adds r5, r5, r0
_0813B7BC:
	ldr r1, _0813B830 @ =0x000002DE
	adds r0, r6, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r7, [r0, #0x00]
	adds r2, #0x10
	adds r0, r6, r2
	str r5, [r0, #0x00]
	ldr r0, [r6, #0x0C]
	subs r7, r7, r0
	ldr r0, [r6, #0x10]
	subs r5, r5, r0
	ldr r0, _0813B834 @ =0x03001038
	mov r9, r0
	ldr r4, _0813B838 @ =0x0819832C
	ldr r0, _0813B83C @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	mov r1, r8
	bl _call_via_r2
	ldr r2, _0813B840 @ =0x00000242
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	mov r1, r8
	bl _call_via_r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B830: .4byte 0x000002DE
_0813B834: .4byte 0x03001038
_0813B838: .4byte 0x0819832C
_0813B83C: .4byte 0x08198220
_0813B840: .4byte 0x00000242
