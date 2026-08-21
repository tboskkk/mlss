	.syntax unified
	.text

	thumb_func_start sub_80A158C
sub_80A158C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A160C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	bne _080A15C6
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _080A15C6
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A15C2
	cmp r1, #0x04
	bne _080A15C6
_080A15C2:
	ldr r0, _080A1610 @ =0x080A1AB9
	str r0, [r4, #0x4C]
_080A15C6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080A1614 @ =0x040A1100
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080A1618
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A161C
	.byte 0x00, 0x00
_080A160C: .4byte 0x03000FD8
_080A1610: .4byte sub_80A1AB8
_080A1614: .4byte 0x040A1100
_080A1618:
	ldr r0, _080A1624 @ =0x080A1629
	str r0, [r6, #0x4C]
_080A161C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A1624: .4byte sub_80A1628
