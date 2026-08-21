	.syntax unified
	.text

	thumb_func_start sub_80684B0
sub_80684B0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r2, r0, #0x1
	strh r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080684DC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1E
	bne _080684EE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	b _080684EE
_080684DC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0A
	bne _080684EE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
_080684EE:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068560
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08068514
	ldr r0, _08068510 @ =0x0000011B
	bl stop_sfx_80195A8
	b _0806851A
	.byte 0x00, 0x00
_08068510: .4byte 0x0000011B
_08068514:
	ldr r0, _08068534 @ =0x0000011B
	bl stop_sfx_80195A8
_0806851A:
	ldr r5, [r5, #0x00]
	cmp r5, #0x00
	bne _08068538
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0806854C
_08068534: .4byte 0x0000011B
_08068538:
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
_0806854C:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	movs r2, #0x88
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x14]
	ldr r0, _08068568 @ =0x080688B9
	str r0, [r4, #0x4C]
_08068560:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068568: .4byte sub_80688B8
