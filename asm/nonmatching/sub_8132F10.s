	.syntax unified
	.text

	thumb_func_start sub_8132F10
sub_8132F10:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08132F92
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08132F4E
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x08]
	adds r1, r0, #0x0
	adds r1, #0x20
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x20
	ble _08132F92
	movs r0, #0x20
	strb r0, [r1, #0x00]
	b _08132F92
_08132F4E:
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _08132F74 @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08132F78
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08132F84
_08132F74: .4byte 0x00000117
_08132F78:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08132F84:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r0, _08132F98 @ =0x08132F9D
	str r0, [r4, #0x4C]
_08132F92:
	pop {r4}
	pop {r0}
	bx r0
_08132F98: .4byte sub_8132F9C
