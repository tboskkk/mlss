	.syntax unified
	.text

	thumb_func_start sub_80497A8
sub_80497A8:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x010
	adds r5, r0, #0x0
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x00
	mov r9, r3
	movs r1, #0x00
	mov r8, r1
	ldr r2, _080498A4 @ =0x00001054
	strh r2, [r0, #0x00]
	movs r3, #0xDB
	lsls r3, r3, #0x02
	adds r6, r5, r3
	ldr r0, [r6, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r6, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	bl sub_8021ED8
	ldr r3, _080498A8 @ =0x00000353
	adds r2, r5, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080498AC @ =0x00000372
	adds r4, r5, r0
	mov r1, r9
	strb r1, [r4, #0x00]
	adds r3, #0x20
	adds r3, r3, r5
	mov r8, r3
	movs r0, #0xF0
	strb r0, [r3, #0x00]
	movs r0, #0xDD
	lsls r0, r0, #0x02
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xFC
	strb r1, [r0, #0x00]
	ldr r3, [r6, #0x00]
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x11]
	ldr r3, [r6, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r5, r0
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	ldrb r2, [r3, #0x1F]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x1F]
	ldr r3, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x00
	ldsb r0, [r4, r0]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	mov r3, r8
	movs r0, #0x00
	ldsb r0, [r3, r0]
	ldrh r1, [r1, #0x02]
	adds r0, r0, r1
	strh r0, [r2, #0x02]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	mov r3, r9
	movs r0, #0x00
	ldsb r0, [r3, r0]
	ldrh r1, [r1, #0x0E]
	adds r0, r0, r1
	strh r0, [r2, #0x0E]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080498A4: .4byte 0x00001054
_080498A8: .4byte 0x00000353
_080498AC: .4byte 0x00000372
