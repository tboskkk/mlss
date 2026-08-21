	.syntax unified
	.text

	thumb_func_start sub_80958F0
sub_80958F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	ldr r2, _080959C0 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809591E
	b _08095B0A
_0809591E:
	movs r7, #0x00
	adds r0, r5, #0x0
	adds r0, #0x76
	str r0, [sp, #0x004]
	mov r10, r2
	movs r1, #0xB7
	lsls r1, r1, #0x02
	mov r9, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	mov r8, r2
_08095934:
	mov r1, r10
	ldr r0, [r1, #0x00]
	add r0, r9
	ldr r0, [r0, #0x00]
	ldr r2, _080959C4 @ =0x00004188
	adds r1, r2, #0x0
	ldrb r0, [r0, #0x02]
	adds r1, r1, r0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x78
	ldrb r2, [r3, #0x00]
	movs r1, #0x1F
	ands r1, r2
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, [r0, #0x10]
	add r1, r8
	str r1, [r0, #0x10]
	str r1, [r0, #0x38]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x3C]
	ldr r1, [r0, #0x18]
	add r1, r8
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	mov r1, r10
	ldr r0, [r1, #0x00]
	add r0, r9
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	cmp r0, #0x00
	beq _0809599C
	adds r0, r6, #0x0
	cmp r4, r6
	bne _08095986
	ldr r0, [sp, #0x000]
_08095986:
	adds r4, r0, #0x0
	str r4, [r5, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809599C
	adds r7, #0x01
	cmp r7, #0x01
	ble _08095934
_0809599C:
	ldr r0, _080959C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x0E
	bgt _080959C8
	cmp r0, #0x0D
	blt _080959C8
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080959D4
_080959C0: .4byte 0x03000FD8
_080959C4: .4byte 0x00004188
_080959C8:
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080959D4:
	ldr r0, _08095A20 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	cmp r0, #0x00
	beq _08095A28
	ldr r2, [sp, #0x004]
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095A14
	ldr r2, _08095A24 @ =0x00002051
	cmp r5, r6
	bne _080959FA
	subs r2, #0x2F
_080959FA:
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08095A14:
	adds r4, r6, #0x0
	cmp r5, r4
	bne _08095A82
	ldr r4, [sp, #0x000]
	b _08095A82
	.byte 0x00, 0x00
_08095A20: .4byte 0x03000FD8
_08095A24: .4byte 0x00002051
_08095A28:
	cmp r5, r4
	bne _08095A54
	ldr r2, [sp, #0x004]
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095AC6
	ldr r2, _08095A50 @ =0x00002051
	cmp r5, r6
	bne _08095A40
	subs r2, #0x2F
_08095A40:
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	b _08095AB8
	.byte 0x00, 0x00
_08095A50: .4byte 0x00002051
_08095A54:
	ldr r0, [sp, #0x004]
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095A82
	ldr r2, _08095B1C @ =0x00002051
	cmp r5, r6
	bne _08095A68
	subs r2, #0x2F
_08095A68:
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08095A82:
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08095AC6
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095AC6
	ldr r2, _08095B1C @ =0x00002051
	cmp r4, r6
	bne _08095AAC
	subs r2, #0x2F
_08095AAC:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
_08095AB8:
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08095AC6:
	ldr r2, [sp, #0x004]
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _08095AD6
	cmp r2, #0x04
	bne _08095B06
_08095AD6:
	ldr r2, _08095B20 @ =0x03001038
	ldr r0, _08095B24 @ =0x0819832C
	ldr r1, _08095B28 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08095B06:
	ldr r0, _08095B2C @ =0x08095B31
	str r0, [r5, #0x4C]
_08095B0A:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08095B1C: .4byte 0x00002051
_08095B20: .4byte 0x03001038
_08095B24: .4byte 0x0819832C
_08095B28: .4byte 0x08198220
_08095B2C: .4byte sub_8095B30
