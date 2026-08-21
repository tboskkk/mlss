	.syntax unified
	.text

	thumb_func_start sub_80A453C
sub_80A453C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A45C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A455A
	cmp r1, #0x04
	bne _080A4576
_080A455A:
	ldr r2, _080A45C8 @ =0x00002053
	adds r0, r4, #0x0
	movs r1, #0x02
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
_080A4576:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A4588
	cmp r1, #0x04
	bne _080A45B8
_080A4588:
	ldr r2, _080A45CC @ =0x03001038
	ldr r0, _080A45D0 @ =0x0819832C
	ldr r1, _080A45D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x01
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A45B8:
	ldr r0, _080A45D8 @ =0x080A45DD
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A45C4: .4byte 0x03000FD8
_080A45C8: .4byte 0x00002053
_080A45CC: .4byte 0x03001038
_080A45D0: .4byte 0x0819832C
_080A45D4: .4byte 0x08198220
_080A45D8: .4byte sub_80A45DC
