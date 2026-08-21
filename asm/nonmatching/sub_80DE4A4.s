	.syntax unified
	.text

	thumb_func_start sub_80DE4A4
sub_80DE4A4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080DE4B8
	b _080DE5C6
_080DE4B8:
	ldr r5, [r6, #0x28]
	ldr r1, _080DE5D0 @ =0x00000113
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080DE5A2
	adds r7, r6, #0x0
	adds r7, #0xA8
	ldrh r1, [r7, #0x00]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080DE4D6
	adds r0, #0xFF
_080DE4D6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080DE4E4
	adds r0, #0xFF
_080DE4E4:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080DE4F0
	adds r0, #0xFF
_080DE4F0:
	asrs r0, r0, #0x08
	adds r0, #0x14
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x77
	adds r2, r2, r6
	mov r12, r2
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080DE5D4 @ =0x080DEA2D
	str r0, [r5, #0x4C]
	ldr r0, _080DE5D8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080DE5DC @ =0x080DE9F1
	str r0, [r5, #0x58]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080DE5A2:
	movs r0, #0x00
	str r0, [r6, #0x6C]
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
	ldr r0, _080DE5E0 @ =0x080DEA99
	str r0, [r6, #0x4C]
_080DE5C6:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DE5D0: .4byte 0x00000113
_080DE5D4: .4byte sub_80DEA2C
_080DE5D8: .4byte sub_8087540
_080DE5DC: .4byte sub_80DE9F0
_080DE5E0: .4byte sub_80DEA98
