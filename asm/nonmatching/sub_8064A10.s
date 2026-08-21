	.syntax unified
	.text

	thumb_func_start sub_8064A10
sub_8064A10:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	ldr r1, [r4, #0x18]
	ldr r0, _08064A40 @ =0x000007FF
	cmp r1, r0
	bgt _08064A44
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _08064A44
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08064ACE
	.byte 0x00, 0x00
_08064A40: .4byte 0x000007FF
_08064A44:
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x08
	muls r0, r2
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r2, r0
	ble _08064A96
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r1, r2, r1
	str r1, [r4, #0x18]
	ldr r1, [r0, #0x00]
	subs r1, #0x2C
	str r1, [r0, #0x00]
_08064A96:
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	ldr r0, _08064AD4 @ =0x00005DFF
	cmp r1, r0
	bgt _08064AAE
	ldr r0, [r5, #0x00]
	subs r0, #0x19
	str r0, [r5, #0x00]
_08064AAE:
	ldr r0, [r5, #0x00]
	ldr r1, _08064AD8 @ =0xFFFFFD80
	cmp r0, r1
	bge _08064AB8
	str r1, [r5, #0x00]
_08064AB8:
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x00]
	cmp r1, r0
	ble _08064ACE
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807C298
_08064ACE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08064AD4: .4byte 0x00005DFF
_08064AD8: .4byte 0xFFFFFD80
