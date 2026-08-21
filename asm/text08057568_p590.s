	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8140200
sub_8140200:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r4
	mov r10, r1
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r7, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	adds r2, #0x26
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08140240
	b _08140376
_08140240:
	adds r0, r4, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814024E
	b _081403A2
_0814024E:
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140262
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814026E
_08140262:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814026E:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r5, [r0, #0x28]
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08140298
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814029A
_08140298:
	movs r0, #0xFF
_0814029A:
	strb r0, [r4, #0x02]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrh r6, [r6, #0x08]
	cmp r6, #0x00
	beq _08140336
	ldr r1, _081402F8 @ =0x0000020D
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8142A10
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	beq _08140304
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _081402FC @ =0x0813B1E9
	mov r2, r8
	str r0, [r2, #0x00]
	ldr r0, _08140300 @ =0x0813FDF5
	str r0, [r2, #0x0C]
	b _081403A2
_081402F8: .4byte 0x0000020D
_081402FC: .4byte sub_813B1E8
_08140300: .4byte sub_813FDF4
_08140304:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	add r2, r9
	ldrh r0, [r2, #0x00]
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r3, [r0, #0x36]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	mov r0, sp
	strb r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	b _08140366
_08140336:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	add r2, r9
	ldrh r0, [r2, #0x00]
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r3, [r0, #0x36]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	mov r0, sp
	strb r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
_08140366:
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _081403A2
_08140376:
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081403A2
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x3E
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081403B4 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _081403B8 @ =0x0813FDF5
	str r0, [r1, #0x0C]
_081403A2:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081403B4: .4byte sub_813B1E8
_081403B8: .4byte sub_813FDF4
	thumb_func_start sub_81403BC
sub_81403BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	adds r5, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r7, [r0, #0x00]
	ldr r4, _081403F4 @ =0x0000033E
	adds r2, r5, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0x01
	b _0814042C
	.byte 0x00, 0x00
_081403F4: .4byte 0x0000033E
_081403F8:
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	lsls r1, r6, #0x02
	lsls r0, r0, #0x02
	add r0, r10
	adds r1, r1, r0
	ldr r4, [r1, #0x28]
	ldr r0, _081404D4 @ =0x0000033E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r6, #0x1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0814042C:
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	cmp r6, r0
	blt _081403F8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xBC
	lsls r1, r1, #0x01
	add r1, r8
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	add r0, r9
	ldrb r0, [r0, #0x16]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	add r2, r8
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r2, [r0, #0x06]
	ldr r4, _081404D8 @ =0x0000023E
	adds r1, r5, r4
	strh r2, [r1, #0x00]
	ldrh r1, [r0, #0x06]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r4, #0xAE
	adds r2, r5, r4
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r3, [r0, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x01]
	adds r4, #0x0C
	adds r0, r5, r4
	strh r1, [r0, #0x00]
	ldr r0, _081404DC @ =0x0000020E
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _081404E0 @ =0x0000020D
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081404E4 @ =0x081404F1
	str r0, [r1, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081404E8 @ =0x081407A1
	str r0, [r1, #0x00]
	movs r1, #0xA8
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081404EC @ =0x08140FAD
	str r0, [r1, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081404D4: .4byte 0x0000033E
_081404D8: .4byte 0x0000023E
_081404DC: .4byte 0x0000020E
_081404E0: .4byte 0x0000020D
_081404E4: .4byte sub_81404F0
_081404E8: .4byte sub_81407A0
_081404EC: .4byte sub_8140FAC
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
_081405E0: .4byte 0x08198504
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
	thumb_func_start sub_81407A0
sub_81407A0:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08140828
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r5
	ldrb r0, [r0, #0x1E]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _08140830 @ =0x03001038
	ldr r0, _08140834 @ =0x0819832C
	ldr r1, _08140838 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, _0814083C @ =0x08140841
	str r0, [r6, #0x00]
_08140828:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08140830: .4byte 0x03001038
_08140834: .4byte 0x0819832C
_08140838: .4byte 0x08198220
_0814083C: .4byte sub_8140840
	thumb_func_start sub_8140840
sub_8140840:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x058
	str r0, [sp, #0x038]
	mov r10, r1
	str r2, [sp, #0x03C]
	mov r0, r10
	adds r0, #0x58
	str r0, [sp, #0x040]
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x044]
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x048]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0x2C
	ldsh r0, [r0, r1]
	cmp r0, #0x5F
	bgt _0814087E
	b _08140E38
_0814087E:
	ldr r0, [sp, #0x038]
	add r1, sp, #0x020
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140898
	add r0, sp, #0x020
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x038]
	adds r0, r0, r2
	b _081408AA
_08140898:
	ldr r3, [sp, #0x038]
	movs r4, #0x82
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r0, r0, r3
_081408AA:
	ldr r0, [r0, #0x28]
	mov r9, r0
	ldr r1, [sp, #0x040]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r3, [r0, #0x00]
	adds r3, #0x22
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x11
	bl sub_8139BB0
	ldr r3, _081409C0 @ =0x00007FFF
	str r3, [sp, #0x000]
	add r0, sp, #0x010
	mov r1, r10
	mov r2, r9
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081408DE
	b _08140E38
_081408DE:
	movs r3, #0x00
	str r3, [sp, #0x04C]
	ldr r4, [sp, #0x048]
	ldrb r4, [r4, #0x01]
	cmp r3, r4
	bcs _08140934
_081408EA:
	ldr r0, [sp, #0x04C]
	lsls r3, r0, #0x03
	adds r3, #0x02
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x22
	bl sub_8139BB0
	add r0, sp, #0x010
	mov r1, r9
	ldr r2, _081409C0 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814090E
	b _08140E38
_0814090E:
	add r0, sp, #0x010
	mov r1, r10
	ldr r2, _081409C0 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140922
	b _08140E38
_08140922:
	ldr r0, [sp, #0x04C]
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x04C]
	ldr r1, [sp, #0x048]
	ldrb r1, [r1, #0x01]
	cmp r0, r1
	bcc _081408EA
_08140934:
	ldr r2, [sp, #0x040]
	movs r3, #0xBE
	lsls r3, r3, #0x01
	adds r1, r2, r3
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r10
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r4, #0x01
	str r4, [sp, #0x04C]
	cmp r4, r2
	bcc _0814095A
	b _08140DD4
_0814095A:
	mov r0, r10
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r3, [sp, #0x04C]
	lsls r1, r3, #0x02
	lsls r0, r0, #0x02
	ldr r4, [sp, #0x038]
	adds r0, r0, r4
	adds r1, r1, r0
	ldr r1, [r1, #0x28]
	mov r8, r1
	movs r0, #0x83
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r1, _081409C4 @ =0x02000001
	ands r0, r1
	cmp r0, #0x00
	beq _08140982
	b _08140DC4
_08140982:
	ldr r0, _081409C8 @ =0x00000212
	add r0, r8
	ldrh r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x01
	ands r1, r0
	cmp r1, #0x80
	bne _08140994
	b _08140DC4
_08140994:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _0814099E
	b _08140DC4
_0814099E:
	add r2, sp, #0x024
	add r3, sp, #0x028
	movs r5, #0x80
	lsls r5, r5, #0x06
	adds r4, r5, #0x0
	mov r0, r9
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bhi _08140A5C
	lsls r0, r0, #0x02
	ldr r1, _081409CC @ =0x081409D0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_081409C0: .4byte 0x00007FFF
_081409C4: .4byte 0x02000001
_081409C8: .4byte 0x00000212
_081409CC: .4byte 0x081409D0
	.byte 0xF0, 0x09, 0x14, 0x08, 0x00, 0x0A, 0x14, 0x08, 0x10, 0x0A, 0x14, 0x08, 0x1A, 0x0A, 0x14, 0x08
	.byte 0x22, 0x0A, 0x14, 0x08, 0x2C, 0x0A, 0x14, 0x08, 0x3C, 0x0A, 0x14, 0x08, 0x4C, 0x0A, 0x14, 0x08
	.byte 0x00, 0x20, 0x10, 0x60, 0x01, 0x48, 0x18, 0x60, 0x00, 0x20, 0x30, 0xE0, 0x00, 0xE0, 0xFF, 0xFF
	.byte 0x14, 0x60, 0x02, 0x48, 0x18, 0x60, 0x01, 0x20, 0x29, 0xE0, 0x00, 0x00, 0x00, 0xE0, 0xFF, 0xFF
	.byte 0x14, 0x60, 0x00, 0x20, 0x18, 0x60, 0x02, 0x20, 0x21, 0xE0, 0x14, 0x60, 0x1D, 0x60, 0x03, 0x20
	.byte 0x1D, 0xE0, 0x00, 0x20, 0x10, 0x60, 0x1D, 0x60, 0x04, 0x20, 0x18, 0xE0, 0x02, 0x48, 0x10, 0x60
	.byte 0x1D, 0x60, 0x05, 0x20, 0x13, 0xE0, 0x00, 0x00, 0x00, 0xE0, 0xFF, 0xFF, 0x02, 0x48, 0x10, 0x60
	.byte 0x00, 0x20, 0x18, 0x60, 0x06, 0x20, 0x0A, 0xE0, 0x00, 0xE0, 0xFF, 0xFF, 0x02, 0x48, 0x10, 0x60
	.byte 0x18, 0x60, 0x07, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x00, 0xE0, 0xFF, 0xFF
_08140A5C:
	movs r0, #0xFF
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x07
	bhi _08140AD2
	lsls r0, r0, #0x02
	ldr r1, _08140A70 @ =0x08140A74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08140A70: .4byte 0x08140A74
	.byte 0x94, 0x0A, 0x14, 0x08, 0x9C, 0x0A, 0x14, 0x08, 0xA4, 0x0A, 0x14, 0x08, 0xAC, 0x0A, 0x14, 0x08
	.byte 0xB2, 0x0A, 0x14, 0x08, 0xBA, 0x0A, 0x14, 0x08, 0xC2, 0x0A, 0x14, 0x08, 0xCA, 0x0A, 0x14, 0x08
	.byte 0x00, 0x25, 0xFF, 0x20, 0x14, 0x90, 0x1D, 0xE0, 0x01, 0x25, 0xFF, 0x21, 0x14, 0x91, 0x19, 0xE0
	.byte 0x01, 0x25, 0x00, 0x22, 0x14, 0x92, 0x15, 0xE0, 0x01, 0x25, 0x01, 0x23, 0x11, 0xE0, 0x00, 0x25
	.byte 0x01, 0x24, 0x14, 0x94, 0x0E, 0xE0, 0xFF, 0x25, 0x01, 0x20, 0x14, 0x90, 0x0A, 0xE0, 0xFF, 0x25
	.byte 0x00, 0x21, 0x14, 0x91, 0x06, 0xE0, 0xFF, 0x25, 0xFF, 0x22, 0x14, 0x92, 0x02, 0xE0
_08140AD2:
	movs r5, #0x00
	movs r3, #0x00
	str r3, [sp, #0x050]
	ldr r0, _08140DA4 @ =0x00000242
	add r0, r9
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	beq _08140AEA
	ldr r0, [sp, #0x024]
	lsls r0, r0, #0x02
	str r0, [sp, #0x024]
_08140AEA:
	movs r0, #0x91
	lsls r0, r0, #0x02
	add r0, r9
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08140AFE
	ldr r0, [sp, #0x028]
	lsls r0, r0, #0x02
	str r0, [sp, #0x028]
_08140AFE:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	mov r2, r9
	ldr r1, [r2, #0x0C]
	ldr r2, [sp, #0x024]
	adds r1, r1, r2
	mov r3, r9
	ldr r2, [r3, #0x10]
	ldr r3, [sp, #0x028]
	adds r2, r2, r3
	mov r4, sp
	adds r4, #0x2C
	str r4, [sp, #0x054]
	add r7, sp, #0x030
	str r7, [sp, #0x000]
	add r6, sp, #0x034
	str r6, [sp, #0x004]
	add r4, sp, #0x008
	movs r3, #0x00
	strb r3, [r4, #0x00]
	add r4, sp, #0x00C
	movs r3, #0x01
	strb r3, [r4, #0x00]
	ldr r3, [sp, #0x054]
	bl sub_803FBA4
	adds r4, r0, #0x0
	mov r0, r9
	ldr r2, [r0, #0x0C]
	ldr r0, [sp, #0x024]
	adds r2, r2, r0
	mov r1, r9
	ldr r3, [r1, #0x10]
	ldr r0, [sp, #0x028]
	adds r3, r3, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	ldr r0, [sp, #0x038]
	mov r1, r8
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140B62
	b _08140E38
_08140B62:
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08140B6E
	b _08140E38
_08140B6E:
	mov r2, r9
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	bge _08140B7A
	ldr r3, _08140DA8 @ =0x00000FFF
	adds r1, r1, r3
_08140B7A:
	asrs r1, r1, #0x0C
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r4, r10
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08140B8E
	ldr r0, _08140DA8 @ =0x00000FFF
	adds r2, r2, r0
_08140B8E:
	asrs r2, r2, #0x0C
	ldr r3, [sp, #0x050]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	str r6, [sp, #0x004]
	mov r0, r10
	ldr r3, [sp, #0x054]
	bl sub_80457E8
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08140BB2
	b _08140E38
_08140BB2:
	mov r4, r9
	ldr r1, [r4, #0x0C]
	ldr r0, [sp, #0x024]
	adds r7, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #0x028]
	adds r6, r1, r0
	movs r5, #0x00
	ldr r0, [sp, #0x048]
	ldrb r0, [r0, #0x01]
	cmp r5, r0
	bcs _08140C12
	add r4, sp, #0x010
_08140BCC:
	lsls r3, r5, #0x03
	adds r3, #0x02
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x22
	bl sub_8139BB0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	cmp r7, r0
	blt _08140C04
	movs r2, #0x02
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r7, r0
	bgt _08140C04
	movs r3, #0x06
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x08
	cmp r6, r0
	blt _08140C04
	movs r1, #0x04
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	cmp r6, r0
	bgt _08140C04
	b _08140E38
_08140C04:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #0x048]
	ldrb r2, [r2, #0x01]
	cmp r5, r2
	bcc _08140BCC
_08140C12:
	ldr r5, _08140DAC @ =0x03001038
	ldr r4, _08140DB0 @ =0x0819832C
	ldr r0, _08140DB4 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [sp, #0x024]
	movs r1, #0x02
	bl _call_via_r2
	mov r3, r9
	ldr r1, [r3, #0x0C]
	adds r7, r1, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [sp, #0x028]
	movs r1, #0x02
	bl _call_via_r2
	mov r4, r9
	ldr r1, [r4, #0x10]
	adds r6, r1, r0
	movs r5, #0x00
	ldr r0, [sp, #0x048]
	ldrb r0, [r0, #0x01]
	cmp r5, r0
	bcs _08140C90
	add r4, sp, #0x010
_08140C4A:
	lsls r3, r5, #0x03
	adds r3, #0x02
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x22
	bl sub_8139BB0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	cmp r7, r0
	blt _08140C82
	movs r2, #0x02
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r7, r0
	bgt _08140C82
	movs r3, #0x06
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x08
	cmp r6, r0
	blt _08140C82
	movs r1, #0x04
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	cmp r6, r0
	bgt _08140C82
	b _08140E38
_08140C82:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #0x048]
	ldrb r2, [r2, #0x01]
	cmp r5, r2
	bcc _08140C4A
_08140C90:
	movs r5, #0xCC
	lsls r5, r5, #0x01
	add r5, r8
	ldr r4, _08140DB8 @ =0x08142A71
	str r4, [r5, #0x00]
	mov r0, r8
	movs r1, #0x01
	bl sub_804776C
	mov r0, r8
	movs r1, #0x01
	bl sub_804761C
	str r4, [r5, #0x00]
	ldr r3, _08140DBC @ =0x0000020D
	add r3, r8
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r2, _08140DC0 @ =0x0000020E
	add r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	mov r3, r10
	ldr r1, [r3, #0x0C]
	ldr r2, [r3, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r2, r2, r4
	ldr r3, [r3, #0x14]
	mov r4, r10
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	mov r0, r8
	bl sub_8047F60
	mov r2, r8
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r1, r1, r0
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r1, r1, r3
	str r5, [sp, #0x000]
	mov r0, r8
	movs r2, #0xA0
	movs r3, #0x00
	bl sub_813B394
	ldr r4, [sp, #0x040]
	movs r1, #0xBE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r4, #0x00
	add r2, sp, #0x04C
	ldrh r2, [r2, #0x00]
	strh r2, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	mov r0, r9
	ldr r1, [r0, #0x0C]
	ldr r0, [sp, #0x024]
	adds r1, r1, r0
	mov r0, r9
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	mov r0, sp
	strb r4, [r0, #0x00]
	mov r0, r8
	bl sub_813A284
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xCF
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x01
	orrs r1, r0
	movs r0, #0x07
	negs r0, r0
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	add r4, r8
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	subs r0, #0x0A
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	b _08140DD4
_08140DA4: .4byte 0x00000242
_08140DA8: .4byte 0x00000FFF
_08140DAC: .4byte 0x03001038
_08140DB0: .4byte 0x0819832C
_08140DB4: .4byte 0x08198220
_08140DB8: .4byte sub_8142A70
_08140DBC: .4byte 0x0000020D
_08140DC0: .4byte 0x0000020E
_08140DC4:
	ldr r0, [sp, #0x04C]
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x04C]
	cmp r0, r2
	bcs _08140DD4
	b _0814095A
_08140DD4:
	ldr r1, [sp, #0x040]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08140E38
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r10
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, _08140E48 @ =0x03001038
	ldr r0, _08140E4C @ =0x0819832C
	ldr r1, _08140E50 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r10
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r0, r10
	movs r2, #0x00
	bl sub_8047154
	ldr r3, [sp, #0x040]
	movs r4, #0xBC
	lsls r4, r4, #0x01
	adds r0, r3, r4
	ldrh r0, [r0, #0x00]
	ldr r1, [sp, #0x044]
	adds r0, r0, r1
	ldrb r0, [r0, #0x16]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	ldr r0, _08140E54 @ =0x081407A1
	ldr r3, [sp, #0x03C]
	str r0, [r3, #0x00]
_08140E38:
	add sp, #0x058
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08140E48: .4byte 0x03001038
_08140E4C: .4byte 0x0819832C
_08140E50: .4byte 0x08198220
_08140E54: .4byte sub_81407A0
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x84, 0xB0, 0x89, 0x46, 0x54, 0x31
	.byte 0x0A, 0x78, 0xEA, 0x21, 0x49, 0x00, 0x49, 0x44, 0x09, 0x88, 0x89, 0x00, 0x92, 0x00, 0x12, 0x18
	.byte 0x89, 0x18, 0x8D, 0x6A, 0xDA, 0x20, 0x40, 0x00, 0x48, 0x44, 0x00, 0x68, 0x82, 0x46, 0x45, 0x49
	.byte 0x68, 0x18, 0x00, 0x22, 0x81, 0x5E, 0xE8, 0x68, 0x40, 0x18, 0x80, 0x46, 0x91, 0x21, 0x89, 0x00
	.byte 0x68, 0x18, 0x00, 0x22, 0x81, 0x5E, 0x28, 0x69, 0x47, 0x18, 0x3F, 0x49, 0x68, 0x18, 0x00, 0x88
	.byte 0x00, 0x28, 0x50, 0xD0, 0x00, 0x26, 0x52, 0x46, 0x52, 0x78, 0x96, 0x42, 0x4B, 0xD2, 0x6C, 0x46
	.byte 0xF3, 0x00, 0x02, 0x33, 0x68, 0x46, 0x49, 0x46, 0x22, 0x22, 0xF8, 0xF7, 0x75, 0xFE, 0x00, 0x21
	.byte 0x60, 0x5E, 0x00, 0x02, 0xE9, 0x68, 0x81, 0x42, 0x0F, 0xDB, 0x02, 0x22, 0xA0, 0x5E, 0x00, 0x02
	.byte 0x81, 0x42, 0x0A, 0xDC, 0x06, 0x21, 0x60, 0x5E, 0x00, 0x02, 0x29, 0x69, 0x81, 0x42, 0x04, 0xDB
	.byte 0x04, 0x22, 0xA0, 0x5E, 0x00, 0x02, 0x81, 0x42, 0x26, 0xDD, 0x00, 0x21, 0x60, 0x5E, 0x00, 0x02
	.byte 0x80, 0x45, 0x21, 0xDB, 0x02, 0x22, 0xA0, 0x5E, 0x00, 0x02, 0x80, 0x45, 0x1C, 0xDC, 0x06, 0x21
	.byte 0x60, 0x5E, 0x00, 0x02, 0x87, 0x42, 0x17, 0xDB, 0x04, 0x22, 0xA0, 0x5E, 0x00, 0x02, 0x87, 0x42
	.byte 0x12, 0xDC, 0x20, 0x49, 0x68, 0x18, 0x00, 0x22, 0x81, 0x5E, 0xE8, 0x68, 0x40, 0x1A, 0xE8, 0x60
	.byte 0x91, 0x21, 0x89, 0x00, 0x68, 0x18, 0x00, 0x22, 0x81, 0x5E, 0x28, 0x69, 0x40, 0x1A, 0x28, 0x61
	.byte 0x19, 0x48, 0x29, 0x18, 0x00, 0x20, 0x08, 0x80, 0x70, 0x1C, 0x00, 0x06, 0x06, 0x0E, 0x51, 0x46
	.byte 0x49, 0x78, 0x8E, 0x42, 0xB4, 0xD3, 0x28, 0x1C, 0xFA, 0xF7, 0x7E, 0xFB, 0x28, 0x1C, 0xF9, 0xF7
	.byte 0x4B, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x14, 0xD1, 0x10, 0x48, 0x2A, 0x18, 0x10, 0x78, 0x40, 0x21
	.byte 0x08, 0x43, 0x10, 0x70, 0x0E, 0x49, 0x6A, 0x18, 0x11, 0x78, 0x05, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x10, 0x70, 0x28, 0x1C, 0x00, 0x21, 0x00, 0x22, 0x06, 0xF7, 0xE8, 0xF8, 0x48, 0x46, 0x01, 0xF0
	.byte 0x19, 0xFD, 0x04, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x42, 0x02, 0x00, 0x00, 0xDE, 0x02, 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00
	.byte 0x0E, 0x02, 0x00, 0x00
	thumb_func_start sub_8140FAC
sub_8140FAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r10, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r7, [r0, #0x00]
	add r4, sp, #0x014
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140FEA
	ldrb r0, [r4, #0x00]
	b _08140FF6
_08140FEA:
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08140FF6:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r5, [r0, #0x28]
	movs r0, #0x00
	strb r0, [r4, #0x00]
	ldrb r0, [r7, #0x01]
	cmp r0, #0x00
	beq _08141038
_08141006:
	ldrb r3, [r4, #0x00]
	lsls r3, r3, #0x03
	adds r3, #0x02
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x22
	bl sub_8139BB0
	add r0, sp, #0x004
	adds r1, r5, #0x0
	ldr r2, _08141058 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081410BE
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r7, #0x01]
	cmp r0, r1
	bcc _08141006
_08141038:
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldr r0, _0814105C @ =0x08140841
	cmp r1, r0
	bne _08141060
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x0E]
	movs r3, #0xB6
	lsls r3, r3, #0x02
	adds r0, r6, r3
	b _08141074
_08141058: .4byte 0x00007FFF
_0814105C: .4byte sub_8140840
_08141060:
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x06]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r6, r2
_08141074:
	strh r1, [r0, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814109A
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814109C
_0814109A:
	movs r0, #0xFF
_0814109C:
	movs r4, #0x00
	strb r0, [r6, #0x02]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	movs r3, #0xB6
	lsls r3, r3, #0x02
	adds r0, r6, r3
	movs r5, #0x00
	ldsh r3, [r0, r5]
	mov r0, sp
	strb r4, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	adds r0, r6, #0x0
	bl sub_813B650
_081410BE:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81410D0
sub_81410D0:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0x0
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r7, [r1, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r4, r5, r3
	ldr r3, [r4, #0x00]
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r4, [r4, #0x00]
	ldr r0, _0814118C @ =0x08141251
	cmp r4, r0
	beq _081411B4
	ldr r0, _08141190 @ =0x08141371
	cmp r4, r0
	beq _081411B4
	ldr r0, _08141194 @ =0x08142881
	cmp r4, r0
	beq _081411B4
	ldr r0, _08141198 @ =0x0814281D
	cmp r4, r0
	beq _081411B4
	adds r0, r7, #0x0
	adds r0, #0x22
	ldrb r4, [r0, #0x00]
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x14]
	subs r3, r1, r0
	ldr r1, _0814119C @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r0, #0xFF
	mov r12, r0
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08141134
	adds r0, #0x3F
_08141134:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r3, r0
	str r0, [r5, #0x18]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _08141162
	adds r0, #0x0F
_08141162:
	asrs r0, r0, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	mov r1, r12
	ands r0, r1
	str r0, [r2, #0x00]
	ldrh r0, [r7, #0x24]
	ldrh r3, [r7, #0x26]
	lsls r1, r0, #0x0C
	ldr r2, [r6, #0x00]
	ldr r0, [r5, #0x14]
	subs r0, r2, r0
	cmp r0, r1
	ble _081411A0
	subs r0, r2, r3
	str r0, [r6, #0x00]
	ldr r4, [r5, #0x14]
	subs r0, r0, r4
	cmp r0, r1
	bgt _081411B4
	b _081411B0
_0814118C: .4byte sub_8141250
_08141190: .4byte sub_8141370
_08141194: .4byte sub_8142880
_08141198: .4byte sub_814281C
_0814119C: .4byte 0x08198504
_081411A0:
	cmp r0, r1
	bge _081411B4
	adds r0, r2, r3
	str r0, [r6, #0x00]
	ldr r4, [r5, #0x14]
	subs r0, r0, r4
	cmp r0, r1
	blt _081411B4
_081411B0:
	adds r0, r4, r1
	str r0, [r6, #0x00]
_081411B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81411BC
sub_81411BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r4
	mov r8, r1
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08141208
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl sub_813F954
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141204
	ldr r0, _08141200 @ =0x08141251
	str r0, [r6, #0x00]
	b _0814123A
_08141200: .4byte sub_8141250
_08141204:
	ldrh r0, [r7, #0x1A]
	b _0814120A
_08141208:
	subs r0, #0x01
_0814120A:
	strh r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814123A
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _08141248 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _0814124C @ =0x081428FD
	str r0, [r6, #0x0C]
_0814123A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08141248: .4byte sub_813B1E8
_0814124C: .4byte sub_81428FC
	thumb_func_start sub_8141250
sub_8141250:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141282
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0814128E
_08141282:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814128E:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r3, r6, r1
	strh r0, [r3, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r8
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _08141308 @ =0x03001038
	ldr r0, _0814130C @ =0x0819832C
	ldr r1, _08141310 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r7, r1, r0
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141314
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141318
_08141308: .4byte 0x03001038
_0814130C: .4byte 0x0819832C
_08141310: .4byte 0x08198220
_08141314:
	movs r1, #0x01
	negs r1, r1
_08141318:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r7
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, #0x04
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814136C @ =0x08141371
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814136C: .4byte sub_8141370
	thumb_func_start sub_8141370
sub_8141370:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0814139A
	b _081414D8
_0814139A:
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081413AE
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _081413BA
_081413AE:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081413BA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r2, _081413F8 @ =0x03001038
	ldr r0, _081413FC @ =0x0819832C
	ldr r1, _08141400 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r7, r1, r0
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141404
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141408
_081413F8: .4byte 0x03001038
_081413FC: .4byte 0x0819832C
_08141400: .4byte 0x08198220
_08141404:
	movs r1, #0x01
	negs r1, r1
_08141408:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r7
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _081414C8 @ =0x03001038
	ldr r0, _081414CC @ =0x0819832C
	ldr r1, _081414D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r7
	beq _0814143E
	adds r1, r7, #0x4
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
_0814143E:
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081414F8
	ldr r1, _081414D4 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x04
	ldr r1, [r4, #0x0C]
	adds r1, r1, r0
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x04
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r4, #0xBC
	lsls r4, r4, #0x01
	adds r0, r6, r4
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x30]
	str r0, [sp, #0x000]
	add r4, sp, #0x004
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A44C
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	movs r4, #0xC6
	lsls r4, r4, #0x01
	adds r1, r6, r4
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xC8
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _081414F8
_081414C8: .4byte 0x03001038
_081414CC: .4byte 0x0819832C
_081414D0: .4byte 0x08198220
_081414D4: .4byte 0x00000242
_081414D8:
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _081414F8
	adds r0, r5, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081414F8
	ldr r0, _08141504 @ =0x08142881
	str r0, [r7, #0x00]
_081414F8:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08141504: .4byte sub_8142880
	thumb_func_start sub_8141508
sub_8141508:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r3, r6, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r0, r0, r5
	ldrh r2, [r0, #0x08]
	adds r1, #0x20
	strb r2, [r1, #0x00]
	ldrh r7, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x30]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814157C
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08141588
_0814157C:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08141588:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	mov r3, r8
	bl sub_813AA5C
	ldr r0, _081415D0 @ =0x081415D5
	mov r2, r9
	str r0, [r2, #0x00]
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081415D0: .4byte sub_81415D4
	thumb_func_start sub_81415D4
sub_81415D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r6, r4, #0x0
	adds r6, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08141668
	add r2, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8142704
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141654
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814164C @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141654
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x14]
	ldr r2, [r4, #0x14]
	cmp r0, r2
	beq _08141644
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r1, r0
	beq _08141654
	ldr r0, [r0, #0x14]
	cmp r0, r2
	bne _08141654
_08141644:
	ldr r0, _08141650 @ =0x081416B1
	str r0, [r5, #0x00]
	b _0814169A
	.byte 0x00, 0x00
_0814164C: .4byte 0x00007FFF
_08141650: .4byte sub_81416B0
_08141654:
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x1A]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814166C
_08141668:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0814166C:
	adds r0, r4, #0x0
	bl sub_813B4C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814169A
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x28]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r6, r3
	strh r0, [r1, #0x00]
	ldr r0, _081416A8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _081416AC @ =0x08141509
	str r0, [r5, #0x0C]
_0814169A:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081416A8: .4byte sub_813B1E8
_081416AC: .4byte sub_8141508
	thumb_func_start sub_81416B0
sub_81416B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081416E2
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081416EE
_081416E2:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081416EE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	ldr r2, _0814172C @ =0x03001038
	ldr r0, _08141730 @ =0x0819832C
	ldr r1, _08141734 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141738
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814173C
_0814172C: .4byte 0x03001038
_08141730: .4byte 0x0819832C
_08141734: .4byte 0x08198220
_08141738:
	movs r1, #0x01
	negs r1, r1
_0814173C:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _081417E8 @ =0x03001038
	ldr r0, _081417EC @ =0x0819832C
	ldr r1, _081417F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r4
	beq _08141772
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
_08141772:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r3, r7, r2
	movs r5, #0x00
	strh r0, [r3, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r8
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r1, [r4, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r8
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r0, _081417F4 @ =0x081427AD
	mov r2, r9
	str r0, [r2, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081417E8: .4byte 0x03001038
_081417EC: .4byte 0x0819832C
_081417F0: .4byte 0x08198220
_081417F4: .4byte sub_81427AC
	thumb_func_start sub_81417F8
sub_81417F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r10, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0xE8
	lsls r0, r0, #0x01
	adds r5, r6, r0
	ldrh r0, [r5, #0x00]
	add r0, r9
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	adds r1, #0x22
	adds r2, r6, r1
	movs r1, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r1, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldrh r0, [r5, #0x00]
	add r0, r9
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814188E
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814189A
_0814188E:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814189A:
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r7, [r0, #0x28]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r3, [r0, #0x3A]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r0, sp
	strb r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	movs r1, #0xC2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xC6
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r1, #0xC8
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08141944 @ =0x08141949
	mov r1, r10
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08141944: .4byte sub_8141948
	thumb_func_start sub_8141948
sub_8141948:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08141A34
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0814198E
	b _08141C1A
_0814198E:
	subs r2, #0x04
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081419A0
	b _08141C1A
_081419A0:
	subs r2, #0x02
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08141A00 @ =0x03001038
	ldr r0, _08141A04 @ =0x0819832C
	ldr r1, _08141A08 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141A0C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141A10
	.byte 0x00, 0x00
_08141A00: .4byte 0x03001038
_08141A04: .4byte 0x0819832C
_08141A08: .4byte 0x08198220
_08141A0C:
	movs r1, #0x01
	negs r1, r1
_08141A10:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08141C1A
_08141A34:
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08141A48
	b _08141C14
_08141A48:
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _08141A80 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141AAA
	add r4, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08141A88
	ldr r0, _08141A84 @ =0x08141C31
	mov r2, r8
	str r0, [r2, #0x00]
	b _08141C1A
	.byte 0x00, 0x00
_08141A80: .4byte 0x00007FFF
_08141A84: .4byte sub_8141C30
_08141A88:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #0x14]
	cmp r0, r1
	beq _08141AC0
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r6, r0
	beq _08141AB8
	ldr r0, [r0, #0x14]
	cmp r0, r1
	beq _08141AB8
_08141AAA:
	ldr r0, _08141AB4 @ =0x08141C31
	mov r1, r8
	str r0, [r1, #0x00]
	b _08141C1A
	.byte 0x00, 0x00
_08141AB4: .4byte sub_8141C30
_08141AB8:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r6, [r0, #0x00]
_08141AC0:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	beq _08141B52
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08141B20 @ =0x03001038
	ldr r0, _08141B24 @ =0x0819832C
	ldr r1, _08141B28 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141B2C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141B30
_08141B20: .4byte 0x03001038
_08141B24: .4byte 0x0819832C
_08141B28: .4byte 0x08198220
_08141B2C:
	movs r1, #0x01
	negs r1, r1
_08141B30:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x32]
	b _08141B90
_08141B52:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x3A]
_08141B90:
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141BB4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08141BB6
_08141BB4:
	movs r0, #0xFF
_08141BB6:
	movs r3, #0x00
	strb r0, [r5, #0x02]
	ldr r2, _08141C2C @ =0x00000242
	adds r0, r6, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	adds r2, #0x02
	adds r0, r6, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x04
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	mov r0, sp
	strb r3, [r0, #0x00]
	adds r0, r5, #0x0
	adds r3, r4, #0x0
	bl sub_813A284
	movs r3, #0xBF
	lsls r3, r3, #0x01
	add r3, r9
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
_08141C14:
	adds r0, r5, #0x0
	bl sub_813B650
_08141C1A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08141C2C: .4byte 0x00000242
	thumb_func_start sub_8141C30
sub_8141C30:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r1, #0x0
	mov r8, r2
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x42
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141CA6
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08141CA8
_08141CA6:
	movs r0, #0xFF
_08141CA8:
	strb r0, [r4, #0x02]
	ldr r2, _08141CF0 @ =0x03001038
	ldr r0, _08141CF4 @ =0x0819832C
	ldr r1, _08141CF8 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r6, r1, r0
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	movs r1, #0xC4
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141CFC
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141D00
	.byte 0x00, 0x00
_08141CF0: .4byte 0x03001038
_08141CF4: .4byte 0x0819832C
_08141CF8: .4byte 0x08198220
_08141CFC:
	movs r1, #0x01
	negs r1, r1
_08141D00:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r6
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	adds r0, #0x46
	ldrh r3, [r0, #0x00]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	ldr r0, _08141D50 @ =0x08142761
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08141D50: .4byte sub_8142760
	thumb_func_start sub_8141D54
sub_8141D54:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r4, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r3, r4, r2
	strh r0, [r3, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08141DEC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r5
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x2C]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	adds r0, r0, r5
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0x36
	ldrb r6, [r0, #0x00]
	adds r0, #0x01
	ldrb r5, [r0, #0x00]
	movs r2, #0x04
	b _08141E42
_08141DEC:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x30]
	mov r8, r0
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r6, [r0, #0x00]
	ldr r1, _08141E58 @ =0x00000141
	adds r0, r4, r1
	ldrb r5, [r0, #0x00]
	movs r2, #0x00
_08141E42:
	mov r10, r2
	adds r0, r7, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141E5C
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08141E68
_08141E58: .4byte 0x00000141
_08141E5C:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08141E68:
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r2, [r0, #0x28]
	mov r0, r9
	str r0, [sp, #0x000]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	mov r3, r8
	bl sub_813AA5C
	ldr r2, _08141ED4 @ =0x03001038
	ldr r0, _08141ED8 @ =0x0819832C
	ldr r1, _08141EDC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r10
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, _08141EE0 @ =0x08141EE5
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08141ED4: .4byte 0x03001038
_08141ED8: .4byte 0x0819832C
_08141EDC: .4byte 0x08198220
_08141EE0: .4byte sub_8141EE4
	thumb_func_start sub_8141EE4
sub_8141EE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r2
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r4, r0
	str r0, [sp, #0x018]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08141FCE
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08141FBA
	adds r0, r7, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141F68
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0x0A
	ldsh r0, [r0, r2]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08141F6C
_08141F68:
	movs r0, #0x00
	b _08141F70
_08141F6C:
	mov r9, r6
	movs r0, #0x01
_08141F70:
	cmp r0, #0x00
	beq _08141FA8
	mov r1, r9
	ldr r0, [r1, #0x14]
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bne _08141F8C
	ldr r0, _08141F88 @ =0x08142151
	mov r2, r8
	str r0, [r2, #0x00]
	b _08142136
	.byte 0x00, 0x00
_08141F88: .4byte sub_8142150
_08141F8C:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r9, r0
	beq _08141FA8
	ldr r0, [r0, #0x14]
	cmp r0, r1
	bne _08141FA8
	ldr r0, _08141FA4 @ =0x08142151
	b _08142106
	.byte 0x00, 0x00
_08141FA4: .4byte sub_8142150
_08141FA8:
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x1A]
	adds r2, #0x24
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	b _08141FBE
_08141FBA:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08141FBE:
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0814204C
_08141FCE:
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0814205C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0814203C @ =0x03001038
	ldr r0, _08142040 @ =0x0819832C
	ldr r1, _08142044 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	mov r2, r10
	ldrh r0, [r2, #0x3A]
	str r0, [r1, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08142048 @ =0x08142659
	b _08142106
	.byte 0x00, 0x00
_0814203C: .4byte 0x03001038
_08142040: .4byte 0x0819832C
_08142044: .4byte 0x08198220
_08142048: .4byte sub_8142658
_0814204C:
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0814205C
	subs r0, #0x01
	str r0, [r1, #0x00]
_0814205C:
	adds r0, r4, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142136
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08142104
	movs r1, #0xC8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081420F4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, r10
	ldrh r2, [r2, #0x22]
	cmp r0, r2
	bcs _081420F4
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _081420E4 @ =0x03001038
	ldr r0, _081420E8 @ =0x0819832C
	ldr r1, _081420EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r0, [r6, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x00]
	ldr r0, _081420F0 @ =0x08142659
	b _08142106
_081420E4: .4byte 0x03001038
_081420E8: .4byte 0x0819832C
_081420EC: .4byte 0x08198220
_081420F0: .4byte sub_8142658
_081420F4:
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08142110
_08142104:
	ldr r0, _0814210C @ =0x08141D55
_08142106:
	mov r1, r8
	str r0, [r1, #0x00]
	b _08142136
_0814210C: .4byte sub_8141D54
_08142110:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldrh r0, [r0, #0x28]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldr r0, _08142148 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _0814214C @ =0x08141D55
	str r0, [r1, #0x0C]
_08142136:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142148: .4byte sub_813B1E8
_0814214C: .4byte sub_8141D54
	thumb_func_start sub_8142150
sub_8142150:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814217E
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0814218A
_0814217E:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814218A:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x40
	ldrb r1, [r0, #0x00]
	ldr r2, _081421E4 @ =0x00000239
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081421E8
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _081421EC
_081421E4: .4byte 0x00000239
_081421E8:
	movs r3, #0x01
	negs r3, r3
_081421EC:
	adds r2, r5, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r3, _08142258 @ =0x03001038
	ldr r1, _0814225C @ =0x0819832C
	ldr r2, _08142260 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x3C
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	adds r2, #0x0E
	adds r1, r6, r2
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	ldr r0, _08142264 @ =0x08142269
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08142258: .4byte 0x03001038
_0814225C: .4byte 0x0819832C
_08142260: .4byte 0x08198220
_08142264: .4byte sub_8142268
	thumb_func_start sub_8142268
sub_8142268:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r5, r4, r2
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08142296
	b _08142390
_08142296:
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081422A2
	b _081423EC
_081422A2:
	add r5, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081422BC
	ldr r0, _081422B8 @ =0x08142401
	b _081423EA
	.byte 0x00, 0x00
_081422B8: .4byte sub_8142400
_081422BC:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r6, #0x85
	lsls r6, r6, #0x02
	adds r2, r4, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08142304
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _08142308
_08142304:
	movs r3, #0x01
	negs r3, r3
_08142308:
	adds r2, r4, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r3, _08142380 @ =0x03001038
	ldr r1, _08142384 @ =0x0819832C
	ldr r2, _08142388 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	adds r0, #0x44
	ldrh r3, [r0, #0x00]
	ldr r2, _0814238C @ =0x00000242
	adds r0, r5, r2
	movs r6, #0x00
	ldsh r1, [r0, r6]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, [r5, #0x0C]
	adds r1, r1, r0
	adds r2, #0x02
	adds r0, r5, r2
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	b _081423EC
_08142380: .4byte 0x03001038
_08142384: .4byte 0x0819832C
_08142388: .4byte 0x08198220
_0814238C: .4byte 0x00000242
_08142390:
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081423EC
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _081423D8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081423E8
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x58
	ldrb r0, [r0, #0x00]
	strh r0, [r5, #0x00]
	ldr r0, _081423DC @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _081423E0 @ =0x0813B361
	str r0, [r6, #0x0C]
	ldr r0, _081423E4 @ =0x08141D55
	str r0, [r6, #0x04]
	b _081423EC
_081423D8: .4byte 0x00007FFF
_081423DC: .4byte sub_813B1E8
_081423E0: .4byte sub_813B360
_081423E4: .4byte sub_8141D54
_081423E8:
	ldr r0, _081423FC @ =0x081424E9
_081423EA:
	str r0, [r6, #0x00]
_081423EC:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081423FC: .4byte sub_81424E8
	thumb_func_start sub_8142400
sub_8142400:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _081424B4 @ =0x03001038
	mov r8, r0
	ldr r1, _081424B8 @ =0x0819832C
	ldr r0, _081424BC @ =0x08198220
	subs r7, r1, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	ldr r0, _081424C0 @ =0x000002FA
	adds r4, r5, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r2
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r1, _081424C4 @ =0x0000030A
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	strh r0, [r4, #0x00]
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081424D8
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	mov r0, sp
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _081424C8 @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081424D4
	ldr r0, _081424CC @ =0x0813B361
	str r0, [r6, #0x00]
	ldr r0, _081424D0 @ =0x08141D55
	str r0, [r6, #0x04]
	b _081424D8
	.byte 0x00, 0x00
_081424B4: .4byte 0x03001038
_081424B8: .4byte 0x0819832C
_081424BC: .4byte 0x08198220
_081424C0: .4byte 0x000002FA
_081424C4: .4byte 0x0000030A
_081424C8: .4byte 0x00007FFF
_081424CC: .4byte sub_813B360
_081424D0: .4byte sub_8141D54
_081424D4:
	ldr r0, _081424E4 @ =0x081424E9
	str r0, [r6, #0x00]
_081424D8:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081424E4: .4byte sub_81424E8
	thumb_func_start sub_81424E8
sub_81424E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r1, #0x0
	mov r8, r2
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x4C
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814255E
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08142560
_0814255E:
	movs r0, #0xFF
_08142560:
	strb r0, [r4, #0x02]
	ldr r2, _081425A8 @ =0x03001038
	ldr r0, _081425AC @ =0x0819832C
	ldr r1, _081425B0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r6, r1, r0
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	movs r1, #0xC4
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081425B4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _081425B8
	.byte 0x00, 0x00
_081425A8: .4byte 0x03001038
_081425AC: .4byte 0x0819832C
_081425B0: .4byte 0x08198220
_081425B4:
	movs r1, #0x01
	negs r1, r1
_081425B8:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r6
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	adds r0, #0x50
	ldrh r3, [r0, #0x00]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	ldr r0, _08142608 @ =0x0814260D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08142608: .4byte sub_814260C
