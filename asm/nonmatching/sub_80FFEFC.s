	.syntax unified
	.text

	thumb_func_start sub_80FFEFC
sub_80FFEFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r4, _080FFF58 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x7C]
	mov r8, r1
	ldr r7, [r1, #0x34]
	ldr r2, _080FFF5C @ =0x000002BD
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	mov r0, r8
	bl sub_810C414
	mov r3, r8
	ldr r0, [r3, #0x34]
	cmp r7, r0
	beq _08100006
	adds r7, r0, #0x0
	cmp r7, #0x00
	bne _080FFF68
	ldr r1, _080FFF60 @ =0x083BA614
	ldr r0, _080FFF64 @ =0x0300034C
	movs r6, #0x8C
	lsls r6, r6, #0x04
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	b _080FFFF6
_080FFF58: .4byte 0x03000FD8
_080FFF5C: .4byte 0x000002BD
_080FFF60: .4byte dword_83BA614 @ =0x083BA614
_080FFF64: .4byte 0x0300034C
_080FFF68:
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	cmp r2, #0x00
	bge _080FFFA4
	ldr r1, _080FFF9C @ =0x083BA600
	ldr r0, _080FFFA0 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _080FFF92
	adds r1, #0x04
_080FFF92:
	ldr r0, [r1, #0x00]
	bl sub_810CF84
	b _080FFFC2
	.byte 0x00, 0x00
_080FFF9C: .4byte dword_83BA600 @ =0x083BA600
_080FFFA0: .4byte 0x0300034C
_080FFFA4:
	adds r0, r1, #0x0
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	ldr r0, _080FFFDC @ =0x0300034C
	movs r6, #0x8C
	lsls r6, r6, #0x04
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
_080FFFC2:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FFFE0
	ldr r0, [r7, #0x28]
	movs r1, #0x11
	bl sub_810A78C
	b _080FFFE8
	.byte 0x00, 0x00
_080FFFDC: .4byte 0x0300034C
_080FFFE0:
	ldr r0, [r7, #0x28]
	movs r1, #0x0D
	bl sub_810A78C
_080FFFE8:
	ldr r0, _0810003C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
_080FFFF6:
	strb r0, [r1, #0x00]
	bl sub_80FFB70
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_08100006:
	cmp r7, #0x00
	bne _08100040
	mov r0, r8
	adds r0, #0x08
	ldr r1, [r0, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08100024
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08100024:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _08100070
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08100070
_0810003C: .4byte 0x03000FD8
_08100040:
	mov r0, r8
	adds r0, #0x08
	ldr r1, [r0, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x01
	bne _08100070
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100070
	adds r0, r5, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08100070:
	ldr r2, _081000AC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldr r1, _081000B0 @ =0x000002BE
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	bne _08100086
	b _08100520
_08100086:
	cmp r7, #0x00
	bne _0810008C
	b _08100520
_0810008C:
	ldr r0, [r4, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mvns r5, r0
	ldr r3, _081000B4 @ =0x00000346
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _081000EC
	cmp r0, #0x01
	bgt _081000B8
	cmp r0, #0x00
	beq _081000C0
	b _0810036E
	.byte 0x00, 0x00
_081000AC: .4byte 0x03000FD8
_081000B0: .4byte 0x000002BE
_081000B4: .4byte 0x00000346
_081000B8:
	cmp r0, #0x02
	bne _081000BE
	b _081001E8
_081000BE:
	b _0810036E
_081000C0:
	ldr r1, _081000E0 @ =0x0000034A
	adds r0, r4, r1
	adds r0, r0, r5
	ldr r2, _081000E4 @ =0x00000347
	adds r1, r4, r2
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldr r1, [r6, #0x00]
	lsls r2, r5, #0x01
	adds r2, r2, r5
	movs r3, #0xB2
	lsls r3, r3, #0x02
	adds r0, r1, r3
	adds r0, r0, r2
	ldr r4, _081000E8 @ =0x000002C2
	b _08100358
_081000E0: .4byte 0x0000034A
_081000E4: .4byte 0x00000347
_081000E8: .4byte 0x000002C2
_081000EC:
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	movs r2, #0xC0
	lsls r2, r2, #0x0A
	lsls r2, r0
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r0, r4, r3
	adds r0, r0, r5
	strb r1, [r0, #0x00]
	ldr r0, _08100164 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	lsls r0, r5, #0x04
	subs r0, r0, r5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	mov r12, r4
	asrs r2, r2, #0x10
	ldr r1, [r4, #0x00]
	bics r1, r2
	ldr r3, [r6, #0x00]
	movs r4, #0xC6
	lsls r4, r4, #0x02
	ldr r0, [r4, r3]
	ands r0, r2
	orrs r1, r0
	mov r0, r12
	str r1, [r0, #0x00]
	lsls r2, r5, #0x01
	adds r2, r2, r5
	ldr r1, _08100168 @ =0x000002C9
	adds r0, r3, r1
	adds r0, r0, r2
	subs r4, #0x55
	adds r3, r3, r4
	ldrb r1, [r3, #0x00]
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r3, _0810016C @ =0x000002CF
	adds r1, r0, r3
	adds r1, r1, r2
	adds r4, #0x03
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, _08100170 @ =0x000002BF
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	beq _0810018C
	cmp r0, #0x01
	bgt _08100174
	cmp r0, #0x00
	beq _0810017A
	b _0810036E
_08100164: .4byte 0x03000FF4
_08100168: .4byte 0x000002C9
_0810016C: .4byte 0x000002CF
_08100170: .4byte 0x000002BF
_08100174:
	cmp r0, #0x02
	beq _081001B8
	b _0810036E
_0810017A:
	ldrb r0, [r2, #0x0C]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x08
	orrs r0, r1
	b _081001A0
_0810018C:
	ldrb r1, [r2, #0x0C]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
_081001A0:
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x0C]
	b _0810036E
_081001B8:
	ldrb r1, [r2, #0x0C]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	b _0810036E
_081001E8:
	ldr r3, [r7, #0x28]
	movs r2, #0x00
	mov r8, r2
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _08100200
	b _08100328
_08100200:
	lsls r0, r0, #0x02
	ldr r1, _0810020C @ =lbl_08100210
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0810020C: .4byte lbl_08100210
lbl_08100210:
	.4byte _08100248
	.4byte _081002AA
	.4byte _0810025E
	.4byte _08100328
	.4byte _08100328
	.4byte _08100328
	.4byte _08100328
	.4byte _08100328
	.4byte _08100328
	.4byte _08100328
	.4byte _0810026E
	.4byte _08100280
	.4byte _08100324
	.4byte _08100324
_08100248:
	adds r1, r3, #0
	adds r1, #246 @ 0xf6
	adds r0, r3, #0
	adds r0, #248 @ 0xf8
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge.n _08100328
	b.n _0810033A
_0810025E:
	adds r0, r7, #0
	adds r0, #118 @ 0x76
	ldrb r1, [r0, #0]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne.n _08100328
	b.n _0810033A
_0810026E:
	adds r0, r3, #0
	adds r0, #252 @ 0xfc
	adds r1, r3, #0
	adds r1, #254 @ 0xfe
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r3, #0
	ldrsh r0, [r1, r3]
	b.n _081002A4
_08100280:
	adds r1, r3, #0
	adds r1, #246 @ 0xf6
	adds r0, r3, #0
	adds r0, #248 @ 0xf8
	movs r4, #0
	ldrsh r1, [r1, r4]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt.n _0810033A
	adds r0, r3, #0
	adds r0, #252 @ 0xfc
	adds r1, r3, #0
	adds r1, #254 @ 0xfe
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r4, #0
	ldrsh r0, [r1, r4]
_081002A4:
	cmp r2, r0
	bge.n _08100328
	b.n _0810033A
_081002AA:
	movs r1, #150 @ 0x96
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0, #0]
	cmp r0, #19
	beq.n _081002E0
	cmp r0, #20
	beq.n _081002F8
	movs r2, #143 @ 0x8f
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrh r1, [r0, #0]
	movs r0, #192 @ 0xc0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq.n _0810030E
	movs r4, #144 @ 0x90
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0, #0]
	movs r1, #224 @ 0xe0
	lsls r1, r1, #10
	ands r0, r1
	cmp r0, #0
	beq.n _0810030E
	b.n _0810030A
_081002E0:
	movs r1, #143 @ 0x8f
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne.n _0810030E
	movs r2, #1
	mov r8, r2
	b.n _0810030E
_081002F8:
	movs r4, #143 @ 0x8f
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrh r1, [r0, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne.n _0810030E
_0810030A:
	movs r0, #1
	mov r8, r0
_0810030E:
	movs r1, #143 @ 0x8f
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r1, [r0, #0]
	ldr r0, [pc, #8] @ (0x8100320)
	ands r0, r1
	cmp r0, #0
	beq.n _08100328
	b.n _0810033A
_08100320:
	.byte 0xAB, 0xF1, 0x00, 0x00
_08100324:
	.byte 0x01, 0x22, 0x90, 0x46
_08100328:
	mov r3, r8
	cmp r3, #0x00
	bne _0810033A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	b _08100762
_0810033A:
	ldr r0, [r6, #0x00]
	ldr r4, _0810042C @ =0x0000034E
	adds r1, r0, r4
	adds r1, r1, r5
	ldr r2, _08100430 @ =0x00000349
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	lsls r2, r5, #0x01
	adds r2, r2, r5
	ldr r3, _08100434 @ =0x000002CA
	adds r0, r1, r3
	adds r0, r0, r2
	subs r4, #0x8A
_08100358:
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, #0x06
	adds r1, r0, r3
	adds r1, r1, r2
	adds r4, #0x03
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
_0810036E:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0810038E
	ldr r0, [r6, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r1, [r7, #0x28]
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
_0810038E:
	ldr r2, [r6, #0x00]
	ldr r3, _08100438 @ =0x00000346
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0810044C
	ldr r0, _0810043C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r4, _08100440 @ =0x00008E58
	adds r0, r0, r4
	ldr r1, _08100444 @ =0x08106EB1
	str r1, [r0, #0x00]
	ldr r0, _08100448 @ =0x08106EE9
	mov r1, r9
	str r0, [r1, #0x04]
	movs r4, #0x91
	lsls r4, r4, #0x01
	movs r3, #0x41
	negs r3, r3
	ldr r1, [r2, #0x58]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x5C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x60]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x64]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x68]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x6C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x74]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	ands r3, r1
	strb r3, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	b _081004E6
	.byte 0x00, 0x00
_0810042C: .4byte 0x0000034E
_08100430: .4byte 0x00000349
_08100434: .4byte 0x000002CA
_08100438: .4byte 0x00000346
_0810043C: .4byte 0x03000FDC
_08100440: .4byte 0x00008E58
_08100444: .4byte sub_8106EB0
_08100448: .4byte sub_8106EE8
_0810044C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, _08100510 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r3, _08100514 @ =0x00008E58
	adds r0, r0, r3
	ldr r1, _08100518 @ =0x08106E1D
	str r1, [r0, #0x00]
	ldr r0, _0810051C @ =0x08106EE9
	mov r4, r9
	str r0, [r4, #0x04]
	movs r4, #0x91
	lsls r4, r4, #0x01
	movs r3, #0x41
	negs r3, r3
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x58]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x5C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x60]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x64]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x68]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x6C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x74]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	ands r3, r1
	strb r3, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r1, r1, r0
_081004E6:
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8109600
	bl sub_810D170
	bl sub_810CCC8
	bl sub_810CCB0
	bl sub_8083E1C
	b _08100762
	.byte 0x00, 0x00
_08100510: .4byte 0x03000FDC
_08100514: .4byte 0x00008E58
_08100518: .4byte sub_8106E1C
_0810051C: .4byte sub_8106EE8
_08100520:
	bl sub_810D57C
	movs r0, #0x00
	bl sub_8109F4C
	adds r2, r0, #0x0
	ldr r0, _081005AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _081005B0 @ =0x000002BF
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08100540
	b _08100762
_08100540:
	cmp r2, #0x00
	blt _08100554
	ldr r0, _081005B4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08100554
	b _08100762
_08100554:
	adds r4, r5, #0x0
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100582
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100582
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08100582:
	movs r0, #0x00
	str r0, [r4, #0x2C]
	adds r4, #0x77
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r5, _081005AC @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldr r6, _081005B8 @ =0x00000346
	adds r0, r2, r6
	ldrb r3, [r0, #0x00]
	cmp r3, #0x01
	bne _081005A0
	b _081006AC
_081005A0:
	cmp r3, #0x01
	bgt _081005BC
	cmp r3, #0x00
	beq _081005C4
	b _08100742
	.byte 0x00, 0x00
_081005AC: .4byte 0x03000FD8
_081005B0: .4byte 0x000002BF
_081005B4: .4byte 0x0300034C
_081005B8: .4byte 0x00000346
_081005BC:
	cmp r3, #0x02
	bne _081005C2
	b _08100700
_081005C2:
	b _08100742
_081005C4:
	ldr r6, _08100618 @ =0x0000033F
	adds r0, r2, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08100634
	ldr r0, _0810061C @ =0x00000343
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	bl sub_81069B4
	movs r0, #0x00
	bl sub_810AC60
	bl sub_810D00C
	bl sub_810D424
	ldr r1, [r5, #0x00]
	ldr r2, _08100620 @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r2, #0x00
	bl sub_810D524
	ldr r0, _08100624 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r4, _08100628 @ =0x00008E58
	adds r0, r0, r4
	ldr r1, _0810062C @ =0x080FECE9
	str r1, [r0, #0x00]
	ldr r0, _08100630 @ =0x08106EE9
	mov r6, r9
	str r0, [r6, #0x04]
	b _08100742
	.byte 0x00, 0x00
_08100618: .4byte 0x0000033F
_0810061C: .4byte 0x00000343
_08100620: .4byte 0x0000033E
_08100624: .4byte 0x03000FDC
_08100628: .4byte 0x00008E58
_0810062C: .4byte sub_80FECE8
_08100630: .4byte sub_8106EE8
_08100634:
	movs r0, #0x09
	negs r0, r0
	ands r1, r0
	strb r1, [r4, #0x00]
	mov r0, r8
	str r3, [r0, #0x34]
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r5, #0x00]
	ldr r1, _08100690 @ =0x00000347
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	ldr r2, _08100694 @ =0x00000342
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x00
	bl sub_81069B4
	bl sub_810D424
	ldr r1, [r5, #0x00]
	ldr r3, _08100698 @ =0x0000033E
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	movs r4, #0xC7
	lsls r4, r4, #0x02
	adds r1, r1, r4
	movs r2, #0x00
	bl sub_810D524
	ldr r0, _0810069C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r6, _081006A0 @ =0x00008E58
	adds r0, r0, r6
	ldr r1, _081006A4 @ =0x080FE9A1
	str r1, [r0, #0x00]
	ldr r0, _081006A8 @ =0x08106EE9
	mov r1, r9
	str r0, [r1, #0x04]
	b _08100742
_08100690: .4byte 0x00000347
_08100694: .4byte 0x00000342
_08100698: .4byte 0x0000033E
_0810069C: .4byte 0x03000FDC
_081006A0: .4byte 0x00008E58
_081006A4: .4byte sub_80FE9A0
_081006A8: .4byte sub_8106EE8
_081006AC:
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x03
	bl sub_81069B4
	movs r0, #0x01
	bl sub_810AC60
	bl sub_810D424
	ldr r1, [r5, #0x00]
	ldr r4, _081006F0 @ =0x0000033E
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	movs r6, #0xC7
	lsls r6, r6, #0x02
	adds r1, r1, r6
	movs r2, #0x00
	bl sub_810D524
	bl sub_810D11C
	ldr r0, _081006F4 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081006F8 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _081006FC @ =0x080FEF15
	b _0810073A
	.byte 0x00, 0x00
_081006F0: .4byte 0x0000033E
_081006F4: .4byte 0x03000FDC
_081006F8: .4byte 0x00008E58
_081006FC: .4byte sub_80FEF14
_08100700:
	ldr r3, _08100770 @ =0x00000345
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x06
	bl sub_81069B4
	movs r0, #0x02
	bl sub_810AC60
	bl sub_810D424
	ldr r1, [r5, #0x00]
	ldr r4, _08100774 @ =0x0000033E
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	movs r6, #0xC7
	lsls r6, r6, #0x02
	adds r1, r1, r6
	movs r2, #0x00
	bl sub_810D524
	ldr r0, _08100778 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0810077C @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _08100780 @ =0x080FF411
_0810073A:
	str r1, [r0, #0x00]
	ldr r0, _08100784 @ =0x08106EE9
	mov r2, r9
	str r0, [r2, #0x04]
_08100742:
	ldr r0, _08100788 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _0810078C @ =0x00000342
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08100758
	bl sub_810B754
_08100758:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
_08100762:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08100770: .4byte 0x00000345
_08100774: .4byte 0x0000033E
_08100778: .4byte 0x03000FDC
_0810077C: .4byte 0x00008E58
_08100780: .4byte sub_80FF410
_08100784: .4byte sub_8106EE8
_08100788: .4byte 0x03000FD8
_0810078C: .4byte 0x00000342
