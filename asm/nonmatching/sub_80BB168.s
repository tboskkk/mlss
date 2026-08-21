	.syntax unified
	.text

	thumb_func_start sub_80BB168
sub_80BB168:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BB274 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BB26A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BB1AE
	cmp r1, #0x04
	bne _080BB1CA
_080BB1AE:
	ldr r2, _080BB278 @ =0x00002024
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BB1CA:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BB1DC
	cmp r1, #0x04
	bne _080BB1F8
_080BB1DC:
	ldr r2, _080BB27C @ =0x00002062
	adds r0, r5, #0x0
	movs r1, #0x0B
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
_080BB1F8:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080BB200
	adds r0, #0xFF
_080BB200:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x1C
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080BB20E
	adds r2, #0xFF
_080BB20E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080BB218
	adds r3, #0xFF
_080BB218:
	asrs r3, r3, #0x08
	adds r3, #0x18
	str r5, [sp, #0x000]
	ldr r0, _080BB280 @ =0x000006E3
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BB236
	cmp r1, #0x04
	bne _080BB266
_080BB236:
	ldr r2, _080BB284 @ =0x03001038
	ldr r0, _080BB288 @ =0x0819832C
	ldr r1, _080BB28C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x05
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BB266:
	ldr r0, _080BB290 @ =0x080BB295
	str r0, [r7, #0x4C]
_080BB26A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BB274: .4byte 0x03000FD8
_080BB278: .4byte 0x00002024
_080BB27C: .4byte 0x00002062
_080BB280: .4byte 0x000006E3
_080BB284: .4byte 0x03001038
_080BB288: .4byte 0x0819832C
_080BB28C: .4byte 0x08198220
_080BB290: .4byte sub_80BB294
