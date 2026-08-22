	.syntax unified
	.text

	thumb_func_start sub_80EA144
sub_80EA144:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r1
	adds r5, r2, #0x0
	mov r10, r3
	ldm r5!, {r0}
	mov r8, r0
	ldm r5!, {r0}
	cmp r0, #0x01
	bne _080EA162
	b _080EA266
_080EA162:
	cmp r0, #0x01
	bgt _080EA16C
	cmp r0, #0x00
	beq _080EA174
	b _080EA32A
_080EA16C:
	cmp r0, #0x02
	bne _080EA172
	b _080EA2CE
_080EA172:
	b _080EA32A
_080EA174:
	ldm r5!, {r3}
	asrs r0, r3, #0x07
	subs r0, #0x01
	cmp r0, #0x05
	bhi _080EA200
	lsls r0, r0, #0x02
	ldr r1, _080EA188 @ =lbl_080EA18C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EA188: .4byte lbl_080EA18C
lbl_080EA18C:
	.4byte _080EA1A4
	.4byte _080EA1B4
	.4byte _080EA1D4
	.4byte _080EA1C4
	.4byte _080EA1FC
	.4byte _080EA1E4
_080EA1A4:
	ldr r0, [pc, #8] @ (0x80ea1b0)
	movs r1, #127 @ 0x7f
	ands r1, r3
	adds r1, #186 @ 0xba
	b.n _080EA1F0
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA1B4:
	ldr r0, [pc, #8] @ (0x80ea1c0)
	movs r1, #127 @ 0x7f
	ands r1, r3
	adds r1, #242 @ 0xf2
	b.n _080EA1F0
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA1C4:
	ldr r0, [pc, #8] @ (0x80ea1d0)
	movs r1, #127 @ 0x7f
	ands r1, r3
	adds r1, #138 @ 0x8a
	b.n _080EA1F0
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA1D4:
	ldr r0, [pc, #8] @ (0x80ea1e0)
	movs r1, #127 @ 0x7f
	ands r1, r3
	adds r1, #170 @ 0xaa
	b.n _080EA1F0
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA1E4:
	ldr r0, [pc, #16] @ (0x80ea1f8)
	movs r1, #127 @ 0x7f
	ands r1, r3
	movs r2, #149 @ 0x95
	lsls r2, r2, #1
	adds r1, r1, r2
_080EA1F0:
	ldr r0, [r0, #0]
	adds r6, r0, r1
	b.n _080EA200
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA1FC:
	subs r5, #4
	b.n _080EA2CE
_080EA200:
	ldrb r0, [r6, #0x00]
	movs r1, #0x00
	cmp r0, #0xFF
	beq _080EA20A
	adds r1, r0, #0x0
_080EA20A:
	adds r4, r1, #0x0
	ldm r5!, {r0}
	cmp r0, #0x00
	beq _080EA218
	cmp r0, #0x01
	beq _080EA24A
	b _080EA32A
_080EA218:
	ldr r2, [r5, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r3, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x7F
	ands r3, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r3, #0x0
	bl sub_8122E30
	movs r2, #0x00
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080EA246
	movs r2, #0x01
_080EA246:
	adds r7, r2, #0x0
	b _080EA32A
_080EA24A:
	ldr r1, [r5, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bge _080EA260
	movs r0, #0x00
	strb r0, [r6, #0x00]
	b _080EA328
_080EA260:
	strb r4, [r6, #0x00]
	movs r7, #0x01
	b _080EA32A
_080EA266:
	adds r5, #0x04
	ldm r5!, {r0}
	cmp r0, #0x00
	beq _080EA27C
	cmp r0, #0x01
	beq _080EA2A4
	ldr r2, _080EA278 @ =0x03000FF4
	b _080EA2C6
	.byte 0x00, 0x00
_080EA278: .4byte 0x03000FF4
_080EA27C:
	ldr r2, _080EA29C @ =0x03000FF4
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	ldr r1, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080EA2A0 @ =0x0000270F
	cmp r0, r1
	ble _080EA2C4
	adds r4, r1, #0x0
	movs r7, #0x00
	b _080EA2C6
	.byte 0x00, 0x00
_080EA29C: .4byte 0x03000FF4
_080EA2A0: .4byte 0x0000270F
_080EA2A4:
	ldr r2, _080EA2C0 @ =0x03000FF4
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	ldr r1, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bge _080EA2C4
	movs r4, #0x00
	movs r7, #0x00
	b _080EA2C6
	.byte 0x00, 0x00
_080EA2C0: .4byte 0x03000FF4
_080EA2C4:
	movs r7, #0x01
_080EA2C6:
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	strh r4, [r0, #0x00]
	b _080EA32A
_080EA2CE:
	ldr r1, _080EA300 @ =0x03000FF4
	ldr r2, [r5, #0x00]
	movs r0, #0x7F
	ands r0, r2
	asrs r0, r0, #0x03
	adds r0, #0xB2
	ldr r1, [r1, #0x00]
	adds r6, r1, r0
	adds r1, r2, #0x0
	cmp r2, #0x00
	bge _080EA2E6
	adds r1, r2, #0x7
_080EA2E6:
	asrs r1, r1, #0x03
	lsls r1, r1, #0x03
	subs r1, r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x09
	lsls r0, r1
	lsrs r4, r0, #0x10
	ldr r1, [r5, #0x04]
	cmp r1, #0x00
	beq _080EA304
	cmp r1, #0x01
	beq _080EA314
	b _080EA32A
_080EA300: .4byte 0x03000FF4
_080EA304:
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080EA328
	orrs r1, r4
	b _080EA322
_080EA314:
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080EA328
	bics r1, r4
_080EA322:
	strb r1, [r6, #0x00]
	movs r7, #0x01
	b _080EA32A
_080EA328:
	movs r7, #0x00
_080EA32A:
	mov r0, r8
	cmp r0, #0x00
	blt _080EA346
	mov r1, r9
	adds r1, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
_080EA346:
	movs r0, #0x01
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
