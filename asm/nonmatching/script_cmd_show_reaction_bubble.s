	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r5, r2, #0x0
	ldr r1, [r5, #0x00]
	ldr r2, [r0, #0x14]
	lsls r0, r1, #0x02
	adds r0, r0, r2
	ldr r4, [r0, #0x28]
	movs r0, #0x00
	str r0, [sp, #0x010]
	str r0, [sp, #0x00C]
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080EEBB2
	add r3, sp, #0x010
	adds r0, r2, #0x0
	add r2, sp, #0x00C
	bl get_fobj_screen_pos
	ldr r1, _080EEC0C @ =0x00000283
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	ldr r0, [sp, #0x010]
	subs r0, r0, r1
	str r0, [sp, #0x010]
_080EEBB2:
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x04]
	cmp r0, #0xFF
	bne _080EEBC2
	ldr r0, _080EEC10 @ =0x083B950C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	str r0, [r5, #0x14]
_080EEBC2:
	ldr r6, _080EEC14 @ =0x03000FC8
	ldr r0, [r6, #0x00]
	ldrb r1, [r5, #0x00]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r5, #0x08]
	movs r7, #0x0C
	ldsh r4, [r5, r7]
	str r4, [sp, #0x000]
	movs r7, #0x10
	ldsh r4, [r5, r7]
	str r4, [sp, #0x004]
	ldrb r4, [r5, #0x14]
	str r4, [sp, #0x008]
	bl sub_80E8878
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x3F
	beq _080EEC00
	ldr r0, [r6, #0x00]
	lsls r2, r3, #0x04
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r2, [sp, #0x00C]
	strh r2, [r1, #0x08]
	ldr r2, [sp, #0x010]
	strh r2, [r1, #0x0A]
	adds r1, r3, #0x0
	bl sub_80E8E78
_080EEC00:
	movs r0, #0x01
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EEC0C: .4byte 0x00000283
_080EEC10: .4byte 0x083B950C
_080EEC14: .4byte 0x03000FC8
