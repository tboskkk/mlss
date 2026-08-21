	.syntax unified
	.text

	thumb_func_start sub_8064C00
sub_8064C00:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	adds r4, r5, #0x0
	adds r4, #0x9C
	ldr r0, [r5, #0x10]
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x08
	muls r0, r2
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
	ldr r0, [r4, #0x00]
	subs r0, #0x11
	str r0, [r4, #0x00]
	ldr r1, [r5, #0x18]
	ldr r0, _08064C7C @ =0x00000FFF
	cmp r1, r0
	bgt _08064C5E
	adds r0, r1, #0x0
	adds r0, #0xE6
	str r0, [r5, #0x18]
_08064C5E:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x00]
	cmp r1, r0
	ble _08064C74
	ldr r0, [r5, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
_08064C74:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064C7C: .4byte 0x00000FFF
