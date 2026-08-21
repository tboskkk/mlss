	.syntax unified
	.text

	thumb_func_start sub_8145060
sub_8145060:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	mov r9, r1
	adds r5, r2, #0x0
	bl sub_81457C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145084
	ldr r0, _08145080 @ =0x08144CD5
	b _08145278
_08145080: .4byte sub_8144CD4
_08145084:
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r9
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08145092
	b _08145276
_08145092:
	subs r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081450AC
	ldr r0, _081450A8 @ =0x08144CD5
	b _08145278
_081450A8: .4byte sub_8144CD4
_081450AC:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x004]
	ldr r1, [r0, #0x0C]
	mov r2, r9
	ldr r0, [r2, #0x0C]
	subs r7, r1, r0
	ldr r3, [sp, #0x004]
	ldr r1, [r3, #0x10]
	ldr r0, [r2, #0x10]
	subs r5, r1, r0
	ldr r4, _08145184 @ =0x03001038
	mov r10, r4
	ldr r4, _08145188 @ =0x0819832C
	ldr r0, _0814518C @ =0x08198220
	subs r4, r4, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r6, r2, r4
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x10
	bl _call_via_r6
	mov r8, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	lsls r0, r7, #0x04
	mov r1, r8
	bl _call_via_r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	ldr r6, _08145190 @ =0x00000242
	add r6, r9
	strh r0, [r6, #0x00]
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	lsls r0, r5, #0x04
	mov r1, r8
	bl _call_via_r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	movs r1, #0x91
	lsls r1, r1, #0x02
	add r1, r9
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	mov r3, r9
	ldr r2, [r3, #0x0C]
	adds r2, r2, r0
	str r2, [r3, #0x0C]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	ldr r1, [r3, #0x10]
	adds r1, r1, r0
	str r1, [r3, #0x10]
	ldr r3, [sp, #0x004]
	ldr r0, [r3, #0x0C]
	subs r2, r0, r2
	ldr r0, [r3, #0x10]
	subs r1, r0, r1
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08145194
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _08145198
_08145184: .4byte 0x03001038
_08145188: .4byte 0x0819832C
_0814518C: .4byte 0x08198220
_08145190: .4byte 0x00000242
_08145194:
	movs r3, #0x01
	negs r3, r3
_08145198:
	mov r2, r9
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x004]
	ldr r1, [r0, #0x0C]
	mov r3, r9
	ldr r0, [r3, #0x0C]
	subs r3, r1, r0
	ldr r4, [sp, #0x004]
	ldr r1, [r4, #0x10]
	mov r4, r9
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r3, #0x0
	orrs r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	beq _081451DA
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _081451DC
_081451DA:
	movs r0, #0xFF
_081451DC:
	mov r1, r9
	strb r0, [r1, #0x02]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	add r4, r9
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r6, [r0, #0x00]
	ldrb r2, [r1, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x11]
	ldr r2, _08145220 @ =0x03001038
	ldr r0, _08145224 @ =0x0819832C
	ldr r1, _08145228 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, #0x01
	beq _08145248
	cmp r0, #0x01
	bgt _0814522C
	cmp r0, #0x00
	beq _08145236
	b _0814525E
	.byte 0x00, 0x00
_08145220: .4byte 0x03001038
_08145224: .4byte 0x0819832C
_08145228: .4byte 0x08198220
_0814522C:
	cmp r0, #0x02
	beq _08145256
	cmp r0, #0x03
	beq _0814523E
	b _0814525E
_08145236:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	b _0814525C
_0814523E:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_08145248:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x07
	b _0814525C
_08145256:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x0A
_0814525C:
	strb r1, [r0, #0x00]
_0814525E:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	beq _0814527A
	mov r0, r9
	bl sub_8047928
	b _0814527A
_08145276:
	ldr r0, _0814528C @ =0x08145291
_08145278:
	str r0, [r5, #0x00]
_0814527A:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814528C: .4byte sub_8145290
