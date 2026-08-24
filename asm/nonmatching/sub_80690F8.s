	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	bne _08069150
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	ldr r1, _08069148 @ =0x00000111
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08069150
	ldr r0, _0806914C @ =0x080692DD
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x80
	str r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _080691EC
_08069148: .4byte 0x00000111
_0806914C: .4byte sub_80692DC
_08069150:
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806918A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069168
	adds r1, #0xFF
_08069168:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08069172
	adds r2, #0xFF
_08069172:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806917C
	adds r3, #0xFF
_0806917C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080691D4 @ =0x00001C9F
	bl sub_80DF024
	movs r0, #0x0F
	strh r0, [r5, #0x00]
_0806918A:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080691EC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080691D8 @ =0x080691F5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080691DC
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	b _080691EC
	.byte 0x00, 0x00
_080691D4: .4byte 0x00001C9F
_080691D8: .4byte sub_80691F4
_080691DC:
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xCC
	bl play_sfx_80195B4
_080691EC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
