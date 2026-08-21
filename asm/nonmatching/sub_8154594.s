	.syntax unified
	.text

	thumb_func_start sub_8154594
sub_8154594:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08154684 @ =0x08CDC6B0
	str r0, [r5, #0x30]
	movs r0, #0x00
	mov r8, r0
	strh r4, [r5, #0x38]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x11]
	movs r6, #0x0D
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r1, _08154688 @ =0x0000500A
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x34]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x02
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x34]
	bl sprite_show_8020CBC
	ldr r2, [r5, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x34]
	movs r0, #0x78
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x34]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x34]
	movs r0, #0x13
	strh r0, [r1, #0x0E]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r2, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	movs r0, #0x0C
	ands r0, r1
	ldrb r1, [r2, #0x1F]
	ands r6, r1
	orrs r6, r0
	strb r6, [r2, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08154684: .4byte 0x08CDC6B0
_08154688: .4byte 0x0000500A
