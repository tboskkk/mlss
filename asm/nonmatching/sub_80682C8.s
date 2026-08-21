	.syntax unified
	.text

	thumb_func_start sub_80682C8
sub_80682C8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	bl sub_8082B00
	adds r7, r0, #0x0
	cmp r7, #0x00
	bne _080683B6
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080682E2
	adds r0, #0xFF
_080682E2:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080682EE
	adds r0, #0xFF
_080682EE:
	asrs r0, r0, #0x08
	adds r0, #0x02
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806839C @ =0x0000412B
	movs r2, #0x80
	lsls r2, r2, #0x01
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r5, #0x30]
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r0, _080683A0 @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	movs r2, #0x88
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _080683A4 @ =0x08068819
	str r0, [r3, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080683A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _080683B2
_0806839C: .4byte 0x0000412B
_080683A0: .4byte sub_8087540
_080683A4: .4byte sub_8068818
_080683A8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_080683B2:
	ldr r0, _080683C0 @ =0x080683C5
	str r0, [r5, #0x4C]
_080683B6:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080683C0: .4byte sub_80683C4
