	.syntax unified
	.text

	thumb_func_start sub_8143ADC
sub_8143ADC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	movs r3, #0xEA
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08143B98
	add r4, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143B8C
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143B8C
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrh r0, [r2, #0x00]
	adds r0, r0, r6
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r3, #0x02
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r6
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	adds r3, #0x42
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08143B88 @ =0x08143BE9
	mov r1, r9
	str r0, [r1, #0x00]
	b _08143BD0
_08143B88: .4byte sub_8143BE8
_08143B8C:
	ldrh r1, [r6, #0x1A]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	strh r1, [r0, #0x00]
	b _08143B9C
_08143B98:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08143B9C:
	adds r0, r5, #0x0
	bl sub_813B4C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143BD0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	mov r1, r8
	adds r1, #0xD0
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r0, _08143BE0 @ =0x0813B1E9
	mov r3, r9
	str r0, [r3, #0x00]
	ldr r0, _08143BE4 @ =0x0814396D
	str r0, [r3, #0x0C]
_08143BD0:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143BE0: .4byte sub_813B1E8
_08143BE4: .4byte sub_814396C
