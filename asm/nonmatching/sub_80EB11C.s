	.syntax unified
	.text

	thumb_func_start sub_80EB11C
sub_80EB11C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r0, r1, #0x0
	ldr r1, [r3, #0x0C]
	ldr r4, [r3, #0x14]
	asrs r6, r1, #0x08
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _080EB1A0 @ =0x083BA4B4
	movs r2, #0xFF
	ands r1, r2
	lsls r1, r1, #0x01
	adds r1, r1, r5
	ldrb r1, [r1, #0x00]
	mov r9, r1
	lsls r5, r4, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r1, r2, #0x0
	ands r5, r1
	adds r1, r4, #0x0
	subs r1, #0x80
	lsls r1, r1, #0x01
	movs r7, #0xC0
	lsls r7, r7, #0x02
	adds r2, r7, #0x0
	ands r1, r2
	orrs r5, r1
	lsls r1, r4, #0x01
	movs r2, #0xC0
	ands r1, r2
	orrs r5, r1
	movs r1, #0x1F
	ands r4, r1
	orrs r5, r4
	ldrb r1, [r3, #0x00]
	movs r4, #0x04
	ldsh r2, [r3, r4]
	movs r4, #0x08
	ldsh r7, [r3, r4]
	mov r8, r7
	str r6, [sp, #0x000]
	mov r7, r9
	str r7, [sp, #0x004]
	ldrh r4, [r3, #0x10]
	str r4, [sp, #0x008]
	str r5, [sp, #0x00C]
	ldrb r4, [r3, #0x18]
	str r4, [sp, #0x010]
	ldr r3, [r3, #0x1C]
	str r3, [sp, #0x014]
	mov r3, r8
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EB1A0: .4byte 0x083BA4B4
