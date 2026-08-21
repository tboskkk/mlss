	.syntax unified
	.text

	thumb_func_start sub_8078234
sub_8078234:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08078280 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r3, r1, #0x0
	adds r3, #0x08
	ldr r5, [r0, #0x74]
	adds r2, r5, #0x0
	adds r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807829E
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08078260
	cmp r0, #0x02
	bne _08078284
_08078260:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r1, [r3, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _080782EE
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	b _080782C8
	.byte 0x00, 0x00
_08078280: .4byte 0x03000FD8
_08078284:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bne _080782EE
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	b _080782C8
_0807829E:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bgt _080782D0
	cmp r0, #0x01
	blt _080782D0
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r1, [r2, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _080782EE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
_080782C8:
	movs r2, #0xFF
	bl sub_810DD7C
	b _080782EE
_080782D0:
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _080782EE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_080782EE:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _08078304
	adds r0, r4, #0x0
	bl sub_807C298
_08078304:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
