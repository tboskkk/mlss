	.syntax unified
	.text

	thumb_func_start sub_814B530
sub_814B530:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0x0
	ldr r6, _0814B5C4 @ =0x03001038
	ldr r1, _0814B5C8 @ =0x0819832C
	ldr r0, _0814B5CC @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0814B58A
	adds r0, r4, #0x0
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	bl _call_via_r2
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	str r1, [r5, #0x18]
_0814B58A:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814B5B8
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0814B5B8
	movs r0, #0x00
	str r0, [r5, #0x18]
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
_0814B5B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B5C4: .4byte 0x03001038
_0814B5C8: .4byte 0x0819832C
_0814B5CC: .4byte 0x08198220
