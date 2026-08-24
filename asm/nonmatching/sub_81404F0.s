	.syntax unified
	.text

	thumb_func_start sub_81404F0
sub_81404F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	mov r9, r0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	adds r0, #0x58
	str r0, [sp, #0x020]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	mov r0, r9
	add r1, sp, #0x010
	bl sub_80FBD44
	movs r2, #0xD4
	lsls r2, r2, #0x01
	adds r0, r6, r2
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldr r3, [r0, #0x00]
	mov r0, r9
	adds r1, r6, #0x0
	bl _call_via_r3
	mov r0, r8
	ldrb r4, [r0, #0x00]
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r7, r6, r1
	ldr r1, [r7, #0x00]
	ldr r0, [r6, #0x14]
	subs r3, r1, r0
	ldr r1, _081405E0 @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r6, r0
	movs r5, #0xFF
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08140558
	adds r0, #0x3F
_08140558:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r3, r0
	str r0, [r6, #0x18]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _08140586
	adds r0, #0x0F
_08140586:
	asrs r0, r0, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	ands r0, r5
	str r0, [r2, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r5, sp, #0x00C
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _081405F8
	mov r2, r8
	ldrh r0, [r2, #0x02]
	ldrh r3, [r2, #0x04]
	lsls r2, r0, #0x0C
	ldr r1, [r7, #0x00]
	ldr r0, [r6, #0x14]
	subs r0, r1, r0
	cmp r0, r2
	ble _081405E4
	subs r0, r1, r3
	str r0, [r7, #0x00]
	ldr r1, [r6, #0x14]
	subs r0, r0, r1
	cmp r0, r2
	bgt _081405F8
	b _081405F4
_081405E0: .4byte word_8198504 @ =0x08198504
_081405E4:
	cmp r0, r2
	bge _081405F8
	adds r0, r1, r3
	str r0, [r7, #0x00]
	ldr r1, [r6, #0x14]
	subs r0, r0, r1
	cmp r0, r2
	blt _081405F8
_081405F4:
	adds r0, r1, r2
	str r0, [r7, #0x00]
_081405F8:
	movs r3, #0x01
	mov r8, r3
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	cmp r8, r0
	blt _0814060E
	b _0814076A
_0814060E:
	movs r2, #0x21
	negs r2, r2
	mov r10, r2
_08140614:
	adds r0, r6, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	mov r3, r8
	lsls r1, r3, #0x02
	lsls r0, r0, #0x02
	add r0, r9
	adds r1, r1, r0
	ldr r4, [r1, #0x28]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	beq _081406B4
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, _081406A8 @ =0x08142A6D
	str r0, [r1, #0x00]
	ldr r3, _081406AC @ =0x00000212
	adds r2, r4, r3
	ldrh r0, [r2, #0x00]
	ldr r3, _081406B0 @ =0xFFFFFE7F
	adds r1, r3, #0x0
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	bl sub_8047F60
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	mov r0, r10
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	movs r3, #0x41
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	adds r3, #0x3F
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	mov r0, r10
	ands r0, r1
	strb r0, [r5, #0x00]
	b _0814074E
	.byte 0x00, 0x00
_081406A8: .4byte nullsub_8
_081406AC: .4byte 0x00000212
_081406B0: .4byte 0xFFFFFE7F
_081406B4:
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	ldr r1, _0814078C @ =0x02000001
	ands r0, r1
	cmp r0, r1
	bne _0814074E
	ldr r1, _08140790 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081406E8
	ldr r2, _08140794 @ =0x00000212
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bne _0814074E
_081406E8:
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08140798 @ =0x08142A6D
	str r0, [r1, #0x00]
	ldr r1, _08140794 @ =0x00000212
	adds r2, r4, r1
	ldrh r0, [r2, #0x00]
	ldr r3, _0814079C @ =0xFFFFFE7F
	adds r1, r3, #0x0
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	adds r0, r4, #0x0
	bl sub_8047F60
	ldrb r0, [r5, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	movs r2, #0x41
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r5, #0x00]
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814074E:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	cmp r8, r0
	bge _0814076A
	b _08140614
_0814076A:
	ldr r3, [sp, #0x020]
	movs r0, #0xA4
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldr r3, [r2, #0x00]
	mov r0, r9
	adds r1, r6, #0x0
	bl _call_via_r3
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814078C: .4byte 0x02000001
_08140790: .4byte 0x00000216
_08140794: .4byte 0x00000212
_08140798: .4byte nullsub_8
_0814079C: .4byte 0xFFFFFE7F
