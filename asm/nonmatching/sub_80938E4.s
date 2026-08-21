	.syntax unified
	.text

	thumb_func_start sub_80938E4
sub_80938E4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08093904 @ =0x080938E5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093908
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080939DA
	.byte 0x00, 0x00
_08093904: .4byte sub_80938E4
_08093908:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08093970
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _08093960 @ =0x03001038
	ldr r0, _08093964 @ =0x0819832C
	ldr r1, _08093968 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809396C @ =0x08093E21
	str r0, [r4, #0x4C]
	b _080939DA
	.byte 0x00, 0x00
_08093960: .4byte 0x03001038
_08093964: .4byte 0x0819832C
_08093968: .4byte 0x08198220
_0809396C: .4byte sub_8093E20
_08093970:
	cmp r1, #0x08
	bgt _08093990
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080939CA
	ldr r2, _0809398C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080939CA
_0809398C: .4byte 0x00002054
_08093990:
	cmp r1, #0x11
	bgt _080939B0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _080939CA
	ldr r2, _080939AC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _080939CA
_080939AC: .4byte 0x00002054
_080939B0:
	cmp r1, #0x1A
	bgt _080939CA
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _080939CA
	ldr r2, _080939E0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080939CA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x03
	strh r0, [r5, #0x00]
_080939DA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080939E0: .4byte 0x00002054
