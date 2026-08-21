	.syntax unified
	.text

	thumb_func_start sub_8072390
sub_8072390:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x46
	bne _080723B0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
_080723B0:
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x14
	bne _080723C2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
_080723C2:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080723F0
	ldr r2, _080723F8 @ =0x000040B7
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080723FC @ =0x08071A65
	str r0, [r5, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
_080723F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080723F8: .4byte 0x000040B7
_080723FC: .4byte sub_8071A64
