	.syntax unified
	.text

	thumb_func_start sub_80499B8
sub_80499B8:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x010
	adds r5, r0, #0x0
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0x00
	mov r8, r1
	movs r1, #0x00
	mov r9, r1
	ldr r2, _08049AA4 @ =0x0000800B
	strh r2, [r0, #0x00]
	movs r0, #0xDB
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldr r0, [r6, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x02
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r6, #0x00]
	mov r1, r9
	str r1, [sp, #0x000]
	movs r1, #0x02
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	bl sub_8021ED8
	ldr r0, _08049AA8 @ =0x00000353
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08049AAC @ =0x00000372
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0, #0x00]
	ldr r1, _08049AB0 @ =0x00000373
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0, #0x00]
	movs r1, #0xDD
	lsls r1, r1, #0x02
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r3, [r6, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r5, r0
	ldr r0, [r5, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
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
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08049AA4: .4byte 0x0000800B
_08049AA8: .4byte 0x00000353
_08049AAC: .4byte 0x00000372
_08049AB0: .4byte 0x00000373
