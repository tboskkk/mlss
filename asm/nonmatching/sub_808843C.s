	.syntax unified
	.text

	thumb_func_start sub_808843C
sub_808843C:
	push {r4, r5, r6, lr}
	mov r12, r0
	adds r5, r2, #0x0
	ldr r6, [sp, #0x010]
	mov r2, r12
	adds r2, #0x84
	lsls r1, r1, #0x10
	mov r4, r12
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08088454
	adds r0, #0xFF
_08088454:
	asrs r0, r0, #0x08
	ldr r4, _080884A8 @ =0x0000FFFF
	ands r0, r4
	orrs r1, r0
	str r1, [r2, #0x00]
	mov r1, r12
	adds r1, #0x88
	lsls r2, r5, #0x10
	mov r5, r12
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0808846E
	adds r0, #0xFF
_0808846E:
	asrs r0, r0, #0x08
	ands r0, r4
	orrs r2, r0
	str r2, [r1, #0x00]
	mov r1, r12
	adds r1, #0x8C
	lsls r3, r3, #0x10
	mov r2, r12
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bge _08088486
	adds r0, #0xFF
_08088486:
	asrs r0, r0, #0x08
	ands r0, r4
	orrs r3, r0
	str r3, [r1, #0x00]
	mov r0, r12
	adds r0, #0x98
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x1A
	strh r1, [r0, #0x00]
	cmp r6, #0x00
	ble _080884A2
	subs r0, #0x02
	strh r6, [r0, #0x00]
_080884A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080884A8: .4byte 0x0000FFFF
