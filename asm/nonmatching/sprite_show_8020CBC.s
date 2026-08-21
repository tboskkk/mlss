	.syntax unified
	.text

	thumb_func_start sprite_show_8020CBC
sprite_show_8020CBC:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08020D2E
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x12]
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	beq _08020D2E
	ldrb r0, [r4, #0x1E]
	lsrs r0, r0, #0x04
	ldrh r1, [r4, #0x1C]
	adds r2, r4, #0x0
	adds r2, #0x29
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x1B
	lsrs r2, r2, #0x1F
	movs r3, #0x01
	str r3, [sp, #0x000]
	adds r3, r4, #0x0
	adds r3, #0x14
	str r3, [sp, #0x004]
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x008]
	movs r3, #0x01
	bl sub_8021574
	cmp r0, #0x02
	bne _08020D14
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	b _08020D2C
_08020D14:
	ldr r0, _08020D38 @ =0x0300034C
	ldr r1, _08020D3C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	ldrb r2, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
_08020D2C:
	strb r0, [r4, #0x13]
_08020D2E:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08020D38: .4byte 0x0300034C
_08020D3C: .4byte 0x00000888
