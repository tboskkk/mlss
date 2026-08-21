	.syntax unified
	.text

	thumb_func_start sub_80967A4
sub_80967A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	ldr r0, _08096894 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080967D2
	b _080969D6
_080967D2:
	adds r1, r5, #0x0
	adds r1, #0x76
	str r1, [sp, #0x004]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x78
	ldrb r2, [r3, #0x00]
	movs r1, #0x1F
	mov r10, r1
	ands r1, r2
	movs r2, #0x20
	mov r8, r2
	mov r2, r8
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, [r0, #0x10]
	adds r1, r1, r6
	str r1, [r0, #0x10]
	str r1, [r0, #0x38]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x3C]
	ldr r1, [r0, #0x18]
	adds r1, r1, r6
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	ldr r1, _08096894 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	cmp r0, #0x00
	beq _08096890
	adds r0, r7, #0x0
	cmp r4, r7
	bne _0809682A
	ldr r0, [sp, #0x000]
_0809682A:
	adds r4, r0, #0x0
	str r4, [r5, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	mov r9, r0
	ands r0, r1
	cmp r0, #0x02
	bne _08096890
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x78
	ldrb r2, [r3, #0x00]
	mov r1, r10
	ands r1, r2
	mov r2, r8
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, [r0, #0x10]
	adds r1, r1, r6
	str r1, [r0, #0x10]
	str r1, [r0, #0x38]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x3C]
	ldr r1, [r0, #0x18]
	adds r1, r1, r6
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	ldr r1, _08096894 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	cmp r0, #0x00
	beq _08096890
	adds r0, r7, #0x0
	cmp r4, r7
	bne _08096884
	ldr r0, [sp, #0x000]
_08096884:
	adds r4, r0, #0x0
	str r4, [r5, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	mov r0, r9
	ands r0, r1
_08096890:
	ldr r6, [r5, #0x30]
	b _0809689A
_08096894: .4byte 0x03000FD8
_08096898:
	ldr r6, [r6, #0x30]
_0809689A:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	bne _08096898
	cmp r5, r4
	bne _08096914
	ldr r0, [sp, #0x004]
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080968D2
	ldr r2, _08096904 @ =0x00002051
	cmp r5, r7
	bne _080968B8
	subs r2, #0x2F
_080968B8:
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080968D2:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [sp, #0x004]
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080968EE
	cmp r2, #0x04
	bne _080969D2
_080968EE:
	ldr r2, _08096908 @ =0x03001038
	ldr r0, _0809690C @ =0x0819832C
	ldr r1, _08096910 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	b _080969B4
	.byte 0x00, 0x00
_08096904: .4byte 0x00002051
_08096908: .4byte 0x03001038
_0809690C: .4byte 0x0819832C
_08096910: .4byte 0x08198220
_08096914:
	ldr r2, [sp, #0x004]
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096942
	ldr r2, _080969E8 @ =0x00002051
	cmp r5, r7
	bne _08096928
	subs r2, #0x2F
_08096928:
	adds r0, r5, #0x0
	movs r1, #0x04
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
_08096942:
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08096986
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096986
	ldr r2, _080969E8 @ =0x00002051
	cmp r4, r7
	bne _0809696C
	subs r2, #0x2F
_0809696C:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08096986:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [sp, #0x004]
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080969A2
	cmp r2, #0x04
	bne _080969D2
_080969A2:
	ldr r2, _080969EC @ =0x03001038
	ldr r0, _080969F0 @ =0x0819832C
	ldr r1, _080969F4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
_080969B4:
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
_080969D2:
	ldr r0, _080969F8 @ =0x080969FD
	str r0, [r5, #0x4C]
_080969D6:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080969E8: .4byte 0x00002051
_080969EC: .4byte 0x03001038
_080969F0: .4byte 0x0819832C
_080969F4: .4byte 0x08198220
_080969F8: .4byte sub_80969FC
