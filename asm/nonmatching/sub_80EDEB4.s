	.syntax unified
	.text

	thumb_func_start sub_80EDEB4
sub_80EDEB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r7, r1, #0x0
	adds r6, r3, #0x0
	adds r4, r2, #0x0
	adds r4, #0xA0
	ldrh r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080EDEDE
	adds r0, r7, #0x0
	bl sub_8046980
	ldrh r1, [r4, #0x00]
	ldr r0, _080EDF08 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x00]
_080EDEDE:
	ldrh r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080EDEF6
	adds r0, r7, #0x0
	bl sub_8046A10
	ldrh r1, [r4, #0x00]
	ldr r0, _080EDF0C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r4, #0x00]
_080EDEF6:
	ldm r6!, {r0}
	cmp r0, #0x01
	beq _080EDF1E
	cmp r0, #0x01
	bgt _080EDF10
	cmp r0, #0x00
	beq _080EDF1A
	b _080EDF7A
	.byte 0x00, 0x00
_080EDF08: .4byte 0x0000FFFD
_080EDF0C: .4byte 0x0000FFBF
_080EDF10:
	cmp r0, #0x02
	beq _080EDF32
	cmp r0, #0x03
	beq _080EDF6A
	b _080EDF7A
_080EDF1A:
	ldrb r5, [r6, #0x00]
	b _080EDF7A
_080EDF1E:
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	ldr r1, [r6, #0x00]
	adds r5, r0, r1
	movs r0, #0x07
	ands r5, r0
	b _080EDF7A
_080EDF32:
	ldr r1, [r6, #0x00]
	movs r0, #0x01
	negs r0, r0
	mov r2, r8
	ldr r3, [r2, #0x14]
	cmp r1, r0
	bne _080EDF4E
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	str r0, [r6, #0x00]
_080EDF4E:
	ldr r0, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldr r4, [r0, #0x28]
	mov r0, r8
	adds r0, #0x1C
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	ldr r3, [r4, #0x0C]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x000]
	bl sub_80EA670
	b _080EDF76
_080EDF6A:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x08
	bl sub_81DD77C
_080EDF76:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080EDF7A:
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80478AC
	movs r0, #0x01
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
