	.syntax unified
	.text

	thumb_func_start sub_806CCB8
sub_806CCB8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806CD60
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _0806CD60
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	ldr r0, _0806CD28 @ =0x08087541
	str r0, [r4, #0x68]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806CD2C @ =0x0806D341
	str r0, [r4, #0x58]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806CD34
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x38]
	ldr r3, _0806CD30 @ =0xFFFFB000
	b _0806CD3C
_0806CD28: .4byte sub_8087540
_0806CD2C: .4byte sub_806D340
_0806CD30: .4byte 0xFFFFB000
_0806CD34:
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x38]
	ldr r3, _0806CD68 @ =0xFFFFD000
_0806CD3C:
	adds r0, r1, r3
	cmp r0, #0x00
	bge _0806CD46
	adds r3, #0xFF
	adds r0, r1, r3
_0806CD46:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0x12
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _0806CD6C @ =0x0806CD71
	str r0, [r4, #0x4C]
_0806CD60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CD68: .4byte 0xFFFFD000
_0806CD6C: .4byte sub_806CD70
