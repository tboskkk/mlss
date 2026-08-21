	.syntax unified
	.text

	thumb_func_start sub_80FB448
sub_80FB448:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r10, r1
	adds r7, r2, #0x0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0x03
	mov r9, r1
	add r9, r0
	ldr r0, _080FB674 @ =0x082FBDC4
	add r9, r0
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r2, r7, r5
	mov r12, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _080FB678 @ =0x0000020F
	adds r3, r7, r3
	str r3, [sp, #0x000]
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	mov r1, r9
	ldrb r0, [r1, #0x05]
	lsls r0, r0, #0x08
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	mov r3, r9
	ldrb r0, [r3, #0x06]
	lsls r0, r0, #0x08
	adds r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x08
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	mov r1, r9
	ldrb r0, [r1, #0x02]
	lsls r0, r0, #0x08
	subs r2, #0x08
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	mov r3, r9
	ldrb r0, [r3, #0x03]
	lsls r0, r0, #0x08
	adds r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldrb r0, [r3, #0x04]
	lsls r0, r0, #0x08
	ldr r3, _080FB67C @ =0x00000276
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	add r5, r10
	ldrb r1, [r5, #0x00]
	movs r0, #0x0E
	ands r0, r1
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x0F
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r2, [r5, #0x00]
	movs r0, #0x10
	ands r0, r2
	movs r3, #0x11
	negs r3, r3
	mov r8, r3
	mov r2, r8
	ands r2, r1
	orrs r2, r0
	mov r0, r12
	strb r2, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	movs r4, #0x21
	negs r4, r4
	adds r3, r4, #0x0
	ands r3, r2
	orrs r3, r0
	mov r1, r12
	strb r3, [r1, #0x00]
	ldrb r0, [r5, #0x00]
	movs r1, #0x40
	ands r1, r0
	movs r6, #0x41
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r3
	orrs r0, r1
	mov r2, r12
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	movs r3, #0x7F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _080FB680 @ =0x0000020D
	mov r0, r10
	adds r5, r0, r3
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	adds r3, r7, r3
	ldrb r1, [r3, #0x00]
	movs r2, #0x02
	negs r2, r2
	ands r2, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldrb r2, [r5, #0x00]
	movs r1, #0x02
	ands r1, r2
	movs r2, #0x03
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r2, [r5, #0x00]
	movs r0, #0x10
	ands r0, r2
	mov r2, r8
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r2, [r5, #0x00]
	movs r0, #0x20
	ands r0, r2
	ands r4, r1
	orrs r4, r0
	strb r4, [r3, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x40
	ands r0, r1
	ands r4, r6
	orrs r4, r0
	strb r4, [r3, #0x00]
	ldr r3, _080FB684 @ =0x0000020E
	mov r0, r10
	adds r4, r0, r3
	ldrb r1, [r4, #0x00]
	adds r3, r7, r3
	movs r0, #0x04
	ands r0, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r2, [r4, #0x00]
	movs r0, #0x38
	ands r0, r2
	movs r2, #0x39
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	ands r6, r2
	orrs r6, r0
	strb r6, [r3, #0x00]
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x07
	movs r1, #0x7F
	ands r6, r1
	orrs r6, r0
	strb r6, [r3, #0x00]
	ldr r0, _080FB688 @ =0x00000222
	mov r2, r10
	adds r1, r2, r0
	ldrb r1, [r1, #0x00]
	adds r0, r7, r0
	strb r1, [r0, #0x00]
	ldr r0, _080FB68C @ =0x00000223
	adds r1, r2, r0
	ldrb r1, [r1, #0x00]
	adds r0, r7, r0
	strb r1, [r0, #0x00]
	ldr r1, _080FB690 @ =0x00000216
	adds r0, r2, r1
	ldrb r2, [r0, #0x00]
	adds r1, r7, r1
	movs r0, #0x02
	ands r0, r2
	ldrb r2, [r1, #0x00]
	movs r3, #0x03
	negs r3, r3
	ands r3, r2
	orrs r3, r0
	strb r3, [r1, #0x00]
	mov r0, r10
	adds r0, #0x55
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x55
	strb r0, [r1, #0x00]
	movs r0, #0x8A
	lsls r0, r0, #0x02
	adds r1, r7, r0
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x8B
	lsls r0, r0, #0x02
	adds r1, r7, r0
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	ands r0, r1
	lsls r1, r0, #0x0F
	mov r3, r12
	ldr r2, [r3, #0x00]
	ldr r3, _080FB694 @ =0xFFFC7FFF
	ands r2, r3
	orrs r2, r1
	mov r1, r12
	str r2, [r1, #0x00]
	cmp r0, #0x00
	bne _080FB698
	adds r0, r3, #0x0
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	mov r2, r12
	str r0, [r2, #0x00]
	ldr r3, [sp, #0x000]
	ldrb r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	b _080FB6A4
	.byte 0x00, 0x00
_080FB674: .4byte 0x082FBDC4
_080FB678: .4byte 0x0000020F
_080FB67C: .4byte 0x00000276
_080FB680: .4byte 0x0000020D
_080FB684: .4byte 0x0000020E
_080FB688: .4byte 0x00000222
_080FB68C: .4byte 0x00000223
_080FB690: .4byte 0x00000216
_080FB694: .4byte 0xFFFC7FFF
_080FB698:
	ldr r1, [sp, #0x000]
	ldrb r0, [r1, #0x00]
	movs r1, #0x04
	orrs r0, r1
	ldr r2, [sp, #0x000]
	strb r0, [r2, #0x00]
_080FB6A4:
	ldr r2, _080FB6D0 @ =0x0000020F
	mov r3, r10
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	adds r2, r7, r2
	lsrs r1, r1, #0x1F
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FB6D0: .4byte 0x0000020F
