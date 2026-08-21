	.syntax unified
	.text

	thumb_func_start sub_805E7B8
sub_805E7B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r7, r6, #0x0
	adds r7, #0x84
	ldr r1, [r7, #0x00]
	movs r0, #0x88
	adds r0, r0, r6
	mov r8, r0
	ldr r2, [r0, #0x00]
	mov r12, r2
	adds r5, r6, #0x0
	adds r5, #0x8C
	ldr r3, [r5, #0x00]
	mov r10, r3
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r0, #0xAC
	adds r0, r0, r6
	mov r9, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r2, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805E81A
	adds r0, #0xFF
_0805E81A:
	asrs r4, r0, #0x08
	ldr r1, _0805E8AC @ =0x08198584
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805E834
	adds r0, #0x3F
_0805E834:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805E848
	adds r0, #0xFF
_0805E848:
	asrs r2, r0, #0x08
	ldr r1, _0805E8B0 @ =0x08198504
	ldr r0, [r3, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805E85E
	adds r0, #0x3F
_0805E85E:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r3, r9
	ldrh r0, [r3, #0x00]
	adds r0, #0x04
	ands r0, r5
	strh r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0805E89C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
_0805E89C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E8AC: .4byte 0x08198584
_0805E8B0: .4byte 0x08198504
