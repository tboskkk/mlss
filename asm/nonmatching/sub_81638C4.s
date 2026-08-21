	.syntax unified
	.text

	thumb_func_start sub_81638C4
sub_81638C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	add r0, sp, #0x018
	ldrb r0, [r0, #0x00]
	mov r8, r0
	mov r7, r12
	adds r7, #0x5A
	ldrh r4, [r7, #0x00]
	ldr r0, _08163918 @ =0x0000FFFC
	ands r0, r4
	strh r0, [r7, #0x00]
	mov r5, r12
	adds r5, #0x30
	mov r4, r12
	adds r4, #0x18
	mov r6, r12
	ldr r0, [r6, #0x18]
	str r0, [r6, #0x30]
	ldr r0, [r4, #0x04]
	str r0, [r5, #0x04]
	ldr r0, [r4, #0x08]
	str r0, [r5, #0x08]
	mov r0, r12
	adds r0, #0x24
	str r1, [r6, #0x24]
	str r2, [r0, #0x04]
	str r3, [r0, #0x08]
	mov r0, r8
	cmp r0, #0x00
	beq _0816390C
	ldrh r0, [r7, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r7, #0x00]
_0816390C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08163918: .4byte 0x0000FFFC
