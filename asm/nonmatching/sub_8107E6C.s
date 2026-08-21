	.syntax unified
	.text

	thumb_func_start sub_8107E6C
sub_8107E6C:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrh r3, [r3, #0x00]
	adds r2, r1, r2
	strh r3, [r2, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrh r3, [r3, #0x00]
	adds r2, r1, r2
	strh r3, [r2, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrh r3, [r3, #0x00]
	adds r2, r1, r2
	strh r3, [r2, #0x00]
	movs r6, #0x90
	lsls r6, r6, #0x01
	adds r2, r0, r6
	mov r9, r2
	ldrb r5, [r2, #0x00]
	lsls r3, r5, #0x1D
	adds r6, r1, r6
	lsrs r3, r3, #0x1D
	ldrb r4, [r6, #0x00]
	movs r2, #0x08
	negs r2, r2
	ands r2, r4
	orrs r2, r3
	movs r3, #0x38
	ands r3, r5
	movs r4, #0x39
	negs r4, r4
	ands r2, r4
	orrs r2, r3
	strb r2, [r6, #0x00]
	mov r3, r9
	ldrh r2, [r3, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x01
	ands r3, r2
	ldrh r4, [r6, #0x00]
	ldr r2, _08107F74 @ =0xFFFFFE3F
	ands r2, r4
	orrs r2, r3
	strh r2, [r6, #0x00]
	ldr r5, _08107F78 @ =0x00000121
	adds r2, r0, r5
	ldrb r2, [r2, #0x00]
	mov r8, r2
	adds r5, r1, r5
	movs r3, #0x0E
	mov r4, r8
	ands r3, r4
	ldrb r4, [r5, #0x00]
	movs r2, #0x0F
	negs r2, r2
	ands r2, r4
	orrs r2, r3
	movs r3, #0x70
	mov r4, r8
	ands r3, r4
	movs r4, #0x71
	negs r4, r4
	ands r2, r4
	orrs r2, r3
	strb r2, [r5, #0x00]
	mov r2, r9
	ldr r4, [r2, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x0A
	ands r4, r2
	ldr r2, [r6, #0x00]
	ldr r3, _08107F7C @ =0xFFFC7FFF
	ands r2, r3
	orrs r2, r4
	str r2, [r6, #0x00]
	movs r5, #0x91
	lsls r5, r5, #0x01
	adds r2, r0, r5
	ldrb r6, [r2, #0x00]
	adds r5, r1, r5
	movs r3, #0x1C
	ands r3, r6
	ldrb r4, [r5, #0x00]
	movs r2, #0x1D
	negs r2, r2
	ands r2, r4
	orrs r2, r3
	movs r3, #0x20
	ands r3, r6
	movs r4, #0x21
	negs r4, r4
	ands r2, r4
	orrs r2, r3
	strb r2, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrh r3, [r3, #0x00]
	adds r2, r1, r2
	strh r3, [r2, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrb r3, [r3, #0x00]
	adds r2, r1, r2
	strb r3, [r2, #0x00]
	ldr r2, _08107F80 @ =0x00000129
	adds r3, r0, r2
	ldrb r3, [r3, #0x00]
	adds r2, r1, r2
	strb r3, [r2, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107F74: .4byte 0xFFFFFE3F
_08107F78: .4byte 0x00000121
_08107F7C: .4byte 0xFFFC7FFF
_08107F80: .4byte 0x00000129
