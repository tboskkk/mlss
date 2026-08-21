	.syntax unified
	.text

	thumb_func_start sub_8076750
sub_8076750:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080767F4
	ldr r0, [r4, #0x08]
	strh r5, [r0, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	ble _080767B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807677E
	adds r1, #0xFF
_0807677E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076788
	adds r2, #0xFF
_08076788:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076792
	adds r3, #0xFF
_08076792:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080767B0 @ =0x0000254E
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	b _080767F4
	.byte 0x00, 0x00
_080767B0: .4byte 0x0000254E
_080767B4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080767BC
	adds r1, #0xFF
_080767BC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080767C6
	adds r2, #0xFF
_080767C6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080767D0
	adds r3, #0xFF
_080767D0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080767FC @ =0x00002541
	bl sub_80DF024
	str r5, [r4, #0x4C]
	str r5, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
_080767F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080767FC: .4byte 0x00002541
