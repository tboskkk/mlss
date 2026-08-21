	.syntax unified
	.text

	thumb_func_start sub_8064ADC
sub_8064ADC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r6, r5, #0x0
	adds r6, #0x9C
	ldr r4, [r5, #0x10]
	ldr r0, [r6, #0x00]
	subs r4, r4, r0
	str r4, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	subs r0, #0x2C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	lsls r0, r0, #0x08
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	subs r4, r4, r0
	ldr r0, _08064B68 @ =0x00005DFF
	cmp r4, r0
	bgt _08064B3A
	ldr r0, [r6, #0x00]
	subs r0, #0x11
	str r0, [r6, #0x00]
_08064B3A:
	ldr r1, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _08064B4A
	adds r0, r1, #0x0
	subs r0, #0xE6
	str r0, [r5, #0x18]
_08064B4A:
	ldr r1, [r5, #0x10]
	ldr r0, _08064B6C @ =0x00003FFF
	cmp r1, r0
	bgt _08064B7C
	ldr r1, [r5, #0x14]
	movs r0, #0xD0
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _08064B70
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x60
	negs r0, r0
	b _08064B76
	.byte 0x00, 0x00
_08064B68: .4byte 0x00005DFF
_08064B6C: .4byte 0x00003FFF
_08064B70:
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x60
_08064B76:
	str r0, [r1, #0x00]
	ldr r0, _08064B84 @ =0x08064B89
	str r0, [r5, #0x4C]
_08064B7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064B84: .4byte sub_8064B88
