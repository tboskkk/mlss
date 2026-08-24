	.syntax unified
	.text

	thumb_func_start sub_805E550
sub_805E550:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x88
	ldr r2, [r7, #0x00]
	mov r12, r2
	adds r5, r6, #0x0
	adds r5, #0x8C
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r3, #0xAC
	adds r3, r3, r6
	mov r10, r3
	movs r2, #0x00
	ldsh r0, [r3, r2]
	str r0, [sp, #0x004]
	movs r3, #0x9C
	adds r3, r3, r6
	mov r9, r3
	ldr r0, [r3, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r2, r12
	ldr r3, [r5, #0x00]
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r7, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bge _0805E5B2
	adds r1, #0xFF
_0805E5B2:
	asrs r2, r1, #0x08
	ldr r1, _0805E64C @ =0x08198584
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805E5CC
	adds r0, #0x3F
_0805E5CC:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bge _0805E5E2
	adds r1, #0xFF
_0805E5E2:
	asrs r2, r1, #0x08
	ldr r1, _0805E650 @ =0x08198504
	ldr r0, [r3, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805E5F8
	adds r0, #0x3F
_0805E5F8:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x00]
	cmp r0, #0x37
	bgt _0805E610
	adds r0, #0x01
	str r0, [r1, #0x00]
_0805E610:
	mov r2, r10
	ldrh r0, [r2, #0x00]
	adds r0, #0x02
	ands r0, r5
	strh r0, [r2, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	cmp r0, r1
	bgt _0805E63C
	ldr r0, [r7, #0x00]
	cmp r0, r1
	bgt _0805E63C
	str r1, [r3, #0x00]
	str r1, [r7, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _0805E654 @ =0x0805E659
	str r0, [r6, #0x4C]
_0805E63C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E64C: .4byte word_8198584 @ =0x08198584
_0805E650: .4byte word_8198504 @ =0x08198504
_0805E654: .4byte sub_805E658
