	.syntax unified
	.text

	thumb_func_start sub_8065BD8
sub_8065BD8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065C28
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08065C04
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	b _08065C28
_08065C04:
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	ldr r0, _08065C30 @ =0x08065CC5
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
_08065C28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065C30: .4byte sub_8065CC4
