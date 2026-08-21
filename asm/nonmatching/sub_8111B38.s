	.syntax unified
	.text

	thumb_func_start sub_8111B38
sub_8111B38:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08111C12
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08111BB4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x80
	ldr r2, [r1, #0x00]
	adds r0, #0x84
	ldr r7, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r3, #0x06
	adds r5, r3, #0x0
	ands r5, r0
	cmp r5, #0x02
	bne _08111BDC
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08111BBC
	adds r1, r2, #0x0
	adds r1, #0x08
	movs r2, #0x08
	negs r2, r2
	subs r3, #0x08
	movs r4, #0x0A
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, _08111BB8 @ =0x081120E5
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_8111D0C
	adds r1, r7, #0x0
	adds r1, #0x08
	str r4, [sp, #0x000]
	b _08111BC4
_08111BB4: .4byte 0x03000FD8
_08111BB8: .4byte sub_81120E4
_08111BBC:
	adds r1, r2, #0x0
	adds r1, #0x08
	movs r0, #0x0A
	str r0, [sp, #0x000]
_08111BC4:
	str r5, [sp, #0x004]
	ldr r0, _08111BD8 @ =0x0811208D
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8111D0C
	b _08111BFA
	.byte 0x00, 0x00
_08111BD8: .4byte sub_811208C
_08111BDC:
	adds r1, r7, #0x0
	adds r1, #0x08
	movs r2, #0x08
	negs r2, r2
	movs r3, #0x02
	negs r3, r3
	movs r0, #0x0A
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	ldr r0, _08111C1C @ =0x081120E5
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_8111D0C
_08111BFA:
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08111C20 @ =0x0811213D
	str r0, [r6, #0x4C]
	movs r0, #0x87
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08111C12:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111C1C: .4byte sub_81120E4
_08111C20: .4byte sub_811213C
