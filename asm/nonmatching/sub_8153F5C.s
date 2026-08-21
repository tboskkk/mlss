	.syntax unified
	.text

	thumb_func_start sub_8153F5C
sub_8153F5C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08154028 @ =0x08CDC9B0
	str r0, [r6, #0x30]
	movs r1, #0x00
	movs r5, #0x00
	strh r4, [r6, #0x3C]
	str r5, [r6, #0x34]
	adds r0, r6, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	adds r0, #0x1C
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	str r5, [r6, #0x38]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xFF
	bl sub_81DD77C
	strh r0, [r6, #0x3E]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r1, _0815402C @ =0x00005008
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x38]
	str r5, [sp, #0x000]
	movs r1, #0x27
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r6, #0x38]
	adds r0, r6, #0x0
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x0E]
	ldr r4, [r6, #0x38]
	adds r5, r6, #0x0
	adds r5, #0x2D
	ldrb r0, [r5, #0x00]
	movs r2, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	ldrb r3, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r6, #0x38]
	ldrb r0, [r5, #0x00]
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r3, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r3, [r6, #0x38]
	ldrb r0, [r5, #0x00]
	ands r2, r0
	lsls r2, r2, #0x04
	ldrb r1, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1F]
	ldr r3, [r6, #0x38]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08154028: .4byte 0x08CDC9B0
_0815402C: .4byte 0x00005008
