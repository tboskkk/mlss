	.syntax unified
	.text

	thumb_func_start sub_8111CA8
sub_8111CA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x01
	beq _08111D00
	cmp r0, #0x00
	bne _08111CD6
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08111D00
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	b _08111D00
_08111CD6:
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08111D08 @ =0x08112031
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
_08111D00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111D08: .4byte sub_8112030
