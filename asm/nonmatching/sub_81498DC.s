	.syntax unified
	.text

	thumb_func_start sub_81498DC
sub_81498DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
	mov r4, sp
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	strb r0, [r4, #0x00]
	mov r0, sp
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08149930
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	b _08149942
_08149930:
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	adds r1, r1, r2
	ldr r2, _08149984 @ =0xFFFFDC00
	adds r1, r1, r2
	str r1, [r0, #0x00]
_08149942:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149988 @ =0x0814B989
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149984: .4byte 0xFFFFDC00
_08149988: .4byte sub_814B988
