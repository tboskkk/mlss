	.syntax unified
	.text

	thumb_func_start sub_8143D0C
sub_8143D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	str r2, [sp, #0x010]
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r4, [r0, #0x00]
	ldr r0, _08143D90 @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xC0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r4, #0x0
	bl sub_8047F60
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143D94
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	ldr r2, [sp, #0x010]
	bl sub_814396C
	b _08143E7A
_08143D90: .4byte 0x0000020D
_08143D94:
	adds r0, r6, #0x0
	add r1, sp, #0x00C
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143DA8
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	b _08143DB4
_08143DA8:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08143DB4:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r4, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r7, #0x10]
	subs r3, r1, r0
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r7, r0
	subs r0, #0xD0
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x36]
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _08143DE2
	negs r1, r4
_08143DE2:
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08143DEA
	negs r0, r3
_08143DEA:
	cmp r1, r0
	ble _08143E10
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r4, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08143E30
_08143E10:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	cmp r3, #0x00
	blt _08143E20
	movs r1, #0x05
_08143E20:
	adds r0, #0x21
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_08143E30:
	adds r0, r7, #0x0
	bl sub_8047928
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _08143E8C @ =0x08144239
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
_08143E7A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143E8C: .4byte sub_8144238
