	.syntax unified
	.text

	thumb_func_start sub_815B950
sub_815B950:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	ldr r0, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x03
	beq _0815B976
	cmp r0, #0x03
	bgt _0815B970
	cmp r0, #0x01
	blt _0815B9AA
	b _0815BB42
_0815B970:
	cmp r1, #0x04
	beq _0815B99A
	b _0815B9AA
_0815B976:
	ldr r1, [r5, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	ldr r2, [r5, #0x3C]
	ldrb r1, [r2, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _0815BB42
_0815B99A:
	adds r0, r5, #0x0
	bl sub_815FAFC
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x00
	strb r0, [r1, #0x00]
	b _0815BB42
_0815B9AA:
	ldr r1, [r5, #0x04]
	adds r0, r3, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r5, #0x38]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x04
	bls _0815B9C6
	b _0815BB42
_0815B9C6:
	lsls r0, r1, #0x02
	ldr r1, _0815B9D0 @ =lbl_0815B9D4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0815B9D0: .4byte lbl_0815B9D4
lbl_0815B9D4:
	.4byte _0815BB42
	.4byte _0815B9E8
	.4byte _0815BA50
	.4byte _0815BB28
	.4byte _0815BB42
_0815B9E8:
	ldr r0, [pc, #36] @ (0x815ba10)
	ldr r0, [r0, #0]
	ldr r1, [pc, #36] @ (0x815ba14)
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldr r0, [r5, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	ldr r1, [pc, #28] @ (0x815ba18)
	cmp r0, r1
	bgt.n _0815BA1C
	movs r0, #15
	strh r0, [r5, #54] @ 0x36
	adds r0, r5, #0
	movs r1, #25
	bl sub_815FA70
	movs r0, #2
	b.n _0815BB40
	movs r0, r0
	asrs r0, r4, #32
	lsls r0, r0, #12
	adds r0, r3, #2
	movs r0, r0
	strh r7, [r7, #14]
	movs r0, r0
_0815BA1C:
	ldr r2, [r5, #60] @ 0x3c
	ldrb r1, [r2, #18]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #18]
	ldr r1, [r5, #60] @ 0x3c
	movs r0, #10
	strh r0, [r1, #14]
	adds r0, r5, #0
	bl sub_815FA3C
	ldr r3, [r5, #60] @ 0x3c
	ldrb r1, [r0, #31]
	lsls r1, r1, #30
	lsrs r1, r1, #30
	subs r1, #1
	movs r0, #3
	ands r1, r0
	ldrb r2, [r3, #31]
	movs r0, #4
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #31]
	b.n _0815BB42
_0815BA50:
	ldrh r0, [r5, #54] @ 0x36
	subs r0, #1
	strh r0, [r5, #54] @ 0x36
	lsls r0, r0, #16
	cmp r0, #0
	bgt.n _0815BB42
	adds r0, r5, #0
	movs r1, #26
	bl sub_815FA70
	ldrh r0, [r5, #28]
	ldrh r2, [r5, #20]
	adds r0, r0, r2
	strh r0, [r5, #20]
	lsls r1, r4, #16
	asrs r1, r1, #16
	ldrh r0, [r5, #32]
	adds r1, r1, r0
	ldrh r0, [r5, #24]
	adds r0, r0, r1
	strh r0, [r5, #24]
	movs r2, #20
	ldrsh r1, [r5, r2]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r0, #24
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
	ldr r1, [r5, #56] @ 0x38
	cmp r0, r1
	ble.n _0815BB42
	ldr r2, [r5, #60] @ 0x3c
	ldrb r0, [r2, #18]
	movs r1, #32
	orrs r0, r1
	strb r0, [r2, #18]
	movs r1, #1
	negs r1, r1
	movs r0, #68 @ 0x44
	bl play_sfx_80195B4
	adds r0, r5, #0
	bl sub_815FA3C
	adds r6, r5, #0
	adds r6, #45 @ 0x2d
	ldrb r2, [r6, #0]
	subs r2, #1
	movs r4, #3
	ands r2, r4
	ldrb r3, [r0, #31]
	movs r1, #4
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #31]
	adds r0, r5, #0
	bl sub_815FA3C
	ldrb r2, [r6, #0]
	subs r2, #1
	ands r2, r4
	lsls r2, r2, #2
	ldrb r3, [r0, #31]
	movs r1, #13
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #31]
	adds r0, r5, #0
	bl sub_815FA3C
	ldrb r2, [r6, #0]
	subs r2, #1
	ands r2, r4
	lsls r2, r2, #4
	ldrb r3, [r0, #31]
	movs r1, #49 @ 0x31
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #31]
	ldr r2, [r5, #64] @ 0x40
	ldrb r1, [r2, #18]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #18]
	ldr r0, [pc, #24] @ (0x815bb20)
	ldr r0, [r0, #0]
	ldr r1, [pc, #24] @ (0x815bb24)
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r2, #24
	ldrsh r1, [r5, r2]
	bl sub_8159984
	movs r0, #20
	strh r0, [r5, #54] @ 0x36
	movs r0, #3
	b.n _0815BB40
	asrs r0, r4, #32
	lsls r0, r0, #12
	adds r4, r7, #2
	movs r0, r0
_0815BB28:
	ldrh r0, [r5, #54] @ 0x36
	subs r0, #1
	strh r0, [r5, #54] @ 0x36
	lsls r0, r0, #16
	cmp r0, #0
	bgt.n _0815BB42
	ldr r2, [r5, #64] @ 0x40
	ldrb r0, [r2, #18]
	movs r1, #32
	orrs r0, r1
	strb r0, [r2, #18]
	movs r0, #4
_0815BB40:
	strb r0, [r7, #0]
_0815BB42:
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
