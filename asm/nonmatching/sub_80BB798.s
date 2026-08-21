	.syntax unified
	.text

	thumb_func_start sub_80BB798
sub_80BB798:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BB850 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BB7C0
	cmp r1, #0x04
	bne _080BB7C4
_080BB7C0:
	ldr r0, _080BB854 @ =0x080BC235
	str r0, [r2, #0x4C]
_080BB7C4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BB7E2
	cmp r2, #0x04
	bne _080BB7FA
_080BB7E2:
	ldr r2, _080BB858 @ =0x00002033
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BB7FA:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BB808
	cmp r2, #0x04
	bne _080BB8AC
_080BB808:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080BB810
	adds r1, #0xFF
_080BB810:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080BB81A
	adds r2, #0xFF
_080BB81A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080BB824
	adds r3, #0xFF
_080BB824:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	adds r3, #0x06
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080BB85C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080BB86C
	.byte 0x00, 0x00
_080BB850: .4byte 0x03000FD8
_080BB854: .4byte sub_80BC234
_080BB858: .4byte 0x00002033
_080BB85C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080BB86C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080BB874
	adds r0, #0xFF
_080BB874:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080BB8C4 @ =0x03001038
	ldr r0, _080BB8C8 @ =0x0819832C
	ldr r1, _080BB8CC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080BB88E
	adds r1, #0x3F
_080BB88E:
	asrs r1, r1, #0x06
	adds r1, #0x30
	movs r0, #0x90
	lsls r0, r0, #0x04
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_8088164
_080BB8AC:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080BB8D0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080BB8D4 @ =0x080BB8D9
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BB8C4: .4byte 0x03001038
_080BB8C8: .4byte 0x0819832C
_080BB8CC: .4byte 0x08198220
_080BB8D0: .4byte 0x00000FFF
_080BB8D4: .4byte sub_80BB8D8
