	.syntax unified
	.text

	thumb_func_start sub_80A56DC
sub_80A56DC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A5778 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, [r5, #0x34]
	bl sub_807FB34
	movs r0, #0x00
	str r0, [r5, #0x34]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A570E
	cmp r1, #0x04
	bne _080A572A
_080A570E:
	ldr r2, _080A577C @ =0x00002026
	adds r0, r5, #0x0
	movs r1, #0x01
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
_080A572A:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A573C
	cmp r1, #0x04
	bne _080A576C
_080A573C:
	ldr r2, _080A5780 @ =0x03001038
	ldr r0, _080A5784 @ =0x0819832C
	ldr r1, _080A5788 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
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
_080A576C:
	ldr r0, _080A578C @ =0x080A5ABD
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A5778: .4byte 0x03000FD8
_080A577C: .4byte 0x00002026
_080A5780: .4byte 0x03001038
_080A5784: .4byte 0x0819832C
_080A5788: .4byte 0x08198220
_080A578C: .4byte sub_80A5ABC
