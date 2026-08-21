	.syntax unified
	.text

	thumb_func_start sub_805113C
sub_805113C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r2, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r3, r2, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08051200
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r3, _080511E8 @ =0x0000023B
	adds r1, r2, r3
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0xD3
	lsls r0, r0, #0x02
	adds r5, r2, r0
	ldr r1, [r5, #0x00]
	cmp r1, #0x00
	beq _080511EC
	adds r3, #0x59
	adds r4, r2, r3
	ldr r0, [r4, #0x00]
	bl sub_8020D40
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
	str r1, [r4, #0x00]
	b _08051200
	.byte 0x00, 0x00
_080511E8: .4byte 0x0000023B
_080511EC:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_08051200:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
