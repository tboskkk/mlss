	.syntax unified
	.text

	thumb_func_start sub_80D9A98
sub_80D9A98:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9AF8
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r4, [r0, #0x00]
	str r4, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAE
	adds r1, #0x18
	adds r2, r6, #0x0
	adds r2, #0xB2
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r3, [r6, #0x40]
	subs r4, r4, r3
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080D9B00 @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0x82
	lsls r3, r3, #0x01
	str r3, [sp, #0x010]
	str r5, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r6, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D9B04 @ =0x080D9421
	str r0, [r6, #0x4C]
_080D9AF8:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D9B00: .4byte 0x000004CC
_080D9B04: .4byte sub_80D9420
