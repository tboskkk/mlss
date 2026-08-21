	.syntax unified
	.text

	thumb_func_start sub_814CC84
sub_814CC84:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r1, #0x0
	mov r8, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	ldr r0, _0814CCD4 @ =0x0000020D
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0814CCDC
	ldr r0, [r6, #0x0C]
	ldr r2, _0814CCD8 @ =0xFFFFFD00
	b _0814CCE2
	.byte 0x00, 0x00
_0814CCD4: .4byte 0x0000020D
_0814CCD8: .4byte 0xFFFFFD00
_0814CCDC:
	ldr r0, [r6, #0x0C]
	movs r2, #0xC0
	lsls r2, r2, #0x02
_0814CCE2:
	adds r1, r0, r2
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	movs r0, #0xC8
	lsls r0, r0, #0x05
	adds r3, r3, r0
	ldr r0, [r6, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #0x05
	strh r1, [r0, #0x00]
	ldr r2, _0814CD9C @ =0x00000272
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r1, _0814CDA0 @ =0x0000027A
	adds r0, r5, r1
	movs r1, #0xA0
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x38]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x48
	adds r0, r6, r2
	ldr r3, [r0, #0x00]
	ldrb r1, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
	adds r2, r5, r2
	ldr r0, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r4, [sp, #0x000]
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_801E150
	ldr r0, _0814CDA4 @ =0x0000020E
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814CDA8 @ =0x0814CDAD
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814CD9C: .4byte 0x00000272
_0814CDA0: .4byte 0x0000027A
_0814CDA4: .4byte 0x0000020E
_0814CDA8: .4byte sub_814CDAC
