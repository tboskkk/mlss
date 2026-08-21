	.syntax unified
	.text

	thumb_func_start sub_80726D4
sub_80726D4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x37
	bne _080726F4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
_080726F4:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072724
	ldr r0, _0807272C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x58]
	adds r4, #0x08
	adds r0, r5, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08072730 @ =0x000040AE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072734 @ =0x08072739
	str r0, [r5, #0x4C]
_08072724:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807272C: .4byte 0x03000FD8
_08072730: .4byte 0x000040AE
_08072734: .4byte sub_8072738
