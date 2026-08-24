	.syntax unified
	.text

	thumb_func_start sub_809FF4C
sub_809FF4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809FF68
	b _080A0208
_0809FF68:
	ldr r0, [sp, #0x000]
	movs r1, #0x21
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [sp, #0x000]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, _080A016C @ =0x00004034
	mov r9, r1
	ldr r0, [sp, #0x000]
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x84
	movs r0, #0x80
	lsls r0, r0, #0x07
	str r0, [r4, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x8C
	movs r1, #0xA0
	lsls r1, r1, #0x07
	str r1, [r5, #0x00]
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bge _0809FFC8
	adds r0, #0xFF
_0809FFC8:
	asrs r0, r0, #0x08
	movs r3, #0xFF
	ands r0, r3
	lsls r0, r0, #0x01
	ldr r2, _080A0170 @ =0x08198584
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0809FFDE
	adds r0, #0x3F
_0809FFDE:
	asrs r0, r0, #0x06
	muls r0, r1
	cmp r0, #0x00
	bge _0809FFE8
	adds r0, #0xFF
_0809FFE8:
	asrs r0, r0, #0x08
	movs r1, #0xBC
	lsls r1, r1, #0x06
	subs r0, r1, r0
	str r0, [r7, #0x10]
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bge _0809FFFA
	adds r0, #0xFF
_0809FFFA:
	asrs r0, r0, #0x08
	ands r0, r3
	lsls r0, r0, #0x01
	ldr r2, _080A0174 @ =0x08198504
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080A000E
	adds r0, #0x3F
_080A000E:
	asrs r1, r0, #0x06
	ldr r0, [r5, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A001A
	adds r0, #0xFF
_080A001A:
	asrs r0, r0, #0x08
	movs r2, #0xD8
	lsls r2, r2, #0x07
	subs r0, r2, r0
	str r0, [r7, #0x14]
	movs r0, #0x00
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x08]
	movs r1, #0x04
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x06]
	strh r2, [r0, #0x04]
	ldr r0, _080A0178 @ =0x080A0229
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	mov r1, r9
	movs r2, #0x00
	str r3, [sp, #0x004]
	bl sub_807C0D0
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	mov r10, r2
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r3, [sp, #0x004]
	cmp r0, #0x00
	bge _080A0060
	adds r0, #0xFF
_080A0060:
	asrs r0, r0, #0x08
	adds r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x01
	ldr r1, _080A0170 @ =0x08198584
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080A0076
	adds r0, #0x3F
_080A0076:
	asrs r1, r0, #0x06
	ldr r0, [r5, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A0082
	adds r0, #0xFF
_080A0082:
	asrs r0, r0, #0x08
	movs r1, #0xBC
	lsls r1, r1, #0x06
	subs r0, r1, r0
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bge _080A0094
	adds r0, #0xFF
_080A0094:
	asrs r0, r0, #0x08
	adds r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x01
	ldr r2, _080A0174 @ =0x08198504
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080A00AA
	adds r0, #0x3F
_080A00AA:
	asrs r1, r0, #0x06
	ldr r0, [r5, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A00B6
	adds r0, #0xFF
_080A00B6:
	asrs r0, r0, #0x08
	movs r2, #0xD8
	lsls r2, r2, #0x07
	subs r0, r2, r0
	str r0, [r6, #0x14]
	movs r0, #0x00
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x08]
	mov r1, r8
	strh r1, [r0, #0x06]
	strh r1, [r0, #0x04]
	ldr r0, _080A017C @ =0x080A0601
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	mov r1, r9
	movs r2, #0x00
	bl sub_807C0D0
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	mov r1, r8
	strh r1, [r0, #0x06]
	strh r1, [r0, #0x04]
	adds r4, r5, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	movs r2, #0x01
	mov r8, r2
	ldr r0, _080A0180 @ =0x03001038
	mov r10, r0
	ldr r1, _080A0184 @ =0x08198350
	ldr r0, _080A0188 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	mov r1, r10
	ldr r2, [r1, #0x00]
	add r2, r9
	movs r0, #0x00
	movs r1, #0x0A
	bl _call_via_r2
	cmp r0, #0x00
	beq _080A012A
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_080A012A:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x0C]
	ldr r4, [r4, #0x00]
	movs r2, #0x01
	add r8, r2
	mov r0, r8
	cmp r0, #0x13
	bgt _080A01DC
_080A0142:
	mov r1, r10
	ldr r2, [r1, #0x00]
	add r2, r9
	mov r0, r8
	subs r0, #0x01
	movs r1, #0x0A
	bl _call_via_r2
	cmp r0, #0x00
	beq _080A015E
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_080A015E:
	mov r2, r8
	cmp r2, #0x09
	bgt _080A018C
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	b _080A0192
_080A016C: .4byte 0x00004034
_080A0170: .4byte 0x08198584
_080A0174: .4byte 0x08198504
_080A0178: .4byte sub_80A0228
_080A017C: .4byte sub_80A0600
_080A0180: .4byte 0x03001038
_080A0184: .4byte 0x08198350
_080A0188: .4byte 0x08198220
_080A018C:
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
_080A0192:
	bl sub_807FABC
	str r0, [r4, #0x00]
	ldr r4, [r4, #0x00]
	mov r5, r8
	adds r5, #0x01
	mov r0, r10
	ldr r2, [r0, #0x00]
	add r2, r9
	mov r0, r8
	movs r1, #0x0A
	bl _call_via_r2
	cmp r0, #0x00
	beq _080A01B8
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_080A01B8:
	cmp r5, #0x09
	bgt _080A01C4
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	b _080A01CA
_080A01C4:
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
_080A01CA:
	bl sub_807FABC
	str r0, [r4, #0x00]
	ldr r4, [r4, #0x00]
	movs r1, #0x02
	add r8, r1
	mov r2, r8
	cmp r2, #0x13
	ble _080A0142
_080A01DC:
	ldr r2, _080A0218 @ =0x03001038
	ldr r0, _080A021C @ =0x08198350
	ldr r1, _080A0220 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x13
	movs r1, #0x0A
	bl _call_via_r2
	cmp r0, #0x00
	beq _080A01FE
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1B]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x1B]
_080A01FE:
	movs r0, #0x00
	str r0, [r4, #0x00]
	ldr r0, _080A0224 @ =0x080A0789
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x4C]
_080A0208:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A0218: .4byte 0x03001038
_080A021C: .4byte 0x08198350
_080A0220: .4byte 0x08198220
_080A0224: .4byte sub_80A0788
