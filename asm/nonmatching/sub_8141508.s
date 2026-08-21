	.syntax unified
	.text

	thumb_func_start sub_8141508
sub_8141508:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r3, r6, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r0, r0, r5
	ldrh r2, [r0, #0x08]
	adds r1, #0x20
	strb r2, [r1, #0x00]
	ldrh r7, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x30]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814157C
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08141588
_0814157C:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08141588:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	mov r3, r8
	bl sub_813AA5C
	ldr r0, _081415D0 @ =0x081415D5
	mov r2, r9
	str r0, [r2, #0x00]
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081415D0: .4byte sub_81415D4
